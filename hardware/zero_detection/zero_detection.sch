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
$Comp
L Isolator:4N35 U1
U 1 1 6016FB2C
P 4550 4650
F 0 "U1" H 4550 4975 50  0000 C CNN
F 1 "4N35" H 4550 4884 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 4350 4450 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 4550 4650 50  0001 L CNN
	1    4550 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60172165
P 4050 4550
F 0 "R1" V 3843 4550 50  0000 C CNN
F 1 "47k" V 3934 4550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L25.0mm_W9.0mm_P27.94mm" V 3980 4550 50  0001 C CNN
F 3 "~" H 4050 4550 50  0001 C CNN
	1    4050 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60173376
P 4050 4750
F 0 "R2" V 3843 4750 50  0000 C CNN
F 1 "47k" V 3934 4750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L25.0mm_W9.0mm_P27.94mm" V 3980 4750 50  0001 C CNN
F 3 "~" H 4050 4750 50  0001 C CNN
	1    4050 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 4550 4250 4550
Wire Wire Line
	4200 4750 4250 4750
Wire Wire Line
	3450 4200 3450 4550
Wire Wire Line
	3450 4550 3900 4550
Wire Wire Line
	2850 4200 2850 4750
$Comp
L Device:R R3
U 1 1 6017753A
P 4950 4300
F 0 "R3" H 5020 4346 50  0000 L CNN
F 1 "1k" H 5020 4255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4880 4300 50  0001 C CNN
F 3 "~" H 4950 4300 50  0001 C CNN
	1    4950 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 6017BC07
P 2350 4100
F 0 "J1" H 2268 4317 50  0000 C CNN
F 1 "VAC" H 2268 4226 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 2350 4100 50  0001 C CNN
F 3 "~" H 2350 4100 50  0001 C CNN
	1    2350 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2550 4100 2550 3900
Wire Wire Line
	2550 3900 3150 3900
Wire Wire Line
	3150 4500 2550 4500
Wire Wire Line
	2550 4500 2550 4200
Wire Wire Line
	2850 4750 3900 4750
Wire Wire Line
	4950 4450 4950 4550
Wire Wire Line
	4950 4650 4850 4650
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 6017E619
P 5550 4250
F 0 "J2" H 5630 4242 50  0000 L CNN
F 1 "VDC" H 5630 4151 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 5550 4250 50  0001 C CNN
F 3 "~" H 5550 4250 50  0001 C CNN
	1    5550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4250 5350 4150
Wire Wire Line
	5350 4150 4950 4150
Connection ~ 4950 4550
Wire Wire Line
	4950 4550 4950 4650
Wire Wire Line
	5200 4350 5350 4350
NoConn ~ 4850 4550
Wire Wire Line
	5200 4350 5200 4750
Wire Wire Line
	5200 4750 5150 4750
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 6017EED1
P 5900 4550
F 0 "J3" H 5980 4542 50  0000 L CNN
F 1 "zero_detection" H 5980 4451 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 5900 4550 50  0001 C CNN
F 3 "~" H 5900 4550 50  0001 C CNN
	1    5900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4550 5700 4650
Wire Wire Line
	4950 4550 5700 4550
Connection ~ 5700 4550
$Comp
L Device:D_Bridge_+A-A D1
U 1 1 601B7CD5
P 3150 4200
F 0 "D1" H 3494 4246 50  0000 L CNN
F 1 "D_Bridge_+A-A" H 3494 4155 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_Round_D9.0mm" H 3150 4200 50  0001 C CNN
F 3 "~" H 3150 4200 50  0001 C CNN
	1    3150 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDS #PWR0101
U 1 1 601A3957
P 5150 4750
F 0 "#PWR0101" H 5150 4500 50  0001 C CNN
F 1 "GNDS" H 5155 4577 50  0000 C CNN
F 2 "" H 5150 4750 50  0001 C CNN
F 3 "" H 5150 4750 50  0001 C CNN
	1    5150 4750
	1    0    0    -1  
$EndComp
Connection ~ 5150 4750
Wire Wire Line
	5150 4750 4850 4750
$EndSCHEMATC
