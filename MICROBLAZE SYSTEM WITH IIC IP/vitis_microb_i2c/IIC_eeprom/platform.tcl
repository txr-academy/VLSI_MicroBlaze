# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Parvathy\vitis_microb_i2c\IIC_eeprom\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Parvathy\vitis_microb_i2c\IIC_eeprom\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {IIC_eeprom}\
-hw {C:\Parvathy\project_mb_system\design_mb_i2c_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Parvathy/vitis_microb_i2c}

platform write
platform generate -domains 
platform active {IIC_eeprom}
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
platform clean
platform generate
platform clean
platform generate
platform clean
platform clean
platform generate
