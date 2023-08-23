// include Arduino standard library
#include <SPI.h>
#include <Wire.h>
#include <stdio.h>
// include FreeRTOS
#include "src/FreeRTOS_ARM/FreeRTOS_ARM.h"

// pin setting constant
#define PIN_TEMPSENSOR_DECODER_ENABLE 23
#define PIN_TRIAC_SHIFTRESISTOR_DATA 41
#define PIN_TRIAC_SHIFTRESISTOR_CLOCK 39
#define PIN_TRIAC_SHIFTRESISTOR_LATCH 37
#define PIN_TRIAC_MOTOR_UP 47
#define PIN_TRIAC_MOTOR_DOWN 45

// triac variable setting constant
#define TRIAC_COUNT 18
#define TRIAC_MAX_AMOUNT 10
#define TRIAC_SHIFTRESISTOR_BITORDER LSBFIRST

// heatmode constant
#define HEATMODE_MANUAL 0
#define HEATMODE_AUTO 1
#define HEATMODE_AUTO_MARGINTEMP 0

// tempsensor variable setting constant
#define TEMPSENSOR_DECODER_PINCOUNT 5
#define TEMPSENSOR_COUNT 18

// serial communication synchronize semaphore
SemaphoreHandle_t semSerialLock;

// tempsensor and heat channel variable structure
typedef struct _TemperagtureChannel
{
    float Temperature;
    float Max, Min, Magnitude;
} TemperatureChannel;

typedef struct _HeaterChannel
{
    byte HeaterMode; // 0 = manual, 1 = auto
    byte HeaterAmount;
    float TargetTemperature;
} HeaterChannel;

// tempsensor communication setting variable
byte tempSensorDecoderPin[TEMPSENSOR_DECODER_PINCOUNT] = {33, 31, 29, 27, 25};
byte tempSensorDecoderAddress[TEMPSENSOR_COUNT] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17};
SPISettings tempSensorSPISetting = SPISettings(4000000, MSBFIRST, SPI_MODE0);
// triac contorol setting variable
byte triacEnablePin[TRIAC_COUNT] = {28, 29, 30, 31, 32, 33};
// channel data array
TemperatureChannel TempChannel[TEMPSENSOR_COUNT];
HeaterChannel HeatChannel[TRIAC_COUNT];
/* 
- TEMP LABEL TO HEAT LABEL 
1 = 11 >> 9 = 19 >> 11 = 1 >> 19 = 9
- TEMP INDEX TO HEAT INDEX
 0 = 9 >> 8 = 17 >> 9 = 0 >> 17 = 8
*/
// tempsensor index and heat index matching table
byte tempChannelToHeatChannel[TEMPSENSOR_COUNT] = {9, 10, 11, 12, 13, 14, 15, 16, 17, 0, 1, 2, 3, 4, 5, 6, 7, 8};
// motor control state variable
int motorOutput = 0;

// task declaration
void tskControlTriac(void *pvParamepters);
void tskReadTemperature(void *pvParameters);
void tskReadSerial(void *pvParameters);
void setTriacSelection(uint32_t selection);
void tskPrintStatus(void *pvParameters);
void tskControlMotor(void *pvParameters);

// setup function
void setup()
{
    /* Serial and IO pin initialize */
    Serial.begin(115200);
    Serial.println("INIT,START");

    pinMode(PIN_TEMPSENSOR_DECODER_ENABLE, OUTPUT);
    pinMode(PIN_TRIAC_SHIFTRESISTOR_DATA, OUTPUT);
    pinMode(PIN_TRIAC_SHIFTRESISTOR_CLOCK, OUTPUT);
    pinMode(PIN_TRIAC_SHIFTRESISTOR_LATCH, OUTPUT);
    pinMode(PIN_TRIAC_MOTOR_UP, OUTPUT);
    pinMode(PIN_TRIAC_MOTOR_DOWN, OUTPUT);

    for (int i = 0; i < TEMPSENSOR_DECODER_PINCOUNT; i++)
    {
        pinMode(tempSensorDecoderPin[i], OUTPUT);
    }

    for (int i = 0; i < TRIAC_COUNT; i++)
    {
        pinMode(triacEnablePin[i], OUTPUT);
        TempChannel[i].Max = -999.9;
        TempChannel[i].Min = 999.9;
        TempChannel[i].Temperature = 0.0;
        HeatChannel[i].HeaterMode = HEATMODE_MANUAL;
        HeatChannel[i].HeaterAmount = 0;
        HeatChannel[i].TargetTemperature = 0;
    }

    semSerialLock = xSemaphoreCreateBinary();
    if (semSerialLock == NULL)
    {
        Serial.println("ERROR,SERIAL_SEMAPHORE_INIT");
        return;
    }
    xSemaphoreGive(semSerialLock);
    Serial.println("INIT,SEMOK");

    /* Begin SPI for temperature sensor*/
    SPI.begin();
    Serial.println("INIT,COMMOK");

    /* Create task and Start scheduler */
    xTaskCreate(tskControlTriac, "ControlTriac", 300, NULL, 3, NULL);
    xTaskCreate(tskReadTemperature, "ReadTemperature", 300, NULL, 3, NULL);
    xTaskCreate(tskPrintStatus, "PrintStatus", 800, NULL, 4, NULL);
    xTaskCreate(tskReadSerial, "ReadSerial", 300, NULL, 2, NULL);
    xTaskCreate(tskControlMotor, "ControlMotor", 300, NULL, 3, NULL);

    Serial.println("STARTSCHEDULER");
    vTaskStartScheduler();
    Serial.println("ERROR,SCHEDULER_FAIL");
}

// loop function isn't used
void loop()
{
}

// triac control task
void tskControlTriac(void *pvParameters)
{
    while (1)
    {
        for (int c = 0; c < TRIAC_MAX_AMOUNT; c++)
        {
            uint32_t curout = 0;
            for (int i = 0; i < TRIAC_COUNT; i++)
            {
                // 0 is on , 1 is off
                curout |= ((HeatChannel[i].HeaterAmount > c ) ? 0 : 1) << i;
            }
            setTriacSelection(curout);
            vTaskDelay((1000 / TRIAC_MAX_AMOUNT) / portTICK_PERIOD_MS);
        }
    }
}

// read tempsensor
void tskReadTemperature(void *pvParameters)
{
    uint8_t resph, respl;
    uint16_t resp;
    byte hi;
    while (1)
    {
        for (int i = 0; i < TEMPSENSOR_COUNT; i++)
        {
            // retieve data through spi communication
            SPI.beginTransaction(tempSensorSPISetting);
            digitalWrite(PIN_TEMPSENSOR_DECODER_ENABLE, LOW);
            setTempSensorDecoder(tempSensorDecoderAddress[i]);
            resph = SPI.transfer(0x00, SPI_CONTINUE);
            respl = SPI.transfer(0x00);
            SPI.endTransaction();
            digitalWrite(PIN_TEMPSENSOR_DECODER_ENABLE, HIGH);

            // assign data to channel
            resp = (resph << 8) | respl;
            TempChannel[i].Temperature = ((resp & 0x7FF8) >> 3) * 0.25;
            if (TempChannel[i].Max <= TempChannel[i].Temperature)
                TempChannel[i].Max = TempChannel[i].Temperature;
            if (TempChannel[i].Min >= TempChannel[i].Temperature)
                TempChannel[i].Min = TempChannel[i].Temperature;
            
            // set heat level from temp channel
            hi = tempChannelToHeatChannel[i];
            if (HeatChannel[hi].HeaterMode == HEATMODE_AUTO) {
                if (HeatChannel[hi].TargetTemperature - TempChannel[i].Temperature  > HEATMODE_AUTO_MARGINTEMP) {
                    HeatChannel[hi].HeaterAmount = 10;
                } else {
                    HeatChannel[hi].HeaterAmount = 0;
                }
            }
        }
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}

// serial read task
void tskReadSerial(void *pvParameters)
{
    Serial.setTimeout(1000);
    char buf[10];
    while (1)
    {
        if (Serial.available())
        {
            if (Serial.readBytesUntil(255, buf, 10) > 2)
            {
                switch (buf[0])
                {
                case 1: // HEATER
                    HeatChannel[buf[1]].HeaterAmount = buf[2];
                    SerialPrintlnSync("OK,HEATER");
                    break;
                case 2: // HEATER RANGE
                    for (int i = buf[1]; i <= buf[2]; i++) {
                        HeatChannel[i].HeaterAmount = buf[3];
                    }
                    SerialPrintlnSync("OK,HEATERRANGE");
                    break;
                case 3: // MOTOR
                    motorOutput = buf[1] - 128;
                    SerialPrintlnSync("OK,MOTOR");
                    break;
                case 4: // MODE
                    HeatChannel[buf[1]].HeaterMode = buf[2];
                    SerialPrintlnSync("OK,MODE");
                    break;
                case 5: // MODE RANGE
                    for (int i = buf[1]; i <= buf[2]; i++) {
                        HeatChannel[i].HeaterMode = buf[3];
                    }
                    SerialPrintlnSync("OK,MODERANGE");
                    break;
                case 6: // TARGET TEMP
                    HeatChannel[buf[1]].TargetTemperature = buf[2] + buf[3]*256.0f;
                    SerialPrintlnSync("OK,TARGETTEMP");
                    break;
                case 7: // TARGET TEMP RANGE
                    for (int i = buf[1]; i <= buf[2]; i++) {
                        HeatChannel[i].TargetTemperature = buf[3] + buf[4]*256.0f;
                    }
                    SerialPrintlnSync("OK,TARGETTEMPRANGE");
                    break;
                }
            }
        }
    }
}

// motor control task
void tskControlMotor(void *pvParameters) {
    while (1) {
        if (motorOutput > 0) { //UP
            digitalWrite(PIN_TRIAC_MOTOR_UP, HIGH);
            digitalWrite(PIN_TRIAC_MOTOR_DOWN, LOW);
            SerialPrintlnSync("OK,MOTORUP");
            motorOutput--;
        } else if (motorOutput == 0) { //NEUTRAL
            digitalWrite(PIN_TRIAC_MOTOR_UP, LOW);
            digitalWrite(PIN_TRIAC_MOTOR_DOWN, LOW);
        } else { //DOWN
            digitalWrite(PIN_TRIAC_MOTOR_UP, LOW);
            digitalWrite(PIN_TRIAC_MOTOR_DOWN, HIGH);
            SerialPrintlnSync("OK,MOTORDOWN");
            motorOutput++;
        }
        vTaskDelay(100 / portTICK_PERIOD_MS);
    }
}

// status print task
void tskPrintStatus(void *pvParameters)
{
    char sentence[250], buffer[10];
    while (1)
    {
        strcpy(sentence, "TEMP");
        for (int i = 0; i < TEMPSENSOR_COUNT; i++)
        {
            sprintf(buffer, ",%.2f", TempChannel[i].Temperature);
            strcat(sentence, buffer);
        }
        SerialPrintlnSync(sentence);

        strcpy(sentence, "OUT");
        for (int i = 0; i < TRIAC_COUNT; i++)
        {
            sprintf(buffer, ",%d", HeatChannel[i].HeaterAmount);
            strcat(sentence, buffer);
        }
        SerialPrintlnSync(sentence);

        strcpy(sentence, "MODE");
        for (int i = 0; i < TRIAC_COUNT; i++)
        {
            sprintf(buffer, ",%d", HeatChannel[i].HeaterMode);
            strcat(sentence, buffer);
        }
        SerialPrintlnSync(sentence);

        strcpy(sentence, "TARGETTEMP");
        for (int i = 0; i < TRIAC_COUNT; i++)
        {
            sprintf(buffer, ",%.2f", HeatChannel[i].TargetTemperature);
            strcat(sentence, buffer);
        }
        SerialPrintlnSync(sentence);
        vTaskDelay(1500 / portTICK_PERIOD_MS);
    }
}

// traic shift-register select function
void setTriacSelection(uint32_t selection)
{
    digitalWrite(PIN_TRIAC_SHIFTRESISTOR_LATCH, LOW);
    selection = selection << 6;
    shiftOut(PIN_TRIAC_SHIFTRESISTOR_DATA, PIN_TRIAC_SHIFTRESISTOR_CLOCK, TRIAC_SHIFTRESISTOR_BITORDER, selection);
    shiftOut(PIN_TRIAC_SHIFTRESISTOR_DATA, PIN_TRIAC_SHIFTRESISTOR_CLOCK, TRIAC_SHIFTRESISTOR_BITORDER, selection >> 8);
    shiftOut(PIN_TRIAC_SHIFTRESISTOR_DATA, PIN_TRIAC_SHIFTRESISTOR_CLOCK, TRIAC_SHIFTRESISTOR_BITORDER, selection >> 16);
    digitalWrite(PIN_TRIAC_SHIFTRESISTOR_LATCH, HIGH);
}

// heat buffer select function
void setTempSensorDecoder(byte selection)
{
    uint32_t output;
    for (int i = 0; i < TEMPSENSOR_DECODER_PINCOUNT; i++)
    {
        if ((selection & (1 << i)) > 0)
        {
            output = HIGH;
        }
        else
        {
            output = LOW;
        }
        digitalWrite(tempSensorDecoderPin[i], output);
    }
}

// serial print function
int SerialPrintlnSync(char *str)
{
    if (xSemaphoreTake(semSerialLock, (TickType_t)1000 / portTICK_PERIOD_MS) == pdTRUE)
    {
        Serial.println(str);
        xSemaphoreGive(semSerialLock);
        return 0;
    }
    else
    {
        return -1;
    }
}
