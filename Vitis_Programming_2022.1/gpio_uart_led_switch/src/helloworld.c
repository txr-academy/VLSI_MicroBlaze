/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xparameters.h"
#include "sleep.h"

// -- Definitions based on Vivado block design --
#define GPIO_LEDS_DEVICE_ID      XPAR_AXI_GPIO_1_DEVICE_ID      // LEDs & Switches AXI GPIO
#define GPIO_RGB_DEVICE_ID       XPAR_AXI_GPIO_0_DEVICE_ID      // RGB LEDs & Push Buttons AXI GPIO
#define LED_CHANNEL              2   // AXI_GPIO_1, channel 2 = 4-bit LED output
#define SWITCH_CHANNEL           1   // AXI_GPIO_1, channel 1 = 4-bit switch input
#define LED_MASK                 0x0F
#define SWITCH_MASK              0x0F
#define RGB_CHANNEL              2   // AXI_GPIO_0, channel 2 = 12-bit RGB output
#define BUTTON_CHANNEL           1   // AXI_GPIO_0, channel 1 = 4-bit push button input
#define RGB_LED_MASK(i)          (0x07 << (i*3))   // 3 bits per RGB LED
#define BUTTON_MASK              0x0F              // 4 push buttons

typedef enum {
    RGB_OFF = 0x0,
    RGB_BLUE = 0x1,     // bit 0 = blue
    RGB_GREEN = 0x2,    // bit 1 = green
    RGB_RED = 0x4,      // bit 2 = red
    RGB_CYAN = 0x3,     // blue + green
    RGB_MAGENTA = 0x5,  // blue + red
    RGB_YELLOW = 0x6,   // green + red
    RGB_WHITE = 0x7     // red + green + blue
} rgb_color_t;

// -- Globals --
XGpio gpio_leds;
XGpio gpio_rgb;
static rgb_color_t current_rgb_color[4] = {RGB_OFF, RGB_OFF, RGB_OFF, RGB_OFF};
static u32 last_button_state = 0;
static u32 last_switch_state = 0; // NEW for switch feedback

// -- Prototypes --
void print_boot_header(void);
void gpio_init(void);
void handle_switch_leds(void);
void handle_buttons_rgb(void);
void set_rgb_led(int index, rgb_color_t color);
void cycle_rgb_color(int index);
const char* get_color_name(rgb_color_t color);

// -- Main --
int main() {
    init_platform();
    print_boot_header();
    gpio_init();

    xil_printf("\r\n=== Hardware Control Ready ===\r\n");
    xil_printf("Switches control non-RGB LEDs directly.\r\n");
    xil_printf("Push Buttons cycle colors on corresponding RGB LEDs.\r\n");
    xil_printf("========================================\r\n");

    while (1) {
        handle_switch_leds();    // Now prints on switch toggle
        handle_buttons_rgb();
        usleep(50000);
    }
    cleanup_platform();
    return 0;
}

// -- Functions Implementation --
void print_boot_header(void) {
    xil_printf("\r\n=====================================\r\n");
    xil_printf(" MicroBlaze Custom Boot - GPIO Demo\r\n");
    xil_printf(" =========TRAIL TEST 1.0===========\r\n");
    xil_printf("=====================================\r\n");
    xil_printf("AXI_GPIO_1 (LEDs/Switches) @ 0x%08X\r\n", XPAR_AXI_GPIO_1_BASEADDR);
    xil_printf("AXI_GPIO_0 (RGB/Button)    @ 0x%08X\r\n", XPAR_AXI_GPIO_0_BASEADDR);
    xil_printf("=====================================\r\n\r\n");
}

void gpio_init(void) {
    // LEDs & Switches
    XGpio_Initialize(&gpio_leds, GPIO_LEDS_DEVICE_ID);
    XGpio_SetDataDirection(&gpio_leds, SWITCH_CHANNEL, SWITCH_MASK);    // 4 input switches
    XGpio_SetDataDirection(&gpio_leds, LED_CHANNEL, 0x00);              // 4 output LEDs
    // RGB LEDs & Push Buttons
    XGpio_Initialize(&gpio_rgb, GPIO_RGB_DEVICE_ID);
    XGpio_SetDataDirection(&gpio_rgb, BUTTON_CHANNEL, BUTTON_MASK);     // 4 input push buttons
    XGpio_SetDataDirection(&gpio_rgb, RGB_CHANNEL, 0x00);               // 12 output for 4 RGB LEDs
    XGpio_DiscreteWrite(&gpio_leds, LED_CHANNEL, 0x00);
    XGpio_DiscreteWrite(&gpio_rgb, RGB_CHANNEL, 0x00);

    xil_printf("GPIO init complete.\r\n");
}

// Switch controls LED 1:1 mapping, with live print
void handle_switch_leds(void) {
    u32 switch_state = XGpio_DiscreteRead(&gpio_leds, SWITCH_CHANNEL) & SWITCH_MASK;
    XGpio_DiscreteWrite(&gpio_leds, LED_CHANNEL, switch_state);

    // Detect and print switch changes
    for (int i = 0; i < 4; ++i) {
        u32 mask = (1 << i);
        // If switch state changed
        if ((switch_state & mask) != (last_switch_state & mask)) {
            if (switch_state & mask) {
                xil_printf("Switch %d ON: LED %d ON\r\n", i, i);
            } else {
                xil_printf("Switch %d OFF: LED %d OFF\r\n", i, i);
            }
        }
    }
    last_switch_state = switch_state;
}

// Each push button cycles its own RGB LED
void handle_buttons_rgb(void) {
    u32 button_state = XGpio_DiscreteRead(&gpio_rgb, BUTTON_CHANNEL) & BUTTON_MASK;
    for (int i = 0; i < 4; ++i) {
        u32 mask = (1 << i);
        if ((button_state & mask) && !(last_button_state & mask)) {
            cycle_rgb_color(i);
            xil_printf("> Button %d pressed: RGB LED %d -> %s\r\n",
                i, i, get_color_name(current_rgb_color[i]));
        }
    }
    last_button_state = button_state;
}

// Rotates color for one RGB LED and writes
void cycle_rgb_color(int index) {
    switch (current_rgb_color[index]) {
        case RGB_OFF:     current_rgb_color[index] = RGB_RED; break;
        case RGB_RED:     current_rgb_color[index] = RGB_GREEN; break;
        case RGB_GREEN:   current_rgb_color[index] = RGB_BLUE; break;
        case RGB_BLUE:    current_rgb_color[index] = RGB_CYAN; break;
        case RGB_CYAN:    current_rgb_color[index] = RGB_MAGENTA; break;
        case RGB_MAGENTA: current_rgb_color[index] = RGB_YELLOW; break;
        case RGB_YELLOW:  current_rgb_color[index] = RGB_WHITE; break;
        case RGB_WHITE:   current_rgb_color[index] = RGB_OFF; break;
        default:          current_rgb_color[index] = RGB_OFF; break;
    }
    set_rgb_led(index, current_rgb_color[index]);
}

// Writes chosen color to correct RGB LED bits
void set_rgb_led(int index, rgb_color_t color) {
    u32 reg = XGpio_DiscreteRead(&gpio_rgb, RGB_CHANNEL);
    u32 mask = RGB_LED_MASK(index);
    reg = (reg & ~mask) | (((u32)color << (index * 3)) & mask);
    XGpio_DiscreteWrite(&gpio_rgb, RGB_CHANNEL, reg);
}

const char* get_color_name(rgb_color_t color) {
    switch (color) {
        case RGB_OFF:     return "OFF";
        case RGB_RED:     return "RED";
        case RGB_GREEN:   return "GREEN";
        case RGB_BLUE:    return "BLUE";
        case RGB_YELLOW:  return "YELLOW";
        case RGB_CYAN:    return "CYAN";
        case RGB_MAGENTA: return "MAGENTA";
        case RGB_WHITE:   return "WHITE";
        default:          return "UNKNOWN";
    }
}

