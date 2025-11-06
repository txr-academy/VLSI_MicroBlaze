//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Tue Oct  7 10:07:36 2025
//Host        : DESKTOP-UE3BVQ5 running 64-bit major release  (build 9200)
//Command     : generate_target design_i2c_wrapper.bd
//Design      : design_i2c_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_i2c_wrapper (
    input  wire reset,
    input  wire sys_clock,
    input  wire usb_uart_rxd,
    output wire usb_uart_txd,
    output wire scl_0,
    output wire sda_0
);
ila_0 ila_uut  (
.clk(sys_clock),

.probe0(scl_0),
.probe1(sda_0)
);
// Internal wires for the AXI IIC signals
wire IIC_0_scl_i;
wire IIC_0_scl_t;  // Tri-state control (not used here but typically required for bidirectional I2C)
wire IIC_0_sda_i;
wire IIC_0_sda_t;  // Tri-state control

design_i2c design_i2c_i (
    .IIC_0_scl_i(IIC_0_scl_i),
    .IIC_0_scl_t(IIC_0_scl_t),
    .IIC_0_sda_i(IIC_0_sda_i),
    .IIC_0_sda_t(IIC_0_sda_t),
    .reset(reset),
    .scl_0(scl_0),
    .sda_0(sda_0),
    .sys_clock(sys_clock),
    .usb_uart_rxd(usb_uart_rxd),
    .usb_uart_txd(usb_uart_txd)
);

// Map internal IIC ports to the external ports as needed
assign scl_0 = IIC_0_scl_i;
assign sda_0 = IIC_0_sda_i;

endmodule
