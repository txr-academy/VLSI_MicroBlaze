Hardware Design (Vivado 2022.1)
Processor Core: MicroBlaze (32-bit, 5-stage pipeline)
Clock Frequency: 100 MHz
Bus: AXI4-Lite

Peripherals:
AXI UARTLite: Serial interface to PC via USB-UART bridge (Arty A7)
AXI IIC: Communication with external I²C EEPROM
Platform: Arty A7 (100T)

Software (Vitis)
Developed using Xilinx Vitis IDE
Written in Embedded C language
Implements:
EEPROM write and read operations via I²C
Status/debug messages sent over UART
Initialization routines for IIC peripheral and MicroBlaze communication

Current Status:
Hardware design completed in Vivado
Software development in progress (EEPROM read/write and UART debug functions)
