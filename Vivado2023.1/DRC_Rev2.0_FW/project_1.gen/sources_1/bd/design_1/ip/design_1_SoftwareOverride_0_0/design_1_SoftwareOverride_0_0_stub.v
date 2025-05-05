// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun May  4 21:55:33 2025
// Host        : OCP001 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/project_1.gen/sources_1/bd/design_1/ip/design_1_SoftwareOverride_0_0/design_1_SoftwareOverride_0_0_stub.v
// Design      : design_1_SoftwareOverride_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SoftwareOverride,Vivado 2023.1" *)
module design_1_SoftwareOverride_0_0(I_OnRate, I_OffRate, I_CLK, Output_Y)
/* synthesis syn_black_box black_box_pad_pin="I_OnRate[31:0],I_OffRate[31:0],Output_Y" */
/* synthesis syn_force_seq_prim="I_CLK" */;
  input [31:0]I_OnRate;
  input [31:0]I_OffRate;
  input I_CLK /* synthesis syn_isclock = 1 */;
  output Output_Y;
endmodule
