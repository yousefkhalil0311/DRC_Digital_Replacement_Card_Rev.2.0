
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2023.1/data/ip2default:defaultZ19-2313h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
add_files: 2default:default2
00:00:042default:default2
00:00:072default:default2
1557.2972default:default2
77.4962default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/utils_1/imports/synth_1/design_1_wrapper.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2
kC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/utils_1/imports/synth_1/design_1_wrapper.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
Command: %s
53*	vivadotcl2P
<synth_design -top design_1_wrapper -part xczu3eg-sfvc784-1-e2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xczu3eg2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xczu3eg2default:defaultZ17-349h px� 
Z
Loading part %s157*device2'
xczu3eg-sfvc784-1-e2default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
46802default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2839.332 ; gain = 338.227
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2$
design_1_wrapper2default:default2
 2default:default2�
jC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v2default:default2
132default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
design_12default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
132default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_ADC_MinMax_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ADC_MinMax_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_ADC_MinMax_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ADC_MinMax_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_ADC_MinMax_0_12default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ADC_MinMax_0_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_ADC_MinMax_0_12default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ADC_MinMax_0_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_ADC_MinMax_0_22default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ADC_MinMax_0_2_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_ADC_MinMax_0_22default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ADC_MinMax_0_2_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_ADC_MinMax_0_32default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ADC_MinMax_0_3_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_ADC_MinMax_0_32default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ADC_MinMax_0_3_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
design_1_ClockDivider_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ClockDivider_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
design_1_ClockDivider_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_ClockDivider_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5222default:default8@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_DAC_CTRL_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_DAC_CTRL_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_DAC_CTRL_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_DAC_CTRL_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DACDATA2default:default2)
design_1_DAC_CTRL_0_02default:default2

DAC_CTRL_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5222default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DCKOUT2default:default2)
design_1_DAC_CTRL_0_02default:default2

DAC_CTRL_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5222default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

DAC_CTRL_02default:default2)
design_1_DAC_CTRL_0_02default:default2
32default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5222default:default8@Z8-7023h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5242default:default8@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_DAC_CTRL_0_12default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_DAC_CTRL_0_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_DAC_CTRL_0_12default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_DAC_CTRL_0_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DACDATA2default:default2)
design_1_DAC_CTRL_0_12default:default2

DAC_CTRL_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DCKOUT2default:default2)
design_1_DAC_CTRL_0_12default:default2

DAC_CTRL_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5242default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

DAC_CTRL_12default:default2)
design_1_DAC_CTRL_0_12default:default2
32default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5242default:default8@Z8-7023h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5262default:default8@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_DAC_CTRL_0_22default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_DAC_CTRL_0_2_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_DAC_CTRL_0_22default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_DAC_CTRL_0_2_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DACDATA2default:default2)
design_1_DAC_CTRL_0_22default:default2

DAC_CTRL_22default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5262default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DCKOUT2default:default2)
design_1_DAC_CTRL_0_22default:default2

DAC_CTRL_22default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5262default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

DAC_CTRL_22default:default2)
design_1_DAC_CTRL_0_22default:default2
32default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5262default:default8@Z8-7023h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5282default:default8@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_DAC_CTRL_0_32default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_DAC_CTRL_0_3_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_DAC_CTRL_0_32default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_DAC_CTRL_0_3_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DACDATA2default:default2)
design_1_DAC_CTRL_0_32default:default2

DAC_CTRL_32default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5282default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
DCKOUT2default:default2)
design_1_DAC_CTRL_0_32default:default2

DAC_CTRL_32default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5282default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

DAC_CTRL_32default:default2)
design_1_DAC_CTRL_0_32default:default2
32default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
5282default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_0_12default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_0_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_0_12default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_0_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_1_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_1_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_1_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_1_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_9_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_9_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_9_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_9_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_3_12default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_3_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_3_12default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_3_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_2_32default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_2_3_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_2_32default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_2_3_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_3_22default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_3_2_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_3_22default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_3_2_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_1_12default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_1_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_1_12default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_1_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_2_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_2_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_2_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_2_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_2_12default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_2_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_2_12default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_2_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_3_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_3_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_3_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_3_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_2_22default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_2_2_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_2_22default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_2_2_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_8_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_8_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_8_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_8_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_0_22default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_0_2_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_0_22default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_0_2_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_axi_gpio_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_axi_gpio_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_gpio_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
design_1_axi_iic_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_iic_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
design_1_axi_iic_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_iic_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
iic2intc_irpt2default:default2(
design_1_axi_iic_0_02default:default2
	axi_iic_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8422default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
gpo2default:default2(
design_1_axi_iic_0_02default:default2
	axi_iic_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8422default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	axi_iic_02default:default2(
design_1_axi_iic_0_02default:default2
272default:default2
252default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8422default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2-
design_1_axi_quad_spi_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_quad_spi_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
design_1_axi_quad_spi_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_quad_spi_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
io0_t2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8682default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
io1_o2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8682default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
io1_t2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8682default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
sck_t2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8682default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
ss_t2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8682default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
ip2intc_irpt2default:default2-
design_1_axi_quad_spi_0_02default:default2"
axi_quad_spi_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8682default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2"
axi_quad_spi_02default:default2-
design_1_axi_quad_spi_0_02default:default2
332default:default2
272default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8682default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2-
design_1_axi_quad_spi_0_12default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_quad_spi_0_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
design_1_axi_quad_spi_0_12default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_axi_quad_spi_0_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
io0_t2default:default2-
design_1_axi_quad_spi_0_12default:default2"
axi_quad_spi_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8962default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
io1_o2default:default2-
design_1_axi_quad_spi_0_12default:default2"
axi_quad_spi_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8962default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
io1_t2default:default2-
design_1_axi_quad_spi_0_12default:default2"
axi_quad_spi_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8962default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
sck_t2default:default2-
design_1_axi_quad_spi_0_12default:default2"
axi_quad_spi_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8962default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
ss_t2default:default2-
design_1_axi_quad_spi_0_12default:default2"
axi_quad_spi_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8962default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
ip2intc_irpt2default:default2-
design_1_axi_quad_spi_0_12default:default2"
axi_quad_spi_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8962default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2"
axi_quad_spi_12default:default2-
design_1_axi_quad_spi_0_12default:default2
332default:default2
272default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
8962default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2(
design_1_clk_wiz_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_clk_wiz_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
design_1_clk_wiz_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_clk_wiz_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
clk_out22default:default2(
design_1_clk_wiz_0_02default:default2
	clk_wiz_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9242default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	clk_wiz_02default:default2(
design_1_clk_wiz_0_02default:default2
42default:default2
32default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9242default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2/
design_1_proc_sys_reset_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_proc_sys_reset_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_proc_sys_reset_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_proc_sys_reset_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
mb_reset2default:default2/
design_1_proc_sys_reset_0_02default:default2$
proc_sys_reset_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9282default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
bus_struct_reset2default:default2/
design_1_proc_sys_reset_0_02default:default2$
proc_sys_reset_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9282default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2$
peripheral_reset2default:default2/
design_1_proc_sys_reset_0_02default:default2$
proc_sys_reset_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9282default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2(
interconnect_aresetn2default:default2/
design_1_proc_sys_reset_0_02default:default2$
proc_sys_reset_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9282default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2$
proc_sys_reset_02default:default2/
design_1_proc_sys_reset_0_02default:default2
102default:default2
62default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
9282default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2/
design_1_ps8_0_axi_periph_02default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
13792default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2+
i00_couplers_imp_4SIBI72default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
42012default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
i00_couplers_imp_4SIBI72default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
42012default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
i01_couplers_imp_1YI1VMM2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
43472default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
i01_couplers_imp_1YI1VMM2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
43472default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
i02_couplers_imp_5PG2F02default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
44932default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
i02_couplers_imp_5PG2F02default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
44932default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m00_couplers_imp_QJIMLI2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
46392default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m00_couplers_imp_QJIMLI2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
46392default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m01_couplers_imp_1D3SAH32default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
47712default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m01_couplers_imp_1D3SAH32default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
47712default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m02_couplers_imp_P3UMW52default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
49032default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m02_couplers_imp_P3UMW52default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
49032default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m03_couplers_imp_1E9R4HW2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
50352default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m03_couplers_imp_1E9R4HW2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
50352default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m04_couplers_imp_NB1YAO2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
51672default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m04_couplers_imp_NB1YAO2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
51672default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m05_couplers_imp_1FZ4A9T2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
52992default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m05_couplers_imp_1FZ4A9T2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
52992default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m06_couplers_imp_MPDFMR2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
54312default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m06_couplers_imp_MPDFMR2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
54312default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m07_couplers_imp_1GV49DU2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
55632default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m07_couplers_imp_1GV49DU2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
55632default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m08_couplers_imp_K8X5UY2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
56952default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m08_couplers_imp_K8X5UY2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
56952default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m09_couplers_imp_1AITGY32default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
58272default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m09_couplers_imp_1AITGY32default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
58272default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m10_couplers_imp_11TD8LA2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
59592default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m10_couplers_imp_11TD8LA2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
59592default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m11_couplers_imp_SLT6JJ2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
60912default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m11_couplers_imp_SLT6JJ2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
60912default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m12_couplers_imp_13AKZEL2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
62232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m12_couplers_imp_13AKZEL2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
62232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m13_couplers_imp_REVGT82default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
63552default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m13_couplers_imp_REVGT82default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
63552default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m14_couplers_imp_10LD0VS2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
64872default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m14_couplers_imp_10LD0VS2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
64872default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m15_couplers_imp_U5NP7D2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
66192default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m15_couplers_imp_U5NP7D2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
66192default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m16_couplers_imp_118MOFV2default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
67512default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m16_couplers_imp_118MOFV2default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
67512default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
s00_couplers_imp_1A7ZMW42default:default2
 2default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
68832default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2&
design_1_auto_ds_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_auto_ds_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
design_1_auto_ds_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_auto_ds_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
design_1_auto_pc_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_auto_pc_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
design_1_auto_pc_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_auto_pc_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s00_couplers_imp_1A7ZMW42default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
68832default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_tier2_xbar_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_tier2_xbar_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_tier2_xbar_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_tier2_xbar_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_awprot2default:default2+
design_1_tier2_xbar_0_02default:default2 
tier2_xbar_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
40412default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_arprot2default:default2+
design_1_tier2_xbar_0_02default:default2 
tier2_xbar_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
40412default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2 
tier2_xbar_02default:default2+
design_1_tier2_xbar_0_02default:default2
402default:default2
382default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
40412default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_tier2_xbar_1_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_tier2_xbar_1_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_tier2_xbar_1_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_tier2_xbar_1_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_awprot2default:default2+
design_1_tier2_xbar_1_02default:default2 
tier2_xbar_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
40802default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_arprot2default:default2+
design_1_tier2_xbar_1_02default:default2 
tier2_xbar_12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
40802default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2 
tier2_xbar_12default:default2+
design_1_tier2_xbar_1_02default:default2
402default:default2
382default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
40802default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2+
design_1_tier2_xbar_2_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_tier2_xbar_2_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
design_1_tier2_xbar_2_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_tier2_xbar_2_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_awprot2default:default2+
design_1_tier2_xbar_2_02default:default2 
tier2_xbar_22default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
41192default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
m_axi_arprot2default:default2+
design_1_tier2_xbar_2_02default:default2 
tier2_xbar_22default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
41192default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2 
tier2_xbar_22default:default2+
design_1_tier2_xbar_2_02default:default2
402default:default2
382default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
41192default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2#
design_1_xbar_02default:default2
 2default:default2�
C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_xbar_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
design_1_xbar_02default:default2
 2default:default2
02default:default2
12default:default2�
C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_xbar_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
design_1_ps8_0_axi_periph_02default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
13792default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
design_1_util_ds_buf_10_12default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_10_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
design_1_util_ds_buf_10_12default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_10_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
design_1_util_ds_buf_11_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_11_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
design_1_util_ds_buf_11_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_11_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
design_1_util_ds_buf_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
design_1_util_ds_buf_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
design_1_util_ds_buf_6_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_6_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
design_1_util_ds_buf_6_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_6_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
design_1_util_ds_buf_0_12default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_0_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
design_1_util_ds_buf_0_12default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_0_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
design_1_util_ds_buf_12_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_12_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
design_1_util_ds_buf_12_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_12_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
design_1_util_ds_buf_10_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_10_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
design_1_util_ds_buf_10_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_ds_buf_10_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys22
design_1_util_vector_logic_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_vector_logic_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
design_1_util_vector_logic_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_util_vector_logic_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys20
design_1_zynq_ultra_ps_e_0_02default:default2
 2default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_zynq_ultra_ps_e_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
design_1_zynq_ultra_ps_e_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/.Xil/Vivado-23344-OCP001/realtime/design_1_zynq_ultra_ps_e_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
maxigp2_awuser2default:default20
design_1_zynq_ultra_ps_e_0_02default:default2%
zynq_ultra_ps_e_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
13362default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
maxigp2_aruser2default:default20
design_1_zynq_ultra_ps_e_0_02default:default2%
zynq_ultra_ps_e_02default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
13362default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2%
zynq_ultra_ps_e_02default:default20
design_1_zynq_ultra_ps_e_0_02default:default2
422default:default2
402default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
13362default:default8@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_12default:default2
 2default:default2
02default:default2
12default:default2z
dc:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/synth/design_1.v2default:default2
132default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
design_1_wrapper2default:default2
 2default:default2
02default:default2
12default:default2�
jC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v2default:default2
132default:default8@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
s00_couplers_imp_1A7ZMW42default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
s00_couplers_imp_1A7ZMW42default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m16_couplers_imp_118MOFV2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m16_couplers_imp_118MOFV2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m16_couplers_imp_118MOFV2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m16_couplers_imp_118MOFV2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m15_couplers_imp_U5NP7D2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m15_couplers_imp_U5NP7D2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m15_couplers_imp_U5NP7D2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m15_couplers_imp_U5NP7D2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m14_couplers_imp_10LD0VS2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m14_couplers_imp_10LD0VS2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m14_couplers_imp_10LD0VS2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m14_couplers_imp_10LD0VS2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m13_couplers_imp_REVGT82default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m13_couplers_imp_REVGT82default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m13_couplers_imp_REVGT82default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m13_couplers_imp_REVGT82default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m12_couplers_imp_13AKZEL2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m12_couplers_imp_13AKZEL2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m12_couplers_imp_13AKZEL2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m12_couplers_imp_13AKZEL2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m11_couplers_imp_SLT6JJ2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m11_couplers_imp_SLT6JJ2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m11_couplers_imp_SLT6JJ2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m11_couplers_imp_SLT6JJ2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m10_couplers_imp_11TD8LA2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m10_couplers_imp_11TD8LA2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m10_couplers_imp_11TD8LA2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m10_couplers_imp_11TD8LA2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m09_couplers_imp_1AITGY32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m09_couplers_imp_1AITGY32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m09_couplers_imp_1AITGY32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m09_couplers_imp_1AITGY32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m08_couplers_imp_K8X5UY2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m08_couplers_imp_K8X5UY2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m08_couplers_imp_K8X5UY2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m08_couplers_imp_K8X5UY2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m07_couplers_imp_1GV49DU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m07_couplers_imp_1GV49DU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m07_couplers_imp_1GV49DU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m07_couplers_imp_1GV49DU2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m06_couplers_imp_MPDFMR2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m06_couplers_imp_MPDFMR2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m06_couplers_imp_MPDFMR2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m06_couplers_imp_MPDFMR2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m05_couplers_imp_1FZ4A9T2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m05_couplers_imp_1FZ4A9T2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m05_couplers_imp_1FZ4A9T2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m05_couplers_imp_1FZ4A9T2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m04_couplers_imp_NB1YAO2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m04_couplers_imp_NB1YAO2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m04_couplers_imp_NB1YAO2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m04_couplers_imp_NB1YAO2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m03_couplers_imp_1E9R4HW2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m03_couplers_imp_1E9R4HW2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m03_couplers_imp_1E9R4HW2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m03_couplers_imp_1E9R4HW2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m02_couplers_imp_P3UMW52default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m02_couplers_imp_P3UMW52default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m02_couplers_imp_P3UMW52default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m02_couplers_imp_P3UMW52default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
m01_couplers_imp_1D3SAH32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
m01_couplers_imp_1D3SAH32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
m01_couplers_imp_1D3SAH32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
m01_couplers_imp_1D3SAH32default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
m00_couplers_imp_QJIMLI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
m00_couplers_imp_QJIMLI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
m00_couplers_imp_QJIMLI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
m00_couplers_imp_QJIMLI2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
i02_couplers_imp_5PG2F02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
i02_couplers_imp_5PG2F02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
i02_couplers_imp_5PG2F02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
i02_couplers_imp_5PG2F02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2,
i01_couplers_imp_1YI1VMM2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2,
i01_couplers_imp_1YI1VMM2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2,
i01_couplers_imp_1YI1VMM2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2,
i01_couplers_imp_1YI1VMM2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2default:default2+
i00_couplers_imp_4SIBI72default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2default:default2+
i00_couplers_imp_4SIBI72default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2default:default2+
i00_couplers_imp_4SIBI72default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2default:default2+
i00_couplers_imp_4SIBI72default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ACLK2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ACLK2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ACLK2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M02_ARESETN2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M03_ACLK2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M03_ARESETN2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M04_ACLK2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M04_ARESETN2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M05_ACLK2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M05_ARESETN2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M06_ACLK2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M06_ARESETN2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M07_ACLK2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M07_ARESETN2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M08_ACLK2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M08_ARESETN2default:default2/
design_1_ps8_0_axi_periph_02default:defaultZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2948.938 ; gain = 447.832
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2966.852 ; gain = 465.746
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2966.852 ; gain = 465.746
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0632default:default2
2966.8522default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2default:default26
 design_1_i/ps8_0_axi_periph/xbar	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2default:default26
 design_1_i/ps8_0_axi_periph/xbar	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_tier2_xbar_0_0/design_1_tier2_xbar_0_0/design_1_tier2_xbar_0_0_in_context.xdc2default:default2>
(design_1_i/ps8_0_axi_periph/tier2_xbar_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_tier2_xbar_0_0/design_1_tier2_xbar_0_0/design_1_tier2_xbar_0_0_in_context.xdc2default:default2>
(design_1_i/ps8_0_axi_periph/tier2_xbar_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_tier2_xbar_1_0/design_1_tier2_xbar_1_0/design_1_tier2_xbar_1_0_in_context.xdc2default:default2>
(design_1_i/ps8_0_axi_periph/tier2_xbar_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_tier2_xbar_1_0/design_1_tier2_xbar_1_0/design_1_tier2_xbar_1_0_in_context.xdc2default:default2>
(design_1_i/ps8_0_axi_periph/tier2_xbar_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_tier2_xbar_2_0/design_1_tier2_xbar_2_0/design_1_tier2_xbar_2_0_in_context.xdc2default:default2>
(design_1_i/ps8_0_axi_periph/tier2_xbar_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_tier2_xbar_2_0/design_1_tier2_xbar_2_0/design_1_tier2_xbar_2_0_in_context.xdc2default:default2>
(design_1_i/ps8_0_axi_periph/tier2_xbar_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0/design_1_auto_ds_0_in_context.xdc2default:default2F
0design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0/design_1_auto_ds_0_in_context.xdc2default:default2F
0design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc2default:default2F
0design_1_i/ps8_0_axi_periph/s00_couplers/auto_pc	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc2default:default2F
0design_1_i/ps8_0_axi_periph/s00_couplers/auto_pc	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_vector_logic_0_0/design_1_util_vector_logic_0_0/design_1_util_vector_logic_0_0_in_context.xdc2default:default24
design_1_i/util_vector_logic_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_vector_logic_0_0/design_1_util_vector_logic_0_0/design_1_util_vector_logic_0_0_in_context.xdc2default:default24
design_1_i/util_vector_logic_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_9	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_9	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_in_context.xdc2default:default2+
design_1_i/axi_gpio_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1/design_1_axi_gpio_0_1_in_context.xdc2default:default2+
design_1_i/axi_gpio_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2/design_1_axi_gpio_0_1_in_context.xdc2default:default2+
design_1_i/axi_gpio_8	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_2/design_1_axi_gpio_0_2/design_1_axi_gpio_0_1_in_context.xdc2default:default2+
design_1_i/axi_gpio_8	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_8_0/design_1_axi_gpio_8_0/design_1_axi_gpio_8_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_7	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_8_0/design_1_axi_gpio_8_0/design_1_axi_gpio_8_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_7	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_9_0/design_1_axi_gpio_9_0/design_1_axi_gpio_9_0_in_context.xdc2default:default2,
design_1_i/axi_gpio_10	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_9_0/design_1_axi_gpio_9_0/design_1_axi_gpio_9_0_in_context.xdc2default:default2,
design_1_i/axi_gpio_10	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_iic_0_0/design_1_axi_iic_0_0/design_1_axi_iic_0_0_in_context.xdc2default:default2*
design_1_i/axi_iic_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_iic_0_0/design_1_axi_iic_0_0/design_1_axi_iic_0_0_in_context.xdc2default:default2*
design_1_i/axi_iic_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_in_context.xdc2default:default2/
design_1_i/axi_quad_spi_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0/design_1_axi_quad_spi_0_0_in_context.xdc2default:default2/
design_1_i/axi_quad_spi_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_1/design_1_axi_quad_spi_0_1/design_1_axi_quad_spi_0_1_in_context.xdc2default:default2/
design_1_i/axi_quad_spi_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_quad_spi_0_1/design_1_axi_quad_spi_0_1/design_1_axi_quad_spi_0_1_in_context.xdc2default:default2/
design_1_i/axi_quad_spi_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc2default:default2*
design_1_i/clk_wiz_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_in_context.xdc2default:default2*
design_1_i/clk_wiz_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_in_context.xdc2default:default21
design_1_i/proc_sys_reset_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_in_context.xdc2default:default21
design_1_i/proc_sys_reset_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0_in_context.xdc2default:default2/
design_1_i/util_ds_buf_10	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0_in_context.xdc2default:default2/
design_1_i/util_ds_buf_10	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_1/design_1_util_ds_buf_0_1/design_1_util_ds_buf_0_1_in_context.xdc2default:default2/
design_1_i/util_ds_buf_12	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_1/design_1_util_ds_buf_0_1/design_1_util_ds_buf_0_1_in_context.xdc2default:default2/
design_1_i/util_ds_buf_12	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_10_0/design_1_util_ds_buf_10_0/design_1_util_ds_buf_10_0_in_context.xdc2default:default2/
design_1_i/util_ds_buf_14	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_10_0/design_1_util_ds_buf_10_0/design_1_util_ds_buf_10_0_in_context.xdc2default:default2/
design_1_i/util_ds_buf_14	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_10_1/design_1_util_ds_buf_10_1/design_1_util_ds_buf_10_1_in_context.xdc2default:default2.
design_1_i/util_ds_buf_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_10_1/design_1_util_ds_buf_10_1/design_1_util_ds_buf_10_1_in_context.xdc2default:default2.
design_1_i/util_ds_buf_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_11_0/design_1_util_ds_buf_11_0/design_1_util_ds_buf_10_1_in_context.xdc2default:default2.
design_1_i/util_ds_buf_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_11_0/design_1_util_ds_buf_11_0/design_1_util_ds_buf_10_1_in_context.xdc2default:default2.
design_1_i/util_ds_buf_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_12_0/design_1_util_ds_buf_12_0/design_1_util_ds_buf_10_0_in_context.xdc2default:default2/
design_1_i/util_ds_buf_13	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_12_0/design_1_util_ds_buf_12_0/design_1_util_ds_buf_10_0_in_context.xdc2default:default2/
design_1_i/util_ds_buf_13	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_6_0/design_1_util_ds_buf_6_0/design_1_util_ds_buf_6_0_in_context.xdc2default:default2/
design_1_i/util_ds_buf_11	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_6_0/design_1_util_ds_buf_6_0/design_1_util_ds_buf_6_0_in_context.xdc2default:default2/
design_1_i/util_ds_buf_11	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_in_context.xdc2default:default22
design_1_i/zynq_ultra_ps_e_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_in_context.xdc2default:default22
design_1_i/zynq_ultra_ps_e_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0/design_1_axi_gpio_1_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ClockDivider_0_0/design_1_ClockDivider_0_0/design_1_ClockDivider_0_0_in_context.xdc2default:default2/
design_1_i/ClockDivider_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ClockDivider_0_0/design_1_ClockDivider_0_0/design_1_ClockDivider_0_0_in_context.xdc2default:default2/
design_1_i/ClockDivider_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_0/design_1_DAC_CTRL_0_0/design_1_DAC_CTRL_0_0_in_context.xdc2default:default2+
design_1_i/DAC_CTRL_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_0/design_1_DAC_CTRL_0_0/design_1_DAC_CTRL_0_0_in_context.xdc2default:default2+
design_1_i/DAC_CTRL_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_1/design_1_DAC_CTRL_0_1/design_1_DAC_CTRL_0_1_in_context.xdc2default:default2+
design_1_i/DAC_CTRL_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_1/design_1_DAC_CTRL_0_1/design_1_DAC_CTRL_0_1_in_context.xdc2default:default2+
design_1_i/DAC_CTRL_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_2/design_1_DAC_CTRL_0_2/design_1_DAC_CTRL_0_2_in_context.xdc2default:default2+
design_1_i/DAC_CTRL_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_2/design_1_DAC_CTRL_0_2/design_1_DAC_CTRL_0_2_in_context.xdc2default:default2+
design_1_i/DAC_CTRL_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_3/design_1_DAC_CTRL_0_3/design_1_DAC_CTRL_0_3_in_context.xdc2default:default2+
design_1_i/DAC_CTRL_3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_3/design_1_DAC_CTRL_0_3/design_1_DAC_CTRL_0_3_in_context.xdc2default:default2+
design_1_i/DAC_CTRL_3	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_1_1/design_1_axi_gpio_1_1/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_1_1/design_1_axi_gpio_1_1/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_2_0/design_1_axi_gpio_2_0/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_2_0/design_1_axi_gpio_2_0/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_3	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_2_1/design_1_axi_gpio_2_1/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_4	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_2_1/design_1_axi_gpio_2_1/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_4	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_3_0/design_1_axi_gpio_3_0/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_5	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_3_0/design_1_axi_gpio_3_0/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_5	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_2_2/design_1_axi_gpio_2_2/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_6	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_2_2/design_1_axi_gpio_2_2/design_1_axi_gpio_3_0_in_context.xdc2default:default2+
design_1_i/axi_gpio_6	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_3_1/design_1_axi_gpio_3_1/design_1_axi_gpio_3_0_in_context.xdc2default:default2,
design_1_i/axi_gpio_11	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_3_1/design_1_axi_gpio_3_1/design_1_axi_gpio_3_0_in_context.xdc2default:default2,
design_1_i/axi_gpio_11	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_2_3/design_1_axi_gpio_2_3/design_1_axi_gpio_3_0_in_context.xdc2default:default2,
design_1_i/axi_gpio_12	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_2_3/design_1_axi_gpio_2_3/design_1_axi_gpio_3_0_in_context.xdc2default:default2,
design_1_i/axi_gpio_12	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_3_2/design_1_axi_gpio_3_2/design_1_axi_gpio_3_0_in_context.xdc2default:default2,
design_1_i/axi_gpio_13	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_3_2/design_1_axi_gpio_3_2/design_1_axi_gpio_3_0_in_context.xdc2default:default2,
design_1_i/axi_gpio_13	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_0/design_1_ADC_MinMax_0_0/design_1_ADC_MinMax_0_0_in_context.xdc2default:default2-
design_1_i/ADC_MinMax_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_0/design_1_ADC_MinMax_0_0/design_1_ADC_MinMax_0_0_in_context.xdc2default:default2-
design_1_i/ADC_MinMax_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_1/design_1_ADC_MinMax_0_1/design_1_ADC_MinMax_0_1_in_context.xdc2default:default2-
design_1_i/ADC_MinMax_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_1/design_1_ADC_MinMax_0_1/design_1_ADC_MinMax_0_1_in_context.xdc2default:default2-
design_1_i/ADC_MinMax_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_2/design_1_ADC_MinMax_0_2/design_1_ADC_MinMax_0_2_in_context.xdc2default:default2-
design_1_i/ADC_MinMax_2	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_2/design_1_ADC_MinMax_0_2/design_1_ADC_MinMax_0_2_in_context.xdc2default:default2-
design_1_i/ADC_MinMax_2	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_3/design_1_ADC_MinMax_0_3/design_1_ADC_MinMax_0_3_in_context.xdc2default:default2-
design_1_i/ADC_MinMax_3	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_3/design_1_ADC_MinMax_0_3/design_1_ADC_MinMax_0_3_in_context.xdc2default:default2-
design_1_i/ADC_MinMax_3	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
uC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/new/OSDZU3_HardwarePlatform_IO_Standards.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
uC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/new/OSDZU3_HardwarePlatform_IO_Standards.xdc2default:default8Z20-178h px� 
�
Sourcing Tcl File [%s]
1447*designutils2|
fC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_helper.tcl2default:default8Z20-1688h px� 
�
 Finished Sourcing Tcl File [%s]
1445*designutils2|
fC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_helper.tcl2default:default8Z20-1686h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2z
fC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_helper.tcl2default:default26
".Xil/design_1_wrapper_propImpl.xdc2default:defaultZ1-236h px� 
�
Sourcing Tcl File [%s]
1447*designutils2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default8Z20-1688h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
22default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
32default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
42default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
52default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
82default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
92default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
122default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
132default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
142default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
152default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
162default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
172default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
182default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
212default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
222default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
232default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
242default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
252default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
282default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
292default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
302default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
312default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
322default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
332default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
342default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
352default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
362default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
372default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
382default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
392default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
402default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
412default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
422default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
432default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
442default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
452default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
462default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
472default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
482default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
492default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
502default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
512default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
522default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
532default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
542default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
552default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
562default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
572default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
582default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
592default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
602default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
612default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
622default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
632default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
642default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
652default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
662default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
672default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
682default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
692default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
702default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
712default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
722default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
732default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
742default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
752default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
762default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
772default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
782default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
792default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
822default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
832default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
862default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
872default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
882default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
892default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
922default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
932default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
942default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
952default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
962default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
972default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
982default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
992default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1002default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1012default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1042default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1052default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1062default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1072default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1082default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1092default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1102default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1112default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1122default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1132default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1142default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1152default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1162default:default8@Z12-1808h px� 
�
OProperty '%s' is not supported for elaborated designs for objects of type '%s'.1589*	planAhead2
PACKAGE_PIN2default:default2
port2default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1172default:default8@Z12-1808h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2"
Vivado 12-18082default:default2
1002default:default2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default2
1172default:default8@Z17-14h px� 
�
 Finished Sourcing Tcl File [%s]
1445*designutils2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default8Z20-1686h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
lC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.srcs/constrs_1/imports/new/osdzu3_package_pins.tcl2default:default26
".Xil/design_1_wrapper_propImpl.xdc2default:defaultZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2k
UC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2k
UC:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3002.2622default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
3002.2622default:default2
0.0002default:defaultZ17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
design_1_i/axi_quad_spi_02default:default2
ext_spi_clk2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
design_1_i/axi_quad_spi_12default:default2
ext_spi_clk2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2-
design_1_i/util_ds_buf_112default:default2
	BUFG_I[0]2default:default2
15.3852default:defaultZ38-316h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 3002.262 ; gain = 501.156
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
N
%s
*synth26
"Loading part: xczu3eg-sfvc784-1-e
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 3002.262 ; gain = 501.156
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 3002.262 ; gain = 501.156
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 3002.262 ; gain = 501.156
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 360 (col length:72)
BRAMs: 432 (col length: RAMB18 72 RAMB36 36)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:14 . Memory (MB): peak = 3002.262 ; gain = 501.156
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 3482.391 ; gain = 981.285
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 3483.664 ; gain = 982.559
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 3495.574 ; gain = 994.469
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
wFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 3508.367 ; gain = 1007.262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 3508.367 ; gain = 1007.262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 3508.367 ; gain = 1007.262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 3508.367 ; gain = 1007.262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 3508.367 ; gain = 1007.262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 3508.367 ; gain = 1007.262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+-------------------------------+----------+
2default:defaulth p
x
� 
`
%s
*synth2H
4|      |BlackBox name                  |Instances |
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+-------------------------------+----------+
2default:defaulth p
x
� 
`
%s
*synth2H
4|1     |design_1_tier2_xbar_0_0        |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|2     |design_1_tier2_xbar_1_0        |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|3     |design_1_tier2_xbar_2_0        |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|4     |design_1_xbar_0                |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|5     |design_1_auto_ds_0             |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|6     |design_1_auto_pc_0             |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|7     |design_1_ADC_MinMax_0_0        |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|8     |design_1_ADC_MinMax_0_1        |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|9     |design_1_ADC_MinMax_0_2        |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|10    |design_1_ADC_MinMax_0_3        |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|11    |design_1_ClockDivider_0_0      |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|12    |design_1_DAC_CTRL_0_0          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|13    |design_1_DAC_CTRL_0_1          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|14    |design_1_DAC_CTRL_0_2          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|15    |design_1_DAC_CTRL_0_3          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|16    |design_1_axi_gpio_0_1          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|17    |design_1_axi_gpio_1_0          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|18    |design_1_axi_gpio_9_0          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|19    |design_1_axi_gpio_3_1          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|20    |design_1_axi_gpio_2_3          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|21    |design_1_axi_gpio_3_2          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|22    |design_1_axi_gpio_1_1          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|23    |design_1_axi_gpio_2_0          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|24    |design_1_axi_gpio_2_1          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|25    |design_1_axi_gpio_3_0          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|26    |design_1_axi_gpio_2_2          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|27    |design_1_axi_gpio_8_0          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|28    |design_1_axi_gpio_0_2          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|29    |design_1_axi_gpio_0_0          |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|30    |design_1_axi_iic_0_0           |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|31    |design_1_axi_quad_spi_0_0      |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|32    |design_1_axi_quad_spi_0_1      |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|33    |design_1_clk_wiz_0_0           |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|34    |design_1_proc_sys_reset_0_0    |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|35    |design_1_util_ds_buf_10_1      |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|36    |design_1_util_ds_buf_11_0      |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|37    |design_1_util_ds_buf_0_0       |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|38    |design_1_util_ds_buf_6_0       |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|39    |design_1_util_ds_buf_0_1       |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|40    |design_1_util_ds_buf_12_0      |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|41    |design_1_util_ds_buf_10_0      |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|42    |design_1_util_vector_logic_0_0 |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4|43    |design_1_zynq_ultra_ps_e_0_0   |         1|
2default:defaulth p
x
� 
`
%s
*synth2H
4+------+-------------------------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
Z
%s*synth2B
.+------+-----------------------------+------+
2default:defaulth px� 
Z
%s*synth2B
.|      |Cell                         |Count |
2default:defaulth px� 
Z
%s*synth2B
.+------+-----------------------------+------+
2default:defaulth px� 
Z
%s*synth2B
.|1     |design_1_ADC_MinMax_0        |     4|
2default:defaulth px� 
Z
%s*synth2B
.|5     |design_1_ClockDivider_0      |     1|
2default:defaulth px� 
Z
%s*synth2B
.|6     |design_1_DAC_CTRL_0          |     4|
2default:defaulth px� 
Z
%s*synth2B
.|10    |design_1_auto_ds             |     1|
2default:defaulth px� 
Z
%s*synth2B
.|11    |design_1_auto_pc             |     1|
2default:defaulth px� 
Z
%s*synth2B
.|12    |design_1_axi_gpio_0          |     3|
2default:defaulth px� 
Z
%s*synth2B
.|15    |design_1_axi_gpio_1          |     2|
2default:defaulth px� 
Z
%s*synth2B
.|17    |design_1_axi_gpio_2          |     4|
2default:defaulth px� 
Z
%s*synth2B
.|21    |design_1_axi_gpio_3          |     3|
2default:defaulth px� 
Z
%s*synth2B
.|24    |design_1_axi_gpio_8          |     1|
2default:defaulth px� 
Z
%s*synth2B
.|25    |design_1_axi_gpio_9          |     1|
2default:defaulth px� 
Z
%s*synth2B
.|26    |design_1_axi_iic_0           |     1|
2default:defaulth px� 
Z
%s*synth2B
.|27    |design_1_axi_quad_spi_0      |     2|
2default:defaulth px� 
Z
%s*synth2B
.|29    |design_1_clk_wiz_0           |     1|
2default:defaulth px� 
Z
%s*synth2B
.|30    |design_1_proc_sys_reset_0    |     1|
2default:defaulth px� 
Z
%s*synth2B
.|31    |design_1_tier2_xbar_0        |     1|
2default:defaulth px� 
Z
%s*synth2B
.|32    |design_1_tier2_xbar_1        |     1|
2default:defaulth px� 
Z
%s*synth2B
.|33    |design_1_tier2_xbar_2        |     1|
2default:defaulth px� 
Z
%s*synth2B
.|34    |design_1_util_ds_buf_0       |     2|
2default:defaulth px� 
Z
%s*synth2B
.|36    |design_1_util_ds_buf_10      |     2|
2default:defaulth px� 
Z
%s*synth2B
.|38    |design_1_util_ds_buf_11      |     1|
2default:defaulth px� 
Z
%s*synth2B
.|39    |design_1_util_ds_buf_12      |     1|
2default:defaulth px� 
Z
%s*synth2B
.|40    |design_1_util_ds_buf_6       |     1|
2default:defaulth px� 
Z
%s*synth2B
.|41    |design_1_util_vector_logic_0 |     1|
2default:defaulth px� 
Z
%s*synth2B
.|42    |design_1_xbar                |     1|
2default:defaulth px� 
Z
%s*synth2B
.|43    |design_1_zynq_ultra_ps_e_0   |     1|
2default:defaulth px� 
Z
%s*synth2B
.|44    |IBUF                         |    54|
2default:defaulth px� 
Z
%s*synth2B
.|45    |OBUF                         |    30|
2default:defaulth px� 
Z
%s*synth2B
.+------+-----------------------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 3508.367 ; gain = 1007.262
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 37 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:20 . Memory (MB): peak = 3508.367 ; gain = 971.852
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 3508.367 ; gain = 1007.262
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0372default:default2
3520.4102default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
542default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3548.8522default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2o
[  A total of 54 instances were transformed.
  IBUF => IBUF (IBUFCTRL, INBUF): 54 instances
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
2a49f3d82default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2622default:default2
1562default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:302default:default2
00:00:302default:default2
3548.8522default:default2
1984.5942default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[C:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.runs/synth_1/design_1_wrapper.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
vExecuting : report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Feb  5 01:31:27 20252default:defaultZ17-206h px� 


End Record