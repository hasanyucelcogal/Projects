EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L linear:LM2904 U1
U 1 1 619F8A29
P 4100 3800
F 0 "U1" H 4444 3846 50  0000 L CNN
F 1 "LM2904" H 4444 3755 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4100 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 4100 3800 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
$Comp
L linear:LM2904 U1
U 2 1 619FA4D5
P 7600 3150
F 0 "U1" H 7944 3196 50  0000 L CNN
F 1 "LM2904" H 7944 3105 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7600 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 7600 3150 50  0001 C CNN
	2    7600 3150
	1    0    0    -1  
$EndComp
$Comp
L device:R R5
U 1 1 619FF4F0
P 5850 4800
F 0 "R5" H 5920 4846 50  0000 L CNN
F 1 "1k" H 5920 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 4800 50  0001 C CNN
F 3 "" H 5850 4800 50  0001 C CNN
	1    5850 4800
	1    0    0    -1  
$EndComp
$Comp
L device:C C1
U 1 1 619FFA81
P 4400 3050
F 0 "C1" H 4515 3096 50  0000 L CNN
F 1 "100nF" H 4515 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 2900 50  0001 C CNN
F 3 "" H 4400 3050 50  0001 C CNN
	1    4400 3050
	1    0    0    -1  
$EndComp
$Comp
L Transistor:2N7002 Q2
U 1 1 61A000D2
P 5750 3800
F 0 "Q2" H 5956 3846 50  0000 L CNN
F 1 "2N7002" H 5956 3755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5950 3725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 5750 3800 50  0001 L CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L device:C C2
U 1 1 61A03DFE
P 5450 4000
F 0 "C2" H 5565 4046 50  0000 L CNN
F 1 "100nF" H 5565 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5488 3850 50  0001 C CNN
F 3 "" H 5450 4000 50  0001 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
$Comp
L device:R R3
U 1 1 61A04574
P 4900 3800
F 0 "R3" V 5107 3800 50  0000 C CNN
F 1 "2.2k" V 5016 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4830 3800 50  0001 C CNN
F 3 "" H 4900 3800 50  0001 C CNN
	1    4900 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 4150 5450 4300
Wire Wire Line
	3800 3900 3750 3900
Wire Wire Line
	5850 4950 5850 5000
$Comp
L power:GND #PWR06
U 1 1 61A092B7
P 4400 3300
F 0 "#PWR06" H 4400 3050 50  0001 C CNN
F 1 "GND" H 4405 3127 50  0000 C CNN
F 2 "" H 4400 3300 50  0001 C CNN
F 3 "" H 4400 3300 50  0001 C CNN
	1    4400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3300 4400 3200
Wire Wire Line
	4400 2850 4400 2900
$Comp
L device:R R4
U 1 1 61A191F7
P 5850 2850
F 0 "R4" H 5780 2804 50  0000 R CNN
F 1 "1k" H 5780 2895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5780 2850 50  0001 C CNN
F 3 "" H 5850 2850 50  0001 C CNN
	1    5850 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 3000 5850 3050
Wire Wire Line
	5850 3050 5850 3600
Connection ~ 5850 3050
Wire Wire Line
	5850 2700 5850 2650
$Comp
L device:C C3
U 1 1 61A1B8A3
P 4900 3050
F 0 "C3" H 5015 3096 50  0000 L CNN
F 1 "10uF" H 5015 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4938 2900 50  0001 C CNN
F 3 "" H 4900 3050 50  0001 C CNN
	1    4900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2900 4900 2850
Wire Wire Line
	4900 2850 4400 2850
$Comp
L power:GND #PWR08
U 1 1 61A1C061
P 4900 3300
F 0 "#PWR08" H 4900 3050 50  0001 C CNN
F 1 "GND" H 4905 3127 50  0000 C CNN
F 2 "" H 4900 3300 50  0001 C CNN
F 3 "" H 4900 3300 50  0001 C CNN
	1    4900 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3200 4900 3300
Wire Wire Line
	7500 2850 7500 2650
Connection ~ 4400 2850
Connection ~ 4000 2850
Wire Wire Line
	4000 2800 4000 2850
Wire Wire Line
	4000 2850 4000 3500
Text Label 4000 2850 0    50   ~ 0
LM2904_PWR
Wire Wire Line
	4000 2850 4400 2850
Text Label 7500 2650 0    50   ~ 0
LM2904_PWR
$Comp
L power:GND #PWR05
U 1 1 61A2087A
P 4000 4200
F 0 "#PWR05" H 4000 3950 50  0001 C CNN
F 1 "GND" H 4005 4027 50  0000 C CNN
F 2 "" H 4000 4200 50  0001 C CNN
F 3 "" H 4000 4200 50  0001 C CNN
	1    4000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4200 4000 4100
$Comp
L power:GND #PWR013
U 1 1 61A21267
P 7500 3550
F 0 "#PWR013" H 7500 3300 50  0001 C CNN
F 1 "GND" H 7505 3377 50  0000 C CNN
F 2 "" H 7500 3550 50  0001 C CNN
F 3 "" H 7500 3550 50  0001 C CNN
	1    7500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3550 7500 3450
$Comp
L device:R R6
U 1 1 61A0BAA0
P 6750 1600
F 0 "R6" H 6820 1646 50  0000 L CNN
F 1 "100R" H 6820 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6680 1600 50  0001 C CNN
F 3 "" H 6750 1600 50  0001 C CNN
	1    6750 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 3250 7300 3250
Wire Wire Line
	6750 1450 6750 1350
$Comp
L device:C C4
U 1 1 61A12261
P 8600 2850
F 0 "C4" H 8715 2896 50  0000 L CNN
F 1 "100nF" H 8715 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8638 2700 50  0001 C CNN
F 3 "" H 8600 2850 50  0001 C CNN
	1    8600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2700 8600 2050
Wire Wire Line
	8600 3000 8600 3150
$Comp
L device:R R7
U 1 1 61A153D5
P 8900 3150
F 0 "R7" H 8970 3196 50  0000 L CNN
F 1 "1k" H 8970 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8830 3150 50  0001 C CNN
F 3 "" H 8900 3150 50  0001 C CNN
	1    8900 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 3150 8600 3150
Connection ~ 8600 3150
$Comp
L device:FQD17P06 Q4
U 1 1 61A1644E
P 9800 3150
F 0 "Q4" H 9906 3104 50  0000 L CNN
F 1 "FQD17P06" H 9906 3195 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 10200 3400 50  0001 C CNN
F 3 "" H 10200 3400 50  0001 C CNN
	1    9800 3150
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 61A1A807
P 8400 3650
F 0 "D3" V 8354 3729 50  0000 L CNN
F 1 "1N4148" V 8445 3729 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 8400 3475 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 8400 3650 50  0001 C CNN
	1    8400 3650
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 61A1DA3C
P 8400 4150
F 0 "D4" V 8354 4229 50  0000 L CNN
F 1 "1N4148" V 8445 4229 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 8400 3975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 8400 4150 50  0001 C CNN
	1    8400 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 4000 8400 3900
Wire Wire Line
	9800 3350 9800 3900
Wire Wire Line
	8400 3900 9050 3900
Connection ~ 8400 3900
Wire Wire Line
	8400 3900 8400 3800
Connection ~ 9800 3900
Wire Wire Line
	8400 3500 8400 3400
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 61A235CC
P 10500 3950
F 0 "J3" H 10472 3832 50  0000 R CNN
F 1 "Conn_01x04_Male" H 10850 4150 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x04_P2.00mm_Vertical_SMD_Pin1Left" H 10500 3950 50  0001 C CNN
F 3 "~" H 10500 3950 50  0001 C CNN
	1    10500 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 3750 10200 3750
Wire Wire Line
	10200 3750 10200 3850
Wire Wire Line
	10200 4050 10300 4050
Wire Wire Line
	10300 3950 10200 3950
Connection ~ 10200 3950
Wire Wire Line
	10200 3950 10200 4050
Wire Wire Line
	10300 3850 10200 3850
Connection ~ 10200 3850
Wire Wire Line
	10200 3850 10200 3900
Wire Wire Line
	9800 3900 10200 3900
Connection ~ 10200 3900
Wire Wire Line
	10200 3900 10200 3950
$Comp
L power:GND #PWR015
U 1 1 61A28219
P 8400 4400
F 0 "#PWR015" H 8400 4150 50  0001 C CNN
F 1 "GND" H 8405 4227 50  0000 C CNN
F 2 "" H 8400 4400 50  0001 C CNN
F 3 "" H 8400 4400 50  0001 C CNN
	1    8400 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4400 8400 4300
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 61A33E27
P 2600 1200
F 0 "J2" H 2572 1082 50  0000 R CNN
F 1 "Conn_01x04_Male" H 2572 1173 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Right" H 2600 1200 50  0001 C CNN
F 3 "~" H 2600 1200 50  0001 C CNN
	1    2600 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 1000 2300 1000
Wire Wire Line
	2300 1000 2300 1100
Wire Wire Line
	2300 1300 2400 1300
Wire Wire Line
	2400 1200 2300 1200
Connection ~ 2300 1200
Wire Wire Line
	2300 1200 2300 1300
Wire Wire Line
	2400 1100 2300 1100
Connection ~ 2300 1100
Wire Wire Line
	2300 1100 2300 1200
$Comp
L power:GND #PWR02
U 1 1 61A35995
P 2300 1400
F 0 "#PWR02" H 2300 1150 50  0001 C CNN
F 1 "GND" H 2305 1227 50  0000 C CNN
F 2 "" H 2300 1400 50  0001 C CNN
F 3 "" H 2300 1400 50  0001 C CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1400 2300 1300
Connection ~ 2300 1300
$Comp
L device:R R1
U 1 1 61A4635C
P 2600 3700
F 0 "R1" V 2807 3700 50  0000 C CNN
F 1 "1k" V 2716 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2530 3700 50  0001 C CNN
F 3 "" H 2600 3700 50  0001 C CNN
	1    2600 3700
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 61A4A18F
P 2900 4150
F 0 "D1" V 2854 4229 50  0000 L CNN
F 1 "1N4148" V 2945 4229 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 2900 3975 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 2900 4150 50  0001 C CNN
	1    2900 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 4000 2900 3700
Wire Wire Line
	2900 3700 2750 3700
Wire Wire Line
	2450 3700 2250 3700
Text GLabel 2250 3700 0    50   Input ~ 0
IN_1+
$Comp
L power:GND #PWR03
U 1 1 61A53866
P 2900 4450
F 0 "#PWR03" H 2900 4200 50  0001 C CNN
F 1 "GND" H 2905 4277 50  0000 C CNN
F 2 "" H 2900 4450 50  0001 C CNN
F 3 "" H 2900 4450 50  0001 C CNN
	1    2900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4450 2900 4300
Connection ~ 2900 3700
Wire Wire Line
	5850 3050 6200 3050
$Comp
L power:GND #PWR07
U 1 1 61A251CD
P 5850 5000
F 0 "#PWR07" H 5850 4750 50  0001 C CNN
F 1 "GND" H 5855 4827 50  0000 C CNN
F 2 "" H 5850 5000 50  0001 C CNN
F 3 "" H 5850 5000 50  0001 C CNN
	1    5850 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61AD0B52
P 5450 4300
F 0 "#PWR0101" H 5450 4050 50  0001 C CNN
F 1 "GND" H 5455 4127 50  0000 C CNN
F 2 "" H 5450 4300 50  0001 C CNN
F 3 "" H 5450 4300 50  0001 C CNN
	1    5450 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3700 3800 3700
Wire Wire Line
	3750 4550 3750 3900
Wire Wire Line
	5850 4000 5850 4550
Wire Wire Line
	5850 4650 5850 4550
Connection ~ 5850 4550
Wire Wire Line
	5450 3850 5450 3800
Connection ~ 5450 3800
Wire Wire Line
	5450 3800 5550 3800
Wire Wire Line
	7900 3150 8600 3150
Wire Wire Line
	4750 3800 4400 3800
Wire Wire Line
	5050 3800 5150 3800
$Comp
L device:R R8
U 1 1 61AF82BE
P 5150 4000
F 0 "R8" V 5357 4000 50  0000 C CNN
F 1 "10k" V 5266 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 4000 50  0001 C CNN
F 3 "" H 5150 4000 50  0001 C CNN
	1    5150 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 3850 5150 3800
Connection ~ 5150 3800
Wire Wire Line
	5150 3800 5450 3800
$Comp
L power:GND #PWR0102
U 1 1 61AFBFAD
P 5150 4300
F 0 "#PWR0102" H 5150 4050 50  0001 C CNN
F 1 "GND" H 5155 4127 50  0000 C CNN
F 2 "" H 5150 4300 50  0001 C CNN
F 3 "" H 5150 4300 50  0001 C CNN
	1    5150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4300 5150 4150
Wire Notes Line
	10950 650  900  650 
Text Notes 5100 900  0    50   ~ 0
1-5V TO 4-20mA CONVERTER
$Comp
L device:Jumper_NC_Dual JP1
U 1 1 61B1CA1F
P 6950 4800
F 0 "JP1" H 6950 5039 50  0000 C CNN
F 1 "Jumper_NC_Dual" H 6950 4948 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6950 4800 50  0001 C CNN
F 3 "" H 6950 4800 50  0001 C CNN
	1    6950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4550 5850 4550
Wire Wire Line
	6500 4550 6500 4800
Wire Wire Line
	6500 4800 6700 4800
$Comp
L device:R R10
U 1 1 61B29090
P 8000 4800
F 0 "R10" H 8070 4846 50  0000 L CNN
F 1 "1k" H 8070 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 4800 50  0001 C CNN
F 3 "" H 8000 4800 50  0001 C CNN
	1    8000 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 4800 7200 4800
Wire Wire Line
	8150 4800 9050 4800
Wire Wire Line
	9050 3900 9050 4800
Wire Wire Line
	6950 4900 6950 5200
Wire Wire Line
	6950 5200 4650 5200
Wire Wire Line
	4650 5200 4650 4550
Wire Wire Line
	4650 4550 3750 4550
$Comp
L device:R R2
U 1 1 61B4010F
P 3750 4850
F 0 "R2" H 3820 4896 50  0000 L CNN
F 1 "1k" H 3820 4805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3680 4850 50  0001 C CNN
F 3 "" H 3750 4850 50  0001 C CNN
	1    3750 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4700 3750 4550
Connection ~ 3750 4550
Wire Wire Line
	3750 5000 3750 5050
$Comp
L power:GND #PWR0103
U 1 1 61B44EB8
P 3750 5050
F 0 "#PWR0103" H 3750 4800 50  0001 C CNN
F 1 "GND" H 3755 4877 50  0000 C CNN
F 2 "" H 3750 5050 50  0001 C CNN
F 3 "" H 3750 5050 50  0001 C CNN
	1    3750 5050
	1    0    0    -1  
$EndComp
$Comp
L device:R R12
U 1 1 61B4CD5C
P 9800 2250
F 0 "R12" H 9870 2296 50  0000 L CNN
F 1 "10R" H 9870 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9730 2250 50  0001 C CNN
F 3 "" H 9800 2250 50  0001 C CNN
	1    9800 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2050 8600 2050
Connection ~ 8600 2050
Wire Wire Line
	6750 2050 6750 3250
Wire Wire Line
	6750 1750 6750 2050
Connection ~ 6750 2050
Wire Wire Line
	9800 2100 9800 2050
Wire Wire Line
	9800 2650 9800 2400
Wire Wire Line
	9750 2650 9800 2650
Wire Wire Line
	9800 2650 9800 2950
Connection ~ 9800 2650
Wire Wire Line
	9100 2450 9100 2050
Wire Wire Line
	9100 2050 8600 2050
Wire Wire Line
	9100 2850 9100 3150
Connection ~ 9100 3150
Wire Wire Line
	9100 3150 9050 3150
Text Notes 10350 2300 2    50   ~ 0
CURRENT\nLIMITTER
Wire Notes Line
	10400 2450 9650 2450
Wire Notes Line
	9650 2450 9650 2050
Wire Notes Line
	9650 2050 10400 2050
Wire Notes Line
	10400 2050 10400 2450
$Comp
L device:R R11
U 1 1 61BAF246
P 9600 2650
F 0 "R11" H 9670 2696 50  0000 L CNN
F 1 "1k" H 9670 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9530 2650 50  0001 C CNN
F 3 "" H 9600 2650 50  0001 C CNN
	1    9600 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 2650 9400 2650
Wire Wire Line
	9100 2050 9800 2050
Connection ~ 9100 2050
Wire Wire Line
	9100 3150 9500 3150
Wire Wire Line
	9050 3900 9800 3900
Connection ~ 9050 3900
Wire Notes Line
	10950 5450 900  5450
Wire Notes Line
	10950 650  10950 5450
Wire Notes Line
	900  650  900  5450
$Comp
L power:+15V #PWR0104
U 1 1 61BC2F58
P 6750 1350
F 0 "#PWR0104" H 6750 1200 50  0001 C CNN
F 1 "+15V" H 6765 1523 50  0000 C CNN
F 2 "" H 6750 1350 50  0001 C CNN
F 3 "" H 6750 1350 50  0001 C CNN
	1    6750 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0105
U 1 1 61BCDDF8
P 5850 2600
F 0 "#PWR0105" H 5850 2450 50  0001 C CNN
F 1 "+15V" H 5865 2773 50  0000 C CNN
F 2 "" H 5850 2600 50  0001 C CNN
F 3 "" H 5850 2600 50  0001 C CNN
	1    5850 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR0106
U 1 1 61BD080F
P 8400 3400
F 0 "#PWR0106" H 8400 3250 50  0001 C CNN
F 1 "+15V" H 8415 3573 50  0000 C CNN
F 2 "" H 8400 3400 50  0001 C CNN
F 3 "" H 8400 3400 50  0001 C CNN
	1    8400 3400
	1    0    0    -1  
$EndComp
$Comp
L device:R R9
U 1 1 61BD5FEA
P 6200 2850
F 0 "R9" H 6130 2804 50  0000 R CNN
F 1 "1k" H 6130 2895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6130 2850 50  0001 C CNN
F 3 "" H 6200 2850 50  0001 C CNN
	1    6200 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 3000 6200 3050
Connection ~ 6200 3050
Wire Wire Line
	6200 3050 7300 3050
Wire Wire Line
	6200 2700 6200 2650
Wire Wire Line
	6200 2650 5850 2650
Connection ~ 5850 2650
Wire Wire Line
	5850 2650 5850 2600
$Comp
L regul:L7815 U2
U 1 1 61BE3D48
P 4250 950
F 0 "U2" H 4250 1192 50  0000 C CNN
F 1 "L7815" H 4250 1101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4275 800 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4250 900 50  0001 C CNN
	1    4250 950 
	1    0    0    -1  
$EndComp
$Comp
L device:C C5
U 1 1 61BE4AF2
P 3600 1250
F 0 "C5" H 3715 1296 50  0000 L CNN
F 1 "100nF" H 3715 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3638 1100 50  0001 C CNN
F 3 "" H 3600 1250 50  0001 C CNN
	1    3600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1100 3600 950 
Wire Wire Line
	3600 950  3950 950 
$Comp
L device:C C6
U 1 1 61BEADD5
P 4850 1250
F 0 "C6" H 4965 1296 50  0000 L CNN
F 1 "100nF" H 4965 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4888 1100 50  0001 C CNN
F 3 "" H 4850 1250 50  0001 C CNN
	1    4850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1100 4850 950 
Wire Wire Line
	4850 950  4550 950 
$Comp
L power:GND #PWR0107
U 1 1 61BF5061
P 4250 1600
F 0 "#PWR0107" H 4250 1350 50  0001 C CNN
F 1 "GND" H 4255 1427 50  0000 C CNN
F 2 "" H 4250 1600 50  0001 C CNN
F 3 "" H 4250 1600 50  0001 C CNN
	1    4250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1600 4250 1500
Wire Wire Line
	3600 1400 3600 1500
Wire Wire Line
	3600 1500 4250 1500
Connection ~ 4250 1500
Wire Wire Line
	4250 1500 4250 1250
Wire Wire Line
	4850 1400 4850 1500
Wire Wire Line
	4850 1500 4250 1500
$Comp
L power:+15V #PWR0108
U 1 1 61C0940E
P 4850 900
F 0 "#PWR0108" H 4850 750 50  0001 C CNN
F 1 "+15V" H 4865 1073 50  0000 C CNN
F 2 "" H 4850 900 50  0001 C CNN
F 3 "" H 4850 900 50  0001 C CNN
	1    4850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 950  4850 900 
Connection ~ 4850 950 
$Comp
L power:+24V #PWR0109
U 1 1 61C10E4B
P 3600 900
F 0 "#PWR0109" H 3600 750 50  0001 C CNN
F 1 "+24V" H 3615 1073 50  0000 C CNN
F 2 "" H 3600 900 50  0001 C CNN
F 3 "" H 3600 900 50  0001 C CNN
	1    3600 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 950  3600 900 
Connection ~ 3600 950 
$Comp
L Transistor:MMBT3906 Q1
U 1 1 61C2AD2D
P 9200 2650
F 0 "Q1" H 9391 2604 50  0000 L CNN
F 1 "MMBT3906" H 9391 2695 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9400 2575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 9200 2650 50  0001 L CNN
	1    9200 2650
	-1   0    0    1   
$EndComp
$Comp
L power:+24V #PWR0111
U 1 1 61A135E9
P 1250 1000
F 0 "#PWR0111" H 1250 850 50  0001 C CNN
F 1 "+24V" H 1265 1173 50  0000 C CNN
F 2 "" H 1250 1000 50  0001 C CNN
F 3 "" H 1250 1000 50  0001 C CNN
	1    1250 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1550 1250 1550
Wire Wire Line
	1250 1850 1350 1850
Wire Wire Line
	1350 1750 1250 1750
Wire Wire Line
	1350 1650 1250 1650
$Comp
L Diode:1N4148 D5
U 1 1 61A135F3
P 1250 1350
F 0 "D5" V 1204 1429 50  0000 L CNN
F 1 "1N4148" V 1295 1429 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 1250 1175 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 1250 1350 50  0001 C CNN
	1    1250 1350
	0    1    1    0   
$EndComp
Text GLabel 1250 1950 3    50   Input ~ 0
VIN
Wire Wire Line
	1250 1950 1250 1850
Wire Wire Line
	1250 1850 1250 1750
Connection ~ 1250 1850
Wire Wire Line
	1250 1750 1250 1650
Connection ~ 1250 1750
Wire Wire Line
	1250 1550 1250 1650
Connection ~ 1250 1650
Wire Wire Line
	1250 1000 1250 1200
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 61A37772
P 1550 1750
F 0 "J1" H 1522 1632 50  0000 R CNN
F 1 "Conn_01x04_Male" H 1522 1723 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Right" H 1550 1750 50  0001 C CNN
F 3 "~" H 1550 1750 50  0001 C CNN
	1    1550 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 1550 1250 1500
Connection ~ 1250 1550
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 61A843BF
P 1800 3250
F 0 "J4" H 1772 3132 50  0000 R CNN
F 1 "Conn_01x04_Male" H 2150 3450 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Right" H 1800 3250 50  0001 C CNN
F 3 "~" H 1800 3250 50  0001 C CNN
	1    1800 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 3350 1550 3350
Wire Wire Line
	1550 3350 1550 3250
Wire Wire Line
	1550 3050 1600 3050
Wire Wire Line
	1600 3150 1550 3150
Connection ~ 1550 3150
Wire Wire Line
	1550 3150 1550 3050
Wire Wire Line
	1600 3250 1550 3250
Connection ~ 1550 3250
Wire Wire Line
	1550 3250 1550 3150
Text GLabel 1450 3050 0    50   Input ~ 0
IN_1+
Wire Wire Line
	1450 3050 1550 3050
Connection ~ 1550 3050
$Comp
L power:+15V #PWR0110
U 1 1 61AA4F88
P 4000 2800
F 0 "#PWR0110" H 4000 2650 50  0001 C CNN
F 1 "+15V" H 4015 2973 50  0000 C CNN
F 2 "" H 4000 2800 50  0001 C CNN
F 3 "" H 4000 2800 50  0001 C CNN
	1    4000 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
