# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/arjun/VITIS_AREA/Microblaize_program_02_09_2025/gpio_uart_led_switch_system/_ide/scripts/debugger_gpio_uart_led_switch-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/arjun/VITIS_AREA/Microblaize_program_02_09_2025/gpio_uart_led_switch_system/_ide/scripts/debugger_gpio_uart_led_switch-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty A7-100T 210319BD75AAA" && level==0 && jtag_device_ctx=="jsn-Arty A7-100T-210319BD75AAA-13631093-0"}
fpga -file /home/arjun/VITIS_AREA/Microblaize_program_02_09_2025/gpio_uart_led_switch/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw /home/arjun/VITIS_AREA/Microblaize_program_02_09_2025/blaize_platform/export/blaize_platform/hw/design_1_mico_cust_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/arjun/VITIS_AREA/Microblaize_program_02_09_2025/gpio_uart_led_switch/Debug/gpio_uart_led_switch.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
