platform generate
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
bsp config stdin "psu_coresight_0"
bsp config stdout "psu_coresight_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform clean
platform generate
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_wrapper.xsa}
platform generate
platform clean
platform generate
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_wrapper.xsa}
platform clean
platform clean
platform generate
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_wrapper.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/DRC_Rev_2_0_QualTest_wrapper.xsa}
platform generate
