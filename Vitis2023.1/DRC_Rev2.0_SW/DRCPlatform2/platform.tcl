# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vitis2023.1\DRC_Rev2.0_SW\DRCPlatform2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vitis2023.1\DRC_Rev2.0_SW\DRCPlatform2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {DRCPlatform2}\
-hw {C:\Xilinx\Projects\DRC_Rev2.0_Deliverables\Vivado2023.1\DRC_Rev2.0_FW\DRC_Rev_2_0_QualTest_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vitis2023.1/DRC_Rev2.0_SW}

platform write
platform generate -domains 
platform active {DRCPlatform2}
platform generate
bsp reload
bsp config stdin "psu_coresight_0"
bsp config ttc_select_cntr "2"
bsp config stdout "psu_coresight_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform generate
platform active {DRCPlatform2}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_wrapper.xsa}
platform generate -domains 
domain active {zynqmp_fsbl}
domain active {standalone_domain}
bsp reload
bsp reload
domain active {zynqmp_fsbl}
bsp reload
domain active {standalone_domain}
bsp config stdin "psu_coresight_0"
bsp config stdout "psu_coresight_0"
bsp config stdin "psu_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
bsp reload
bsp config stdin "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
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
domain active {zynqmp_pmufw}
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_fsbl}
platform generate -domains standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
bsp config stdout "psu_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp config stdout "psu_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_pmufw}
bsp config stdout "psu_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_wrapper.xsa}
domain active {zynqmp_fsbl}
platform generate -domains 
domain active {standalone_domain}
domain active {zynqmp_pmufw}
bsp reload
bsp reload
bsp reload
domain active {standalone_domain}
bsp config stdin "psu_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_fsbl}
bsp config stdin "psu_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_pmufw}
bsp config stdin "psu_uart_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain,zynqmp_fsbl,zynqmp_pmufw 
platform clean
platform generate
domain create -name {FSBL_DOMAIN} -os {standalone} -proc {psu_cortexa53_0} -arch {64-bit} -display-name {FSBL_DOMAIN} -desc {} -runtime {cpp}
platform generate -domains 
platform write
domain -report -json
domain active {standalone_domain}
bsp reload
platform generate -domains FSBL_DOMAIN 
platform active {DRCPlatform2}
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {zynqmp_fsbl}
platform generate -domains 
platform write
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_domain}
domain active {FSBL_DOMAIN}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
domain active {standalone_domain}
bsp write
platform generate -domains standalone_psu_cortexa53_0 
