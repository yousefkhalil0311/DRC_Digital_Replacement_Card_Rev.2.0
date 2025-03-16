// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Feb  5 01:30:37 2025
// Host        : OCP001 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_2/design_1_ADC_MinMax_0_2_stub.v
// Design      : design_1_ADC_MinMax_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADC_MinMax,Vivado 2023.1" *)
module design_1_ADC_MinMax_0_2(ADCDATA, CHAMAX_OUT, CHBMAX_OUT, CHAMIN_OUT, 
  CHBMIN_OUT, DCKIN, CLKIN)
/* synthesis syn_black_box black_box_pad_pin="ADCDATA[11:0],CHAMAX_OUT[11:0],CHBMAX_OUT[11:0],CHAMIN_OUT[11:0],CHBMIN_OUT[11:0],DCKIN" */
/* synthesis syn_force_seq_prim="CLKIN" */;
  input [11:0]ADCDATA;
  output [11:0]CHAMAX_OUT;
  output [11:0]CHBMAX_OUT;
  output [11:0]CHAMIN_OUT;
  output [11:0]CHBMIN_OUT;
  input DCKIN;
  input CLKIN /* synthesis syn_isclock = 1 */;
endmodule
