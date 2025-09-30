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
-hw {C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vivado2023.1\DRC_Rev2.0_FW\DRC_Rev_2_0_QualTest_Wrapper_3V3_QSPI.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vitis2023.1/DRC_Rev2.0_SW}

platform write
platform generate -domains 
platform active {DRCPlatform}
platform generate
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/design_1_wrapper_3V3_SiP_x2_FLASH.xsa}
platform generate -domains 
platform active {DRCPlatform}
domain create -name {FSBL_Domain} -display-name {FSBL_Domain} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {zynqmp_fsbl}
platform generate -domains 
platform write
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_domain}
domain active {FSBL_Domain}
platform generate -quick
platform generate -domains FSBL_Domain 
domain active {zynqmp_fsbl}
domain active {standalone_domain}
bsp reload
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
