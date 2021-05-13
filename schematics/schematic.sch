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
L CPU_NXP_6800:MC6809 U0
U 1 1 609C384B
P 2750 2750
F 0 "U0" H 2750 4331 50  0000 C CNN
F 1 "MC6809" H 2750 4240 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 2750 1250 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheet/motorola/MC68B09S.pdf" H 2750 2750 50  0001 C CNN
	1    2750 2750
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:CY62256-70PC U1
U 1 1 609CA309
P 6100 2250
F 0 "U1" H 6100 3331 50  0000 C CNN
F 1 "62256" H 6100 3240 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 6100 2150 50  0001 C CNN
F 3 "https://ecee.colorado.edu/~mcclurel/Cypress_SRAM_CY62256.pdf" H 6100 2150 50  0001 C CNN
	1    6100 2250
	1    0    0    -1  
$EndComp
Entry Wire Line
	6800 2750 6900 2850
Entry Wire Line
	6800 2250 6900 2350
Entry Wire Line
	6800 2150 6900 2250
Entry Wire Line
	6800 2050 6900 2150
Entry Wire Line
	6800 1950 6900 2050
Entry Wire Line
	6800 1850 6900 1950
Entry Wire Line
	6800 1750 6900 1850
Entry Wire Line
	6800 1650 6900 1750
Entry Wire Line
	6800 1550 6900 1650
Wire Wire Line
	6600 2750 6800 2750
Wire Wire Line
	6600 2250 6800 2250
Wire Wire Line
	6600 2150 6800 2150
Wire Wire Line
	6600 1950 6800 1950
Wire Wire Line
	6600 1850 6800 1850
Wire Wire Line
	6600 2050 6800 2050
Wire Wire Line
	6800 1750 6600 1750
Wire Wire Line
	6800 1650 6600 1650
Wire Wire Line
	6800 1550 6600 1550
Text Label 6600 1550 0    50   ~ 0
D0
Text Label 6600 1650 0    50   ~ 0
D1
Text Label 6600 1750 0    50   ~ 0
D2
Text Label 6600 1850 0    50   ~ 0
D3
Text Label 6600 1950 0    50   ~ 0
D4
Text Label 6600 2050 0    50   ~ 0
D5
Text Label 6600 2150 0    50   ~ 0
D6
Text Label 6600 2250 0    50   ~ 0
D7
Entry Wire Line
	5400 2250 5300 2350
Entry Wire Line
	5400 2150 5300 2250
Entry Wire Line
	5400 2050 5300 2150
Entry Wire Line
	5400 1950 5300 2050
Entry Wire Line
	5400 1850 5300 1950
Entry Wire Line
	5400 1750 5300 1850
Entry Wire Line
	5400 1650 5300 1750
Entry Wire Line
	5400 1550 5300 1650
Entry Wire Line
	5400 2850 5300 2950
Entry Wire Line
	5400 2750 5300 2850
Entry Wire Line
	5400 2650 5300 2750
Entry Wire Line
	5400 2550 5300 2650
Entry Wire Line
	5400 2450 5300 2550
Entry Wire Line
	5400 2350 5300 2450
Entry Wire Line
	5400 2950 5300 3050
$Comp
L power:VCC #PWR0101
U 1 1 60A2175B
P 6500 1350
F 0 "#PWR0101" H 6500 1200 50  0001 C CNN
F 1 "VCC" H 6515 1523 50  0000 C CNN
F 2 "" H 6500 1350 50  0001 C CNN
F 3 "" H 6500 1350 50  0001 C CNN
	1    6500 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60A228D7
P 5700 3150
F 0 "#PWR0102" H 5700 2900 50  0001 C CNN
F 1 "GND" H 5705 2977 50  0000 C CNN
F 2 "" H 5700 3150 50  0001 C CNN
F 3 "" H 5700 3150 50  0001 C CNN
	1    5700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1350 6100 1350
Text Label 6600 2750 0    50   ~ 0
WE
$Comp
L power:VCC #PWR0103
U 1 1 60A2EAAA
P 3150 1350
F 0 "#PWR0103" H 3150 1200 50  0001 C CNN
F 1 "VCC" H 3165 1523 50  0000 C CNN
F 2 "" H 3150 1350 50  0001 C CNN
F 3 "" H 3150 1350 50  0001 C CNN
	1    3150 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60A393DA
P 2350 4150
F 0 "#PWR0104" H 2350 3900 50  0001 C CNN
F 1 "GND" H 2355 3977 50  0000 C CNN
F 2 "" H 2350 4150 50  0001 C CNN
F 3 "" H 2350 4150 50  0001 C CNN
	1    2350 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4150 2350 4150
Wire Wire Line
	2750 1350 3150 1350
Entry Wire Line
	3450 1550 3550 1650
Entry Wire Line
	3450 1650 3550 1750
Entry Wire Line
	3450 1750 3550 1850
Entry Wire Line
	3450 1850 3550 1950
Entry Wire Line
	3450 1950 3550 2050
Entry Wire Line
	3450 2050 3550 2150
Entry Wire Line
	3450 2150 3550 2250
Entry Wire Line
	3450 2250 3550 2350
Entry Wire Line
	3450 2350 3550 2450
Entry Wire Line
	3450 2450 3550 2550
Entry Wire Line
	3450 2550 3550 2650
Entry Wire Line
	3450 2650 3550 2750
Entry Wire Line
	3450 2750 3550 2850
Entry Wire Line
	3450 2850 3550 2950
Entry Wire Line
	3450 2950 3550 3050
Entry Wire Line
	3450 3050 3550 3150
Entry Wire Line
	3450 3250 3550 3350
Entry Wire Line
	2050 1550 1950 1650
Entry Wire Line
	2050 1650 1950 1750
Entry Wire Line
	2050 1750 1950 1850
Entry Wire Line
	2050 1950 1950 2050
Entry Wire Line
	2050 2050 1950 2150
Entry Wire Line
	2050 1850 1950 1950
Entry Wire Line
	2050 2150 1950 2250
Entry Wire Line
	2050 2250 1950 2350
Wire Bus Line
	6900 3450 5300 3450
Wire Bus Line
	5300 3450 3550 3450
Connection ~ 5300 3450
Connection ~ 3550 3450
Wire Bus Line
	3550 3450 3550 4450
Wire Bus Line
	1950 4450 3550 4450
Wire Wire Line
	2050 1550 2250 1550
Wire Wire Line
	2250 1650 2050 1650
Wire Wire Line
	2050 1750 2250 1750
Wire Wire Line
	2250 1850 2050 1850
Wire Wire Line
	2050 1950 2250 1950
Wire Wire Line
	2250 2050 2050 2050
Wire Wire Line
	2050 2150 2250 2150
Wire Wire Line
	2250 2250 2050 2250
Text Label 5600 2950 2    50   ~ 0
A14
Text Label 5600 2850 2    50   ~ 0
A13
Text Label 5600 2750 2    50   ~ 0
A12
Text Label 5600 2650 2    50   ~ 0
A11
Text Label 5600 2550 2    50   ~ 0
A10
Text Label 5600 2450 2    50   ~ 0
A9
Text Label 5600 2350 2    50   ~ 0
A8
Wire Wire Line
	5400 2350 5600 2350
Wire Wire Line
	5400 2450 5600 2450
Wire Wire Line
	5400 2550 5600 2550
Wire Wire Line
	5600 2850 5400 2850
Wire Wire Line
	5600 2650 5400 2650
Wire Wire Line
	5600 2750 5400 2750
Wire Wire Line
	5600 2950 5400 2950
Text Label 5600 2250 2    50   ~ 0
A7
Text Label 5600 2150 2    50   ~ 0
A6
Text Label 5600 2050 2    50   ~ 0
A5
Text Label 5600 1950 2    50   ~ 0
A4
Text Label 5600 1850 2    50   ~ 0
A3
Text Label 5600 1750 2    50   ~ 0
A2
Text Label 5600 1650 2    50   ~ 0
A1
Text Label 5600 1550 2    50   ~ 0
A0
Wire Wire Line
	5400 1550 5600 1550
Wire Wire Line
	5400 1650 5600 1650
Wire Wire Line
	5400 1750 5600 1750
Wire Wire Line
	5600 2050 5400 2050
Wire Wire Line
	5600 1850 5400 1850
Wire Wire Line
	5600 1950 5400 1950
Wire Wire Line
	5600 2150 5400 2150
Wire Wire Line
	5600 2250 5400 2250
Text Label 2250 1550 2    50   ~ 0
D0
Text Label 2250 1650 2    50   ~ 0
D1
Text Label 2250 1750 2    50   ~ 0
D2
Text Label 2250 1850 2    50   ~ 0
D3
Text Label 2250 1950 2    50   ~ 0
D4
Text Label 2250 2050 2    50   ~ 0
D5
Text Label 2250 2150 2    50   ~ 0
D6
Text Label 2250 2250 2    50   ~ 0
D7
Text Label 3250 2950 0    50   ~ 0
A14
Text Label 3250 2850 0    50   ~ 0
A13
Text Label 3250 2750 0    50   ~ 0
A12
Text Label 3250 2650 0    50   ~ 0
A11
Text Label 3250 2550 0    50   ~ 0
A10
Text Label 3250 2450 0    50   ~ 0
A9
Text Label 3250 2350 0    50   ~ 0
A8
Wire Wire Line
	3450 2350 3250 2350
Wire Wire Line
	3450 2450 3250 2450
Wire Wire Line
	3450 2550 3250 2550
Wire Wire Line
	3250 2850 3450 2850
Wire Wire Line
	3250 2650 3450 2650
Wire Wire Line
	3250 2750 3450 2750
Wire Wire Line
	3250 2950 3450 2950
Text Label 3250 2250 0    50   ~ 0
A7
Text Label 3250 2150 0    50   ~ 0
A6
Text Label 3250 2050 0    50   ~ 0
A5
Text Label 3250 1950 0    50   ~ 0
A4
Text Label 3250 1850 0    50   ~ 0
A3
Text Label 3250 1750 0    50   ~ 0
A2
Text Label 3250 1650 0    50   ~ 0
A1
Text Label 3250 1550 0    50   ~ 0
A0
Wire Wire Line
	3450 1550 3250 1550
Wire Wire Line
	3450 1650 3250 1650
Wire Wire Line
	3450 1750 3250 1750
Wire Wire Line
	3250 2050 3450 2050
Wire Wire Line
	3250 1850 3450 1850
Wire Wire Line
	3250 1950 3450 1950
Wire Wire Line
	3250 2150 3450 2150
Wire Wire Line
	3250 2250 3450 2250
Wire Wire Line
	3450 3050 3250 3050
Wire Wire Line
	3450 3250 3250 3250
Text Label 3250 3050 0    50   ~ 0
A15
Text Label 3250 3250 0    50   ~ 0
WE
Wire Wire Line
	5700 3150 6100 3150
$Comp
L Connector:Conn_01x02_Female J0
U 1 1 60AB8209
P 1200 1050
F 0 "J0" H 1228 1026 50  0000 L CNN
F 1 "Power Connector" H 1228 935 50  0000 L CNN
F 2 "" H 1200 1050 50  0001 C CNN
F 3 "~" H 1200 1050 50  0001 C CNN
	1    1200 1050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60AB8E26
P 1000 1050
F 0 "#PWR?" H 1000 900 50  0001 C CNN
F 1 "VCC" H 1015 1223 50  0000 C CNN
F 2 "" H 1000 1050 50  0001 C CNN
F 3 "" H 1000 1050 50  0001 C CNN
	1    1000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60AB93BA
P 1000 1150
F 0 "#PWR?" H 1000 900 50  0001 C CNN
F 1 "GND" H 1005 977 50  0000 C CNN
F 2 "" H 1000 1150 50  0001 C CNN
F 3 "" H 1000 1150 50  0001 C CNN
	1    1000 1150
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X0
U 1 1 60ABBA6B
P 1150 2050
F 0 "X0" H 1494 2096 50  0000 L CNN
F 1 "CXO_DIP8" H 1494 2005 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 1600 1700 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 1050 2050 50  0001 C CNN
	1    1150 2050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60ABCF69
P 1150 1750
F 0 "#PWR?" H 1150 1600 50  0001 C CNN
F 1 "VCC" H 1165 1923 50  0000 C CNN
F 2 "" H 1150 1750 50  0001 C CNN
F 3 "" H 1150 1750 50  0001 C CNN
	1    1150 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60ABD45D
P 1150 2350
F 0 "#PWR?" H 1150 2100 50  0001 C CNN
F 1 "GND" H 1155 2177 50  0000 C CNN
F 2 "" H 1150 2350 50  0001 C CNN
F 3 "" H 1150 2350 50  0001 C CNN
	1    1150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2050 1450 3750
Wire Wire Line
	1450 3750 2250 3750
$Comp
L power:GND #PWR?
U 1 1 60ACBD79
P 2050 3850
F 0 "#PWR?" H 2050 3600 50  0001 C CNN
F 1 "GND" H 2055 3677 50  0000 C CNN
F 2 "" H 2050 3850 50  0001 C CNN
F 3 "" H 2050 3850 50  0001 C CNN
	1    2050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3850 2050 3850
Wire Bus Line
	1950 1650 1950 4450
Wire Bus Line
	6900 1650 6900 3450
Wire Bus Line
	5300 1650 5300 3450
Wire Bus Line
	3550 1650 3550 3450
$EndSCHEMATC
