//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Mon Oct  6 07:15:07 2025
//Host        : DESKTOP-UE3BVQ5 running 64-bit major release  (build 9200)
//Command     : generate_target design_mb_wrapper.bd
//Design      : design_mb_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_mb_wrapper
   (dip_switches_4bits_tri_i,
    i2c_scl_io,
    i2c_sda_io,
    led_4bits_tri_o,
    push_buttons_4bits_tri_i,
    reset_0,
    rgb_led_tri_o,
    rx_0,
    spi_io0_io,
    spi_io1_io,
    spi_sck_io,
    spi_ss_io,
    sys_clock,
    tx_0,
    usb_uart_0_rxd,
    usb_uart_0_txd);
  input [3:0]dip_switches_4bits_tri_i;
  inout i2c_scl_io;
  inout i2c_sda_io;
  output [3:0]led_4bits_tri_o;
  input [3:0]push_buttons_4bits_tri_i;
  input reset_0;
  output [11:0]rgb_led_tri_o;
  input rx_0;
  inout spi_io0_io;
  inout spi_io1_io;
  inout spi_sck_io;
  inout spi_ss_io;
  input sys_clock;
  output tx_0;
  input usb_uart_0_rxd;
  output usb_uart_0_txd;

  wire [3:0]dip_switches_4bits_tri_i;
  wire i2c_scl_i;
  wire i2c_scl_io;
  wire i2c_scl_o;
  wire i2c_scl_t;
  wire i2c_sda_i;
  wire i2c_sda_io;
  wire i2c_sda_o;
  wire i2c_sda_t;
  wire [3:0]led_4bits_tri_o;
  wire [3:0]push_buttons_4bits_tri_i;
  wire reset_0;
  wire [11:0]rgb_led_tri_o;
  wire rx_0;
  wire spi_io0_i;
  wire spi_io0_io;
  wire spi_io0_o;
  wire spi_io0_t;
  wire spi_io1_i;
  wire spi_io1_io;
  wire spi_io1_o;
  wire spi_io1_t;
  wire spi_sck_i;
  wire spi_sck_io;
  wire spi_sck_o;
  wire spi_sck_t;
  wire spi_ss_i;
  wire spi_ss_io;
  wire spi_ss_o;
  wire spi_ss_t;
  wire sys_clock;
  wire tx_0;
  wire usb_uart_0_rxd;
  wire usb_uart_0_txd;

  design_mb design_mb_i
       (.dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
        .i2c_scl_i(i2c_scl_i),
        .i2c_scl_o(i2c_scl_o),
        .i2c_scl_t(i2c_scl_t),
        .i2c_sda_i(i2c_sda_i),
        .i2c_sda_o(i2c_sda_o),
        .i2c_sda_t(i2c_sda_t),
        .led_4bits_tri_o(led_4bits_tri_o),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .reset_0(reset_0),
        .rgb_led_tri_o(rgb_led_tri_o),
        .rx_0(rx_0),
        .spi_io0_i(spi_io0_i),
        .spi_io0_o(spi_io0_o),
        .spi_io0_t(spi_io0_t),
        .spi_io1_i(spi_io1_i),
        .spi_io1_o(spi_io1_o),
        .spi_io1_t(spi_io1_t),
        .spi_sck_i(spi_sck_i),
        .spi_sck_o(spi_sck_o),
        .spi_sck_t(spi_sck_t),
        .spi_ss_i(spi_ss_i),
        .spi_ss_o(spi_ss_o),
        .spi_ss_t(spi_ss_t),
        .sys_clock(sys_clock),
        .tx_0(tx_0),
        .usb_uart_0_rxd(usb_uart_0_rxd),
        .usb_uart_0_txd(usb_uart_0_txd));
  IOBUF i2c_scl_iobuf
       (.I(i2c_scl_o),
        .IO(i2c_scl_io),
        .O(i2c_scl_i),
        .T(i2c_scl_t));
  IOBUF i2c_sda_iobuf
       (.I(i2c_sda_o),
        .IO(i2c_sda_io),
        .O(i2c_sda_i),
        .T(i2c_sda_t));
  IOBUF spi_io0_iobuf
       (.I(spi_io0_o),
        .IO(spi_io0_io),
        .O(spi_io0_i),
        .T(spi_io0_t));
  IOBUF spi_io1_iobuf
       (.I(spi_io1_o),
        .IO(spi_io1_io),
        .O(spi_io1_i),
        .T(spi_io1_t));
  IOBUF spi_sck_iobuf
       (.I(spi_sck_o),
        .IO(spi_sck_io),
        .O(spi_sck_i),
        .T(spi_sck_t));
  IOBUF spi_ss_iobuf
       (.I(spi_ss_o),
        .IO(spi_ss_io),
        .O(spi_ss_i),
        .T(spi_ss_t));
endmodule
