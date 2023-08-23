EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5600 -3460 0    50   ~ 0
pulse
Text Label 5600 -3160 0    50   ~ 0
pulse
Text Label 5600 -3260 0    50   ~ 0
C15
Text Label 5600 -3060 0    50   ~ 0
Tri15
Text Label 5600 -3560 0    50   ~ 0
C16
Text Label 5600 -3360 0    50   ~ 0
Tri16
$Comp
L power:+3.3V #PWR029
U 1 1 601DD5E4
P 5700 -3835
F 0 "#PWR029" H 5700 -3985 50  0001 C CNN
F 1 "+3.3V" H 5715 -3662 50  0000 C CNN
F 2 "" H 5700 -3835 50  0001 C CNN
F 3 "" H 5700 -3835 50  0001 C CNN
	1    5700 -3835
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 -3835 5700 -3660
Wire Wire Line
	5700 -3660 5600 -3660
$Comp
L power:+3.3V #PWR030
U 1 1 601DDFFA
P 5700 -2535
F 0 "#PWR030" H 5700 -2685 50  0001 C CNN
F 1 "+3.3V" H 5715 -2362 50  0000 C CNN
F 2 "" H 5700 -2535 50  0001 C CNN
F 3 "" H 5700 -2535 50  0001 C CNN
	1    5700 -2535
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 -2535 5700 -2360
Wire Wire Line
	5700 -2360 5600 -2360
$Comp
L Device:R R1
U 1 1 601DF85F
P 7635 -2210
F 0 "R1" H 7705 -2164 50  0000 L CNN
F 1 "R" H 7705 -2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7565 -2210 50  0001 C CNN
F 3 "~" H 7635 -2210 50  0001 C CNN
	1    7635 -2210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 601E0215
P 7635 -2060
F 0 "#PWR01" H 7635 -2310 50  0001 C CNN
F 1 "GND" H 7640 -2233 50  0000 C CNN
F 2 "" H 7635 -2060 50  0001 C CNN
F 3 "" H 7635 -2060 50  0001 C CNN
	1    7635 -2060
	1    0    0    -1  
$EndComp
Text Label 7635 -2360 2    50   ~ 0
Tri1
$Comp
L Device:R R4
U 1 1 601E1B5C
P 7910 -2210
F 0 "R4" H 7980 -2164 50  0000 L CNN
F 1 "R" H 7980 -2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7840 -2210 50  0001 C CNN
F 3 "~" H 7910 -2210 50  0001 C CNN
	1    7910 -2210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 601E1B62
P 7910 -2060
F 0 "#PWR06" H 7910 -2310 50  0001 C CNN
F 1 "GND" H 7915 -2233 50  0000 C CNN
F 2 "" H 7910 -2060 50  0001 C CNN
F 3 "" H 7910 -2060 50  0001 C CNN
	1    7910 -2060
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 601E27C4
P 8160 -2210
F 0 "R7" H 8230 -2164 50  0000 L CNN
F 1 "R" H 8230 -2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8090 -2210 50  0001 C CNN
F 3 "~" H 8160 -2210 50  0001 C CNN
	1    8160 -2210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 601E27CA
P 8160 -2060
F 0 "#PWR09" H 8160 -2310 50  0001 C CNN
F 1 "GND" H 8165 -2233 50  0000 C CNN
F 2 "" H 8160 -2060 50  0001 C CNN
F 3 "" H 8160 -2060 50  0001 C CNN
	1    8160 -2060
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 601E2AD0
P 8410 -2210
F 0 "R10" H 8480 -2164 50  0000 L CNN
F 1 "R" H 8480 -2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8340 -2210 50  0001 C CNN
F 3 "~" H 8410 -2210 50  0001 C CNN
	1    8410 -2210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 601E2AD6
P 8410 -2060
F 0 "#PWR012" H 8410 -2310 50  0001 C CNN
F 1 "GND" H 8415 -2233 50  0000 C CNN
F 2 "" H 8410 -2060 50  0001 C CNN
F 3 "" H 8410 -2060 50  0001 C CNN
	1    8410 -2060
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 601E2D94
P 8685 -2210
F 0 "R13" H 8755 -2164 50  0000 L CNN
F 1 "R" H 8755 -2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8615 -2210 50  0001 C CNN
F 3 "~" H 8685 -2210 50  0001 C CNN
	1    8685 -2210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 601E2D9A
P 8685 -2060
F 0 "#PWR015" H 8685 -2310 50  0001 C CNN
F 1 "GND" H 8690 -2233 50  0000 C CNN
F 2 "" H 8685 -2060 50  0001 C CNN
F 3 "" H 8685 -2060 50  0001 C CNN
	1    8685 -2060
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 601E2EE8
P 8960 -2210
F 0 "R16" H 9030 -2164 50  0000 L CNN
F 1 "R" H 9030 -2255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8890 -2210 50  0001 C CNN
F 3 "~" H 8960 -2210 50  0001 C CNN
	1    8960 -2210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 601E2EEE
P 8960 -2060
F 0 "#PWR018" H 8960 -2310 50  0001 C CNN
F 1 "GND" H 8965 -2233 50  0000 C CNN
F 2 "" H 8960 -2060 50  0001 C CNN
F 3 "" H 8960 -2060 50  0001 C CNN
	1    8960 -2060
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 601E2FF4
P 7635 -1560
F 0 "R2" H 7705 -1514 50  0000 L CNN
F 1 "R" H 7705 -1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7565 -1560 50  0001 C CNN
F 3 "~" H 7635 -1560 50  0001 C CNN
	1    7635 -1560
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 601E2FFA
P 7635 -1410
F 0 "#PWR02" H 7635 -1660 50  0001 C CNN
F 1 "GND" H 7640 -1583 50  0000 C CNN
F 2 "" H 7635 -1410 50  0001 C CNN
F 3 "" H 7635 -1410 50  0001 C CNN
	1    7635 -1410
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 601E3100
P 7910 -1560
F 0 "R5" H 7980 -1514 50  0000 L CNN
F 1 "R" H 7980 -1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7840 -1560 50  0001 C CNN
F 3 "~" H 7910 -1560 50  0001 C CNN
	1    7910 -1560
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 601E3106
P 7910 -1410
F 0 "#PWR07" H 7910 -1660 50  0001 C CNN
F 1 "GND" H 7915 -1583 50  0000 C CNN
F 2 "" H 7910 -1410 50  0001 C CNN
F 3 "" H 7910 -1410 50  0001 C CNN
	1    7910 -1410
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 601E31F8
P 8160 -1560
F 0 "R8" H 8230 -1514 50  0000 L CNN
F 1 "R" H 8230 -1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8090 -1560 50  0001 C CNN
F 3 "~" H 8160 -1560 50  0001 C CNN
	1    8160 -1560
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 601E31FE
P 8160 -1410
F 0 "#PWR010" H 8160 -1660 50  0001 C CNN
F 1 "GND" H 8165 -1583 50  0000 C CNN
F 2 "" H 8160 -1410 50  0001 C CNN
F 3 "" H 8160 -1410 50  0001 C CNN
	1    8160 -1410
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 601E3304
P 8410 -1560
F 0 "R11" H 8480 -1514 50  0000 L CNN
F 1 "R" H 8480 -1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8340 -1560 50  0001 C CNN
F 3 "~" H 8410 -1560 50  0001 C CNN
	1    8410 -1560
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 601E330A
P 8410 -1410
F 0 "#PWR013" H 8410 -1660 50  0001 C CNN
F 1 "GND" H 8415 -1583 50  0000 C CNN
F 2 "" H 8410 -1410 50  0001 C CNN
F 3 "" H 8410 -1410 50  0001 C CNN
	1    8410 -1410
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 601E343E
P 8685 -1560
F 0 "R14" H 8755 -1514 50  0000 L CNN
F 1 "R" H 8755 -1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8615 -1560 50  0001 C CNN
F 3 "~" H 8685 -1560 50  0001 C CNN
	1    8685 -1560
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 601E3444
P 8685 -1410
F 0 "#PWR016" H 8685 -1660 50  0001 C CNN
F 1 "GND" H 8690 -1583 50  0000 C CNN
F 2 "" H 8685 -1410 50  0001 C CNN
F 3 "" H 8685 -1410 50  0001 C CNN
	1    8685 -1410
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 601E3592
P 8960 -1560
F 0 "R17" H 9030 -1514 50  0000 L CNN
F 1 "R" H 9030 -1605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8890 -1560 50  0001 C CNN
F 3 "~" H 8960 -1560 50  0001 C CNN
	1    8960 -1560
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 601E3598
P 8960 -1410
F 0 "#PWR019" H 8960 -1660 50  0001 C CNN
F 1 "GND" H 8965 -1583 50  0000 C CNN
F 2 "" H 8960 -1410 50  0001 C CNN
F 3 "" H 8960 -1410 50  0001 C CNN
	1    8960 -1410
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 601E3784
P 7635 -910
F 0 "R3" H 7705 -864 50  0000 L CNN
F 1 "R" H 7705 -955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7565 -910 50  0001 C CNN
F 3 "~" H 7635 -910 50  0001 C CNN
	1    7635 -910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 601E378A
P 7635 -760
F 0 "#PWR03" H 7635 -1010 50  0001 C CNN
F 1 "GND" H 7640 -933 50  0000 C CNN
F 2 "" H 7635 -760 50  0001 C CNN
F 3 "" H 7635 -760 50  0001 C CNN
	1    7635 -760
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 601E3862
P 7910 -910
F 0 "R6" H 7980 -864 50  0000 L CNN
F 1 "R" H 7980 -955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 7840 -910 50  0001 C CNN
F 3 "~" H 7910 -910 50  0001 C CNN
	1    7910 -910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 601E3868
P 7910 -760
F 0 "#PWR08" H 7910 -1010 50  0001 C CNN
F 1 "GND" H 7915 -933 50  0000 C CNN
F 2 "" H 7910 -760 50  0001 C CNN
F 3 "" H 7910 -760 50  0001 C CNN
	1    7910 -760
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 601E395A
P 8160 -910
F 0 "R9" H 8230 -864 50  0000 L CNN
F 1 "R" H 8230 -955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8090 -910 50  0001 C CNN
F 3 "~" H 8160 -910 50  0001 C CNN
	1    8160 -910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 601E3960
P 8160 -760
F 0 "#PWR011" H 8160 -1010 50  0001 C CNN
F 1 "GND" H 8165 -933 50  0000 C CNN
F 2 "" H 8160 -760 50  0001 C CNN
F 3 "" H 8160 -760 50  0001 C CNN
	1    8160 -760
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 601E3D26
P 8410 -910
F 0 "R12" H 8480 -864 50  0000 L CNN
F 1 "R" H 8480 -955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8340 -910 50  0001 C CNN
F 3 "~" H 8410 -910 50  0001 C CNN
	1    8410 -910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 601E3D2C
P 8410 -760
F 0 "#PWR014" H 8410 -1010 50  0001 C CNN
F 1 "GND" H 8415 -933 50  0000 C CNN
F 2 "" H 8410 -760 50  0001 C CNN
F 3 "" H 8410 -760 50  0001 C CNN
	1    8410 -760
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 601E3E60
P 8685 -910
F 0 "R15" H 8755 -864 50  0000 L CNN
F 1 "R" H 8755 -955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8615 -910 50  0001 C CNN
F 3 "~" H 8685 -910 50  0001 C CNN
	1    8685 -910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 601E3E66
P 8685 -760
F 0 "#PWR017" H 8685 -1010 50  0001 C CNN
F 1 "GND" H 8690 -933 50  0000 C CNN
F 2 "" H 8685 -760 50  0001 C CNN
F 3 "" H 8685 -760 50  0001 C CNN
	1    8685 -760
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 601E3F9A
P 8960 -910
F 0 "R18" H 9030 -864 50  0000 L CNN
F 1 "R" H 9030 -955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 8890 -910 50  0001 C CNN
F 3 "~" H 8960 -910 50  0001 C CNN
	1    8960 -910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 601E3FA0
P 8960 -760
F 0 "#PWR020" H 8960 -1010 50  0001 C CNN
F 1 "GND" H 8965 -933 50  0000 C CNN
F 2 "" H 8960 -760 50  0001 C CNN
F 3 "" H 8960 -760 50  0001 C CNN
	1    8960 -760
	1    0    0    -1  
$EndComp
Text Label 7910 -2360 2    50   ~ 0
Tri2
Text Label 8160 -2360 2    50   ~ 0
Tri3
Text Label 8410 -2360 2    50   ~ 0
Tri4
Text Label 8685 -2360 2    50   ~ 0
Tri5
Text Label 8960 -2360 2    50   ~ 0
Tri6
Text Label 7635 -1710 2    50   ~ 0
Tri7
Text Label 7910 -1710 2    50   ~ 0
Tri8
Text Label 8160 -1710 2    50   ~ 0
Tri9
Text Label 8410 -1710 2    50   ~ 0
Tri10
Text Label 8685 -1710 2    50   ~ 0
Tri11
Text Label 8960 -1710 2    50   ~ 0
Tri12
Text Label 7635 -1060 2    50   ~ 0
Tri13
Text Label 7910 -1060 2    50   ~ 0
Tri14
Text Label 8160 -1060 2    50   ~ 0
Tri15
Text Label 8410 -1060 2    50   ~ 0
Tri16
Text Label 8685 -1060 2    50   ~ 0
Tri17
Text Label 8960 -1060 2    50   ~ 0
Tri18
Text Label 9000 2600 2    50   ~ 0
Tri1
Text Label 9000 2700 2    50   ~ 0
Tri2
Text Label 9000 2800 2    50   ~ 0
Tri3
Text Label 9000 2900 2    50   ~ 0
Tri4
Text Label 9000 3000 2    50   ~ 0
Tri5
Text Label 9000 3100 2    50   ~ 0
Tri6
Text Label 9000 3350 2    50   ~ 0
Tri7
Text Label 9000 3450 2    50   ~ 0
Tri8
Text Label 9000 3550 2    50   ~ 0
Tri9
Text Label 9000 3650 2    50   ~ 0
Tri10
Text Label 9000 3750 2    50   ~ 0
Tri11
Text Label 9000 3850 2    50   ~ 0
Tri12
Text Label 8990 4790 2    50   ~ 0
Tri13
Text Label 8990 4890 2    50   ~ 0
Tri14
Text Label 8990 4990 2    50   ~ 0
Tri15
Text Label 8990 5090 2    50   ~ 0
Tri16
Text Label 8990 5190 2    50   ~ 0
Tri17
Text Label 8990 5290 2    50   ~ 0
Tri18
Text Label 1250 5640 0    50   ~ 0
C18
Text Label 1250 5540 0    50   ~ 0
C17
Text Label 1250 5440 0    50   ~ 0
C16
Text Label 1250 5340 0    50   ~ 0
C15
NoConn ~ 5600 -2260
NoConn ~ 5600 -2160
NoConn ~ 5600 -2060
NoConn ~ 5600 -1960
NoConn ~ 5600 -1860
NoConn ~ 5600 -1760
$Comp
L power:+3.3V #PWR04
U 1 1 60A1490F
P 1270 6210
F 0 "#PWR04" H 1270 6060 50  0001 C CNN
F 1 "+3.3V" H 1285 6383 50  0000 C CNN
F 2 "" H 1270 6210 50  0001 C CNN
F 3 "" H 1270 6210 50  0001 C CNN
	1    1270 6210
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J10
U 1 1 60A45951
P 9200 2800
F 0 "J10" H 9280 2792 50  0000 L CNN
F 1 "Conn_01x06" H 9280 2701 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-06A_1x06_P2.50mm_Vertical" H 9200 2800 50  0001 C CNN
F 3 "~" H 9200 2800 50  0001 C CNN
	1    9200 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J11
U 1 1 60A470BF
P 9200 3550
F 0 "J11" H 9280 3542 50  0000 L CNN
F 1 "Conn_01x06" H 9280 3451 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-06A_1x06_P2.50mm_Vertical" H 9200 3550 50  0001 C CNN
F 3 "~" H 9200 3550 50  0001 C CNN
	1    9200 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J12
U 1 1 60A47A56
P 9190 4990
F 0 "J12" H 9270 4982 50  0000 L CNN
F 1 "Conn_01x06" H 9270 4891 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-06A_1x06_P2.50mm_Vertical" H 9190 4990 50  0001 C CNN
F 3 "~" H 9190 4990 50  0001 C CNN
	1    9190 4990
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U1
U 1 1 60ED93BF
P 3690 1010
F 0 "U1" H 3690 1327 50  0000 C CNN
F 1 "74LS125" H 3690 1236 50  0000 C CNN
F 2 "" H 3690 1010 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3690 1010 50  0001 C CNN
	1    3690 1010
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U1
U 2 1 60ED9E88
P 4700 1020
F 0 "U1" H 4700 1337 50  0000 C CNN
F 1 "74LS125" H 4700 1246 50  0000 C CNN
F 2 "" H 4700 1020 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4700 1020 50  0001 C CNN
	2    4700 1020
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U1
U 3 1 60EDB612
P 3690 1820
F 0 "U1" H 3690 2137 50  0000 C CNN
F 1 "74LS125" H 3690 2046 50  0000 C CNN
F 2 "" H 3690 1820 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3690 1820 50  0001 C CNN
	3    3690 1820
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U1
U 4 1 60EDEE91
P 4760 1810
F 0 "U1" H 4760 2127 50  0000 C CNN
F 1 "74LS125" H 4760 2036 50  0000 C CNN
F 2 "" H 4760 1810 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4760 1810 50  0001 C CNN
	4    4760 1810
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U2
U 1 1 60F0F6A4
P 3720 2730
F 0 "U2" H 3720 3047 50  0000 C CNN
F 1 "74LS125" H 3720 2956 50  0000 C CNN
F 2 "" H 3720 2730 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3720 2730 50  0001 C CNN
	1    3720 2730
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U2
U 2 1 60F11657
P 4780 2730
F 0 "U2" H 4780 3047 50  0000 C CNN
F 1 "74LS125" H 4780 2956 50  0000 C CNN
F 2 "" H 4780 2730 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4780 2730 50  0001 C CNN
	2    4780 2730
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U2
U 3 1 60F12F75
P 3740 3470
F 0 "U2" H 3740 3787 50  0000 C CNN
F 1 "74LS125" H 3740 3696 50  0000 C CNN
F 2 "" H 3740 3470 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3740 3470 50  0001 C CNN
	3    3740 3470
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U2
U 4 1 60F136FA
P 4800 3470
F 0 "U2" H 4800 3787 50  0000 C CNN
F 1 "74LS125" H 4800 3696 50  0000 C CNN
F 2 "" H 4800 3470 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4800 3470 50  0001 C CNN
	4    4800 3470
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 1 1 60F15C83
P 3730 4340
F 0 "U3" H 3730 4657 50  0000 C CNN
F 1 "74LS125" H 3730 4566 50  0000 C CNN
F 2 "" H 3730 4340 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3730 4340 50  0001 C CNN
	1    3730 4340
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 2 1 60F177FD
P 4700 4340
F 0 "U3" H 4700 4657 50  0000 C CNN
F 1 "74LS125" H 4700 4566 50  0000 C CNN
F 2 "" H 4700 4340 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4700 4340 50  0001 C CNN
	2    4700 4340
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 3 1 60F18082
P 3700 5080
F 0 "U3" H 3700 5397 50  0000 C CNN
F 1 "74LS125" H 3700 5306 50  0000 C CNN
F 2 "" H 3700 5080 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3700 5080 50  0001 C CNN
	3    3700 5080
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U3
U 4 1 60F1893E
P 4730 5070
F 0 "U3" H 4730 5387 50  0000 C CNN
F 1 "74LS125" H 4730 5296 50  0000 C CNN
F 2 "" H 4730 5070 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4730 5070 50  0001 C CNN
	4    4730 5070
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 -1260 4225 -1260
Wire Wire Line
	4325 -1435 4325 -1260
$Comp
L power:GND #PWR023
U 1 1 601DF50A
P 3725 -660
F 0 "#PWR023" H 3725 -910 50  0001 C CNN
F 1 "GND" H 3730 -833 50  0000 C CNN
F 2 "" H 3725 -660 50  0001 C CNN
F 3 "" H 3725 -660 50  0001 C CNN
	1    3725 -660
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 601DF3E9
P 5100 -1760
F 0 "#PWR028" H 5100 -2010 50  0001 C CNN
F 1 "GND" H 5105 -1933 50  0000 C CNN
F 2 "" H 5100 -1760 50  0001 C CNN
F 3 "" H 5100 -1760 50  0001 C CNN
	1    5100 -1760
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 601DF0EA
P 3725 -1760
F 0 "#PWR022" H 3725 -2010 50  0001 C CNN
F 1 "GND" H 3730 -1933 50  0000 C CNN
F 2 "" H 3725 -1760 50  0001 C CNN
F 3 "" H 3725 -1760 50  0001 C CNN
	1    3725 -1760
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 601DEE03
P 5100 -3060
F 0 "#PWR027" H 5100 -3310 50  0001 C CNN
F 1 "GND" H 5105 -3233 50  0000 C CNN
F 2 "" H 5100 -3060 50  0001 C CNN
F 3 "" H 5100 -3060 50  0001 C CNN
	1    5100 -3060
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 601DE71D
P 3725 -3060
F 0 "#PWR021" H 3725 -3310 50  0001 C CNN
F 1 "GND" H 3730 -3233 50  0000 C CNN
F 2 "" H 3725 -3060 50  0001 C CNN
F 3 "" H 3725 -3060 50  0001 C CNN
	1    3725 -3060
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 601DE55F
P 4325 -1435
F 0 "#PWR026" H 4325 -1585 50  0001 C CNN
F 1 "+3.3V" H 4340 -1262 50  0000 C CNN
F 2 "" H 4325 -1435 50  0001 C CNN
F 3 "" H 4325 -1435 50  0001 C CNN
	1    4325 -1435
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 -2360 4225 -2360
Wire Wire Line
	4325 -2535 4325 -2360
$Comp
L power:+3.3V #PWR025
U 1 1 601DD96A
P 4325 -2535
F 0 "#PWR025" H 4325 -2685 50  0001 C CNN
F 1 "+3.3V" H 4340 -2362 50  0000 C CNN
F 2 "" H 4325 -2535 50  0001 C CNN
F 3 "" H 4325 -2535 50  0001 C CNN
	1    4325 -2535
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 -3660 4225 -3660
Wire Wire Line
	4325 -3835 4325 -3660
$Comp
L power:+3.3V #PWR024
U 1 1 601DC4A4
P 4325 -3835
F 0 "#PWR024" H 4325 -3985 50  0001 C CNN
F 1 "+3.3V" H 4340 -3662 50  0000 C CNN
F 2 "" H 4325 -3835 50  0001 C CNN
F 3 "" H 4325 -3835 50  0001 C CNN
	1    4325 -3835
	1    0    0    -1  
$EndComp
Text Label 5100 -1860 2    50   ~ 0
Tri18
Text Label 5100 -2060 2    50   ~ 0
C18
Text Label 5100 -2160 2    50   ~ 0
Tri17
Text Label 5100 -2360 2    50   ~ 0
C17
Text Label 5100 -3160 2    50   ~ 0
Tri14
Text Label 5100 -3360 2    50   ~ 0
C14
Text Label 5100 -3460 2    50   ~ 0
Tri13
Text Label 5100 -3660 2    50   ~ 0
C13
Text Label 4225 -960 0    50   ~ 0
Tri12
Text Label 4225 -1160 0    50   ~ 0
C12
Text Label 4225 -660 0    50   ~ 0
Tri11
Text Label 4225 -860 0    50   ~ 0
C11
Text Label 3725 -760 2    50   ~ 0
Tri10
Text Label 3725 -960 2    50   ~ 0
C10
Text Label 3725 -1060 2    50   ~ 0
Tri9
Text Label 3725 -1260 2    50   ~ 0
C9
Text Label 4225 -2060 0    50   ~ 0
Tri8
Text Label 4225 -2260 0    50   ~ 0
C8
Text Label 4225 -1760 0    50   ~ 0
Tri7
Text Label 4225 -1960 0    50   ~ 0
C7
Text Label 3725 -1860 2    50   ~ 0
Tri6
Text Label 3725 -2060 2    50   ~ 0
C6
Text Label 3725 -2160 2    50   ~ 0
Tri5
Text Label 3725 -2360 2    50   ~ 0
C5
Text Label 4225 -3360 0    50   ~ 0
Tri4
Text Label 4225 -3060 0    50   ~ 0
Tri3
Text Label 4225 -3560 0    50   ~ 0
C4
Text Label 4225 -3260 0    50   ~ 0
C3
Text Label 3725 -3160 2    50   ~ 0
Tri2
Text Label 4225 -760 0    50   ~ 0
pulse
Text Label 4225 -1060 0    50   ~ 0
pulse
Text Label 4225 -2160 0    50   ~ 0
pulse
Text Label 4225 -1860 0    50   ~ 0
pulse
Text Label 4225 -3460 0    50   ~ 0
pulse
Text Label 4225 -3160 0    50   ~ 0
pulse
Text Label 5100 -1960 2    50   ~ 0
pulse
Text Label 5100 -2260 2    50   ~ 0
pulse
Text Label 5100 -3260 2    50   ~ 0
pulse
Text Label 5100 -3560 2    50   ~ 0
pulse
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J9
U 1 1 601D557A
P 5300 -2060
F 0 "J9" H 5350 -1543 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 5350 -1634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5300 -2060 50  0001 C CNN
F 3 "~" H 5300 -2060 50  0001 C CNN
	1    5300 -2060
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J8
U 1 1 601D27E4
P 5300 -3360
F 0 "J8" H 5350 -2843 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 5350 -2934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5300 -3360 50  0001 C CNN
F 3 "~" H 5300 -3360 50  0001 C CNN
	1    5300 -3360
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J7
U 1 1 601D2492
P 3925 -960
F 0 "J7" H 3975 -443 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 3975 -534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3925 -960 50  0001 C CNN
F 3 "~" H 3925 -960 50  0001 C CNN
	1    3925 -960
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J6
U 1 1 601D2299
P 3925 -2060
F 0 "J6" H 3975 -1543 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 3975 -1634 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3925 -2060 50  0001 C CNN
F 3 "~" H 3925 -2060 50  0001 C CNN
	1    3925 -2060
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J5
U 1 1 601CE6C8
P 3925 -3360
F 0 "J5" H 3975 -2843 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 3975 -2934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3925 -3360 50  0001 C CNN
F 3 "~" H 3925 -3360 50  0001 C CNN
	1    3925 -3360
	1    0    0    -1  
$EndComp
Text Label 3725 -860 2    50   ~ 0
pulse
Text Label 3725 -1160 2    50   ~ 0
pulse
Text Label 3725 -1960 2    50   ~ 0
pulse
Text Label 3725 -2260 2    50   ~ 0
pulse
Text Label 3725 -3260 2    50   ~ 0
pulse
Text Label 3725 -3360 2    50   ~ 0
C2
Text Label 3725 -3460 2    50   ~ 0
Tri1
Text Label 3725 -3560 2    50   ~ 0
pulse
Text Label 3725 -3660 2    50   ~ 0
C1
Text Label 1250 4940 0    50   ~ 0
C11
Text Label 1250 5040 0    50   ~ 0
C12
Text Label 1250 5140 0    50   ~ 0
C13
Text Label 1250 5240 0    50   ~ 0
C14
$Comp
L Connector_Generic:Conn_01x09 J3
U 1 1 602061D5
P 1170 3140
F 0 "J3" H 1250 3182 50  0000 L CNN
F 1 "Conn_01x09" H 1250 3091 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-09A_1x09_P2.50mm_Vertical" H 1170 3140 50  0001 C CNN
F 3 "~" H 1170 3140 50  0001 C CNN
	1    1170 3140
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J4
U 1 1 60206BBF
P 1050 5240
F 0 "J4" H 1130 5282 50  0000 L CNN
F 1 "Conn_01x09" H 1130 5191 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-09A_1x09_P2.50mm_Vertical" H 1050 5240 50  0001 C CNN
F 3 "~" H 1050 5240 50  0001 C CNN
	1    1050 5240
	-1   0    0    -1  
$EndComp
Text Label 1370 3540 0    50   ~ 0
C9
Text Label 1370 3440 0    50   ~ 0
C8
Text Label 1370 3340 0    50   ~ 0
C7
Text Label 1370 3240 0    50   ~ 0
C6
Text Label 1370 3140 0    50   ~ 0
C5
Text Label 1370 3040 0    50   ~ 0
C4
Text Label 1370 2940 0    50   ~ 0
C3
Text Label 1250 4840 0    50   ~ 0
C10
Text Label 1370 2740 0    50   ~ 0
C1
Text Label 1370 2840 0    50   ~ 0
C2
$Comp
L power:GND #PWR05
U 1 1 60A151B0
P 1270 6310
F 0 "#PWR05" H 1270 6060 50  0001 C CNN
F 1 "GND" H 1275 6137 50  0000 C CNN
F 2 "" H 1270 6310 50  0001 C CNN
F 3 "" H 1270 6310 50  0001 C CNN
	1    1270 6310
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 60A1400D
P 1070 6210
F 0 "J1" H 1150 6202 50  0000 L CNN
F 1 "Conn_01x02" H 1150 6111 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 1070 6210 50  0001 C CNN
F 3 "~" H 1070 6210 50  0001 C CNN
	1    1070 6210
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60A1340F
P 1190 3930
F 0 "J2" H 1270 3922 50  0000 L CNN
F 1 "Conn_01x02" H 1270 3831 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 1190 3930 50  0001 C CNN
F 3 "~" H 1190 3930 50  0001 C CNN
	1    1190 3930
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3390 1450 4460 1450
Wire Wire Line
	4460 1450 4460 1810
Connection ~ 3390 1450
Wire Wire Line
	3390 1450 3390 1820
$Comp
L 74xx:74LS125 U4
U 1 1 60F58C04
P 3740 5890
F 0 "U4" H 3740 6207 50  0000 C CNN
F 1 "74LS125" H 3740 6116 50  0000 C CNN
F 2 "" H 3740 5890 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3740 5890 50  0001 C CNN
	1    3740 5890
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U4
U 2 1 60F58C0A
P 4710 5890
F 0 "U4" H 4710 6207 50  0000 C CNN
F 1 "74LS125" H 4710 6116 50  0000 C CNN
F 2 "" H 4710 5890 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4710 5890 50  0001 C CNN
	2    4710 5890
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U4
U 3 1 60F58C10
P 3710 6630
F 0 "U4" H 3710 6947 50  0000 C CNN
F 1 "74LS125" H 3710 6856 50  0000 C CNN
F 2 "" H 3710 6630 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3710 6630 50  0001 C CNN
	3    3710 6630
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U4
U 4 1 60F58C16
P 4740 6620
F 0 "U4" H 4740 6937 50  0000 C CNN
F 1 "74LS125" H 4740 6846 50  0000 C CNN
F 2 "" H 4740 6620 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4740 6620 50  0001 C CNN
	4    4740 6620
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3470 4480 3470
Wire Wire Line
	4480 3470 4480 3300
Wire Wire Line
	1390 3930 1390 4030
Text Label 1390 3930 0    50   ~ 0
pulse
Wire Wire Line
	3690 1260 1660 1260
Wire Wire Line
	1660 1260 1660 2740
Wire Wire Line
	1660 2740 1370 2740
Wire Wire Line
	4700 1270 4700 1380
Wire Wire Line
	4700 1380 1760 1380
Wire Wire Line
	1760 1380 1760 2840
Wire Wire Line
	1760 2840 1370 2840
Wire Wire Line
	1370 2940 1890 2940
Wire Wire Line
	1890 2940 1890 2070
Wire Wire Line
	1890 2070 3690 2070
Wire Wire Line
	1370 3040 2030 3040
Wire Wire Line
	2030 3040 2030 2190
Wire Wire Line
	2030 2190 4760 2190
Wire Wire Line
	4760 2190 4760 2060
Wire Wire Line
	1370 3140 2180 3140
Wire Wire Line
	2180 3140 2180 2980
Wire Wire Line
	2180 2980 3720 2980
Wire Wire Line
	1370 3240 2290 3240
Wire Wire Line
	2290 3240 2290 3080
Wire Wire Line
	2290 3080 4780 3080
Wire Wire Line
	4780 3080 4780 2980
Wire Wire Line
	1370 3340 2440 3340
Wire Wire Line
	2440 3340 2440 3720
Wire Wire Line
	2440 3720 3740 3720
Wire Wire Line
	1370 3440 2350 3440
Wire Wire Line
	2350 3440 2350 3840
Wire Wire Line
	2350 3840 4800 3840
Wire Wire Line
	4800 3840 4800 3720
Wire Wire Line
	3420 2730 3420 2560
Wire Wire Line
	4480 2560 4480 2730
Connection ~ 4480 2730
Wire Wire Line
	3440 3470 3420 3470
Wire Wire Line
	3420 3470 3420 3300
Connection ~ 3420 2730
Wire Wire Line
	3420 3300 4480 3300
Connection ~ 3420 3300
Wire Wire Line
	3420 3300 3420 2730
Connection ~ 4480 3300
Wire Wire Line
	4480 3300 4480 2730
Wire Wire Line
	3430 4340 3420 4340
Wire Wire Line
	3400 4340 3400 4910
Wire Wire Line
	4400 4340 4400 4910
Wire Wire Line
	4400 5070 4430 5070
Wire Wire Line
	3440 5890 3410 5890
Wire Wire Line
	3400 5890 3400 5080
Connection ~ 3400 5080
Wire Wire Line
	3410 6630 3410 6470
Connection ~ 3410 5890
Wire Wire Line
	3410 5890 3400 5890
Wire Wire Line
	4410 5890 4410 6470
Wire Wire Line
	4410 6620 4440 6620
Wire Wire Line
	3410 6470 4410 6470
Connection ~ 3410 6470
Wire Wire Line
	3410 6470 3410 5890
Connection ~ 4410 6470
Wire Wire Line
	4410 6470 4410 6620
Wire Wire Line
	3400 4910 4400 4910
Connection ~ 3400 4910
Connection ~ 4400 4910
Wire Wire Line
	4400 4910 4400 5070
Connection ~ 3420 3470
Wire Wire Line
	1390 4030 3420 4030
Wire Wire Line
	3420 3470 3420 4030
Connection ~ 1390 4030
Wire Wire Line
	3420 4030 3420 4340
Connection ~ 3420 4030
Connection ~ 3420 4340
Wire Wire Line
	3420 4340 3400 4340
Wire Wire Line
	3420 2560 4460 2560
Wire Wire Line
	4460 1810 4460 2560
Connection ~ 4460 1810
Connection ~ 4460 2560
Wire Wire Line
	4460 2560 4480 2560
Wire Wire Line
	1370 3540 2280 3540
Wire Wire Line
	2280 3540 2280 4590
Wire Wire Line
	2280 4590 3730 4590
Wire Wire Line
	4700 4590 4700 4680
Wire Wire Line
	4700 4680 1600 4680
Wire Wire Line
	1600 4680 1600 4840
Wire Wire Line
	1600 4840 1250 4840
Wire Wire Line
	2660 4940 2660 5330
Wire Wire Line
	2570 5040 2570 5470
Wire Wire Line
	2480 5140 2480 6140
Wire Wire Line
	2410 5240 2410 6210
Wire Wire Line
	4710 6210 4710 6140
Wire Wire Line
	2330 5340 2330 6880
Wire Wire Line
	1250 4940 2660 4940
Wire Wire Line
	1250 5040 2570 5040
Wire Wire Line
	1250 5140 2480 5140
Wire Wire Line
	1250 5240 2410 5240
Wire Wire Line
	1250 5340 2330 5340
Wire Wire Line
	2660 5330 3700 5330
Wire Wire Line
	2570 5470 4730 5470
Wire Wire Line
	4730 5320 4730 5470
Wire Wire Line
	2480 6140 3740 6140
Wire Wire Line
	2410 6210 4710 6210
Wire Wire Line
	2330 6880 3710 6880
Wire Wire Line
	1250 5440 2230 5440
Wire Wire Line
	2230 5440 2230 6990
Wire Wire Line
	2230 6990 4740 6990
Wire Wire Line
	4740 6990 4740 6870
$Comp
L 74xx:74LS125 U5
U 1 1 6103ADDF
P 3670 7360
F 0 "U5" H 3670 7677 50  0000 C CNN
F 1 "74LS125" H 3670 7586 50  0000 C CNN
F 2 "" H 3670 7360 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3670 7360 50  0001 C CNN
	1    3670 7360
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U5
U 2 1 6103C498
P 4770 7360
F 0 "U5" H 4770 7677 50  0000 C CNN
F 1 "74LS125" H 4770 7586 50  0000 C CNN
F 2 "" H 4770 7360 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 4770 7360 50  0001 C CNN
	2    4770 7360
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1020 4400 840 
Wire Wire Line
	4400 840  3390 840 
Wire Wire Line
	3390 840  3390 1010
Connection ~ 3390 1010
Wire Wire Line
	3390 1010 3390 1450
Wire Wire Line
	3400 4910 3400 5080
Wire Wire Line
	1250 5540 2100 5540
Wire Wire Line
	2100 5540 2100 7610
Wire Wire Line
	2100 7610 3670 7610
Wire Wire Line
	1250 5640 1980 5640
Wire Wire Line
	1980 5640 1980 7700
Wire Wire Line
	1980 7700 4770 7700
Wire Wire Line
	4770 7700 4770 7610
Wire Wire Line
	3370 7360 3370 6470
Wire Wire Line
	3370 6470 3410 6470
Wire Wire Line
	4470 7360 4410 7360
Wire Wire Line
	4410 7360 4410 6620
Connection ~ 4410 6620
Wire Wire Line
	9000 2600 8790 2600
Wire Wire Line
	8790 2600 8790 630 
Wire Wire Line
	8790 630  3990 630 
Wire Wire Line
	3990 630  3990 1010
Wire Wire Line
	8710 1020 5000 1020
Wire Wire Line
	3990 1820 3990 1630
Wire Wire Line
	3990 1630 8600 1630
Wire Wire Line
	8600 1630 8600 2800
Wire Wire Line
	8600 2800 9000 2800
Wire Wire Line
	9000 2700 8710 2700
Wire Wire Line
	8710 1020 8710 2700
Wire Wire Line
	9000 2900 8500 2900
Wire Wire Line
	8500 2900 8500 1810
Wire Wire Line
	8500 1810 5060 1810
Wire Wire Line
	9000 3000 8400 3000
Wire Wire Line
	8400 3000 8400 2300
Wire Wire Line
	8400 2300 4020 2300
Wire Wire Line
	4020 2300 4020 2730
Wire Wire Line
	9000 3100 8300 3100
Wire Wire Line
	8300 3100 8300 2730
Wire Wire Line
	8300 2730 5080 2730
Wire Wire Line
	4040 3350 4040 3470
Wire Wire Line
	4040 3350 9000 3350
Wire Wire Line
	9000 3450 5100 3450
Wire Wire Line
	5100 3450 5100 3470
Wire Wire Line
	9000 3550 5050 3550
Wire Wire Line
	5050 3550 5050 3930
Wire Wire Line
	5050 3930 4030 3930
Wire Wire Line
	4030 3930 4030 4340
Wire Wire Line
	9000 3650 5180 3650
Wire Wire Line
	5180 3650 5180 4340
Wire Wire Line
	5180 4340 5000 4340
Wire Wire Line
	9000 3750 5320 3750
Wire Wire Line
	5320 3750 5320 4800
Wire Wire Line
	5320 4800 4000 4800
Wire Wire Line
	4000 4800 4000 5080
Wire Wire Line
	9000 3850 5470 3850
Wire Wire Line
	5470 3850 5470 5070
Wire Wire Line
	5470 5070 5030 5070
Wire Wire Line
	8990 4790 5590 4790
Wire Wire Line
	5590 4790 5590 5610
Wire Wire Line
	5590 5610 4040 5610
Wire Wire Line
	4040 5610 4040 5890
Wire Wire Line
	8990 4890 5700 4890
Wire Wire Line
	5700 4890 5700 5890
Wire Wire Line
	5700 5890 5010 5890
Wire Wire Line
	8990 4990 5840 4990
Wire Wire Line
	5840 4990 5840 6350
Wire Wire Line
	5840 6350 4010 6350
Wire Wire Line
	4010 6350 4010 6630
Wire Wire Line
	8990 5090 6000 5090
Wire Wire Line
	6000 5090 6000 6620
Wire Wire Line
	6000 6620 5040 6620
Wire Wire Line
	8990 5190 6130 5190
Wire Wire Line
	3970 7080 3970 7360
Wire Wire Line
	8990 5290 6300 5290
Wire Wire Line
	6300 5290 6300 7360
Wire Wire Line
	6300 7360 5070 7360
Wire Wire Line
	6130 5190 6130 7080
Wire Wire Line
	3970 7080 6130 7080
$EndSCHEMATC