## ==================================================================
## Clock Input (100 MHz onboard oscillator)
## ==================================================================
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk }];

## ==================================================================
## Reset Button (BTN0)
## ==================================================================
set_property -dict { PACKAGE_PIN D9   IOSTANDARD LVCMOS33 } [get_ports { rst }];

## ==================================================================
## Start/Stop Button (BTN1)
## ==================================================================
set_property -dict { PACKAGE_PIN C9   IOSTANDARD LVCMOS33 } [get_ports { start_btn }];

## ==================================================================
## 7-Segment Display Segments (Common Anode, Active HIGH)
## seg[6:0] → {a,b,c,d,e,f,g}
## ==================================================================
set_property -dict { PACKAGE_PIN G13    IOSTANDARD LVCMOS33 } [get_ports { seg[0] }];
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { seg[1] }]; 
set_property -dict { PACKAGE_PIN A11    IOSTANDARD LVCMOS33 } [get_ports { seg[2] }]; 
set_property -dict { PACKAGE_PIN D12    IOSTANDARD LVCMOS33 } [get_ports { seg[3] }]; 
set_property -dict { PACKAGE_PIN D13    IOSTANDARD LVCMOS33 } [get_ports { seg[4] }];
set_property -dict { PACKAGE_PIN B18    IOSTANDARD LVCMOS33 } [get_ports { seg[5] }]; 
set_property -dict { PACKAGE_PIN A18    IOSTANDARD LVCMOS33 } [get_ports { seg[6] }];

## ==================================================================
## 7-Segment Display Digit Enables (Common Anode, Active HIGH)
## an[3:0] → {AN3, AN2, AN1, AN0}
## ==================================================================
set_property -dict { PACKAGE_PIN E15    IOSTANDARD LVCMOS33 } [get_ports { an[0] }]; 
set_property -dict { PACKAGE_PIN E16    IOSTANDARD LVCMOS33 } [get_ports { an[1] }]; 
set_property -dict { PACKAGE_PIN D15    IOSTANDARD LVCMOS33 } [get_ports { an[2] }]; 
set_property -dict { PACKAGE_PIN C15    IOSTANDARD LVCMOS33 } [get_ports { an[3] }]; 
