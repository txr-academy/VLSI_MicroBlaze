#include "xparameters.h"
#include "xiic.h"
#include "xil_printf.h"
#include "sleep.h"

#define IIC_DEVICE_ID    XPAR_IIC_0_DEVICE_ID
#define EEPROM_ADDRESS   0x50
#define TEST_MEM_ADDRESS 0x0000
#define TEST_DATA_BYTE   0x5A

XIic IicInstance;

int I2C_Write_Byte(u16 mem_addr, u8 data) {
    u8 write_buffer[3];
    int bytes_sent;

    write_buffer[0] = (mem_addr >> 8) & 0xFF; // MSB address
    write_buffer[1] = mem_addr & 0xFF;        // LSB address
    write_buffer[2] = data;

    xil_printf("Writing data 0x%02X to EEPROM address 0x%04X...\n", data, mem_addr);
    bytes_sent = XIic_Send(XPAR_IIC_0_BASEADDR, EEPROM_ADDRESS, write_buffer, 3, XIIC_STOP);
    xil_printf("XIic_Send returned %d\n", bytes_sent);

    if (bytes_sent != 3) {
        xil_printf("Error: EEPROM write failed\n");
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

int I2C_Read_Byte(u16 mem_addr, u8 *data) {
    u8 addr_buffer[2];
    int bytes_sent, bytes_received;

    addr_buffer[0] = (mem_addr >> 8) & 0xFF;
    addr_buffer[1] = mem_addr & 0xFF;

    xil_printf("Setting EEPROM read address 0x%04X...\n", mem_addr);
    bytes_sent = XIic_Send(XPAR_IIC_0_BASEADDR, EEPROM_ADDRESS, addr_buffer, 2, XIIC_REPEATED_START);
    xil_printf("Address send returned %d\n", bytes_sent);

    if (bytes_sent != 2) {
        xil_printf("Error: Unable to send EEPROM read address\n");
        return XST_FAILURE;
    }

    bytes_received = XIic_Recv(XPAR_IIC_0_BASEADDR, EEPROM_ADDRESS, data, 1, XIIC_STOP);
    xil_printf("Data receive returned %d\n", bytes_received);

    if (bytes_received != 1) {
        xil_printf("Error: EEPROM read failed\n");
        return XST_FAILURE;
    }

    xil_printf("Read data: 0x%02X\n", *data);
    return XST_SUCCESS;
}

int main() {
    int status;
    u8 read_data;

    xil_printf("Starting EEPROM Test...\n");

    status = XIic_Initialize(&IicInstance, IIC_DEVICE_ID);
    xil_printf("XIic_Initialize returned %d\n", status);
    if (status != XST_SUCCESS) {
        xil_printf("I2C initialization failed\n");
        return -1;
    }

    XIic_Start(&IicInstance);
    XIic_IntrGlobalDisable(&IicInstance);

    status = I2C_Write_Byte(TEST_MEM_ADDRESS, TEST_DATA_BYTE);
    if (status != XST_SUCCESS) {
        xil_printf("EEPROM write failed, stopping test\n");
        return -1;
    }

    usleep(5000);  // Wait for EEPROM internal write cycle

    status = I2C_Read_Byte(TEST_MEM_ADDRESS, &read_data);
    if (status != XST_SUCCESS) {
        xil_printf("EEPROM read failed, stopping test\n");
        return -1;
    }

    if (read_data == TEST_DATA_BYTE) {
        xil_printf("EEPROM test PASSED\n");
    } else {
        xil_printf("EEPROM test FAILED\n");
    }

    XIic_Stop(&IicInstance);
    xil_printf("Test completed\n");

    return 0;
}
