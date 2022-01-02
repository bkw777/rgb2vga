EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DE0-NANO RGB2VGA"
Date "2022-01-02"
Rev "007"
Comp "Brian K. White - b.kenyon.w@gmail.com"
Comment1 "Original Design by Luis Antoniosi 2014"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 000_LOCAL:DB15_Female_HighDensity_MountingHoles J2
U 1 1 61838F0F
P 3900 2100
F 0 "J2" H 3900 2830 50  0000 C CNN
F 1 "RGB_IN" H 3890 2950 50  0000 C CNN
F 2 "000_LOCAL:HD15-SN-25" H 2950 2500 50  0001 C CNN
F 3 " ~" H 2950 2500 50  0001 C CNN
	1    3900 2100
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:Conn_02x20_Odd_Even J5
U 1 1 6183C15C
P 7900 3800
F 0 "J5" H 7950 4930 50  0000 C CNN
F 1 "GPIO_1" H 7950 4850 50  0000 C CNN
F 2 "000_LOCAL:PinSocket_2x20_P2.54mm_Polarized_Vertical" H 7900 3800 50  0001 C CNN
F 3 "~" H 7900 3800 50  0001 C CNN
	1    7900 3800
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:Conn_02x20_Odd_Even J1
U 1 1 6184C244
P 3200 5700
F 0 "J1" H 3250 6760 50  0000 C CNN
F 1 "GPIO_0" H 3250 6700 50  0000 C CNN
F 2 "000_LOCAL:PinSocket_2x20_P2.54mm_Polarized_Vertical" H 3200 5700 50  0001 C CNN
F 3 "~" H 3200 5700 50  0001 C CNN
	1    3200 5700
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:Conn_Coaxial J4
U 1 1 6186B42D
P 5200 3000
F 0 "J4" H 5290 3040 50  0000 L CNN
F 1 "C_VIDEO_IN" H 5280 2960 50  0000 L CNN
F 2 "000_LOCAL:RCA" H 5200 3000 50  0001 C CNN
F 3 " ~" H 5200 3000 50  0001 C CNN
	1    5200 3000
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:GND #PWR0101
U 1 1 618BDB14
P 5200 3200
F 0 "#PWR0101" H 5200 2950 50  0001 C CNN
F 1 "GND" H 5210 3000 50  0000 C CNN
F 2 "" H 5200 3200 50  0001 C CNN
F 3 "" H 5200 3200 50  0001 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:GND #PWR0102
U 1 1 618C08AB
P 3500 5300
F 0 "#PWR0102" H 3500 5050 50  0001 C CNN
F 1 "GND" V 3500 5190 50  0000 R CNN
F 2 "" H 3500 5300 50  0001 C CNN
F 3 "" H 3500 5300 50  0001 C CNN
	1    3500 5300
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0103
U 1 1 618C182B
P 3500 6200
F 0 "#PWR0103" H 3500 5950 50  0001 C CNN
F 1 "GND" V 3500 6100 50  0000 R CNN
F 2 "" H 3500 6200 50  0001 C CNN
F 3 "" H 3500 6200 50  0001 C CNN
	1    3500 6200
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0104
U 1 1 618C3F79
P 8200 3400
F 0 "#PWR0104" H 8200 3150 50  0001 C CNN
F 1 "GND" V 8250 3400 50  0000 R CNN
F 2 "" H 8200 3400 50  0001 C CNN
F 3 "" H 8200 3400 50  0001 C CNN
	1    8200 3400
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0105
U 1 1 618C53D4
P 8200 4300
F 0 "#PWR0105" H 8200 4050 50  0001 C CNN
F 1 "GND" V 8200 4190 50  0000 R CNN
F 2 "" H 8200 4300 50  0001 C CNN
F 3 "" H 8200 4300 50  0001 C CNN
	1    8200 4300
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:+5V #PWR0107
U 1 1 618C9673
P 3000 5300
F 0 "#PWR0107" H 3000 5150 50  0001 C CNN
F 1 "+5V" V 3000 5400 50  0000 L CNN
F 2 "" H 3000 5300 50  0001 C CNN
F 3 "" H 3000 5300 50  0001 C CNN
	1    3000 5300
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0108
U 1 1 618D184B
P 1800 6600
F 0 "#PWR0108" H 1800 6350 50  0001 C CNN
F 1 "GND" V 1800 6450 50  0000 R CNN
F 2 "" H 1800 6600 50  0001 C CNN
F 3 "" H 1800 6600 50  0001 C CNN
	1    1800 6600
	0    1    1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0109
U 1 1 618D2B57
P 1600 6100
F 0 "#PWR0109" H 1600 5850 50  0001 C CNN
F 1 "GND" V 1600 5950 50  0000 R CNN
F 2 "" H 1600 6100 50  0001 C CNN
F 3 "" H 1600 6100 50  0001 C CNN
	1    1600 6100
	0    1    1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0110
U 1 1 618D37E0
P 1600 6000
F 0 "#PWR0110" H 1600 5750 50  0001 C CNN
F 1 "GND" V 1600 5850 50  0000 R CNN
F 2 "" H 1600 6000 50  0001 C CNN
F 3 "" H 1600 6000 50  0001 C CNN
	1    1600 6000
	0    1    1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0111
U 1 1 618D38B6
P 1600 5900
F 0 "#PWR0111" H 1600 5650 50  0001 C CNN
F 1 "GND" V 1600 5750 50  0000 R CNN
F 2 "" H 1600 5900 50  0001 C CNN
F 3 "" H 1600 5900 50  0001 C CNN
	1    1600 5900
	0    1    1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0112
U 1 1 618D5934
P 1600 5800
F 0 "#PWR0112" H 1600 5550 50  0001 C CNN
F 1 "GND" V 1600 5650 50  0000 R CNN
F 2 "" H 1600 5800 50  0001 C CNN
F 3 "" H 1600 5800 50  0001 C CNN
	1    1600 5800
	0    1    1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0113
U 1 1 618D5A22
P 1800 6900
F 0 "#PWR0113" H 1800 6650 50  0001 C CNN
F 1 "GND" V 1800 6750 50  0000 R CNN
F 2 "" H 1800 6900 50  0001 C CNN
F 3 "" H 1800 6900 50  0001 C CNN
	1    1800 6900
	0    1    1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0114
U 1 1 618D5A2C
P 1600 5600
F 0 "#PWR0114" H 1600 5350 50  0001 C CNN
F 1 "GND" V 1600 5450 50  0000 R CNN
F 2 "" H 1600 5600 50  0001 C CNN
F 3 "" H 1600 5600 50  0001 C CNN
	1    1600 5600
	0    1    1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0115
U 1 1 618D5A36
P 1600 5500
F 0 "#PWR0115" H 1600 5250 50  0001 C CNN
F 1 "GND" V 1600 5350 50  0000 R CNN
F 2 "" H 1600 5500 50  0001 C CNN
F 3 "" H 1600 5500 50  0001 C CNN
	1    1600 5500
	0    1    1    0   
$EndComp
NoConn ~ 3000 5000
NoConn ~ 3000 5100
NoConn ~ 3000 5200
NoConn ~ 3500 5200
NoConn ~ 3000 6200
NoConn ~ 3000 6400
NoConn ~ 3000 6500
NoConn ~ 3500 6500
NoConn ~ 3500 6400
NoConn ~ 3500 6100
NoConn ~ 3500 6000
NoConn ~ 3500 5900
NoConn ~ 3500 5800
NoConn ~ 3500 5700
NoConn ~ 3500 5600
NoConn ~ 3500 5500
NoConn ~ 3500 5400
$Comp
L 000_LOCAL:GND #PWR0116
U 1 1 618A9852
P 9500 3200
F 0 "#PWR0116" H 9500 2950 50  0001 C CNN
F 1 "GND" V 9500 3050 50  0000 R CNN
F 2 "" H 9500 3200 50  0001 C CNN
F 3 "" H 9500 3200 50  0001 C CNN
	1    9500 3200
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0117
U 1 1 618AA8B8
P 9500 4100
F 0 "#PWR0117" H 9500 3850 50  0001 C CNN
F 1 "GND" V 9500 3950 50  0000 R CNN
F 2 "" H 9500 4100 50  0001 C CNN
F 3 "" H 9500 4100 50  0001 C CNN
	1    9500 4100
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0118
U 1 1 618AAE5A
P 9500 3900
F 0 "#PWR0118" H 9500 3650 50  0001 C CNN
F 1 "GND" V 9500 3750 50  0000 R CNN
F 2 "" H 9500 3900 50  0001 C CNN
F 3 "" H 9500 3900 50  0001 C CNN
	1    9500 3900
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0119
U 1 1 618AB495
P 9500 3700
F 0 "#PWR0119" H 9500 3450 50  0001 C CNN
F 1 "GND" V 9500 3550 50  0000 R CNN
F 2 "" H 9500 3700 50  0001 C CNN
F 3 "" H 9500 3700 50  0001 C CNN
	1    9500 3700
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0120
U 1 1 618AB8FD
P 9500 3500
F 0 "#PWR0120" H 9500 3250 50  0001 C CNN
F 1 "GND" V 9500 3350 50  0000 R CNN
F 2 "" H 9500 3500 50  0001 C CNN
F 3 "" H 9500 3500 50  0001 C CNN
	1    9500 3500
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0121
U 1 1 618ABE9E
P 9500 3300
F 0 "#PWR0121" H 9500 3050 50  0001 C CNN
F 1 "GND" V 9500 3150 50  0000 R CNN
F 2 "" H 9500 3300 50  0001 C CNN
F 3 "" H 9500 3300 50  0001 C CNN
	1    9500 3300
	0    1    -1   0   
$EndComp
NoConn ~ 9500 3400
NoConn ~ 10100 3800
NoConn ~ 10100 4000
NoConn ~ 10100 3200
$Comp
L 000_LOCAL:R_Small R1
U 1 1 619ACEB2
P 8800 4200
F 0 "R1" V 8790 4030 50  0000 C CNN
F 1 "390" V 8830 4360 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 4200 50  0001 C CNN
F 3 "~" H 8800 4200 50  0001 C CNN
	1    8800 4200
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:R_Small R2
U 1 1 619AFD24
P 8800 4100
F 0 "R2" V 8790 3930 50  0000 C CNN
F 1 "820" V 8830 4260 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 4100 50  0001 C CNN
F 3 "~" H 8800 4100 50  0001 C CNN
	1    8800 4100
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:R_Small R3
U 1 1 619B8305
P 8800 4000
F 0 "R3" V 8800 3830 50  0000 C CNN
F 1 "1.8K" V 8830 4170 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 4000 50  0001 C CNN
F 3 "~" H 8800 4000 50  0001 C CNN
	1    8800 4000
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:R_Small R4
U 1 1 619B83FF
P 8800 3900
F 0 "R4" V 8800 3730 50  0000 C CNN
F 1 "390" V 8830 4060 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 3900 50  0001 C CNN
F 3 "~" H 8800 3900 50  0001 C CNN
	1    8800 3900
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:R_Small R5
U 1 1 619BC355
P 8800 3800
F 0 "R5" V 8790 3630 50  0000 C CNN
F 1 "820" V 8830 3960 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 3800 50  0001 C CNN
F 3 "~" H 8800 3800 50  0001 C CNN
	1    8800 3800
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:R_Small R6
U 1 1 619BC46F
P 8800 3700
F 0 "R6" V 8790 3530 50  0000 C CNN
F 1 "1.8K" V 8830 3870 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 3700 50  0001 C CNN
F 3 "~" H 8800 3700 50  0001 C CNN
	1    8800 3700
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:R_Small R8
U 1 1 619BC483
P 8800 3500
F 0 "R8" V 8790 3330 50  0000 C CNN
F 1 "820" V 8830 3660 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 3500 50  0001 C CNN
F 3 "~" H 8800 3500 50  0001 C CNN
	1    8800 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 4100 8900 4000
Wire Wire Line
	8900 4200 8900 4100
Wire Wire Line
	8900 3800 8900 3700
Wire Wire Line
	8900 3900 8900 3800
Connection ~ 8900 3800
Wire Wire Line
	8900 3500 8900 3600
Connection ~ 8900 4100
$Comp
L 000_LOCAL:R_Small R26
U 1 1 619E7F52
P 8800 3400
F 0 "R26" V 8790 3210 50  0000 C CNN
F 1 "1.8K" V 8830 3570 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 3400 50  0001 C CNN
F 3 "~" H 8800 3400 50  0001 C CNN
	1    8800 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8900 3500 8900 3400
Connection ~ 8900 3500
Wire Wire Line
	7500 3600 7700 3600
Wire Wire Line
	7500 2600 7500 3600
$Comp
L 000_LOCAL:R_Small R9
U 1 1 61A22B3C
P 8800 3200
F 0 "R9" V 8760 3070 50  0000 C CNN
F 1 "47" V 8760 3330 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 3200 50  0001 C CNN
F 3 "~" H 8800 3200 50  0001 C CNN
	1    8800 3200
	0    -1   1    0   
$EndComp
NoConn ~ 7700 4300
NoConn ~ 7700 2900
NoConn ~ 7700 3000
NoConn ~ 7700 3100
NoConn ~ 7700 3200
NoConn ~ 7700 3300
NoConn ~ 7700 3500
NoConn ~ 7700 3700
NoConn ~ 7700 3800
NoConn ~ 7700 3900
NoConn ~ 7700 4000
NoConn ~ 7700 4100
NoConn ~ 7700 4200
NoConn ~ 7700 4400
NoConn ~ 7700 4500
NoConn ~ 7700 4600
NoConn ~ 7700 4700
NoConn ~ 7700 4800
Text Notes 7510 4340 0    50   ~ 0
3V3
Text Notes 2810 6240 0    50   ~ 0
3V3
Wire Wire Line
	10400 3600 10400 2700
Wire Wire Line
	9000 2700 9000 3300
Wire Wire Line
	9000 3300 8900 3300
NoConn ~ 8200 2900
NoConn ~ 8200 3000
NoConn ~ 8200 3100
NoConn ~ 8200 4400
NoConn ~ 8200 4500
NoConn ~ 8200 4600
NoConn ~ 8200 4700
NoConn ~ 8200 4800
Wire Wire Line
	8200 3200 8700 3200
$Comp
L 000_LOCAL:DB15_Female_HighDensity_MountingHoles J6
U 1 1 61831D6D
P 9800 3600
F 0 "J6" H 9800 4400 50  0000 C CNN
F 1 "VGA_OUT" H 9800 4500 50  0000 C CNN
F 2 "000_LOCAL:HD15-SN-25" H 8850 4000 50  0001 C CNN
F 3 " ~" H 8850 4000 50  0001 C CNN
	1    9800 3600
	1    0    0    1   
$EndComp
Wire Wire Line
	8200 4200 8700 4200
Wire Wire Line
	8200 4100 8700 4100
Wire Wire Line
	8200 3900 8700 3900
Wire Wire Line
	8200 3700 8700 3700
Wire Wire Line
	8200 3500 8700 3500
Wire Wire Line
	7500 2600 8350 2600
Wire Wire Line
	8200 3600 8700 3600
Wire Wire Line
	8700 4000 8200 4000
Wire Wire Line
	8200 3800 8700 3800
$Comp
L 000_LOCAL:R_Small R11
U 1 1 61C03DA8
P 5100 5100
F 0 "R11" V 5030 5020 50  0000 L CNN
F 1 "2K" V 5160 5050 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 5100 5100 50  0001 C CNN
F 3 "~" H 5100 5100 50  0001 C CNN
	1    5100 5100
	-1   0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R12
U 1 1 61C03FA1
P 4700 5100
F 0 "R12" V 4630 5020 50  0000 L CNN
F 1 "2K" V 4760 5050 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 4700 5100 50  0001 C CNN
F 3 "~" H 4700 5100 50  0001 C CNN
	1    4700 5100
	-1   0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R14
U 1 1 61C0A511
P 4300 5100
F 0 "R14" V 4230 5020 50  0000 L CNN
F 1 "2K" V 4360 5060 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 4300 5100 50  0001 C CNN
F 3 "~" H 4300 5100 50  0001 C CNN
	1    4300 5100
	-1   0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R16
U 1 1 61C0EB4D
P 4900 5300
F 0 "R16" V 4830 5300 50  0000 C CNN
F 1 "1K" V 4960 5300 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 4900 5300 50  0001 C CNN
F 3 "~" H 4900 5300 50  0001 C CNN
	1    4900 5300
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:R_Small R15
U 1 1 61C14117
P 4500 5300
F 0 "R15" V 4430 5300 50  0000 C CNN
F 1 "1K" V 4560 5300 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 4500 5300 50  0001 C CNN
F 3 "~" H 4500 5300 50  0001 C CNN
	1    4500 5300
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:R_POT_Small R24
U 1 1 61C177E5
P 5300 5300
F 0 "R24" V 5370 5210 50  0000 C CNN
F 1 "10K" V 5230 5290 50  0000 C CNN
F 2 "000_LOCAL:PT10Lx-hole" H 5300 5300 50  0001 C CNN
F 3 "~" H 5300 5300 50  0001 C CNN
	1    5300 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 5200 4300 5300
$Comp
L 000_LOCAL:GND #PWR0122
U 1 1 61C2B930
P 5300 5400
F 0 "#PWR0122" H 5300 5150 50  0001 C CNN
F 1 "GND" H 5300 5260 50  0000 C CNN
F 2 "" H 5300 5400 50  0001 C CNN
F 3 "" H 5300 5400 50  0001 C CNN
	1    5300 5400
	-1   0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R17
U 1 1 61C2C786
P 4100 5300
F 0 "R17" V 4030 5280 50  0000 C CNN
F 1 "2K" V 4160 5300 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 4100 5300 50  0001 C CNN
F 3 "~" H 4100 5300 50  0001 C CNN
	1    4100 5300
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0123
U 1 1 61C3E29A
P 4000 5300
F 0 "#PWR0123" H 4000 5050 50  0001 C CNN
F 1 "GND" H 3990 5150 50  0000 C CNN
F 2 "" H 4000 5300 50  0001 C CNN
F 3 "" H 4000 5300 50  0001 C CNN
	1    4000 5300
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:Conn_02x05_Odd_Even J3
U 1 1 61CD355F
P 4200 3500
F 0 "J3" H 4250 3900 50  0000 C CNN
F 1 "COCO3_RGB_IN" H 4270 3830 50  0000 C CNN
F 2 "000_LOCAL:IDC-Header_2x05_P2.54mm_Horizontal" H 4200 3500 50  0001 C CNN
F 3 "~" H 4200 3500 50  0001 C CNN
	1    4200 3500
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:GND #PWR0124
U 1 1 61CDC876
P 4000 3300
F 0 "#PWR0124" H 4000 3050 50  0001 C CNN
F 1 "GND" V 4040 3210 50  0000 R CNN
F 2 "" H 4000 3300 50  0001 C CNN
F 3 "" H 4000 3300 50  0001 C CNN
	1    4000 3300
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0125
U 1 1 61CE06AA
P 4500 3300
F 0 "#PWR0125" H 4500 3050 50  0001 C CNN
F 1 "GND" V 4540 3210 50  0000 R CNN
F 2 "" H 4500 3300 50  0001 C CNN
F 3 "" H 4500 3300 50  0001 C CNN
	1    4500 3300
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0126
U 1 1 61CE2881
P 3600 2500
F 0 "#PWR0126" H 3600 2250 50  0001 C CNN
F 1 "GND" V 3640 2410 50  0000 R CNN
F 2 "" H 3600 2500 50  0001 C CNN
F 3 "" H 3600 2500 50  0001 C CNN
	1    3600 2500
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0127
U 1 1 61CE311E
P 3600 1600
F 0 "#PWR0127" H 3600 1350 50  0001 C CNN
F 1 "GND" V 3640 1510 50  0000 R CNN
F 2 "" H 3600 1600 50  0001 C CNN
F 3 "" H 3600 1600 50  0001 C CNN
	1    3600 1600
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0128
U 1 1 61CE38F6
P 3600 1800
F 0 "#PWR0128" H 3600 1550 50  0001 C CNN
F 1 "GND" V 3640 1710 50  0000 R CNN
F 2 "" H 3600 1800 50  0001 C CNN
F 3 "" H 3600 1800 50  0001 C CNN
	1    3600 1800
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0129
U 1 1 61CE413C
P 3600 2000
F 0 "#PWR0129" H 3600 1750 50  0001 C CNN
F 1 "GND" V 3640 1910 50  0000 R CNN
F 2 "" H 3600 2000 50  0001 C CNN
F 3 "" H 3600 2000 50  0001 C CNN
	1    3600 2000
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0130
U 1 1 61CE4798
P 3600 2200
F 0 "#PWR0130" H 3600 1950 50  0001 C CNN
F 1 "GND" V 3640 2110 50  0000 R CNN
F 2 "" H 3600 2200 50  0001 C CNN
F 3 "" H 3600 2200 50  0001 C CNN
	1    3600 2200
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0131
U 1 1 61CE4C47
P 3600 2400
F 0 "#PWR0131" H 3600 2150 50  0001 C CNN
F 1 "GND" V 3640 2310 50  0000 R CNN
F 2 "" H 3600 2400 50  0001 C CNN
F 3 "" H 3600 2400 50  0001 C CNN
	1    3600 2400
	0    1    -1   0   
$EndComp
NoConn ~ 4200 1700
NoConn ~ 4200 1900
NoConn ~ 4200 2300
NoConn ~ 4200 2500
$Comp
L 000_LOCAL:R_Small R25
U 1 1 61DF049F
P 2600 1900
F 0 "R25" V 2520 1930 50  0000 C CNN
F 1 "82" V 2670 1900 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 2600 1900 50  0001 C CNN
F 3 "~" H 2600 1900 50  0001 C CNN
	1    2600 1900
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0132
U 1 1 61DF060D
P 2500 1900
F 0 "#PWR0132" H 2500 1650 50  0001 C CNN
F 1 "GND" H 2500 1750 50  0000 C CNN
F 2 "" H 2500 1900 50  0001 C CNN
F 3 "" H 2500 1900 50  0001 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R23
U 1 1 61E070BA
P 2000 1700
F 0 "R23" V 1920 1730 50  0000 C CNN
F 1 "82" V 2070 1700 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 2000 1700 50  0001 C CNN
F 3 "~" H 2000 1700 50  0001 C CNN
	1    2000 1700
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0133
U 1 1 61E0725C
P 1900 1700
F 0 "#PWR0133" H 1900 1450 50  0001 C CNN
F 1 "GND" H 1890 1540 50  0000 C CNN
F 2 "" H 1900 1700 50  0001 C CNN
F 3 "" H 1900 1700 50  0001 C CNN
	1    1900 1700
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R22
U 1 1 61E13A57
P 3100 2100
F 0 "R22" V 3020 2130 50  0000 C CNN
F 1 "82" V 3170 2100 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 3100 2100 50  0001 C CNN
F 3 "~" H 3100 2100 50  0001 C CNN
	1    3100 2100
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0134
U 1 1 61E13C61
P 3000 2100
F 0 "#PWR0134" H 3000 1850 50  0001 C CNN
F 1 "GND" H 3000 1940 50  0000 C CNN
F 2 "" H 3000 2100 50  0001 C CNN
F 3 "" H 3000 2100 50  0001 C CNN
	1    3000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2100 3600 2100
Wire Wire Line
	3300 2100 3300 3500
$Comp
L 000_LOCAL:LM1881 U1
U 1 1 61E52A44
P 5800 2200
F 0 "U1" H 5970 2650 50  0000 C CNN
F 1 "LM1881" H 6000 2570 50  0000 C CNN
F 2 "000_LOCAL:SOIC-8_4x5" H 5800 2200 50  0001 C CNN
F 3 "" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:+5V #PWR0135
U 1 1 61E614CC
P 5800 1800
F 0 "#PWR0135" H 5800 1650 50  0001 C CNN
F 1 "+5V" H 5850 2000 50  0000 C CNN
F 2 "" H 5800 1800 50  0001 C CNN
F 3 "" H 5800 1800 50  0001 C CNN
	1    5800 1800
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:GND #PWR0136
U 1 1 61E68488
P 5800 2500
F 0 "#PWR0136" H 5800 2250 50  0001 C CNN
F 1 "GND" H 5700 2390 50  0000 C CNN
F 2 "" H 5800 2500 50  0001 C CNN
F 3 "" H 5800 2500 50  0001 C CNN
	1    5800 2500
	-1   0    0    -1  
$EndComp
NoConn ~ 6300 2200
NoConn ~ 6300 2300
$Comp
L 000_LOCAL:C_Small C1
U 1 1 61E817A2
P 5200 2100
F 0 "C1" V 5230 2180 50  0000 C CNN
F 1 "0.1u" V 5160 2210 50  0000 C CNN
F 2 "000_LOCAL:C025-025X050" H 5200 2100 50  0001 C CNN
F 3 "~" H 5200 2100 50  0001 C CNN
	1    5200 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 6300 3700 6300
Wire Wire Line
	3700 6300 3700 4600
Wire Wire Line
	3000 4900 2900 4900
Wire Wire Line
	2900 4900 2900 3900
Wire Wire Line
	3000 4800 3000 4000
$Comp
L 000_LOCAL:C_Small C2
U 1 1 61EDFD57
P 5200 2300
F 0 "C2" H 5080 2300 50  0000 C CNN
F 1 "0.1u" H 5110 2230 50  0000 C CNN
F 2 "000_LOCAL:C025-025X050" H 5200 2300 50  0001 C CNN
F 3 "~" H 5200 2300 50  0001 C CNN
	1    5200 2300
	-1   0    0    -1  
$EndComp
$Comp
L 000_LOCAL:GND #PWR0137
U 1 1 61EEB78C
P 5200 2400
F 0 "#PWR0137" H 5200 2150 50  0001 C CNN
F 1 "GND" H 5100 2290 50  0000 C CNN
F 2 "" H 5200 2400 50  0001 C CNN
F 3 "" H 5200 2400 50  0001 C CNN
	1    5200 2400
	-1   0    0    -1  
$EndComp
$Comp
L 000_LOCAL:GND #PWR0138
U 1 1 61EEBF71
P 4900 2400
F 0 "#PWR0138" H 4900 2150 50  0001 C CNN
F 1 "GND" H 4800 2290 50  0000 C CNN
F 2 "" H 4900 2400 50  0001 C CNN
F 3 "" H 4900 2400 50  0001 C CNN
	1    4900 2400
	-1   0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R19
U 1 1 61EF13F2
P 3700 3700
F 0 "R19" V 3770 3620 50  0000 L CNN
F 1 "1.2K" V 3620 3610 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 3700 3700 50  0001 C CNN
F 3 "~" H 3700 3700 50  0001 C CNN
	1    3700 3700
	0    1    1    0   
$EndComp
$Comp
L 000_LOCAL:R_Small R18
U 1 1 61F00990
P 3300 3700
F 0 "R18" V 3370 3600 50  0000 L CNN
F 1 "6.8K" V 3220 3610 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 3300 3700 50  0001 C CNN
F 3 "~" H 3300 3700 50  0001 C CNN
	1    3300 3700
	0    -1   1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0139
U 1 1 61F02EC3
P 3200 3700
F 0 "#PWR0139" H 3200 3450 50  0001 C CNN
F 1 "GND" H 3200 3560 50  0000 C CNN
F 2 "" H 3200 3700 50  0001 C CNN
F 3 "" H 3200 3700 50  0001 C CNN
	1    3200 3700
	-1   0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R20
U 1 1 61F248E1
P 4900 3600
F 0 "R20" V 4820 3520 50  0000 L CNN
F 1 "1.2K" V 4970 3510 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 4900 3600 50  0001 C CNN
F 3 "~" H 4900 3600 50  0001 C CNN
	1    4900 3600
	0    -1   -1   0   
$EndComp
$Comp
L 000_LOCAL:R_Small R21
U 1 1 61F24B2B
P 5300 3600
F 0 "R21" V 5220 3500 50  0000 L CNN
F 1 "6.8K" V 5370 3500 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 5300 3600 50  0001 C CNN
F 3 "~" H 5300 3600 50  0001 C CNN
	1    5300 3600
	0    1    -1   0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0140
U 1 1 61F24B35
P 5400 3600
F 0 "#PWR0140" H 5400 3350 50  0001 C CNN
F 1 "GND" H 5400 3460 50  0000 C CNN
F 2 "" H 5400 3600 50  0001 C CNN
F 3 "" H 5400 3600 50  0001 C CNN
	1    5400 3600
	-1   0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R27
U 1 1 61ABE464
P 2500 2500
F 0 "R27" V 2570 2420 50  0000 L CNN
F 1 "1K" V 2420 2450 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 2500 2500 50  0001 C CNN
F 3 "~" H 2500 2500 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:R_Small R28
U 1 1 61ABE70A
P 2500 2900
F 0 "R28" V 2570 2820 50  0000 L CNN
F 1 "1K" V 2420 2830 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 2500 2900 50  0001 C CNN
F 3 "~" H 2500 2900 50  0001 C CNN
	1    2500 2900
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:GND #PWR0141
U 1 1 61ABE714
P 2500 3000
F 0 "#PWR0141" H 2500 2750 50  0001 C CNN
F 1 "GND" H 2500 2860 50  0000 C CNN
F 2 "" H 2500 3000 50  0001 C CNN
F 3 "" H 2500 3000 50  0001 C CNN
	1    2500 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 5100 3900 5100
Text Label 4000 3700 2    50   ~ 0
RGB_V
Text Label 4500 3600 0    50   ~ 0
RGB_H
Text Label 4200 2100 0    50   ~ 0
RGB_CS
Text Label 9500 4000 2    50   ~ 0
VGA_R
Text Label 9500 3800 2    50   ~ 0
VGA_G
Text Label 9500 3600 2    50   ~ 0
VGA_B
Text Label 8400 3200 0    50   ~ 0
VS
Text Label 8400 3300 0    50   ~ 0
HS
Text Label 3500 4800 0    50   ~ 0
D2
Text Label 5100 4000 2    50   ~ 0
_HSYNC
Text Label 3500 3900 2    50   ~ 0
_VSYNC
Text Label 3500 4900 0    50   ~ 0
D1
Text Label 3500 5000 0    50   ~ 0
D0
Text Label 3500 5100 0    50   ~ 0
_BRIGHT
Text Label 3600 2300 2    50   ~ 0
RGB_BR
Wire Wire Line
	3800 4500 3800 6700
Wire Wire Line
	3800 6700 3500 6700
Wire Wire Line
	3000 6600 2900 6600
Wire Wire Line
	2900 6600 2900 6900
Wire Wire Line
	2900 6600 2900 6300
Wire Wire Line
	2900 6300 3000 6300
Connection ~ 2900 6600
Wire Wire Line
	3500 6600 3600 6600
Wire Wire Line
	3300 3500 3100 3500
Wire Wire Line
	3100 4500 3800 4500
Connection ~ 3300 3500
Wire Wire Line
	2800 6700 3000 6700
Wire Wire Line
	4200 5300 4300 5300
NoConn ~ 5400 5300
Wire Wire Line
	5100 5000 5100 4800
Wire Wire Line
	3500 4800 5100 4800
Wire Wire Line
	4700 5000 4700 4900
Wire Wire Line
	3500 4900 4700 4900
Wire Wire Line
	4400 5300 4300 5300
Connection ~ 4300 5300
Wire Wire Line
	4600 5300 4700 5300
Wire Wire Line
	4700 5200 4700 5300
Connection ~ 4700 5300
Wire Wire Line
	4700 5300 4800 5300
Wire Wire Line
	5000 5300 5100 5300
Wire Wire Line
	5100 5200 5100 5300
Connection ~ 5100 5300
Wire Wire Line
	5100 5300 5200 5300
Wire Wire Line
	3500 5000 4300 5000
Wire Wire Line
	5100 5300 5100 6900
Wire Wire Line
	2900 6900 3600 6900
Wire Wire Line
	3600 6600 3600 6900
Connection ~ 3600 6900
Wire Wire Line
	3600 6900 5100 6900
NoConn ~ 4500 3500
NoConn ~ 4000 3600
Wire Wire Line
	5100 3600 5100 4000
Wire Wire Line
	5000 3600 5100 3600
Connection ~ 5100 3600
Wire Wire Line
	5100 3600 5200 3600
Wire Wire Line
	3000 4000 5100 4000
Wire Wire Line
	4500 3400 4900 3400
Wire Wire Line
	4500 3600 4800 3600
Wire Wire Line
	2200 3400 4000 3400
Wire Wire Line
	3300 3500 4000 3500
Wire Wire Line
	3800 3700 4000 3700
Wire Wire Line
	3500 3700 3500 3900
Wire Wire Line
	3500 3700 3600 3700
Connection ~ 3500 3700
Wire Wire Line
	3400 3700 3500 3700
Wire Wire Line
	2900 3900 3500 3900
Wire Wire Line
	2100 1700 2200 1700
Wire Wire Line
	2200 4600 2200 3400
Connection ~ 2200 1700
Wire Wire Line
	2200 4600 3700 4600
Wire Wire Line
	2200 1700 3600 1700
Connection ~ 2200 3400
Wire Wire Line
	2700 1900 2800 1900
Connection ~ 2800 1900
Wire Wire Line
	2800 1900 3600 1900
Wire Wire Line
	2800 3000 4900 3000
Wire Wire Line
	3200 2100 3300 2100
Connection ~ 3300 2100
Connection ~ 4900 3000
Wire Wire Line
	4900 3000 5000 3000
Wire Wire Line
	4900 3000 4900 3400
Wire Wire Line
	8700 3400 8350 3400
Wire Wire Line
	10300 3400 10300 2600
Wire Wire Line
	8900 3600 9500 3600
Connection ~ 8900 3600
Wire Wire Line
	8900 3800 9500 3800
Wire Wire Line
	8900 4000 9500 4000
Connection ~ 8900 4000
Text Label 4200 6900 2    50   ~ 0
DIFF_N
Text Label 8400 3400 0    50   ~ 0
B0
Text Label 8400 3500 0    50   ~ 0
B1
Text Label 8400 3600 0    50   ~ 0
B2
Text Label 8400 3700 0    50   ~ 0
G0
Text Label 8400 3800 0    50   ~ 0
G1
Text Label 8400 3900 0    50   ~ 0
G2
Text Label 8400 4000 0    50   ~ 0
R0
Text Label 8400 4100 0    50   ~ 0
R1
Text Label 8400 4200 0    50   ~ 0
R2
Text Label 5010 2200 2    50   ~ 0
RSET
$Comp
L 000_LOCAL:R_Small R7
U 1 1 619BC479
P 8800 3600
F 0 "R7" V 8800 3430 50  0000 C CNN
F 1 "390" V 8830 3760 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 3600 50  0001 C CNN
F 3 "~" H 8800 3600 50  0001 C CNN
	1    8800 3600
	0    -1   -1   0   
$EndComp
Text Label 10100 3600 0    50   ~ 0
VGA_H
Text Label 10100 3400 0    50   ~ 0
VGA_V
$Comp
L 000_LOCAL:R_Small R13
U 1 1 61EE7698
P 4900 2300
F 0 "R13" V 4830 2220 50  0000 L CNN
F 1 "680K" V 4970 2210 50  0000 L CNN
F 2 "000_LOCAL:0207_10" H 4900 2300 50  0001 C CNN
F 3 "~" H 4900 2300 50  0001 C CNN
	1    4900 2300
	1    0    0    1   
$EndComp
NoConn ~ 7700 3400
Text Notes 7510 3430 0    50   ~ 0
+5v
$Comp
L 000_LOCAL:GND #PWR0106
U 1 1 61AACE7D
P 3900 2800
F 0 "#PWR0106" H 3900 2550 50  0001 C CNN
F 1 "GND" H 3900 2640 50  0000 C CNN
F 2 "" H 3900 2800 50  0001 C CNN
F 3 "" H 3900 2800 50  0001 C CNN
	1    3900 2800
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:GND #PWR0142
U 1 1 61AB7A9C
P 9800 2900
F 0 "#PWR0142" H 9800 2650 50  0001 C CNN
F 1 "GND" V 9800 2790 50  0000 R CNN
F 2 "" H 9800 2900 50  0001 C CNN
F 3 "" H 9800 2900 50  0001 C CNN
	1    9800 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 2200 5200 2200
Connection ~ 5200 2200
Wire Wire Line
	5200 2200 5300 2200
Connection ~ 2900 4900
Wire Wire Line
	3000 4800 2300 4800
Connection ~ 3000 4800
Wire Wire Line
	1400 1200 6300 1200
Wire Wire Line
	6400 1100 6400 2100
Wire Wire Line
	6400 2100 6300 2100
Connection ~ 2800 3000
Wire Wire Line
	2800 6700 2800 6200
$Comp
L 000_LOCAL:SW_DIP_x10 SW1
U 1 1 61853D37
P 1900 5700
F 0 "SW1" H 1900 5160 50  0000 C CNN
F 1 "SW_DIP_x10" H 1900 5200 50  0001 C CNN
F 2 "000_LOCAL:SW_DIP_SPSTx10_Slide_6.7_8.61_P2.54_LowProfile" H 1900 5700 50  0001 C CNN
F 3 "~" H 1900 5700 50  0001 C CNN
	1    1900 5700
	-1   0    0    1   
$EndComp
Text Label 3000 5400 2    50   ~ 0
SW_SCANLINE
Text Label 3000 5500 2    50   ~ 0
SW_SYNC_LVL
Text Label 3000 5600 2    50   ~ 0
SW_ARTIFACT
Text Label 3000 5700 2    50   ~ 0
SW_ARTIF_INV
Text Label 3000 5800 2    50   ~ 0
SW_APPLE_][
Text Label 3000 5900 2    50   ~ 0
SW_DEINT
Text Label 3000 6000 2    50   ~ 0
SW_MSX
Text Label 3000 6100 2    50   ~ 0
SW_SHRINK
Text Label 1600 5300 2    50   ~ 0
SW_C_VS
Text Label 1600 5400 2    50   ~ 0
SW_C_HS
Wire Wire Line
	10300 3400 10100 3400
Wire Wire Line
	10100 3600 10400 3600
$Comp
L 000_LOCAL:R_Small R10
U 1 1 61A15F46
P 8800 3300
F 0 "R10" V 8760 3150 50  0000 C CNN
F 1 "47" V 8760 3430 50  0000 C CNN
F 2 "000_LOCAL:0207_10" H 8800 3300 50  0001 C CNN
F 3 "~" H 8800 3300 50  0001 C CNN
	1    8800 3300
	0    -1   1    0   
$EndComp
Text Label 3600 2100 2    50   ~ 0
RGB_B
Text Label 3600 1700 2    50   ~ 0
RGB_R
Text Label 3600 1900 2    50   ~ 0
RGB_G
Text Notes 8750 2340 0    50   ~ 0
OUTPUT
Text Notes 3710 860  0    50   ~ 0
INPUT
Wire Notes Line
	7200 2400 10600 2400
Wire Wire Line
	5100 2100 4700 2100
Wire Wire Line
	6300 2000 6300 1200
$Comp
L 000_LOCAL:GND #PWR0143
U 1 1 61A29B55
P 4500 3700
F 0 "#PWR0143" H 4500 3450 50  0001 C CNN
F 1 "GND" V 4500 3590 50  0000 R CNN
F 2 "" H 4500 3700 50  0001 C CNN
F 3 "" H 4500 3700 50  0001 C CNN
	1    4500 3700
	0    -1   -1   0   
$EndComp
Text Notes 4000 3600 2    50   ~ 0
Audio
Text Notes 4430 3790 0    50   ~ 0
Monitor Sense
Text Notes 4500 3500 0    50   ~ 0
Polarity Key
Wire Wire Line
	2500 2300 3600 2300
Wire Wire Line
	3900 5100 3900 4400
Wire Wire Line
	2500 2300 2500 2400
Wire Wire Line
	2500 2600 2500 2700
Connection ~ 2500 2700
Wire Wire Line
	2500 2700 2500 2800
Wire Wire Line
	2500 2700 2700 2700
Wire Wire Line
	2700 4400 3900 4400
Wire Wire Line
	2700 4400 2700 2700
Wire Wire Line
	3000 6100 2200 6100
Wire Wire Line
	3000 6000 2200 6000
Wire Wire Line
	3000 5900 2200 5900
$Comp
L 000_LOCAL:SW_DP3T SW2
U 1 1 61DA011D
P 2000 6900
F 0 "SW2" H 2360 7040 50  0000 C CNN
F 1 "SW_DP3T" H 1840 7000 50  0000 C CNN
F 2 "000_LOCAL:SW_DP3T_CK_JS203011JAQN" H 1375 7075 50  0001 C CNN
F 3 "~" H 1375 7075 50  0001 C CNN
	1    2000 6900
	1    0    0    -1  
$EndComp
$Comp
L 000_LOCAL:SW_DP3T SW2
U 2 1 61DA73AC
P 2000 6600
F 0 "SW2" H 2370 6660 50  0000 C CNN
F 1 "SW_DP3T" H 1840 6700 50  0000 C CNN
F 2 "000_LOCAL:SW_DP3T_CK_JS203011JAQN" H 1375 6775 50  0001 C CNN
F 3 "~" H 1375 6775 50  0001 C CNN
	2    2000 6600
	1    0    0    -1  
$EndComp
Wire Notes Line
	2000 6840 2000 6560
Wire Wire Line
	3000 5700 2550 5700
Wire Wire Line
	3000 5600 2500 5600
Wire Wire Line
	2500 5600 2500 6500
Wire Wire Line
	1500 1300 4700 1300
Wire Wire Line
	4700 1300 4700 2100
Connection ~ 4700 2100
Wire Wire Line
	4700 2100 4200 2100
Wire Wire Line
	2200 6200 2800 6200
Connection ~ 2800 6200
Wire Wire Line
	2800 6200 2800 3000
Wire Wire Line
	2200 6800 2550 6800
Wire Wire Line
	2200 6600 2200 6500
Wire Wire Line
	2200 6500 2500 6500
Connection ~ 2200 6500
$Comp
L 000_LOCAL:GND #PWR0144
U 1 1 620B51B6
P 1600 5700
F 0 "#PWR0144" H 1600 5450 50  0001 C CNN
F 1 "GND" V 1600 5550 50  0000 R CNN
F 2 "" H 1600 5700 50  0001 C CNN
F 3 "" H 1600 5700 50  0001 C CNN
	1    1600 5700
	0    1    1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0145
U 1 1 620BA73E
P 2200 5700
F 0 "#PWR0145" H 2200 5450 50  0001 C CNN
F 1 "GND" V 2210 5600 50  0000 R CNN
F 2 "" H 2200 5700 50  0001 C CNN
F 3 "" H 2200 5700 50  0001 C CNN
	1    2200 5700
	0    -1   1    0   
$EndComp
$Comp
L 000_LOCAL:Conn_01x03_Male J7
U 1 1 61BC0537
P 2000 7300
F 0 "J7" H 1900 7300 50  0000 C CNN
F 1 "Conn_01x03_Male" H 2000 7500 50  0000 C CNN
F 2 "000_LOCAL:PinHeader_1x03_P2.54mm_Horizontal" H 2000 7300 50  0001 C CNN
F 3 "~" H 2000 7300 50  0001 C CNN
	1    2000 7300
	1    0    0    1   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0146
U 1 1 61C0F1FA
P 2200 7300
F 0 "#PWR0146" H 2200 7050 50  0001 C CNN
F 1 "GND" V 2200 7150 50  0000 R CNN
F 2 "" H 2200 7300 50  0001 C CNN
F 3 "" H 2200 7300 50  0001 C CNN
	1    2200 7300
	0    -1   1    0   
$EndComp
Wire Wire Line
	2500 6500 2500 7200
Wire Wire Line
	2500 7200 2200 7200
Connection ~ 2500 6500
Wire Wire Line
	2550 6800 2550 7400
Wire Wire Line
	2550 7400 2200 7400
Connection ~ 2550 6800
Text Notes 1980 7230 2    50   ~ 0
ARTIFACT
Text Notes 1980 7440 2    50   ~ 0
INVERSE ARTIFACT
$Comp
L 000_LOCAL:GND #PWR0147
U 1 1 61C181AA
P 2200 7000
F 0 "#PWR0147" H 2200 6750 50  0001 C CNN
F 1 "GND" V 2200 6900 50  0000 R CNN
F 2 "" H 2200 7000 50  0001 C CNN
F 3 "" H 2200 7000 50  0001 C CNN
	1    2200 7000
	0    -1   1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0148
U 1 1 61C199CE
P 2200 6900
F 0 "#PWR0148" H 2200 6650 50  0001 C CNN
F 1 "GND" V 2200 6800 50  0000 R CNN
F 2 "" H 2200 6900 50  0001 C CNN
F 3 "" H 2200 6900 50  0001 C CNN
	1    2200 6900
	0    -1   1    0   
$EndComp
$Comp
L 000_LOCAL:GND #PWR0149
U 1 1 61C19F7B
P 2200 6700
F 0 "#PWR0149" H 2200 6450 50  0001 C CNN
F 1 "GND" V 2200 6600 50  0000 R CNN
F 2 "" H 2200 6700 50  0001 C CNN
F 3 "" H 2200 6700 50  0001 C CNN
	1    2200 6700
	0    -1   1    0   
$EndComp
Wire Wire Line
	2200 5600 2450 5600
Wire Wire Line
	2450 5600 2450 5500
Wire Wire Line
	2450 5500 3000 5500
Wire Wire Line
	2200 5500 2400 5500
Wire Wire Line
	2400 5500 2400 5400
Wire Wire Line
	2400 5400 3000 5400
Wire Wire Line
	3100 3500 3100 4500
Wire Wire Line
	2200 1700 2200 3400
Wire Wire Line
	2800 1900 2800 3000
Wire Wire Line
	1300 1100 6400 1100
Wire Wire Line
	2200 5800 3000 5800
Wire Wire Line
	2550 5700 2550 6800
Wire Wire Line
	8350 2600 8350 3400
Wire Wire Line
	8200 3300 8700 3300
Wire Wire Line
	9000 2700 10400 2700
Wire Wire Line
	8900 2600 8900 3200
Wire Wire Line
	8900 2600 10300 2600
Wire Wire Line
	1600 6200 1500 6200
Wire Wire Line
	1500 1300 1500 6200
Wire Wire Line
	1600 5400 1400 5400
Wire Wire Line
	1400 1200 1400 5400
Wire Wire Line
	1600 5300 1300 5300
Wire Wire Line
	1300 1100 1300 5300
Wire Notes Line
	1100 4200 1100 900 
Wire Notes Line
	1100 900  6600 900 
Wire Notes Line
	6600 900  6600 4200
Wire Notes Line
	6600 4200 1100 4200
Wire Notes Line
	7200 5100 10600 5100
Wire Notes Line
	7200 5100 7200 2400
Wire Notes Line
	10600 2400 10600 5100
Wire Wire Line
	2200 5300 2200 4900
Wire Wire Line
	2200 4900 2900 4900
Wire Wire Line
	2200 5400 2300 5400
Wire Wire Line
	2300 5400 2300 4800
$EndSCHEMATC
