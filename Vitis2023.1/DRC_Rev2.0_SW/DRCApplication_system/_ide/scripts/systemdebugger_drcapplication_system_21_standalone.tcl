# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Xilinx\Vitis\2023.1\Projects\DRCDeliverableSoftware\DRCApplication_system\_ide\scripts\systemdebugger_drcapplication_system_21_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Xilinx\Vitis\2023.1\Projects\DRCDeliverableSoftware\DRCApplication_system\_ide\scripts\systemdebugger_drcapplication_system_21_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Vitis/2023.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299BBCD36" && level==0 && jtag_device_ctx=="jsn-JTAG-HS3-210299BBCD36-14710093-0"}
fpga -file C:/Xilinx/Vitis/2023.1/Projects/DRCDeliverableSoftware/DRCApplication/_ide/bitstream/DCLK_FOLLOWS_DLKIN.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Xilinx/Vitis/2023.1/Projects/DRCDeliverableSoftware/DRCPlatform/export/DRCPlatform/hw/DCLK_FOLLOWS_DLKIN.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Xilinx/Vitis/2023.1/Projects/DRCDeliverableSoftware/DRCPlatform/export/DRCPlatform/sw/DRCPlatform/boot/fsbl.elf
set bp_34_24_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_34_24_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/Xilinx/Vitis/2023.1/Projects/DRCDeliverableSoftware/DRCApplication/Debug/DRCApplication.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
