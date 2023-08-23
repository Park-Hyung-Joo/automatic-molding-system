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
L Mechanical:MountingHole_Pad H1
U 1 1 609F8BCE
P 2580 5730
F 0 "H1" H 2680 5779 50  0000 L CNN
F 1 "MountingHole_Pad" H 2680 5688 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-1.5sqmm_1x01_D1.7mm_OD3.9mm" H 2580 5730 50  0001 C CNN
F 3 "~" H 2580 5730 50  0001 C CNN
	1    2580 5730
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 609F97AC
P 3500 5220
F 0 "H3" H 3600 5269 50  0000 L CNN
F 1 "MountingHole_Pad" H 3600 5178 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-1.5sqmm_1x01_D1.7mm_OD3.9mm" H 3500 5220 50  0001 C CNN
F 3 "~" H 3500 5220 50  0001 C CNN
	1    3500 5220
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 609FA1CE
P 2590 5220
F 0 "H2" H 2690 5269 50  0000 L CNN
F 1 "MountingHole_Pad" H 2690 5178 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-1.5sqmm_1x01_D1.7mm_OD3.9mm" H 2590 5220 50  0001 C CNN
F 3 "~" H 2590 5220 50  0001 C CNN
	1    2590 5220
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 609FB208
P 3520 5710
F 0 "H4" H 3620 5759 50  0000 L CNN
F 1 "MountingHole_Pad" H 3620 5668 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-1.5sqmm_1x01_D1.7mm_OD3.9mm" H 3520 5710 50  0001 C CNN
F 3 "~" H 3520 5710 50  0001 C CNN
	1    3520 5710
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 609FBCDD
P 2580 5830
F 0 "#PWR01" H 2580 5580 50  0001 C CNN
F 1 "GND" H 2585 5657 50  0000 C CNN
F 2 "" H 2580 5830 50  0001 C CNN
F 3 "" H 2580 5830 50  0001 C CNN
	1    2580 5830
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 609FC52E
P 3520 5810
F 0 "#PWR05" H 3520 5560 50  0001 C CNN
F 1 "GND" H 3525 5637 50  0000 C CNN
F 2 "" H 3520 5810 50  0001 C CNN
F 3 "" H 3520 5810 50  0001 C CNN
	1    3520 5810
	1    0    0    -1  
$EndComp
Wire Wire Line
	2590 5320 2590 5420
Wire Wire Line
	3500 5320 3500 5410
Wire Wire Line
	3500 5410 3290 5410
$Comp
L Connector:Barrel_Jack_Switch J7
U 1 1 609FE6DE
P 2715 2000
F 0 "J7" H 2772 2317 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 2772 2226 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 2765 1960 50  0001 C CNN
F 3 "~" H 2765 1960 50  0001 C CNN
	1    2715 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 609FF8E7
P 3015 2100
F 0 "#PWR03" H 3015 1850 50  0001 C CNN
F 1 "GND" H 3020 1927 50  0000 C CNN
F 2 "" H 3015 2100 50  0001 C CNN
F 3 "" H 3015 2100 50  0001 C CNN
	1    3015 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR06
U 1 1 609FFBA5
P 3385 1900
F 0 "#PWR06" H 3385 1750 50  0001 C CNN
F 1 "+12V" H 3400 2073 50  0000 C CNN
F 2 "" H 3385 1900 50  0001 C CNN
F 3 "" H 3385 1900 50  0001 C CNN
	1    3385 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 60A00A92
P 3290 5410
F 0 "#PWR04" H 3290 5260 50  0001 C CNN
F 1 "+3.3V" V 3305 5538 50  0000 L CNN
F 2 "" H 3290 5410 50  0001 C CNN
F 3 "" H 3290 5410 50  0001 C CNN
	1    3290 5410
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR02
U 1 1 60A01854
P 2590 5420
F 0 "#PWR02" H 2590 5270 50  0001 C CNN
F 1 "+12V" V 2605 5548 50  0000 L CNN
F 2 "" H 2590 5420 50  0001 C CNN
F 3 "" H 2590 5420 50  0001 C CNN
	1    2590 5420
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 60A0DF39
P 2665 2540
F 0 "J1" H 2773 2721 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2773 2630 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 2665 2540 50  0001 C CNN
F 3 "~" H 2665 2540 50  0001 C CNN
	1    2665 2540
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 60A0ED44
P 2665 2900
F 0 "J2" H 2773 3081 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2773 2990 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 2665 2900 50  0001 C CNN
F 3 "~" H 2665 2900 50  0001 C CNN
	1    2665 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 60A0F963
P 2665 3300
F 0 "J3" H 2773 3481 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2773 3390 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 2665 3300 50  0001 C CNN
F 3 "~" H 2665 3300 50  0001 C CNN
	1    2665 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 60A10072
P 2665 3660
F 0 "J4" H 2773 3841 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2773 3750 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 2665 3660 50  0001 C CNN
F 3 "~" H 2665 3660 50  0001 C CNN
	1    2665 3660
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 60A1070D
P 2665 4060
F 0 "J5" H 2773 4241 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2773 4150 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 2665 4060 50  0001 C CNN
F 3 "~" H 2665 4060 50  0001 C CNN
	1    2665 4060
	1    0    0    -1  
$EndComp
Text Label 3165 2540 0    50   ~ 0
gnd_triac
Text Label 3165 2900 0    50   ~ 0
gnd_triac
Text Label 3165 3300 0    50   ~ 0
gnd_triac
Text Label 3165 3660 0    50   ~ 0
vcc_decoder
Text Label 3165 3760 0    50   ~ 0
gnd_decoder
Text Label 3165 4060 0    50   ~ 0
vcc_shift
Text Label 3165 4160 0    50   ~ 0
gnd_shift
Wire Wire Line
	3165 2540 2865 2540
Wire Wire Line
	2865 2640 2865 2540
Connection ~ 2865 2540
Wire Wire Line
	3165 2900 2865 2900
Wire Wire Line
	2865 3000 2865 2900
Connection ~ 2865 2900
Wire Wire Line
	2865 3400 2865 3300
Connection ~ 2865 3300
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 60A1EE5A
P 2685 4400
F 0 "J6" H 2793 4581 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2793 4490 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 2685 4400 50  0001 C CNN
F 3 "~" H 2685 4400 50  0001 C CNN
	1    2685 4400
	1    0    0    -1  
$EndComp
Text Label 3165 4400 0    50   ~ 0
vcc_sensor
Text Label 3165 4500 0    50   ~ 0
gnd_sensor
Text Label 4525 3365 0    50   ~ 0
gnd_triac
$Comp
L power:GND #PWR08
U 1 1 60A20681
P 4325 3365
F 0 "#PWR08" H 4325 3115 50  0001 C CNN
F 1 "GND" H 4330 3192 50  0000 C CNN
F 2 "" H 4325 3365 50  0001 C CNN
F 3 "" H 4325 3365 50  0001 C CNN
	1    4325 3365
	1    0    0    -1  
$EndComp
Text Label 4525 3265 0    50   ~ 0
gnd_decoder
Text Label 4525 3165 0    50   ~ 0
gnd_sensor
Text Label 4525 3065 0    50   ~ 0
gnd_shift
Wire Wire Line
	4325 3365 4525 3365
Text Label 4415 3890 0    50   ~ 0
vcc_decoder
Text Label 4415 3990 0    50   ~ 0
vcc_sensor
Text Label 4415 4090 0    50   ~ 0
vcc_shift
$Comp
L power:+3.3V #PWR07
U 1 1 60A21F5B
P 4285 3890
F 0 "#PWR07" H 4285 3740 50  0001 C CNN
F 1 "+3.3V" H 4300 4063 50  0000 C CNN
F 2 "" H 4285 3890 50  0001 C CNN
F 3 "" H 4285 3890 50  0001 C CNN
	1    4285 3890
	1    0    0    -1  
$EndComp
Wire Wire Line
	4285 3890 4415 3890
Wire Wire Line
	3015 1900 3385 1900
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 60A26140
P 2685 4740
F 0 "J8" H 2793 4921 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2793 4830 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 2685 4740 50  0001 C CNN
F 3 "~" H 2685 4740 50  0001 C CNN
	1    2685 4740
	1    0    0    -1  
$EndComp
Text Label 3185 4740 0    50   ~ 0
gnd_triac_valve
Wire Wire Line
	2885 4840 2885 4740
Connection ~ 2885 4740
Text Label 4525 2965 0    50   ~ 0
gnd_triac_valve
$Comp
L Connector:Conn_01x02_Male J10
U 1 1 60DC54B2
P 6205 3875
F 0 "J10" H 6313 4056 50  0000 C CNN
F 1 "Conn_01x02_Male" H 6313 3965 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 6205 3875 50  0001 C CNN
F 3 "~" H 6205 3875 50  0001 C CNN
	1    6205 3875
	-1   0    0    -1  
$EndComp
Text Label 5725 3875 2    50   ~ 0
vcc_buffer
Text Label 5725 3975 2    50   ~ 0
gnd_buffer
Wire Wire Line
	6005 3975 5725 3975
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 60DC60D3
P 6220 3450
F 0 "J9" H 6328 3631 50  0000 C CNN
F 1 "Conn_01x02_Male" H 6328 3540 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 6220 3450 50  0001 C CNN
F 3 "~" H 6220 3450 50  0001 C CNN
	1    6220 3450
	-1   0    0    -1  
$EndComp
Text Label 5740 3450 2    50   ~ 0
vcc_zero
Text Label 5740 3550 2    50   ~ 0
gnd_zero
Text Label 4415 4190 0    50   ~ 0
vcc_zero
Text Label 4415 4290 0    50   ~ 0
vcc_buffer
Wire Wire Line
	4415 3890 4415 4290
Text Label 4525 2865 0    50   ~ 0
gnd_zero
Text Label 4525 2765 0    50   ~ 0
gnd_buffer
Wire Wire Line
	4525 2765 4525 3365
Wire Wire Line
	4325 3300 4325 3365
Wire Wire Line
	2865 3300 3165 3300
Connection ~ 4325 3365
Wire Wire Line
	3165 2900 3165 3300
Connection ~ 3165 3300
Wire Wire Line
	3165 3300 3800 3300
Wire Wire Line
	3165 2540 3165 2900
Connection ~ 3165 2900
Wire Wire Line
	3800 3760 3800 3300
Wire Wire Line
	2865 3760 3800 3760
Connection ~ 3800 3300
Wire Wire Line
	3800 3300 4325 3300
Wire Wire Line
	3800 4160 3800 3760
Wire Wire Line
	2865 4160 3800 4160
Connection ~ 3800 3760
Wire Wire Line
	3800 4500 3800 4160
Wire Wire Line
	2885 4500 3800 4500
Connection ~ 3800 4160
Wire Wire Line
	3800 4740 3800 4500
Wire Wire Line
	2885 4740 3800 4740
Connection ~ 3800 4500
Wire Wire Line
	4155 3660 4155 3890
Wire Wire Line
	4155 3890 4285 3890
Wire Wire Line
	2865 3660 4155 3660
Connection ~ 4285 3890
Wire Wire Line
	4285 4060 4285 3890
Wire Wire Line
	2865 4060 4285 4060
Wire Wire Line
	4285 4400 4285 4060
Wire Wire Line
	2885 4400 4285 4400
Connection ~ 4285 4060
Wire Wire Line
	4900 3450 4900 3875
Wire Wire Line
	4900 3890 4415 3890
Wire Wire Line
	4900 3450 6020 3450
Connection ~ 4415 3890
Wire Wire Line
	4900 3875 5725 3875
Connection ~ 4900 3875
Wire Wire Line
	4900 3875 4900 3890
Wire Wire Line
	4525 3550 4525 3365
Wire Wire Line
	4525 3550 5725 3550
Connection ~ 4525 3365
Wire Wire Line
	5725 3975 5725 3875
Connection ~ 5725 3550
Wire Wire Line
	5725 3550 6020 3550
Connection ~ 5725 3875
Wire Wire Line
	5725 3875 6005 3875
Wire Wire Line
	5725 3875 5725 3550
$EndSCHEMATC
