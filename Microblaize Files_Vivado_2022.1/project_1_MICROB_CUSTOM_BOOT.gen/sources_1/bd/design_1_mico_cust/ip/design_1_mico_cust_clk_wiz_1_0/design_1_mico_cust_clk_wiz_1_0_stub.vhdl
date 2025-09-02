-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Tue Aug 26 12:42:26 2025
-- Host        : arjun-Aspire-A315-59 running 64-bit Ubuntu 24.10
-- Command     : write_vhdl -force -mode synth_stub
--               /home/arjun/Vivado_PROJECTS/project_1_MICROB_CUSTOM_BOOT/project_1_MICROB_CUSTOM_BOOT.gen/sources_1/bd/design_1_mico_cust/ip/design_1_mico_cust_clk_wiz_1_0/design_1_mico_cust_clk_wiz_1_0_stub.vhdl
-- Design      : design_1_mico_cust_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_mico_cust_clk_wiz_1_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end design_1_mico_cust_clk_wiz_1_0;

architecture stub of design_1_mico_cust_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,resetn,locked,clk_in1";
begin
end;
