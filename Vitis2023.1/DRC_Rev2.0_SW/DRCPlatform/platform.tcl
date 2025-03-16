# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\yousefkhalil\Vitis_Projects\2023.1\DRCDeliverableSoftware\DRCPlatform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\yousefkhalil\Vitis_Projects\2023.1\DRCDeliverableSoftware\DRCPlatform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {DRCPlatform}\
-hw {\\Mac\Home\Downloads\DRCVivado2023.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/Users/yousefkhalil/Vitis_Projects/2023.1/DRCDeliverableSoftware}

platform write
platform generate -domains 
platform active {DRCPlatform}
platform active {DRCPlatform}
domain create -name {fsbl_domain} -display-name {fsbl_domain} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {zynqmp_fsbl}
platform generate -domains 
platform write
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_domain}
domain active {fsbl_domain}
platform generate -quick
platform generate
platform active {DRCPlatform}
platform generate -domains 
domain active {standalone_domain}
bsp reload
bsp config stdin "psu_coresight_0"
bsp config stdout "psu_coresight_0"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_fsbl}
bsp reload
bsp config stdin "psu_coresight_0"
bsp config stdout "psu_coresight_0"
bsp write
bsp reload
catch {bsp regenerate}
domain active {fsbl_domain}
bsp reload
bsp config stdin "psu_coresight_0"
bsp config stdout "psu_coresight_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains fsbl_domain,standalone_domain,zynqmp_fsbl 
platform clean
platform generate
domain active {standalone_domain}
bsp reload
platform generate
platform generate
platform active {DRCPlatform}
platform generate
platform config -updatehw {C:/Xilinx/Vitis/2023.1/Projects/DRCDeliverableSoftware/DRCPlatform/export/DRCPlatform/hw/DRCVivado2023.xsa}
platform generate
domain active {zynqmp_fsbl}
domain active {standalone_domain}
bsp reload
bsp reload
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/PL_Controlled_DACs.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/DAC_2.5MHz_OUT.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/DAC_Controllable_Speed.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/DCLK_FOLLOWS_DLKIN.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/CLKDIV_DAC_control.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/CLKDIV_DAC_Control.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/DAC_2.5MHz_OUT.xsa}
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/CLKDIV_DAC_Control.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/CLKDIV_DAC_Control.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/CLKDIV_control.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/REV1A.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/REV1B.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/REV1C.xsa}
platform generate -domains 
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/DRCDeliverablePlatform/REV1D.xsa}
platform generate -domains 
platform active {DRCPlatform}
platform active {DRCPlatform}
platform active {DRCPlatform}
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/PL_ADC_Control_wrapper.xsa}
platform generate
platform active {DRCPlatform}
platform config -updatehw {C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/PL_ADC_Control_wrapper.xsa}
platform generate -domains 
bsp reload
bsp reload
domain active {fsbl_domain}
bsp reload
bsp reload
domain active {zynqmp_fsbl}
bsp reload
bsp reload
domain active {zynqmp_pmufw}
bsp reload
bsp reload
platform generate -domains 
