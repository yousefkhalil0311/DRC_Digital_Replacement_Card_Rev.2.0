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
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_0"
bsp config stdin "psu_uart_1"
bsp config ttc_select_cntr "2"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_fsbl}
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
domain active {standalone_domain}
bsp reload
bsp reload
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
domain active {standalone_domain}
bsp reload
bsp reload
bsp reload
platform generate -domains 
bsp reload
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform active {DRCPlatform}
platform generate
platform generate
platform generate
platform generate
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables_SwappedIIIC1.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform generate
platform generate -domains zynqmp_fsbl,zynqmp_pmufw 
platform generate -domains zynqmp_fsbl,zynqmp_pmufw 
platform generate -domains standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
platform active {DRCPlatform}
bsp reload
bsp reload
platform generate -domains 
bsp reload
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform generate
platform generate -domains zynqmp_fsbl,zynqmp_pmufw 
platform generate
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform generate -domains fsbl_domain,standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
platform generate
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform generate -domains standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
platform generate -domains standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
bsp reload
bsp reload
bsp reload
bsp reload
bsp reload
platform generate -domains 
platform generate -domains standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
domain create -name {FSBL_domain} -display-name {FSBL_domain} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {zynqmp_fsbl}
platform generate -domains 
platform active {DRCPlatform}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_domain}
domain active {FSBL_domain}
platform generate -quick
platform generate -domains fsbl_domain 
platform clean
platform generate
platform active {DRCPlatform}
domain active {zynqmp_fsbl}
domain active {standalone_domain}
bsp reload
bsp reload
bsp reload
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains fsbl_domain,standalone_domain 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables_noFFT.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_ADCCLCK_to_FFT_with_ILAS.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables_noFFT.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_ADCCLCK_to_FFT_with_ILAS.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform generate
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables_noFFT.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables_noFFT.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables_noFFT.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Users/youse/Downloads/DRC_Rev2_0_Deliverables.xsa}
platform generate
platform config -updatehw {C:/Users/youse/Downloads/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform generate -domains fsbl_domain,standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
platform generate
platform active {DRCPlatform}
platform generate -domains 
platform config -updatehw {C:/Users/youse/Downloads/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables_noFFT.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/youse/Downloads/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables_noFFT.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
platform generate -domains 
platform active {DRCPlatform}
domain active {standalone_domain}
bsp reload
bsp reload
bsp config stdin "psu_coresight_0"
bsp config stdout "psu_coresight_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_wrapper.xsa}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_wrapper.xsa}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev2_0_Deliverables.xsa}
catch {platform remove DRCPlatform}
