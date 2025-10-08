# VLSI_MicroBlaze


This project demonstrates using AXI GPIO with MicroBlaze to control standard LEDs and RGB LEDs on an FPGA board (e.g., Arty A7) using switches and push buttons.

Features
Switches control regular LEDs:
Each switch directly turns its corresponding LED on or off.

Push buttons control RGB LEDs:
Each button cycles its RGB LED through 8 colors (off, red, green, blue, cyan, magenta, yellow, white).

Live UART Feedback:
The program prints messages to the serial terminal whenever a switch or button is pressed.

How It Works
Switches:

The state of each switch is read in real time and drives the matching LED.

The terminal prints which switch/LED was toggled.

Buttons:

Pressing a button cycles its corresponding RGB LED color.

The terminal shows the button pressed and resulting color.

Usage
Program your FPGA with the Vivado hardware design including two AXI GPIO blocks for:

Switches/LEDs

Buttons/RGB LEDs

Build and load this C code as a MicroBlaze application in Vitis.

Connect to the board’s UART terminal to view feedback.

Toggle switches and press buttons to see LEDs and RGBs respond.

File Overview
 hello.c — Main source file with all program logic located on VLSI_MicroBlaze/Vitis_Programming_2022.1/gpio_uart_led_switch/src/helloworld.c

Uses xil_printf for serial output, and Xilinx AXI GPIO drivers.

Requirements
Xilinx Vivado & Vitis (any modern version) currently used version 2022.1 (For Vivado and Vitis )

FPGA board with MicroBlaze support (e.g., Digilent Arty A7)

Board must have accessible switches, LEDs, buttons, and RGB LEDs.

THE Vivado project utilizes various IPs in the vivado to create a custom core and peripherals like uart, spi and gpio


Note : In case of running program of vitis shows xparameter missing error use helloworld template for writing application code in vitis rather than selecting empty application







