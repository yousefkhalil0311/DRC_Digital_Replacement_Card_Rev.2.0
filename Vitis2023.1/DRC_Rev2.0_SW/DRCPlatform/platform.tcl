# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vitis2023.1\DRC_Rev2.0_SW\DRCPlatform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vitis2023.1\DRC_Rev2.0_SW\DRCPlatform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {DRCPlatform}\
-hw {C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vivado2023.1\DRC_Rev2.0_FW\DRC_Rev2.0_Deliverable.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vitis2023.1/DRC_Rev2.0_SW}

platform write
platform generate -domains 
platform active {DRCPlatform}
platform generate
