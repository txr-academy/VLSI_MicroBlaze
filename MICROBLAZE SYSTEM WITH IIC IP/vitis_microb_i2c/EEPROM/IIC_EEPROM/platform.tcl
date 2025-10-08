# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Parvathy\vitis_microb_i2c\EEPROM\IIC_EEPROM\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Parvathy\vitis_microb_i2c\EEPROM\IIC_EEPROM\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {IIC_EEPROM}\
-hw {C:\Parvathy\project_i2c_microblaze\design_i2c_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Parvathy/vitis_microb_i2c/EEPROM}

platform write
platform generate -domains 
platform active {IIC_EEPROM}
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
