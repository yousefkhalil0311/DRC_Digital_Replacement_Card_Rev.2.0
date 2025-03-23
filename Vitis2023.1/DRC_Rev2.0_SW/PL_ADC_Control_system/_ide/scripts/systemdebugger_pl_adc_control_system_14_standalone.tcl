# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Xilinx\Vitis\2023.1\Projects\PL_ADC_Control_Software\PL_ADC_Control_system\_ide\scripts\systemdebugger_pl_adc_control_system_14_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Xilinx\Vitis\2023.1\Projects\PL_ADC_Control_Software\PL_ADC_Control_system\_ide\scripts\systemdebugger_pl_adc_control_system_14_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Vitis/2023.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299BBCD36" && level==0 && jtag_device_ctx=="jsn-JTAG-HS3-210299BBCD36-14710093-0"}
fpga -file C:/Xilinx/Vitis/2023.1/Projects/PL_ADC_Control_Software/PL_ADC_Control/_ide/bitstream/PL_ADC_Control_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Xilinx/Vitis/2023.1/Projects/PL_ADC_Control_Software/DRCPlatform/export/DRCPlatform/hw/PL_ADC_Control_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Xilinx/Vitis/2023.1/Projects/PL_ADC_Control_Software/DRCPlatform/export/DRCPlatform/sw/DRCPlatform/boot/fsbl.elf
set bp_31_29_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_31_29_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Xilinx/Vitis/2023.1/Projects/PL_ADC_Control_Software/PL_ADC_Control/Debug/PL_ADC_Control.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
