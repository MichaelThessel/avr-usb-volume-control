EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:usb-volume-control-cache
EELAYER 25 0
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
L ATMEGA328P-P Uc101
U 1 1 57172233
P 4800 3050
F 0 "Uc101" H 4050 4300 50  0000 L BNN
F 1 "ATMEGA328P-P" H 5200 1650 50  0000 L BNN
F 2 "DIP-28_W7.62mm" H 4800 3050 50  0000 C CIN
F 3 "" H 4800 3050 50  0000 C CNN
	1    4800 3050
	1    0    0    -1  
$EndComp
$Comp
L Crystal Yc101
U 1 1 5717269F
P 6700 2600
F 0 "Yc101" H 6700 2750 50  0000 C CNN
F 1 "Crystal" H 6700 2450 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 6700 2600 50  0001 C CNN
F 3 "" H 6700 2600 50  0000 C CNN
	1    6700 2600
	0    1    1    0   
$EndComp
$Comp
L C Cc102
U 1 1 571726FC
P 7100 2750
F 0 "Cc102" H 7125 2850 50  0000 L CNN
F 1 "22pF" H 7125 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7138 2600 50  0001 C CNN
F 3 "" H 7100 2750 50  0000 C CNN
	1    7100 2750
	0    1    1    0   
$EndComp
$Comp
L C Cc101
U 1 1 57172761
P 7100 2450
F 0 "Cc101" H 7125 2550 50  0000 L CNN
F 1 "22pF" H 7125 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7138 2300 50  0001 C CNN
F 3 "" H 7100 2450 50  0000 C CNN
	1    7100 2450
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 5717296E
P 3450 1500
F 0 "#PWR01" H 3450 1350 50  0001 C CNN
F 1 "VCC" H 3450 1650 50  0000 C CNN
F 2 "" H 3450 1500 50  0000 C CNN
F 3 "" H 3450 1500 50  0000 C CNN
	1    3450 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5717298A
P 3450 2000
F 0 "#PWR02" H 3450 1750 50  0001 C CNN
F 1 "GND" H 3450 1850 50  0000 C CNN
F 2 "" H 3450 2000 50  0000 C CNN
F 3 "" H 3450 2000 50  0000 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
$Comp
L CP Cp101
U 1 1 57172A8E
P 3450 1750
F 0 "Cp101" H 3475 1850 50  0000 L CNN
F 1 "10uF" H 3475 1650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3488 1600 50  0001 C CNN
F 3 "" H 3450 1750 50  0000 C CNN
	1    3450 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 57172EFC
P 7400 2800
F 0 "#PWR03" H 7400 2550 50  0001 C CNN
F 1 "GND" H 7400 2650 50  0000 C CNN
F 2 "" H 7400 2800 50  0000 C CNN
F 3 "" H 7400 2800 50  0000 C CNN
	1    7400 2800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 57172F99
P 3900 1500
F 0 "#PWR04" H 3900 1350 50  0001 C CNN
F 1 "VCC" H 3900 1650 50  0000 C CNN
F 2 "" H 3900 1500 50  0000 C CNN
F 3 "" H 3900 1500 50  0000 C CNN
	1    3900 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 57172FCF
P 3900 4750
F 0 "#PWR05" H 3900 4500 50  0001 C CNN
F 1 "GND" H 3900 4600 50  0000 C CNN
F 2 "" H 3900 4750 50  0000 C CNN
F 3 "" H 3900 4750 50  0000 C CNN
	1    3900 4750
	1    0    0    -1  
$EndComp
$Comp
L R Rc101
U 1 1 5717300B
P 7050 2050
F 0 "Rc101" V 7130 2050 50  0000 C CNN
F 1 "2k" V 7050 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6980 2050 50  0001 C CNN
F 3 "" H 7050 2050 50  0000 C CNN
	1    7050 2050
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR06
U 1 1 57173977
P 7800 1500
F 0 "#PWR06" H 7800 1350 50  0001 C CNN
F 1 "VCC" H 7800 1650 50  0000 C CNN
F 2 "" H 7800 1500 50  0000 C CNN
F 3 "" H 7800 1500 50  0000 C CNN
	1    7800 1500
	1    0    0    -1  
$EndComp
$Comp
L R Rc102
U 1 1 57173A44
P 6050 3450
F 0 "Rc102" V 6130 3450 50  0000 C CNN
F 1 "2k" V 6050 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5980 3450 50  0001 C CNN
F 3 "" H 6050 3450 50  0000 C CNN
	1    6050 3450
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 Pc101
U 1 1 57174189
P 8050 3250
F 0 "Pc101" H 8050 3550 50  0000 C CNN
F 1 "USB" V 8150 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 8050 3250 50  0001 C CNN
F 3 "" H 8050 3250 50  0000 C CNN
	1    8050 3250
	1    0    0    -1  
$EndComp
$Comp
L R Rc201
U 1 1 57174C73
P 7050 3650
F 0 "Rc201" V 7130 3650 50  0000 C CNN
F 1 "47R" V 7050 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6980 3650 50  0001 C CNN
F 3 "" H 7050 3650 50  0000 C CNN
	1    7050 3650
	-1   0    0    1   
$EndComp
$Comp
L R Rc202
U 1 1 57174C9C
P 6750 3650
F 0 "Rc202" V 6830 3650 50  0000 C CNN
F 1 "47R" V 6750 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6680 3650 50  0001 C CNN
F 3 "" H 6750 3650 50  0000 C CNN
	1    6750 3650
	-1   0    0    1   
$EndComp
$Comp
L D Dc202
U 1 1 57174D26
P 6750 4200
F 0 "Dc202" H 6750 4300 50  0000 C CNN
F 1 "3V6" H 6750 4100 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 6750 4200 50  0001 C CNN
F 3 "" H 6750 4200 50  0000 C CNN
	1    6750 4200
	0    1    1    0   
$EndComp
$Comp
L D Dc201
U 1 1 57174D77
P 7050 4200
F 0 "Dc201" H 7050 4300 50  0000 C CNN
F 1 "3V6" H 7050 4100 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Horizontal_RM10" H 7050 4200 50  0001 C CNN
F 3 "" H 7050 4200 50  0000 C CNN
	1    7050 4200
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 P201
U 1 1 571766A5
P 9050 4550
F 0 "P201" H 9050 4850 50  0000 C CNN
F 1 "ROT ENC" V 9150 4550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 9050 4550 50  0001 C CNN
F 3 "" H 9050 4550 50  0000 C CNN
	1    9050 4550
	1    0    0    -1  
$EndComp
$Comp
L R Rc301
U 1 1 57179070
P 8050 4150
F 0 "Rc301" V 8130 4150 50  0000 C CNN
F 1 "2k" V 8050 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7980 4150 50  0001 C CNN
F 3 "" H 8050 4150 50  0000 C CNN
	1    8050 4150
	1    0    0    -1  
$EndComp
$Comp
L R Rc302
U 1 1 571790BF
P 8350 4150
F 0 "Rc302" V 8430 4150 50  0000 C CNN
F 1 "2k" V 8350 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8280 4150 50  0001 C CNN
F 3 "" H 8350 4150 50  0000 C CNN
	1    8350 4150
	1    0    0    -1  
$EndComp
$Comp
L CP Cc301
U 1 1 57179101
P 8050 4800
F 0 "Cc301" H 8075 4900 50  0000 L CNN
F 1 "1uF" H 8075 4700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8088 4650 50  0001 C CNN
F 3 "" H 8050 4800 50  0000 C CNN
	1    8050 4800
	1    0    0    -1  
$EndComp
$Comp
L CP Cc302
U 1 1 57179162
P 8350 4800
F 0 "Cc302" H 8375 4900 50  0000 L CNN
F 1 "1uF" H 8375 4700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8388 4650 50  0001 C CNN
F 3 "" H 8350 4800 50  0000 C CNN
	1    8350 4800
	1    0    0    -1  
$EndComp
$Comp
L R Rc303
U 1 1 57185BFE
P 6100 3250
F 0 "Rc303" V 6180 3250 50  0000 C CNN
F 1 "2k" V 6100 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 3250 50  0001 C CNN
F 3 "" H 6100 3250 50  0000 C CNN
	1    6100 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 1500 3450 1600
Wire Wire Line
	3450 1900 3450 2000
Wire Wire Line
	5800 2550 6400 2550
Wire Wire Line
	6400 2550 6400 2450
Wire Wire Line
	6400 2450 6950 2450
Wire Wire Line
	5800 2650 6400 2650
Wire Wire Line
	6400 2650 6400 2750
Wire Wire Line
	6400 2750 6950 2750
Connection ~ 6700 2450
Connection ~ 6700 2750
Wire Wire Line
	7250 2450 7400 2450
Wire Wire Line
	7400 2450 7400 2800
Wire Wire Line
	7400 2750 7250 2750
Connection ~ 7400 2750
Wire Wire Line
	3900 1500 3900 1950
Wire Wire Line
	3900 4250 3900 4750
Wire Wire Line
	5800 2050 6900 2050
Wire Wire Line
	5800 3400 5900 3400
Wire Wire Line
	5800 3750 6250 3750
Wire Wire Line
	6250 1950 6250 3900
Wire Wire Line
	6250 1950 5800 1950
Wire Wire Line
	3900 4600 7800 4600
Connection ~ 3900 4600
Wire Wire Line
	7050 3800 7050 4050
Connection ~ 7800 2050
Wire Wire Line
	7800 1500 7800 3100
Wire Wire Line
	7200 2050 8350 2050
Wire Wire Line
	7050 3300 7850 3300
Wire Wire Line
	6250 3900 7050 3900
Connection ~ 6250 3750
Connection ~ 7050 3900
Connection ~ 6350 2050
Wire Wire Line
	6450 3400 6200 3400
Wire Wire Line
	6450 3100 6450 3400
Wire Wire Line
	6450 3100 7850 3100
Wire Wire Line
	5800 3550 6150 3550
Wire Wire Line
	6150 3550 6150 4400
Wire Wire Line
	6150 4400 8850 4400
Wire Wire Line
	5800 3650 6050 3650
Wire Wire Line
	6050 3650 6050 4500
Wire Wire Line
	6050 4500 8850 4500
Connection ~ 7800 4600
Wire Wire Line
	6350 2050 6350 4000
Connection ~ 7800 3100
Wire Wire Line
	7800 3400 7800 5050
Wire Wire Line
	8350 4300 8350 4650
Connection ~ 8350 4500
Wire Wire Line
	8050 4300 8050 4650
Connection ~ 8050 4400
Wire Wire Line
	8050 4000 8050 3900
Wire Wire Line
	8050 3900 8350 3900
Wire Wire Line
	8350 2050 8350 4000
Connection ~ 8350 3900
Wire Wire Line
	8350 5050 8350 4950
Wire Wire Line
	7800 5050 8650 5050
Wire Wire Line
	8050 5050 8050 4950
Connection ~ 8050 5050
Wire Wire Line
	8850 4600 8650 4600
Wire Wire Line
	8650 4600 8650 5050
Connection ~ 8350 5050
Wire Wire Line
	7800 3400 7850 3400
Wire Wire Line
	5900 3400 5900 3450
Wire Wire Line
	6200 3400 6200 3450
Wire Wire Line
	5800 3300 5950 3300
Wire Wire Line
	5950 3300 5950 3250
Wire Wire Line
	6250 3250 6450 3250
Connection ~ 6450 3250
Wire Wire Line
	5850 3300 5850 5150
Wire Wire Line
	5850 5150 8850 5150
Wire Wire Line
	8850 5150 8850 4700
Connection ~ 5850 3300
Wire Wire Line
	7050 3300 7050 3500
Wire Wire Line
	6750 3200 7850 3200
Wire Wire Line
	6350 4000 6750 4000
Wire Wire Line
	6750 3800 6750 4050
Connection ~ 6750 4000
Wire Wire Line
	6750 3200 6750 3500
Wire Wire Line
	6750 4600 6750 4350
Connection ~ 6750 4600
Wire Wire Line
	7050 4350 7050 4600
Connection ~ 7050 4600
$EndSCHEMATC
