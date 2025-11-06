## ================================
## Arty A7 I2C Pin Constraints (PMOD JA)
## ================================

## Board Voltage Settings
##set_property CFGBVS VCCO [current_design]
## ===========================================================
## I2C Interface Pins (Arty A7 PMOD JA)
## ===========================================================
#PMOD JB(PIN 1 PIN 2)
set_property PACKAGE_PIN E16 [get_ports {scl_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {scl_0}]
set_property PULLUP true [get_ports {scl_0}]

set_property PACKAGE_PIN E15 [get_ports {sda_0}]
set_property IOSTANDARD LVCMOS33 [get_ports {sda_0}]
set_property PULLUP true [get_ports {sda_0}]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
