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
L 74xx:74LS595 U1
U 1 1 60A5C061
P 3800 2970
F 0 "U1" H 3800 3751 50  0000 C CNN
F 1 "74LS595" H 3800 3660 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 3800 2970 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls595" H 3800 2970 50  0001 C CNN
	1    3800 2970
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS595 U2
U 1 1 60A5D612
P 5410 2960
F 0 "U2" H 5410 3741 50  0000 C CNN
F 1 "74LS595" H 5410 3650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5410 2960 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls595" H 5410 2960 50  0001 C CNN
	1    5410 2960
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS595 U3
U 1 1 60A5DABA
P 6900 2960
F 0 "U3" H 6900 3741 50  0000 C CNN
F 1 "74LS595" H 6900 3650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 6900 2960 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls595" H 6900 2960 50  0001 C CNN
	1    6900 2960
	1    0    0    -1  
$EndComp
Text Label 5810 2560 0    50   ~ 0
B0
Text Label 5810 2660 0    50   ~ 0
B1
Text Label 5810 2760 0    50   ~ 0
B2
Text Label 5810 2860 0    50   ~ 0
B3
Text Label 5810 2960 0    50   ~ 0
B4
Text Label 5810 3060 0    50   ~ 0
B5
Text Label 5810 3160 0    50   ~ 0
B6
Text Label 5810 3260 0    50   ~ 0
B7
Text Label 7300 2560 0    50   ~ 0
C0
Text Label 7300 2660 0    50   ~ 0
C1
NoConn ~ 7300 2760
NoConn ~ 7300 2860
NoConn ~ 7300 2960
NoConn ~ 7300 3060
NoConn ~ 7300 3160
NoConn ~ 7300 3260
Text Label 4200 3470 0    50   ~ 0
AtoB
Text Label 5010 2560 2    50   ~ 0
AtoB
Text Label 5810 3460 0    50   ~ 0
BtoC
Text Label 6500 2560 2    50   ~ 0
BtoC
Text Label 3400 2570 2    50   ~ 0
data
Text Label 3400 2770 2    50   ~ 0
clk
Text Label 3400 3070 2    50   ~ 0
latch
Text Label 5010 2760 2    50   ~ 0
clk
Text Label 5010 3060 2    50   ~ 0
latch
Text Label 6500 2760 2    50   ~ 0
clk
Text Label 6500 3060 2    50   ~ 0
latch
$Comp
L Connector_Generic:Conn_01x09 J3
U 1 1 60A639BA
P 5200 4410
F 0 "J3" H 5280 4452 50  0000 L CNN
F 1 "Conn_01x09" H 5280 4361 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-09A_1x09_P2.50mm_Vertical" H 5200 4410 50  0001 C CNN
F 3 "~" H 5200 4410 50  0001 C CNN
	1    5200 4410
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J4
U 1 1 60A64234
P 6200 4400
F 0 "J4" H 6280 4442 50  0000 L CNN
F 1 "Conn_01x09" H 6280 4351 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-09A_1x09_P2.50mm_Vertical" H 6200 4400 50  0001 C CNN
F 3 "~" H 6200 4400 50  0001 C CNN
	1    6200 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 60A64CF9
P 3500 4600
F 0 "J2" H 3580 4592 50  0000 L CNN
F 1 "Conn_01x02" H 3580 4501 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-02A_1x02_P2.50mm_Vertical" H 3500 4600 50  0001 C CNN
F 3 "~" H 3500 4600 50  0001 C CNN
	1    3500 4600
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 60A654E3
P 3500 4200
F 0 "J1" H 3580 4242 50  0000 L CNN
F 1 "Conn_01x03" H 3580 4151 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5267-03A_1x03_P2.50mm_Vertical" H 3500 4200 50  0001 C CNN
F 3 "~" H 3500 4200 50  0001 C CNN
	1    3500 4200
	-1   0    0    -1  
$EndComp
Text Label 4200 3270 0    50   ~ 0
A7
Text Label 4200 3170 0    50   ~ 0
A6
Text Label 4200 3070 0    50   ~ 0
A5
Text Label 4200 2970 0    50   ~ 0
A4
Text Label 4200 2870 0    50   ~ 0
A3
Text Label 4200 2770 0    50   ~ 0
A2
Text Label 4200 2670 0    50   ~ 0
A1
Text Label 4200 2570 0    50   ~ 0
A0
Text Label 5000 4710 2    50   ~ 0
A7
Text Label 5000 4610 2    50   ~ 0
A6
Text Label 5000 4510 2    50   ~ 0
A5
Text Label 5000 4410 2    50   ~ 0
A4
Text Label 5000 4310 2    50   ~ 0
A3
Text Label 5000 4210 2    50   ~ 0
A2
Text Label 5000 4110 2    50   ~ 0
A1
Text Label 5000 4010 2    50   ~ 0
A0
Text Label 6000 4600 2    50   ~ 0
B7
Text Label 6000 4500 2    50   ~ 0
B6
Text Label 6000 4400 2    50   ~ 0
B5
Text Label 6000 4300 2    50   ~ 0
B4
Text Label 6000 4200 2    50   ~ 0
B3
Text Label 6000 4100 2    50   ~ 0
B2
Text Label 6000 4000 2    50   ~ 0
B1
Text Label 6000 4700 2    50   ~ 0
C0
Text Label 6000 4800 2    50   ~ 0
C1
Text Label 5000 4810 2    50   ~ 0
B0
$Comp
L power:+3.3V #PWR05
U 1 1 60A67965
P 3900 4600
F 0 "#PWR05" H 3900 4450 50  0001 C CNN
F 1 "+3.3V" H 3915 4773 50  0000 C CNN
F 2 "" H 3900 4600 50  0001 C CNN
F 3 "" H 3900 4600 50  0001 C CNN
	1    3900 4600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60A68469
P 3900 4700
F 0 "#PWR06" H 3900 4450 50  0001 C CNN
F 1 "GND" H 3905 4527 50  0000 C CNN
F 2 "" H 3900 4700 50  0001 C CNN
F 3 "" H 3900 4700 50  0001 C CNN
	1    3900 4700
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 60A68F6D
P 3800 2100
F 0 "#PWR03" H 3800 1950 50  0001 C CNN
F 1 "+3.3V" H 3815 2273 50  0000 C CNN
F 2 "" H 3800 2100 50  0001 C CNN
F 3 "" H 3800 2100 50  0001 C CNN
	1    3800 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 60A698B5
P 5410 2090
F 0 "#PWR09" H 5410 1940 50  0001 C CNN
F 1 "+3.3V" H 5425 2263 50  0000 C CNN
F 2 "" H 5410 2090 50  0001 C CNN
F 3 "" H 5410 2090 50  0001 C CNN
	1    5410 2090
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 60A69C76
P 6900 2100
F 0 "#PWR013" H 6900 1950 50  0001 C CNN
F 1 "+3.3V" H 6915 2273 50  0000 C CNN
F 2 "" H 6900 2100 50  0001 C CNN
F 3 "" H 6900 2100 50  0001 C CNN
	1    6900 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60A69EC3
P 3800 3670
F 0 "#PWR04" H 3800 3420 50  0001 C CNN
F 1 "GND" H 3805 3497 50  0000 C CNN
F 2 "" H 3800 3670 50  0001 C CNN
F 3 "" H 3800 3670 50  0001 C CNN
	1    3800 3670
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60A6A30B
P 5410 3660
F 0 "#PWR010" H 5410 3410 50  0001 C CNN
F 1 "GND" H 5415 3487 50  0000 C CNN
F 2 "" H 5410 3660 50  0001 C CNN
F 3 "" H 5410 3660 50  0001 C CNN
	1    5410 3660
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60A6A5BC
P 6900 3660
F 0 "#PWR014" H 6900 3410 50  0001 C CNN
F 1 "GND" H 6905 3487 50  0000 C CNN
F 2 "" H 6900 3660 50  0001 C CNN
F 3 "" H 6900 3660 50  0001 C CNN
	1    6900 3660
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60A6A6DE
P 3400 3170
F 0 "#PWR02" H 3400 2920 50  0001 C CNN
F 1 "GND" H 3405 2997 50  0000 C CNN
F 2 "" H 3400 3170 50  0001 C CNN
F 3 "" H 3400 3170 50  0001 C CNN
	1    3400 3170
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60A6AA35
P 5010 3160
F 0 "#PWR08" H 5010 2910 50  0001 C CNN
F 1 "GND" H 5015 2987 50  0000 C CNN
F 2 "" H 5010 3160 50  0001 C CNN
F 3 "" H 5010 3160 50  0001 C CNN
	1    5010 3160
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60A6ACF7
P 6500 3160
F 0 "#PWR012" H 6500 2910 50  0001 C CNN
F 1 "GND" H 6505 2987 50  0000 C CNN
F 2 "" H 6500 3160 50  0001 C CNN
F 3 "" H 6500 3160 50  0001 C CNN
	1    6500 3160
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 60A6AFEB
P 3150 2870
F 0 "#PWR01" H 3150 2720 50  0001 C CNN
F 1 "+3.3V" H 3165 3043 50  0000 C CNN
F 2 "" H 3150 2870 50  0001 C CNN
F 3 "" H 3150 2870 50  0001 C CNN
	1    3150 2870
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 60A6B2B3
P 4740 2860
F 0 "#PWR07" H 4740 2710 50  0001 C CNN
F 1 "+3.3V" H 4755 3033 50  0000 C CNN
F 2 "" H 4740 2860 50  0001 C CNN
F 3 "" H 4740 2860 50  0001 C CNN
	1    4740 2860
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR011
U 1 1 60A6BB63
P 6250 2860
F 0 "#PWR011" H 6250 2710 50  0001 C CNN
F 1 "+3.3V" H 6265 3033 50  0000 C CNN
F 2 "" H 6250 2860 50  0001 C CNN
F 3 "" H 6250 2860 50  0001 C CNN
	1    6250 2860
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2860 6250 2860
Wire Wire Line
	4740 2860 5010 2860
Wire Wire Line
	3150 2870 3400 2870
Wire Wire Line
	3800 2100 3800 2370
Wire Wire Line
	5410 2090 5410 2360
Wire Wire Line
	6900 2100 6900 2360
Wire Wire Line
	3900 4600 3700 4600
Wire Wire Line
	3900 4700 3700 4700
Text Label 3700 4200 0    50   ~ 0
clk
Text Label 3700 4300 0    50   ~ 0
data
Text Label 3700 4100 0    50   ~ 0
latch
NoConn ~ 7300 3460
$EndSCHEMATC
