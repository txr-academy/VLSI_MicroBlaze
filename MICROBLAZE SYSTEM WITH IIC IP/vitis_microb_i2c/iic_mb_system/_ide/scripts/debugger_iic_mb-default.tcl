# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Parvathy\vitis_microb_i2c\iic_mb_system\_ide\scripts\debugger_iic_mb-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Parvathy\vitis_microb_i2c\iic_mb_system\_ide\scripts\debugger_iic_mb-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty A7-100T 210319BD75AAA" && level==0 && jtag_device_ctx=="jsn-Arty A7-100T-210319BD75AAA-13631093-0"}
fpga -file C:/Parvathy/vitis_microb_i2c/iic_mb/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Parvathy/vitis_microb_i2c/IIC_eeprom/export/IIC_eeprom/hw/design_mb_i2c_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Parvathy/vitis_microb_i2c/iic_mb/Debug/iic_mb.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
