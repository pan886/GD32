EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
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
Text Label 12800 5650 0    50   ~ 0
PB2
Text Label 17300 6700 2    50   ~ 0
TDO
Text Label 12800 5800 0    50   ~ 0
PC8
Text Label 12800 5950 0    50   ~ 0
PC4
Text Label 12800 6550 0    50   ~ 0
TDO
Text Label 12800 6400 0    50   ~ 0
TDI
Text Label 12800 6700 0    50   ~ 0
TMS
Text Label 17300 6800 2    50   ~ 0
TCK
$Comp
L Device:R R1
U 1 1 60A753A4
P 13150 6250
F 0 "R1" V 12943 6250 50  0000 C CNN
F 1 "R" V 13034 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 13080 6250 50  0001 C CNN
F 3 "~" H 13150 6250 50  0001 C CNN
	1    13150 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	12800 6250 13000 6250
Wire Wire Line
	13300 6250 13550 6250
Text Label 13550 6250 0    50   ~ 0
TCK
$Comp
L power:GND #PWR02
U 1 1 60A77825
P 10700 10350
F 0 "#PWR02" H 10700 10100 50  0001 C CNN
F 1 "GND" H 10705 10177 50  0000 C CNN
F 2 "" H 10700 10350 50  0001 C CNN
F 3 "" H 10700 10350 50  0001 C CNN
	1    10700 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 10200 10650 10200
Connection ~ 10650 10200
Wire Wire Line
	10650 10200 10650 10350
Wire Wire Line
	10650 10350 10700 10350
$Comp
L power:GND #PWR03
U 1 1 60A797D0
P 11300 10300
F 0 "#PWR03" H 11300 10050 50  0001 C CNN
F 1 "GND" H 11305 10127 50  0000 C CNN
F 2 "" H 11300 10300 50  0001 C CNN
F 3 "" H 11300 10300 50  0001 C CNN
	1    11300 10300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 60A79E6E
P 11850 10300
F 0 "#PWR05" H 11850 10050 50  0001 C CNN
F 1 "GND" H 11855 10127 50  0000 C CNN
F 2 "" H 11850 10300 50  0001 C CNN
F 3 "" H 11850 10300 50  0001 C CNN
	1    11850 10300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 10200 11850 10200
Connection ~ 11850 10200
Wire Wire Line
	11850 10200 11950 10200
Wire Wire Line
	11850 10200 11850 10300
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J1
U 1 1 60A7DFD4
P 17500 6900
F 0 "J1" H 17550 7417 50  0000 C CNN
F 1 "JTAG" H 17550 7326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 17500 6900 50  0001 C CNN
F 3 "~" H 17500 6900 50  0001 C CNN
	1    17500 6900
	1    0    0    -1  
$EndComp
Text Label 17300 6600 2    50   ~ 0
TDI
Text Label 17800 7000 0    50   ~ 0
TMS
Text Label 17300 7000 2    50   ~ 0
RESET
Wire Wire Line
	17800 6600 18000 6600
Wire Wire Line
	18000 6600 18000 6700
Wire Wire Line
	18000 6700 17800 6700
Wire Wire Line
	18000 6700 18000 6800
Connection ~ 18000 6700
Wire Wire Line
	17800 6800 18000 6800
Connection ~ 18000 6800
Wire Wire Line
	18000 6800 18000 6900
Wire Wire Line
	17800 7100 18000 7100
Connection ~ 18000 7100
Wire Wire Line
	18000 7100 18000 7200
$Comp
L power:GND #PWR07
U 1 1 60A84350
P 18000 7500
F 0 "#PWR07" H 18000 7250 50  0001 C CNN
F 1 "GND" H 18005 7327 50  0000 C CNN
F 2 "" H 18000 7500 50  0001 C CNN
F 3 "" H 18000 7500 50  0001 C CNN
	1    18000 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	17800 7200 18000 7200
Connection ~ 18000 7200
Wire Wire Line
	18000 7200 18000 7500
Wire Wire Line
	17800 6900 18000 6900
Connection ~ 18000 6900
Wire Wire Line
	18000 6900 18000 7100
NoConn ~ 17300 7200
NoConn ~ 17300 6900
Wire Wire Line
	10550 5100 10700 5100
Connection ~ 10700 5100
Wire Wire Line
	10700 5100 10850 5100
$Comp
L power:+5V #PWR01
U 1 1 60A88DF8
P 10700 4900
F 0 "#PWR01" H 10700 4750 50  0001 C CNN
F 1 "+5V" H 10715 5073 50  0000 C CNN
F 2 "" H 10700 4900 50  0001 C CNN
F 3 "" H 10700 4900 50  0001 C CNN
	1    10700 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 60A89581
P 11100 4850
F 0 "#PWR04" H 11100 4700 50  0001 C CNN
F 1 "+5V" H 11115 5023 50  0000 C CNN
F 2 "" H 11100 4850 50  0001 C CNN
F 3 "" H 11100 4850 50  0001 C CNN
	1    11100 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 60A8A98C
P 11950 4950
F 0 "#PWR06" H 11950 4800 50  0001 C CNN
F 1 "+5V" H 11965 5123 50  0000 C CNN
F 2 "" H 11950 4950 50  0001 C CNN
F 3 "" H 11950 4950 50  0001 C CNN
	1    11950 4950
	1    0    0    -1  
$EndComp
Text Label 11500 4500 0    50   ~ 0
VDD_LV
$Comp
L pspice:CAP C1
U 1 1 60A8F0D6
P 17350 2700
F 0 "C1" H 17528 2746 50  0000 L CNN
F 1 "470pF" H 17528 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 17350 2700 50  0001 C CNN
F 3 "~" H 17350 2700 50  0001 C CNN
	1    17350 2700
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C2
U 1 1 60A8F9CD
P 17950 2700
F 0 "C2" H 18128 2746 50  0000 L CNN
F 1 "0.1uf" H 18128 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 17950 2700 50  0001 C CNN
F 3 "~" H 17950 2700 50  0001 C CNN
	1    17950 2700
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C4
U 1 1 60A8FD79
P 18550 2700
F 0 "C4" H 18728 2746 50  0000 L CNN
F 1 "470pf" H 18728 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 18550 2700 50  0001 C CNN
F 3 "~" H 18550 2700 50  0001 C CNN
	1    18550 2700
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C6
U 1 1 60A90127
P 19200 2700
F 0 "C6" H 19378 2746 50  0000 L CNN
F 1 "0.1uf" H 19378 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 19200 2700 50  0001 C CNN
F 3 "~" H 19200 2700 50  0001 C CNN
	1    19200 2700
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C8
U 1 1 60A90559
P 19750 2700
F 0 "C8" H 19928 2746 50  0000 L CNN
F 1 "470pf" H 19928 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 19750 2700 50  0001 C CNN
F 3 "~" H 19750 2700 50  0001 C CNN
	1    19750 2700
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C9
U 1 1 60A909B0
P 20350 2700
F 0 "C9" H 20528 2746 50  0000 L CNN
F 1 "0.1uf" H 20528 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 20350 2700 50  0001 C CNN
F 3 "~" H 20350 2700 50  0001 C CNN
	1    20350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	17350 2450 17950 2450
Connection ~ 17950 2450
Wire Wire Line
	17950 2450 18550 2450
Connection ~ 18550 2450
Wire Wire Line
	18550 2450 19200 2450
Connection ~ 19200 2450
Wire Wire Line
	19200 2450 19750 2450
Connection ~ 19750 2450
Wire Wire Line
	19750 2450 20350 2450
Wire Wire Line
	17350 2950 17950 2950
Connection ~ 17950 2950
Wire Wire Line
	17950 2950 18550 2950
Connection ~ 18550 2950
Wire Wire Line
	18550 2950 19200 2950
Connection ~ 19200 2950
Wire Wire Line
	19200 2950 19750 2950
Connection ~ 19750 2950
Wire Wire Line
	19750 2950 20350 2950
$Comp
L power:GND #PWR09
U 1 1 60A959C7
P 18550 3000
F 0 "#PWR09" H 18550 2750 50  0001 C CNN
F 1 "GND" H 18555 2827 50  0000 C CNN
F 2 "" H 18550 3000 50  0001 C CNN
F 3 "" H 18550 3000 50  0001 C CNN
	1    18550 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 60A9791F
P 18550 2350
F 0 "#PWR08" H 18550 2200 50  0001 C CNN
F 1 "+5V" H 18565 2523 50  0000 C CNN
F 2 "" H 18550 2350 50  0001 C CNN
F 3 "" H 18550 2350 50  0001 C CNN
	1    18550 2350
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C3
U 1 1 60A98C49
P 18200 4100
F 0 "C3" H 18378 4146 50  0000 L CNN
F 1 "470pF" H 18378 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 18200 4100 50  0001 C CNN
F 3 "~" H 18200 4100 50  0001 C CNN
	1    18200 4100
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C5
U 1 1 60A98FAE
P 18800 4100
F 0 "C5" H 18978 4146 50  0000 L CNN
F 1 "330nF" H 18978 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 18800 4100 50  0001 C CNN
F 3 "~" H 18800 4100 50  0001 C CNN
	1    18800 4100
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C7
U 1 1 60A994A5
P 19500 4100
F 0 "C7" H 19678 4146 50  0000 L CNN
F 1 "470pF" H 19678 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 19500 4100 50  0001 C CNN
F 3 "~" H 19500 4100 50  0001 C CNN
	1    19500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	18200 3850 18800 3850
Connection ~ 18800 3850
Wire Wire Line
	18800 3850 19500 3850
Wire Wire Line
	18200 4350 18800 4350
Connection ~ 18800 4350
Wire Wire Line
	18800 4350 19500 4350
$Comp
L power:GND #PWR010
U 1 1 60A9D347
P 18800 4350
F 0 "#PWR010" H 18800 4100 50  0001 C CNN
F 1 "GND" H 18805 4177 50  0000 C CNN
F 2 "" H 18800 4350 50  0001 C CNN
F 3 "" H 18800 4350 50  0001 C CNN
	1    18800 4350
	1    0    0    -1  
$EndComp
Text Label 18800 3650 0    50   ~ 0
VDD_LV
Wire Wire Line
	18800 3650 18800 3850
Wire Wire Line
	18650 9850 18650 9800
Text Label 18650 9800 0    50   ~ 0
EXTAL
Text Label 18650 10200 0    50   ~ 0
XTAL
Wire Wire Line
	17150 9850 17150 10200
Wire Wire Line
	17150 9850 18650 9850
$Comp
L Device:R R2
U 1 1 60AB38A3
P 17700 10200
F 0 "R2" V 17493 10200 50  0000 C CNN
F 1 "1M" V 17584 10200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 17630 10200 50  0001 C CNN
F 3 "~" H 17700 10200 50  0001 C CNN
	1    17700 10200
	0    1    1    0   
$EndComp
Wire Wire Line
	17150 10200 17550 10200
$Comp
L pspice:CAP C10
U 1 1 60AB63BF
P 17150 11050
F 0 "C10" H 17328 11096 50  0000 L CNN
F 1 "15pF" H 17328 11005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 17150 11050 50  0001 C CNN
F 3 "~" H 17150 11050 50  0001 C CNN
	1    17150 11050
	1    0    0    -1  
$EndComp
Connection ~ 17150 10200
$Comp
L pspice:CAP C11
U 1 1 60AB6AF2
P 18350 11050
F 0 "C11" H 18528 11096 50  0000 L CNN
F 1 "15pF" H 18528 11005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 18350 11050 50  0001 C CNN
F 3 "~" H 18350 11050 50  0001 C CNN
	1    18350 11050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 60AB7359
P 17700 10650
F 0 "Y1" H 17700 10918 50  0000 C CNN
F 1 "8M" H 17700 10827 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 17700 10650 50  0001 C CNN
F 3 "~" H 17700 10650 50  0001 C CNN
	1    17700 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	17150 10200 17150 10650
Wire Wire Line
	17850 10200 18350 10200
Wire Wire Line
	18350 10200 18350 10650
Connection ~ 18350 10200
Wire Wire Line
	18350 10200 18650 10200
Wire Wire Line
	17150 11300 17700 11300
Wire Wire Line
	17550 10650 17150 10650
Connection ~ 17150 10650
Wire Wire Line
	17150 10650 17150 10800
Wire Wire Line
	17850 10650 18350 10650
Connection ~ 18350 10650
Wire Wire Line
	18350 10650 18350 10800
$Comp
L power:GND #PWR013
U 1 1 60ABDBFA
P 17700 11350
F 0 "#PWR013" H 17700 11100 50  0001 C CNN
F 1 "GND" H 17705 11177 50  0000 C CNN
F 2 "" H 17700 11350 50  0001 C CNN
F 3 "" H 17700 11350 50  0001 C CNN
	1    17700 11350
	1    0    0    -1  
$EndComp
Wire Wire Line
	17700 11350 17700 11300
Connection ~ 17700 11300
Wire Wire Line
	17700 11300 18350 11300
Wire Wire Line
	10650 10200 10800 10200
$Comp
L 560D:SPC560D-New_Library U1
U 1 1 60A4F355
P 11200 7500
F 0 "U1" H 11350 10171 50  0000 C CNN
F 1 "SPC560D-New_Library" H 11350 10080 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 11350 9989 50  0000 C CNN
F 3 "" H 10050 9800 50  0001 C CNN
	1    11200 7500
	1    0    0    -1  
$EndComp
Text Label 15000 4500 0    50   ~ 0
PA5
Text Label 9900 5550 2    50   ~ 0
PB3
Text Label 9900 5700 2    50   ~ 0
PC9
Text Label 9900 5850 2    50   ~ 0
PA2
Text Label 9900 6000 2    50   ~ 0
PA1
Text Label 9900 6150 2    50   ~ 0
PA0
Text Label 9900 6350 2    50   ~ 0
PC10
Text Label 9900 6900 2    50   ~ 0
PC6
Text Label 9900 7100 2    50   ~ 0
PC7
Text Label 9900 7300 2    50   ~ 0
PA15
Text Label 9900 7500 2    50   ~ 0
PA14
Text Label 9900 7650 2    50   ~ 0
PA4
Text Label 9900 7800 2    50   ~ 0
PA13
Text Label 9900 7950 2    50   ~ 0
PA12
Text Label 9900 8400 2    50   ~ 0
PB10
Text Label 9900 9000 2    50   ~ 0
XTAL
Text Label 9900 9200 2    50   ~ 0
EXTAL
Text Label 12800 6100 0    50   ~ 0
PC5
Text Label 12800 6850 0    50   ~ 0
PA6
Text Label 12800 7000 0    50   ~ 0
PA5
Text Label 12800 7150 0    50   ~ 0
PC2
Text Label 12800 7300 0    50   ~ 0
PC3
Text Label 12800 7450 0    50   ~ 0
PA11
Text Label 12800 7600 0    50   ~ 0
PA10
Text Label 12800 7750 0    50   ~ 0
PA9
Text Label 12800 7900 0    50   ~ 0
PA8
Text Label 12800 8050 0    50   ~ 0
PA7
Text Label 12800 8200 0    50   ~ 0
PA3
Text Label 12800 8350 0    50   ~ 0
PB15
Text Label 12800 8500 0    50   ~ 0
PB14
Text Label 12800 8650 0    50   ~ 0
PB13
Text Label 12800 8800 0    50   ~ 0
PB12
Text Label 12800 8950 0    50   ~ 0
PB11
Text Label 9900 8700 2    50   ~ 0
RESET
$Comp
L power:+5V #PWR0103
U 1 1 60FE6DD1
P 16900 7100
F 0 "#PWR0103" H 16900 6950 50  0001 C CNN
F 1 "+5V" V 16915 7228 50  0000 L CNN
F 2 "" H 16900 7100 50  0001 C CNN
F 3 "" H 16900 7100 50  0001 C CNN
	1    16900 7100
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C12
U 1 1 60FEFA59
P 17000 7350
F 0 "C12" H 17178 7396 50  0000 L CNN
F 1 "0.1uF" H 17178 7305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 17000 7350 50  0001 C CNN
F 3 "~" H 17000 7350 50  0001 C CNN
	1    17000 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	16900 7100 17000 7100
Connection ~ 17000 7100
Wire Wire Line
	17000 7100 17300 7100
$Comp
L power:GND #PWR0104
U 1 1 60FF0A2E
P 17000 7600
F 0 "#PWR0104" H 17000 7350 50  0001 C CNN
F 1 "GND" H 17005 7427 50  0000 C CNN
F 2 "" H 17000 7600 50  0001 C CNN
F 3 "" H 17000 7600 50  0001 C CNN
	1    17000 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 10200 10950 10200
Connection ~ 10800 10200
$Comp
L power:GND #PWR0106
U 1 1 6109DFD4
P 19500 1650
F 0 "#PWR0106" H 19500 1400 50  0001 C CNN
F 1 "GND" H 19505 1477 50  0000 C CNN
F 2 "" H 19500 1650 50  0001 C CNN
F 3 "" H 19500 1650 50  0001 C CNN
	1    19500 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 6109F7CB
P 19100 1100
F 0 "#PWR0107" H 19100 950 50  0001 C CNN
F 1 "+5V" V 19115 1228 50  0000 L CNN
F 2 "" H 19100 1100 50  0001 C CNN
F 3 "" H 19100 1100 50  0001 C CNN
	1    19100 1100
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C13
U 1 1 610A1810
P 19100 1500
F 0 "C13" H 19278 1546 50  0000 L CNN
F 1 "0.1uF" H 19278 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 19100 1500 50  0001 C CNN
F 3 "~" H 19100 1500 50  0001 C CNN
	1    19100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 610A4D0C
P 19100 1850
F 0 "#PWR0108" H 19100 1600 50  0001 C CNN
F 1 "GND" H 19105 1677 50  0000 C CNN
F 2 "" H 19100 1850 50  0001 C CNN
F 3 "" H 19100 1850 50  0001 C CNN
	1    19100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	19100 1100 19100 1200
$Comp
L pspice:CAP C14
U 1 1 610A8C08
P 19950 1500
F 0 "C14" H 20128 1546 50  0000 L CNN
F 1 "100uF" H 20128 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 19950 1500 50  0001 C CNN
F 3 "~" H 19950 1500 50  0001 C CNN
	1    19950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 610A9275
P 19950 1800
F 0 "#PWR0109" H 19950 1550 50  0001 C CNN
F 1 "GND" H 19955 1627 50  0000 C CNN
F 2 "" H 19950 1800 50  0001 C CNN
F 3 "" H 19950 1800 50  0001 C CNN
	1    19950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	19800 1250 19950 1250
$Comp
L power:+3.3V #PWR0110
U 1 1 611D7F0B
P 19950 1150
F 0 "#PWR0110" H 19950 1000 50  0001 C CNN
F 1 "+3.3V" H 19965 1323 50  0000 C CNN
F 2 "" H 19950 1150 50  0001 C CNN
F 3 "" H 19950 1150 50  0001 C CNN
	1    19950 1150
	1    0    0    -1  
$EndComp
Connection ~ 19950 1250
Wire Wire Line
	11350 5100 11500 5100
Connection ~ 11500 5100
Wire Wire Line
	11500 5100 11650 5100
Wire Wire Line
	11500 5100 11500 4500
Wire Wire Line
	11100 5100 11100 4850
Wire Wire Line
	11950 5100 11950 4950
Wire Wire Line
	10700 5100 10700 4900
Wire Wire Line
	11300 10200 11300 10300
Wire Wire Line
	19950 1750 19950 1800
Wire Wire Line
	19100 1750 19100 1850
Wire Wire Line
	18550 3000 18550 2950
Wire Wire Line
	18550 2450 18550 2350
Wire Wire Line
	19500 1550 19500 1650
Wire Wire Line
	19200 1250 19200 1200
Wire Wire Line
	19200 1200 19100 1200
Connection ~ 19100 1200
Wire Wire Line
	19100 1200 19100 1250
Wire Wire Line
	19950 1250 19950 1150
$Comp
L Regulator_Linear:LM1117-3.3 U2
U 1 1 6173EE26
P 19500 1250
F 0 "U2" H 19500 1492 50  0000 C CNN
F 1 "LM1117-3.3" H 19500 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 19500 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 19500 1250 50  0001 C CNN
	1    19500 1250
	1    0    0    -1  
$EndComp
NoConn ~ 12800 9350
NoConn ~ 12800 9250
NoConn ~ 12800 9150
NoConn ~ 12800 9050
NoConn ~ 9900 8250
NoConn ~ 9900 8100
$Comp
L power:+5V #PWR0119
U 1 1 628BFF68
P 13900 4350
F 0 "#PWR0119" H 13900 4200 50  0001 C CNN
F 1 "+5V" V 13915 4478 50  0000 L CNN
F 2 "" H 13900 4350 50  0001 C CNN
F 3 "" H 13900 4350 50  0001 C CNN
	1    13900 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 628C901C
P 14250 4350
F 0 "R4" V 14043 4350 50  0000 C CNN
F 1 "2k" V 14134 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 14180 4350 50  0001 C CNN
F 3 "~" H 14250 4350 50  0001 C CNN
	1    14250 4350
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 628CFFF1
P 14700 4350
F 0 "D1" H 14693 4095 50  0000 C CNN
F 1 "LED" H 14693 4186 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 14700 4350 50  0001 C CNN
F 3 "~" H 14700 4350 50  0001 C CNN
	1    14700 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	13900 4350 14100 4350
Wire Wire Line
	14400 4350 14550 4350
Wire Wire Line
	14850 4350 15000 4350
Wire Wire Line
	15000 4350 15000 4500
$Comp
L power:GND #PWR016
U 1 1 611FAC29
P 5650 2900
F 0 "#PWR016" H 5650 2650 50  0001 C CNN
F 1 "GND" H 5655 2727 50  0000 C CNN
F 2 "" H 5650 2900 50  0001 C CNN
F 3 "" H 5650 2900 50  0001 C CNN
	1    5650 2900
	1    0    0    -1  
$EndComp
Text Label 6050 2600 0    50   ~ 0
PA15
Text Label 6050 2400 0    50   ~ 0
PA12
Text Label 6050 2300 0    50   ~ 0
PA14
$Comp
L power:+3.3V #PWR015
U 1 1 612027C9
P 5650 2100
F 0 "#PWR015" H 5650 1950 50  0001 C CNN
F 1 "+3.3V" H 5665 2273 50  0000 C CNN
F 2 "" H 5650 2100 50  0001 C CNN
F 3 "" H 5650 2100 50  0001 C CNN
	1    5650 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 61205C34
P 6150 2100
F 0 "C16" V 5898 2100 50  0000 C CNN
F 1 "0.1uF" V 5989 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6188 1950 50  0001 C CNN
F 3 "~" H 6150 2100 50  0001 C CNN
	1    6150 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 61206390
P 6500 2100
F 0 "#PWR017" H 6500 1850 50  0001 C CNN
F 1 "GND" H 6505 1927 50  0000 C CNN
F 2 "" H 6500 2100 50  0001 C CNN
F 3 "" H 6500 2100 50  0001 C CNN
	1    6500 2100
	0    -1   -1   0   
$EndComp
Connection ~ 5650 2100
$Comp
L Sensor_Temperature:MAX31855NASA U3
U 1 1 611F937A
P 5650 2500
F 0 "U3" H 5650 3081 50  0000 C CNN
F 1 "MAX31855NASA" H 5650 2990 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6650 2150 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 5650 2500 50  0001 C CNN
	1    5650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2100 6000 2100
Wire Wire Line
	6300 2100 6500 2100
Text Label 5250 2400 2    50   ~ 0
INX
Text Label 5250 2600 2    50   ~ 0
INY
$Comp
L Analog_Switch:CD4052B U4
U 1 1 612C797E
P 3250 2650
F 0 "U4" H 3250 3531 50  0000 C CNN
F 1 "CD4052B" H 3250 3440 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3400 1900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 3230 2850 50  0001 C CNN
	1    3250 2650
	1    0    0    -1  
$EndComp
Text Label 3750 2350 0    50   ~ 0
x0
Text Label 3750 2450 0    50   ~ 0
x1
Text Label 3750 2550 0    50   ~ 0
x2
Text Label 3750 2650 0    50   ~ 0
x3
Text Label 3750 2850 0    50   ~ 0
y0
Text Label 3750 2950 0    50   ~ 0
y1
Text Label 3750 3050 0    50   ~ 0
y2
Text Label 3750 3150 0    50   ~ 0
y3
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 6131E9FA
P 2600 4100
F 0 "J2" H 2518 3775 50  0000 C CNN
F 1 "Conn_01x02" H 2518 3866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2600 4100 50  0001 C CNN
F 3 "~" H 2600 4100 50  0001 C CNN
	1    2600 4100
	-1   0    0    1   
$EndComp
Text Label 2800 4100 0    50   ~ 0
x0
Text Label 2800 4000 0    50   ~ 0
y0
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 61321901
P 3300 4100
F 0 "J3" H 3218 3775 50  0000 C CNN
F 1 "Conn_01x02" H 3218 3866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3300 4100 50  0001 C CNN
F 3 "~" H 3300 4100 50  0001 C CNN
	1    3300 4100
	-1   0    0    1   
$EndComp
Text Label 3500 4000 0    50   ~ 0
y1
Text Label 3500 4100 0    50   ~ 0
x1
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 61321F87
P 3950 4100
F 0 "J4" H 3868 3775 50  0000 C CNN
F 1 "Conn_01x02" H 3868 3866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3950 4100 50  0001 C CNN
F 3 "~" H 3950 4100 50  0001 C CNN
	1    3950 4100
	-1   0    0    1   
$EndComp
Text Label 4150 4000 0    50   ~ 0
y2
Text Label 4150 4100 0    50   ~ 0
x2
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 613223CA
P 4600 4100
F 0 "J5" H 4518 3775 50  0000 C CNN
F 1 "Conn_01x02" H 4518 3866 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4600 4100 50  0001 C CNN
F 3 "~" H 4600 4100 50  0001 C CNN
	1    4600 4100
	-1   0    0    1   
$EndComp
Text Label 4800 4000 0    50   ~ 0
y3
Text Label 4800 4100 0    50   ~ 0
x3
Text Label 2750 2150 2    50   ~ 0
PB10
Text Label 2750 2250 2    50   ~ 0
PB11
$Comp
L power:GND #PWR0101
U 1 1 6133055B
P 3250 3350
F 0 "#PWR0101" H 3250 3100 50  0001 C CNN
F 1 "GND" H 3255 3177 50  0000 C CNN
F 2 "" H 3250 3350 50  0001 C CNN
F 3 "" H 3250 3350 50  0001 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
Text Label 2750 2450 2    50   ~ 0
INX
Text Label 2750 2950 2    50   ~ 0
INY
Text Label 9900 6500 2    50   ~ 0
CAN0TX
Text Label 9900 6700 2    50   ~ 0
CAN0RX
$Comp
L Regulator_Switching:LMR16006YQ U5
U 1 1 61866AFB
P 3700 12800
F 0 "U5" H 3700 13267 50  0000 C CNN
F 1 "LMR16006YQ" H 3700 13176 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3700 12300 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lmr16006y-q1.pdf" H 3300 13250 50  0001 C CNN
	1    3700 12800
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cboot1
U 1 1 61869B2A
P 4850 12750
F 0 "Cboot1" H 4965 12796 50  0000 L CNN
F 1 "1uF" H 4965 12705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4888 12600 50  0001 C CNN
F 3 "~" H 4850 12750 50  0001 C CNN
	1    4850 12750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 12600 4850 12600
Wire Wire Line
	4200 12800 4550 12800
Wire Wire Line
	4550 12800 4550 12900
Wire Wire Line
	4550 12900 4850 12900
$Comp
L Device:L L1
U 1 1 61880301
P 5500 12900
F 0 "L1" V 5690 12900 50  0000 C CNN
F 1 "L" V 5599 12900 50  0000 C CNN
F 2 "Inductor_SMD:L_Coilcraft_XxL4030" H 5500 12900 50  0001 C CNN
F 3 "~" H 5500 12900 50  0001 C CNN
	1    5500 12900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 12900 5350 12900
Connection ~ 4850 12900
$Comp
L Device:R R3
U 1 1 61887B47
P 5800 13050
F 0 "R3" H 5870 13096 50  0000 L CNN
F 1 "R" H 5870 13005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5730 13050 50  0001 C CNN
F 3 "~" H 5800 13050 50  0001 C CNN
	1    5800 13050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 61888261
P 5800 13450
F 0 "R5" H 5870 13496 50  0000 L CNN
F 1 "R" H 5870 13405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5730 13450 50  0001 C CNN
F 3 "~" H 5800 13450 50  0001 C CNN
	1    5800 13450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 12900 5800 12900
Connection ~ 5800 12900
Wire Wire Line
	5800 12900 6350 12900
$Comp
L Device:C Cout1
U 1 1 61898706
P 6350 13050
F 0 "Cout1" H 6465 13096 50  0000 L CNN
F 1 "10uF" H 6465 13005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6388 12900 50  0001 C CNN
F 3 "~" H 6350 13050 50  0001 C CNN
	1    6350 13050
	1    0    0    -1  
$EndComp
Connection ~ 6350 12900
Wire Wire Line
	6350 12900 6550 12900
$Comp
L power:GND #PWR018
U 1 1 61898BEC
P 6350 13200
F 0 "#PWR018" H 6350 12950 50  0001 C CNN
F 1 "GND" H 6355 13027 50  0000 C CNN
F 2 "" H 6350 13200 50  0001 C CNN
F 3 "" H 6350 13200 50  0001 C CNN
	1    6350 13200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 61899961
P 5800 13600
F 0 "#PWR014" H 5800 13350 50  0001 C CNN
F 1 "GND" H 5805 13427 50  0000 C CNN
F 2 "" H 5800 13600 50  0001 C CNN
F 3 "" H 5800 13600 50  0001 C CNN
	1    5800 13600
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cin1
U 1 1 6189ED1F
P 2050 12750
F 0 "Cin1" H 2165 12796 50  0000 L CNN
F 1 "1-10uF" H 2165 12705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2088 12600 50  0001 C CNN
F 3 "~" H 2050 12750 50  0001 C CNN
	1    2050 12750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6189F713
P 3700 13250
F 0 "#PWR012" H 3700 13000 50  0001 C CNN
F 1 "GND" H 3705 13077 50  0000 C CNN
F 2 "" H 3700 13250 50  0001 C CNN
F 3 "" H 3700 13250 50  0001 C CNN
	1    3700 13250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 12600 2600 12600
Connection ~ 2600 12600
Wire Wire Line
	2600 12600 3200 12600
Wire Wire Line
	2600 12900 3200 12900
Wire Wire Line
	3200 12900 3200 12800
Wire Wire Line
	2050 12900 2050 13250
Wire Wire Line
	2050 13250 3700 13250
Connection ~ 3700 13250
Wire Wire Line
	3700 13250 4450 13250
Wire Wire Line
	3700 13250 3700 13200
$Comp
L Device:D_Schottky D2
U 1 1 618BD4B6
P 4850 13200
F 0 "D2" V 4804 13280 50  0000 L CNN
F 1 "D_Schottky" V 4895 13280 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4850 13200 50  0001 C CNN
F 3 "~" H 4850 13200 50  0001 C CNN
	1    4850 13200
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 12900 4850 13050
Wire Wire Line
	4450 13250 4450 13350
Wire Wire Line
	4450 13350 4850 13350
Wire Wire Line
	4200 13000 4350 13000
Wire Wire Line
	4350 13000 4350 13400
Wire Wire Line
	4350 13400 5500 13400
Wire Wire Line
	5500 13400 5500 13250
Wire Wire Line
	5500 13250 5800 13250
Wire Wire Line
	5800 13200 5800 13250
Wire Wire Line
	5800 13250 5800 13300
Connection ~ 5800 13250
$Comp
L power:+12V #PWR011
U 1 1 618D85B2
P 1800 12600
F 0 "#PWR011" H 1800 12450 50  0001 C CNN
F 1 "+12V" H 1815 12773 50  0000 C CNN
F 2 "" H 1800 12600 50  0001 C CNN
F 3 "" H 1800 12600 50  0001 C CNN
	1    1800 12600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 12600 2050 12600
Connection ~ 2050 12600
$Comp
L power:+5V #PWR019
U 1 1 618E39C0
P 6550 12900
F 0 "#PWR019" H 6550 12750 50  0001 C CNN
F 1 "+5V" H 6565 13073 50  0000 C CNN
F 2 "" H 6550 12900 50  0001 C CNN
F 3 "" H 6550 12900 50  0001 C CNN
	1    6550 12900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J6
U 1 1 6199554D
P 1800 11200
F 0 "J6" H 1857 11517 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1857 11426 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 1850 11160 50  0001 C CNN
F 3 "~" H 1850 11160 50  0001 C CNN
	1    1800 11200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 6199728C
P 2400 11050
F 0 "#PWR0102" H 2400 10900 50  0001 C CNN
F 1 "+12V" H 2415 11223 50  0000 C CNN
F 2 "" H 2400 11050 50  0001 C CNN
F 3 "" H 2400 11050 50  0001 C CNN
	1    2400 11050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61997862
P 2400 11300
F 0 "#PWR0105" H 2400 11050 50  0001 C CNN
F 1 "GND" H 2405 11127 50  0000 C CNN
F 2 "" H 2400 11300 50  0001 C CNN
F 3 "" H 2400 11300 50  0001 C CNN
	1    2400 11300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 11100 2400 11100
Wire Wire Line
	2400 11100 2400 11050
Wire Wire Line
	2100 11200 2400 11200
Wire Wire Line
	2400 11200 2400 11300
Wire Wire Line
	2100 11300 2400 11300
Connection ~ 2400 11300
$Comp
L Device:R R6
U 1 1 6189FEA4
P 2600 12750
F 0 "R6" H 2670 12796 50  0000 L CNN
F 1 "100K" H 2670 12705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2530 12750 50  0001 C CNN
F 3 "~" H 2600 12750 50  0001 C CNN
	1    2600 12750
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:TJA1042T U6
U 1 1 61E927AF
P 3700 6200
F 0 "U6" H 3700 6781 50  0000 C CNN
F 1 "TJA1042T" H 3700 6690 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3700 5700 50  0001 C CIN
F 3 "http://www.nxp.com/documents/data_sheet/TJA1042.pdf" H 3700 6200 50  0001 C CNN
	1    3700 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 61E93078
P 3100 6400
F 0 "#PWR0111" H 3100 6150 50  0001 C CNN
F 1 "GND" H 3105 6227 50  0000 C CNN
F 2 "" H 3100 6400 50  0001 C CNN
F 3 "" H 3100 6400 50  0001 C CNN
	1    3100 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6400 3200 6400
Text Label 3200 6000 2    50   ~ 0
CAN0TX
Text Label 3200 6100 2    50   ~ 0
CAN0RX
$Comp
L power:+5V #PWR0112
U 1 1 61E9F5B6
P 4000 5600
F 0 "#PWR0112" H 4000 5450 50  0001 C CNN
F 1 "+5V" H 4015 5773 50  0000 C CNN
F 2 "" H 4000 5600 50  0001 C CNN
F 3 "" H 4000 5600 50  0001 C CNN
	1    4000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5800 4000 5800
Wire Wire Line
	4000 5800 4000 5700
$Comp
L Device:C C15
U 1 1 61EA976D
P 4150 5700
F 0 "C15" V 3898 5700 50  0000 C CNN
F 1 "0.1uF" V 3989 5700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4188 5550 50  0001 C CNN
F 3 "~" H 4150 5700 50  0001 C CNN
	1    4150 5700
	0    1    1    0   
$EndComp
Connection ~ 4000 5700
Wire Wire Line
	4000 5700 4000 5600
$Comp
L power:GND #PWR0113
U 1 1 61EA9CD5
P 4500 5700
F 0 "#PWR0113" H 4500 5450 50  0001 C CNN
F 1 "GND" H 4505 5527 50  0000 C CNN
F 2 "" H 4500 5700 50  0001 C CNN
F 3 "" H 4500 5700 50  0001 C CNN
	1    4500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5700 4500 5700
NoConn ~ 4200 6200
Wire Wire Line
	4200 6100 5000 6100
Wire Wire Line
	5000 6100 5000 5450
Wire Wire Line
	5000 5450 5450 5450
Text Label 6900 5450 0    50   ~ 0
CAN0HK
Wire Wire Line
	4200 6300 5000 6300
Wire Wire Line
	5000 6300 5000 6900
Wire Wire Line
	5000 6900 5450 6900
$Comp
L Device:R R7
U 1 1 61EE77A2
P 5450 5600
F 0 "R7" H 5520 5646 50  0000 L CNN
F 1 "61.9" H 5520 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5380 5600 50  0001 C CNN
F 3 "~" H 5450 5600 50  0001 C CNN
	1    5450 5600
	1    0    0    -1  
$EndComp
Connection ~ 5450 5450
$Comp
L Device:R R8
U 1 1 61EE7C47
P 5450 6750
F 0 "R8" H 5520 6796 50  0000 L CNN
F 1 "61.9" H 5520 6705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5380 6750 50  0001 C CNN
F 3 "~" H 5450 6750 50  0001 C CNN
	1    5450 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 61EE8064
P 5750 5950
F 0 "R9" H 5820 5996 50  0000 L CNN
F 1 "10K" H 5820 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5680 5950 50  0001 C CNN
F 3 "~" H 5750 5950 50  0001 C CNN
	1    5750 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61EE848A
P 5750 6400
F 0 "R10" H 5820 6446 50  0000 L CNN
F 1 "10K" H 5820 6355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5680 6400 50  0001 C CNN
F 3 "~" H 5750 6400 50  0001 C CNN
	1    5750 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5750 5450 6150
Wire Wire Line
	5750 6100 5750 6150
$Comp
L power:+5V #PWR021
U 1 1 61EF7E87
P 5750 5800
F 0 "#PWR021" H 5750 5650 50  0001 C CNN
F 1 "+5V" H 5765 5973 50  0000 C CNN
F 2 "" H 5750 5800 50  0001 C CNN
F 3 "" H 5750 5800 50  0001 C CNN
	1    5750 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 61EF864E
P 5750 6550
F 0 "#PWR022" H 5750 6300 50  0001 C CNN
F 1 "GND" H 5755 6377 50  0000 C CNN
F 2 "" H 5750 6550 50  0001 C CNN
F 3 "" H 5750 6550 50  0001 C CNN
	1    5750 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6150 5450 6150
Connection ~ 5750 6150
Wire Wire Line
	5750 6150 5750 6250
Connection ~ 5450 6150
Wire Wire Line
	5450 6150 5450 6600
$Comp
L Device:C C17
U 1 1 61F02EA3
P 5300 6150
F 0 "C17" V 5552 6150 50  0000 C CNN
F 1 "4.7nF" V 5461 6150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5338 6000 50  0001 C CNN
F 3 "~" H 5300 6150 50  0001 C CNN
	1    5300 6150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 61F036C5
P 5150 6150
F 0 "#PWR020" H 5150 5900 50  0001 C CNN
F 1 "GND" H 5155 5977 50  0000 C CNN
F 2 "" H 5150 6150 50  0001 C CNN
F 3 "" H 5150 6150 50  0001 C CNN
	1    5150 6150
	1    0    0    -1  
$EndComp
Connection ~ 5450 6900
Text Label 6950 6900 0    50   ~ 0
CAN0LK
$Comp
L Device:C C18
U 1 1 61F200B6
P 6600 5600
F 0 "C18" H 6715 5646 50  0000 L CNN
F 1 "100PF" H 6715 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6638 5450 50  0001 C CNN
F 3 "~" H 6600 5600 50  0001 C CNN
	1    6600 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 61F20829
P 6600 7050
F 0 "C19" H 6715 7096 50  0000 L CNN
F 1 "100PF" H 6715 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6638 6900 50  0001 C CNN
F 3 "~" H 6600 7050 50  0001 C CNN
	1    6600 7050
	1    0    0    -1  
$EndComp
Connection ~ 6600 5450
Wire Wire Line
	6600 5450 6900 5450
Wire Wire Line
	5450 5450 6600 5450
Connection ~ 6600 6900
Wire Wire Line
	6600 6900 6950 6900
Wire Wire Line
	5450 6900 6600 6900
$Comp
L power:GND #PWR023
U 1 1 61F3BA01
P 6600 5750
F 0 "#PWR023" H 6600 5500 50  0001 C CNN
F 1 "GND" H 6605 5577 50  0000 C CNN
F 2 "" H 6600 5750 50  0001 C CNN
F 3 "" H 6600 5750 50  0001 C CNN
	1    6600 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 61F3BD21
P 6600 7200
F 0 "#PWR024" H 6600 6950 50  0001 C CNN
F 1 "GND" H 6605 7027 50  0000 C CNN
F 2 "" H 6600 7200 50  0001 C CNN
F 3 "" H 6600 7200 50  0001 C CNN
	1    6600 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61F99ED1
P 3700 6600
F 0 "#PWR0114" H 3700 6350 50  0001 C CNN
F 1 "GND" H 3705 6427 50  0000 C CNN
F 2 "" H 3700 6600 50  0001 C CNN
F 3 "" H 3700 6600 50  0001 C CNN
	1    3700 6600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
