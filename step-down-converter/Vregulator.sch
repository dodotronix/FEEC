EESchema Schematic File Version 2
LIBS:Vregulator-rescue
LIBS:discrete
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:control
LIBS:Vregulator-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Vregulator_23W"
Date "2017-11-25"
Rev "1.0"
Comp "BUT"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CP C6
U 1 1 5A047089
P 3700 5250
F 0 "C6" H 3725 5350 50  0000 L CNN
F 1 "1uF" H 3725 5150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3738 5100 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/vjw1bcbascomseries-223529.pdf" H 3700 5250 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Vishay-Vitramon/VJ1206V105MXQTW1BC/?qs=sGAEpiMZZMsh%252b1woXyUXj3VLYl%252bHgDYmycqB3oAQvmg%3d" H 3700 5250 60  0001 C CNN "Shop"
F 5 "0.085 EUR" H 3700 5250 60  0001 C CNN "Price"
	1    3700 5250
	1    0    0    -1  
$EndComp
$Comp
L CP C9
U 1 1 5A04714D
P 5600 5300
F 0 "C9" H 5625 5400 50  0000 L CNN
F 1 "220uF" H 5625 5200 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x7.7" H 5638 5150 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/231/147850140127-1107728.pdf" H 5600 5300 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Lelon/VZL221M1CTR-0607/?qs=sGAEpiMZZMtZ1n0r9vR22cpFQt4dfSbq9ctJ%252b1pK7lzM2ojAUo4dbQ%3d%3d" H 5600 5300 60  0001 C CNN "Shop"
F 5 "0.238 EUR" H 5600 5300 60  0001 C CNN "Price"
	1    5600 5300
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A047223
P 5150 5500
F 0 "R6" V 5230 5500 50  0000 C CNN
F 1 "30k1" V 5150 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5080 5500 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 5150 5500 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Vishay/CRCW080530K1FKEA/?qs=sGAEpiMZZMtlubZbdhIBIG5jtmN5%2fKF0nCCdkNBuB3M%3d" V 5150 5500 60  0001 C CNN "Shop"
F 5 "0.085 EUR" V 5150 5500 60  0001 C CNN "Price"
	1    5150 5500
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A0472F4
P 5150 5150
F 0 "R5" V 5230 5150 50  0000 C CNN
F 1 "19k3" V 5150 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5080 5150 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/tnpw_e3-64594.pdf" H 5150 5150 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Vishay/TNPW080519K3BEEA/?qs=sGAEpiMZZMu61qfTUdNhG8xHgGrOSb3kOVvM9gPsjSQ%3d" V 5150 5150 60  0001 C CNN "Shop"
F 5 "0.192 EUR" V 5150 5150 60  0001 C CNN "Price"
	1    5150 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5050 3950 5050
Wire Wire Line
	3700 5050 3700 5100
Text GLabel 3550 5050 0    60   Input ~ 0
linear
Connection ~ 3700 5050
$Comp
L GNDREF #PWR01
U 1 1 5A04935E
P 3700 5500
F 0 "#PWR01" H 3700 5250 50  0001 C CNN
F 1 "GNDREF" H 3700 5350 50  0001 C CNN
F 2 "" H 3700 5500 50  0001 C CNN
F 3 "" H 3700 5500 50  0001 C CNN
	1    3700 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 5500 3700 5400
Connection ~ 3950 5050
$Comp
L GNDREF #PWR02
U 1 1 5A049BA9
P 5000 5700
F 0 "#PWR02" H 5000 5450 50  0001 C CNN
F 1 "GNDREF" H 5000 5550 50  0001 C CNN
F 2 "" H 5000 5700 50  0001 C CNN
F 3 "" H 5000 5700 50  0001 C CNN
	1    5000 5700
	-1   0    0    -1  
$EndComp
$Comp
L TPS75601 U2
U 1 1 5A04B206
P 4450 5400
F 0 "U2" H 4450 5550 50  0000 C CNN
F 1 "TPS75601" H 4450 5650 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-5_TabPin3" H 4450 5400 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/slvs329c/slvs329c.pdf" H 4450 5400 60  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Texas-Instruments/TPS75601KTTT/?qs=sGAEpiMZZMsGz1a6aV8DcPXeWoVS0Fnz7NwWLZys5R4%3d" H 4450 5400 60  0001 C CNN "Shop"
F 5 "5.81 EUR" H 4450 5400 60  0001 C CNN "Price"
	1    4450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5650 5600 5650
Wire Wire Line
	5000 5650 5000 5700
Wire Wire Line
	4950 5350 5150 5350
Connection ~ 5000 5650
Wire Wire Line
	5150 5350 5150 5300
Wire Wire Line
	4950 5000 5950 5000
Wire Wire Line
	5600 5000 5600 5150
Connection ~ 5150 5000
Wire Wire Line
	5600 5650 5600 5450
Connection ~ 5150 5650
Connection ~ 5150 5350
Connection ~ 5600 5000
Wire Wire Line
	3950 5050 3950 5150
Wire Wire Line
	3950 5450 3950 5600
Wire Wire Line
	6850 2750 6850 3450
$Comp
L TPS40304 U1
U 1 1 5A04C025
P 3600 2800
F 0 "U1" H 3600 2800 50  0000 C CNN
F 1 "TPS40304" H 3600 2950 50  0000 C CNN
F 2 "Housings_SON:VSON-10-1EP_3x3mm_Pitch0.5mm_ThermalPad" H 3700 2800 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps40305.pdf" H 3700 2800 60  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Texas-Instruments/TPS40304DRCR/?qs=sGAEpiMZZMvFgFrcgbsedcZOTL%2fNz%252bs2%252bZCb7C%252b%252beK0%3d" H 3600 2800 60  0001 C CNN "Shop"
F 5 "2.20 EUR" H 3600 2800 60  0001 C CNN "Price"
	1    3600 2800
	1    0    0    -1  
$EndComp
Connection ~ 6850 2750
Connection ~ 6600 4200
Wire Wire Line
	6600 4250 6600 4200
Wire Wire Line
	6850 4200 6850 3750
Wire Wire Line
	6350 4200 6850 4200
Wire Wire Line
	6350 4100 6350 4200
Connection ~ 6350 2750
Connection ~ 5950 2750
Wire Wire Line
	6350 2750 6350 3100
Connection ~ 6350 3700
Connection ~ 5950 3700
Wire Wire Line
	6350 3400 6350 3800
Wire Wire Line
	5950 3700 6350 3700
Wire Wire Line
	2000 3000 2000 3100
Wire Wire Line
	3000 2700 2000 2700
Connection ~ 2900 4200
Wire Wire Line
	2900 4200 2900 3400
Connection ~ 2650 4200
Wire Wire Line
	2300 3700 2300 4200
Connection ~ 2650 3000
Wire Wire Line
	2300 3400 2300 3000
Wire Wire Line
	2650 4200 2650 3750
Wire Wire Line
	2300 4200 5950 4200
Wire Wire Line
	5950 4200 5950 3650
Wire Wire Line
	5950 3250 5950 3350
Wire Wire Line
	5950 2750 5950 2950
Wire Wire Line
	5600 2750 7250 2750
Connection ~ 4400 3300
Connection ~ 5200 3300
Connection ~ 5200 2750
Wire Wire Line
	5200 2750 5300 2750
Wire Wire Line
	5200 3700 5200 3750
Wire Wire Line
	4400 3950 4400 4000
Connection ~ 4400 3600
Wire Wire Line
	4400 3650 4400 3600
Wire Wire Line
	4200 3600 5000 3600
Connection ~ 2850 1750
Wire Wire Line
	5200 1750 5200 1850
Wire Wire Line
	5200 2200 5200 3350
Wire Wire Line
	4800 3000 4800 3050
Wire Wire Line
	4200 3300 5200 3300
Wire Wire Line
	4200 3000 4400 3000
Connection ~ 4450 2700
Wire Wire Line
	4200 2700 4800 2700
Wire Wire Line
	4200 2400 4450 2400
Connection ~ 2850 2100
Connection ~ 2550 1750
Wire Wire Line
	3000 3600 3000 3700
Wire Wire Line
	2900 3400 3000 3400
Wire Wire Line
	2550 1750 2550 1950
Wire Wire Line
	2100 1750 5200 1750
Connection ~ 2700 2450
Wire Wire Line
	2550 2450 2850 2450
Wire Wire Line
	2550 2450 2550 2250
Wire Wire Line
	2850 2100 3000 2100
Wire Wire Line
	2850 1750 2850 2150
Wire Wire Line
	2650 3300 2650 3450
Wire Wire Line
	2300 3000 3000 3000
$Comp
L GNDREF #PWR03
U 1 1 5A041280
P 6600 4250
F 0 "#PWR03" H 6600 4000 50  0001 C CNN
F 1 "GNDREF" H 6600 4100 50  0001 C CNN
F 2 "" H 6600 4250 50  0001 C CNN
F 3 "" H 6600 4250 50  0001 C CNN
	1    6600 4250
	-1   0    0    -1  
$EndComp
$Comp
L GNDREF #PWR04
U 1 1 5A040699
P 2000 3100
F 0 "#PWR04" H 2000 2850 50  0001 C CNN
F 1 "GNDREF" H 2000 2950 50  0001 C CNN
F 2 "" H 2000 3100 50  0001 C CNN
F 3 "" H 2000 3100 50  0001 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR05
U 1 1 5A03EDA3
P 5200 3750
F 0 "#PWR05" H 5200 3500 50  0001 C CNN
F 1 "GNDREF" H 5200 3600 50  0001 C CNN
F 2 "" H 5200 3750 50  0001 C CNN
F 3 "" H 5200 3750 50  0001 C CNN
	1    5200 3750
	-1   0    0    -1  
$EndComp
$Comp
L GNDREF #PWR06
U 1 1 5A03BDB5
P 4800 3050
F 0 "#PWR06" H 4800 2800 50  0001 C CNN
F 1 "GNDREF" H 4800 2900 50  0001 C CNN
F 2 "" H 4800 3050 50  0001 C CNN
F 3 "" H 4800 3050 50  0001 C CNN
	1    4800 3050
	-1   0    0    -1  
$EndComp
$Comp
L GNDREF #PWR07
U 1 1 5A03BAF9
P 4400 4000
F 0 "#PWR07" H 4400 3750 50  0001 C CNN
F 1 "GNDREF" H 4400 3850 50  0001 C CNN
F 2 "" H 4400 4000 50  0001 C CNN
F 3 "" H 4400 4000 50  0001 C CNN
	1    4400 4000
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR08
U 1 1 5A03ACBD
P 3000 3700
F 0 "#PWR08" H 3000 3450 50  0001 C CNN
F 1 "GNDREF" H 3000 3550 50  0001 C CNN
F 2 "" H 3000 3700 50  0001 C CNN
F 3 "" H 3000 3700 50  0001 C CNN
	1    3000 3700
	-1   0    0    -1  
$EndComp
$Comp
L GNDREF #PWR09
U 1 1 5A037B73
P 2700 2450
F 0 "#PWR09" H 2700 2200 50  0001 C CNN
F 1 "GNDREF" H 2700 2300 50  0001 C CNN
F 2 "" H 2700 2450 50  0001 C CNN
F 3 "" H 2700 2450 50  0001 C CNN
	1    2700 2450
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A0377A9
P 6350 3250
F 0 "R8" V 6430 3250 50  0000 C CNN
F 1 "10k" V 6350 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6280 3250 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/315/AOA0000C307-1149632.pdf" H 6350 3250 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Panasonic/ERA-8AEB103V/?qs=sGAEpiMZZMtlubZbdhIBINYapuLw0JH33FbEgILkusI%3d" V 6350 3250 60  0001 C CNN "Shop"
F 5 "0.663 EUR" V 6350 3250 60  0001 C CNN "Price"
	1    6350 3250
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5A037728
P 5950 3500
F 0 "C10" H 5975 3600 50  0000 L CNN
F 1 "1.2nF" H 5975 3400 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 5988 3350 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/40/X7RDielectric-777024.pdf" H 5950 3500 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/AVX/12063C123JAT2A/?qs=sGAEpiMZZMs0AnBnWHyRQKdiqyDPVQdAwLniRtjWBSU%3d" H 5950 3500 60  0001 C CNN "Shop"
F 5 "0.281 EUR" H 5950 3500 60  0001 C CNN "Price"
	1    5950 3500
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A037674
P 5950 3100
F 0 "R7" V 6030 3100 50  0000 C CNN
F 1 "453" V 5950 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5880 3100 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/315/AOA0000C304-1149620.pdf" H 5950 3100 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Panasonic/ERJ-8ENF4530V/?qs=sGAEpiMZZMtlubZbdhIBIOIpaOjkYUZGePiEzVXcNQo%3d" V 5950 3100 60  0001 C CNN "Shop"
F 5 "0.085 EUR" V 5950 3100 60  0001 C CNN "Price"
	1    5950 3100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A037397
P 4400 3800
F 0 "R3" V 4480 3800 50  0000 C CNN
F 1 "2k32" V 4400 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4330 3800 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/447/yageodocoutput-1111992.pdf" H 4400 3800 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Yageo/AC1206FR-07100KL/?qs=sGAEpiMZZMtlubZbdhIBIOG3KwTtqrl%2fGx72FR%2fDa2Q%3d" V 4400 3800 60  0001 C CNN "Shop"
F 5 "0.085 EUR" V 4400 3800 60  0001 C CNN "Price"
	1    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5A0372DD
P 4450 2550
F 0 "R4" V 4530 2550 50  0000 C CNN
F 1 "100k" V 4450 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4380 2550 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/447/PYu-RC1206_51_RoHS_L-4-349080.pdf" H 4450 2550 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Yageo/RC1206FR-07100KL/?qs=sGAEpiMZZMtlubZbdhIBINNnCgAqWV6vON6Wzl3HpWU%3d" V 4450 2550 60  0001 C CNN "Shop"
F 5 "0.085 EUR" V 4450 2550 60  0001 C CNN "Price"
	1    4450 2550
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5A037225
P 4800 2850
F 0 "C8" H 4825 2950 50  0000 L CNN
F 1 "4.7uF" H 4825 2750 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4838 2700 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/281/c02e-2905.pdf" H 4800 2850 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Murata-Electronics/GRM21BR61E475KA12L/?qs=sGAEpiMZZMsh%252b1woXyUXj7Ax4K3SW3FrAb7rYCAGTGw%3d" H 4800 2850 60  0001 C CNN "Shop"
F 5 "0.17 EUR" H 4800 2850 60  0001 C CNN "Price"
	1    4800 2850
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5A037177
P 4400 3150
F 0 "C7" H 4425 3250 50  0000 L CNN
F 1 "100nF" H 4425 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4438 3000 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/445/885012207072-554776.pdf" H 4400 3150 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Wurth-Electronics/885012207072/?qs=sGAEpiMZZMs0AnBnWHyRQEGbLOF2VP1ibTWUyjubWr0tPlz%2f3fbAWQ%3d%3d" H 4400 3150 60  0001 C CNN "Shop"
F 5 "0.06 EUR" H 4400 3150 60  0001 C CNN "Price"
	1    4400 3150
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A0370E7
P 2650 3600
F 0 "R1" V 2730 3600 50  0000 C CNN
F 1 "1k4" V 2650 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2580 3600 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/dcrcwe3-109170.pdf" H 2650 3600 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Vishay/CRCW12061K40FKEA/?qs=sGAEpiMZZMtlubZbdhIBIE9Nj%2fZ3XBsuId%2fE%2fSdS304%3d" V 2650 3600 60  0001 C CNN "Shop"
F 5 "0.085 EUR" V 2650 3600 60  0001 C CNN "Price"
	1    2650 3600
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5A03708B
P 2650 3150
F 0 "C4" H 2675 3250 50  0000 L CNN
F 1 "10nF" H 2675 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 2688 3000 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/vjw1bcbascomseries-223529.pdf" H 2650 3150 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Vishay-Vitramon/VJ1206Y103KXXCW1BC/?qs=sGAEpiMZZMs0AnBnWHyRQLWhsuYvNua1NbY6Zzcttzo%3d" H 2650 3150 60  0001 C CNN "Shop"
F 5 "0.085 EUR" H 2650 3150 60  0001 C CNN "Price"
	1    2650 3150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A036FD5
P 2300 3550
F 0 "C2" H 2325 3650 50  0000 L CNN
F 1 "450pF" H 2325 3450 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 2338 3400 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/vjw1bcbascomseries-223529.pdf" H 2300 3550 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Vishay-Vitramon/VJ1206Y471KXAPW1BC/?qs=sGAEpiMZZMs0AnBnWHyRQAR7at33PD0%252b6L0Zdac%2fCgs%3d" H 2300 3550 60  0001 C CNN "Shop"
F 5 "0.085 EUR" H 2300 3550 60  0001 C CNN "Price"
	1    2300 3550
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A036F41
P 2000 2850
F 0 "C1" H 2025 2950 50  0000 L CNN
F 1 "3.3nF" H 2025 2750 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 2038 2700 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/212/KEM_C1006_X5R_SMD-1103249.pdf" H 2000 2850 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/KEMET/C1206C335K3PACTU/?qs=sGAEpiMZZMsh%252b1woXyUXj%252bPM2z7lndgKpjdrY%2fMgCeo%3d" H 2000 2850 60  0001 C CNN "Shop"
F 5 "0.323 EUR" H 2000 2850 60  0001 C CNN "Price"
	1    2000 2850
	1    0    0    1   
$EndComp
$Comp
L C C5
U 1 1 5A036E66
P 2850 2300
F 0 "C5" H 2875 2400 50  0000 L CNN
F 1 "1uF" H 2875 2200 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 2888 2150 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/447/Yageo_UPY-GP_NP0_16V-to-50V_9-1211922.pdf" H 2850 2300 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Yageo/CC1206KKX7R8BB105/?qs=sGAEpiMZZMsh%252b1woXyUXj2i9A4b3OdfQLtdnsejugzE%3d" H 2850 2300 60  0001 C CNN "Shop"
F 5 "0.145 EUR" H 2850 2300 60  0001 C CNN "Price"
	1    2850 2300
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5A036551
P 5450 2750
F 0 "L1" V 5400 2750 50  0000 C CNN
F 1 "1.8uH" V 5525 2750 50  0000 C CNN
F 2 "Inductors_SMD:L_Vishay_IHLP-4040" H 5450 2750 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/427/lp40dz11-222772.pdf" H 5450 2750 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Vishay-Dale/IHLP4040DZER1R8M11/?qs=sGAEpiMZZMsg%252by3WlYCkUyp1vkfS54wL7OPqDHul1Cg%3d" V 5450 2750 60  0001 C CNN "Shop"
F 5 "2.17 EUR" V 5450 2750 60  0001 C CNN "Price"
	1    5450 2750
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 5A0364C4
P 2550 2100
F 0 "C3" H 2575 2200 50  0000 L CNN
F 1 "22uF" H 2575 2000 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 2588 1950 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/281/c02e-2905.pdf" H 2550 2100 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Murata-Electronics/GRM31CR61C226KE15L/?qs=sGAEpiMZZMsh%252b1woXyUXjz0P1wxkG4BtSjnEL9iU2ec%3d" H 2550 2100 60  0001 C CNN "Shop"
F 5 "0.417 EUR" H 2550 2100 60  0001 C CNN "Price"
	1    2550 2100
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5A04EEEE
P 6350 3950
F 0 "R9" V 6430 3950 50  0000 C CNN
F 1 "2k32" V 6350 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6280 3950 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/447/yageodocoutput-1111992.pdf" H 6350 3950 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Yageo/AC1206FR-07100KL/?qs=sGAEpiMZZMtlubZbdhIBIOG3KwTtqrl%2fGx72FR%2fDa2Q%3d" V 6350 3950 60  0001 C CNN "Shop"
F 5 "0.085 EUR" V 6350 3950 60  0001 C CNN "Price"
	1    6350 3950
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5A0513FF
P 6850 3600
F 0 "C11" H 6875 3700 50  0000 L CNN
F 1 "22uF" H 6875 3500 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6888 3450 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/281/c02e-2905.pdf" H 6850 3600 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Murata-Electronics/GRM31CR61C226KE15L/?qs=sGAEpiMZZMsh%252b1woXyUXjz0P1wxkG4BtSjnEL9iU2ec%3d" H 6850 3600 60  0001 C CNN "Shop"
F 5 "0.417 EUR" H 6850 3600 60  0001 C CNN "Price"
	1    6850 3600
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A052827
P 3950 5300
F 0 "R2" V 4030 5300 50  0000 C CNN
F 1 "10k" V 3950 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3880 5300 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/315/AOA0000C307-1149632.pdf" H 3950 5300 50  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Panasonic/ERA-8AEB103V/?qs=sGAEpiMZZMtlubZbdhIBINYapuLw0JH33FbEgILkusI%3d" V 3950 5300 60  0001 C CNN "Shop"
F 5 "0.663 EUR" V 3950 5300 60  0001 C CNN "Price"
	1    3950 5300
	1    0    0    -1  
$EndComp
Text GLabel 7250 3300 2    60   Input ~ 0
linear
Wire Wire Line
	6850 3300 7250 3300
Connection ~ 6850 3300
$Comp
L Conn_01x01 J1
U 1 1 5A05DC0C
P 1900 1750
F 0 "J1" H 1900 1850 50  0000 C CNN
F 1 "Conn_01x01" H 1900 1650 50  0001 C CNN
F 2 "Connectors_TestPoints:Test_Point_Keystone_5015_Micro-Minature" H 1900 1750 50  0001 C CNN
F 3 "" H 1900 1750 50  0001 C CNN
	1    1900 1750
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 J2
U 1 1 5A05DD1C
P 1900 2050
F 0 "J2" H 1900 2150 50  0000 C CNN
F 1 "Conn_01x01" H 1900 1950 50  0001 C CNN
F 2 "Connectors_TestPoints:Test_Point_Keystone_5015_Micro-Minature" H 1900 2050 50  0001 C CNN
F 3 "" H 1900 2050 50  0001 C CNN
	1    1900 2050
	-1   0    0    1   
$EndComp
$Comp
L GNDREF #PWR010
U 1 1 5A05DEED
P 2150 2150
F 0 "#PWR010" H 2150 1900 50  0001 C CNN
F 1 "GNDREF" H 2150 2000 50  0001 C CNN
F 2 "" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2050 2150 2050
Wire Wire Line
	2150 2050 2150 2150
$Comp
L Conn_01x01 J5
U 1 1 5A05E3FA
P 7450 2750
F 0 "J5" H 7450 2850 50  0000 C CNN
F 1 "Conn_01x01" H 7450 2650 50  0001 C CNN
F 2 "Connectors_TestPoints:Test_Point_Keystone_5015_Micro-Minature" H 7450 2750 50  0001 C CNN
F 3 "" H 7450 2750 50  0001 C CNN
	1    7450 2750
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J6
U 1 1 5A05E4C8
P 7450 4150
F 0 "J6" H 7450 4250 50  0000 C CNN
F 1 "Conn_01x01" H 7450 4050 50  0001 C CNN
F 2 "Connectors_TestPoints:Test_Point_Keystone_5015_Micro-Minature" H 7450 4150 50  0001 C CNN
F 3 "" H 7450 4150 50  0001 C CNN
	1    7450 4150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J3
U 1 1 5A05ECB9
P 6150 5000
F 0 "J3" H 6150 5100 50  0000 C CNN
F 1 "Conn_01x01" H 6150 4900 50  0001 C CNN
F 2 "Connectors_TestPoints:Test_Point_Keystone_5015_Micro-Minature" H 6150 5000 50  0001 C CNN
F 3 "" H 6150 5000 50  0001 C CNN
	1    6150 5000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J4
U 1 1 5A05EEA7
P 6150 5650
F 0 "J4" H 6150 5750 50  0000 C CNN
F 1 "Conn_01x01" H 6150 5550 50  0001 C CNN
F 2 "Connectors_TestPoints:Test_Point_Keystone_5015_Micro-Minature" H 6150 5650 50  0001 C CNN
F 3 "" H 6150 5650 50  0001 C CNN
	1    6150 5650
	1    0    0    -1  
$EndComp
Text Notes 1050 5050 0    118  Italic 24
COMP and FB traces,\nminimal line width,\nshort as possible
$Comp
L IGFET_N Q2
U 1 1 5A15029F
P 5200 3500
F 0 "Q2" H 5175 3325 60  0000 C CNN
F 1 "IGFET_N" H 5225 3650 60  0001 C CNN
F 2 "trans_custom_pkg:VSON-8_3.3x3.3mm_Pitch0.65mm_NexFET" H 5375 3385 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/csd17579q3a.pdf" H 5375 3385 60  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Texas-Instruments/CSD17579Q3AT/?qs=sGAEpiMZZMshyDBzk1%2fWi48qxRsdBIlgeJK0zDxj4165sxbshqU78g%3d%3d" H 5200 3500 60  0001 C CNN "Shop"
F 5 "0.544 EUR" H 5200 3500 60  0001 C CNN "Price"
	1    5200 3500
	0    1    1    0   
$EndComp
$Comp
L IGFET_N Q1
U 1 1 5A1508D2
P 5200 2000
F 0 "Q1" H 5175 1825 60  0000 C CNN
F 1 "IGFET_N" H 5225 2150 60  0001 C CNN
F 2 "trans_custom_pkg:VSON-8_3.3x3.3mm_Pitch0.65mm_NexFET" H 5375 1885 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/csd17579q3a.pdf" H 5375 1885 60  0001 C CNN
F 4 "https://cz.mouser.com/ProductDetail/Texas-Instruments/CSD17579Q3AT/?qs=sGAEpiMZZMshyDBzk1%2fWi48qxRsdBIlgeJK0zDxj4165sxbshqU78g%3d%3d" H 5200 2000 60  0001 C CNN "Shop"
F 5 "0.544 EUR" H 5200 2000 60  0001 C CNN "Price"
	1    5200 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 2100 5000 2100
Wire Wire Line
	7250 4150 7200 4150
Wire Wire Line
	7200 4150 7200 4250
$Comp
L GNDREF #PWR011
U 1 1 5A19D987
P 7200 4250
F 0 "#PWR011" H 7200 4000 50  0001 C CNN
F 1 "GNDREF" H 7200 4100 50  0001 C CNN
F 2 "" H 7200 4250 50  0001 C CNN
F 3 "" H 7200 4250 50  0001 C CNN
	1    7200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5650 5900 5650
Wire Wire Line
	5900 5650 5900 5800
$Comp
L GNDREF #PWR012
U 1 1 5A1A037B
P 5900 5800
F 0 "#PWR012" H 5900 5550 50  0001 C CNN
F 1 "GNDREF" H 5900 5650 50  0001 C CNN
F 2 "" H 5900 5800 50  0001 C CNN
F 3 "" H 5900 5800 50  0001 C CNN
	1    5900 5800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
