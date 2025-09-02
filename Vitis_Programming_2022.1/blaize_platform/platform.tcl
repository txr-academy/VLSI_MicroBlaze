# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/arjun/VITIS_AREA/Microblaize_program_02_09_2025/blaize_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/arjun/VITIS_AREA/Microblaize_program_02_09_2025/blaize_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {blaize_platform}\
-hw {/home/arjun/Vivado_PROJECTS/project_1_MICROB_CUSTOM_BOOT/design_1_mico_cust_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {/home/arjun/VITIS_AREA/Microblaize_program_02_09_2025}

platform write
platform generate -domains 
platform active {blaize_platform}
platform generate
