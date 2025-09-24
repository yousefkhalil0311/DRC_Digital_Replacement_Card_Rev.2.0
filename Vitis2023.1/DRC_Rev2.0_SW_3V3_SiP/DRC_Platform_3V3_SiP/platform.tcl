# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vitis2023.1\DRC_Rev2.0_SW_3V3_SiP\DRC_Platform_3V3_SiP\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vitis2023.1\DRC_Rev2.0_SW_3V3_SiP\DRC_Platform_3V3_SiP\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {DRC_Platform_3V3_SiP}\
-hw {C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vivado2023.1\DRC_Rev2.0_FW\DRC_Rev_2_0_QualTest_Wrapper_3V3_QSPI.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vitis2023.1/DRC_Rev2.0_SW_3V3_SiP}

platform write
platform generate -domains 
platform active {DRC_Platform_3V3_SiP}
platform generate
platform active {DRC_Platform_3V3_SiP}
domain create -name {fsbl_3V3_SiP} -display-name {fsbl_3V3_SiP} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {zynqmp_fsbl}
platform generate -domains 
platform write
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_domain}
domain active {fsbl_3V3_SiP}
platform generate -quick
platform generate -domains fsbl_3V3_SiP 
platform clean
platform clean
platform clean
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_Wrapper_3V3_QSPI.xsa}
platform generate
platform active {DRC_Platform_3V3_SiP}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_Wrapper_3V3_QSPI.xsa}
platform generate -domains 
platform active {DRC_Platform_3V3_SiP}
domain active {zynqmp_fsbl}
bsp reload
bsp reload
platform active {DRC_Platform_3V3_SiP}
platform active {DRC_Platform_3V3_SiP}
platform active {DRC_Platform_3V3_SiP}
domain active {zynqmp_fsbl}
bsp reload
bsp reload
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_Wrapper_3V3_QSPI.xsa}
domain active {zynqmp_fsbl}
domain active {standalone_domain}
bsp reload
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_fsbl}
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
bsp reload
domain active {standalone_domain}
bsp reload
domain active {fsbl_3V3_SiP}
bsp reload
bsp reload
domain active {zynqmp_pmufw}
bsp reload
bsp reload
