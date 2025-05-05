// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun May  4 21:55:33 2025
// Host        : OCP001 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/project_1.gen/sources_1/bd/design_1/ip/design_1_SoftwareOverride_0_0/design_1_SoftwareOverride_0_0_sim_netlist.v
// Design      : design_1_SoftwareOverride_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SoftwareOverride_0_0,SoftwareOverride,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SoftwareOverride,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_SoftwareOverride_0_0
   (I_OnRate,
    I_OffRate,
    I_CLK,
    Output_Y);
  input [31:0]I_OnRate;
  input [31:0]I_OffRate;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I_CLK, FREQ_HZ 519994800, FREQ_TOLERANCE_HZ 0, PHASE 90.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input I_CLK;
  output Output_Y;

  wire I_CLK;
  wire [31:0]I_OffRate;
  wire [31:0]I_OnRate;
  wire Output_Y;

  design_1_SoftwareOverride_0_0_SoftwareOverride inst
       (.I_CLK(I_CLK),
        .I_OffRate(I_OffRate),
        .I_OnRate(I_OnRate),
        .ON_OFF_reg_0(Output_Y));
endmodule

(* ORIG_REF_NAME = "SoftwareOverride" *) 
module design_1_SoftwareOverride_0_0_SoftwareOverride
   (ON_OFF_reg_0,
    I_OnRate,
    I_OffRate,
    I_CLK);
  output ON_OFF_reg_0;
  input [31:0]I_OnRate;
  input [31:0]I_OffRate;
  input I_CLK;

  wire I_CLK;
  wire [31:0]I_OffRate;
  wire [31:0]I_OnRate;
  wire ON_OFF_i_10_n_0;
  wire ON_OFF_i_1_n_0;
  wire ON_OFF_i_3_n_0;
  wire ON_OFF_i_4_n_0;
  wire ON_OFF_i_5_n_0;
  wire ON_OFF_i_6_n_0;
  wire ON_OFF_i_7_n_0;
  wire ON_OFF_i_8_n_0;
  wire ON_OFF_i_9_n_0;
  wire ON_OFF_reg_0;
  wire R4;
  wire \R4[0]_i_10_n_0 ;
  wire \R4[0]_i_11_n_0 ;
  wire \R4[0]_i_12_n_0 ;
  wire \R4[0]_i_13_n_0 ;
  wire \R4[0]_i_14_n_0 ;
  wire \R4[0]_i_15_n_0 ;
  wire \R4[0]_i_16_n_0 ;
  wire \R4[0]_i_17_n_0 ;
  wire \R4[0]_i_18_n_0 ;
  wire \R4[0]_i_19_n_0 ;
  wire \R4[0]_i_20_n_0 ;
  wire \R4[0]_i_21_n_0 ;
  wire \R4[0]_i_22_n_0 ;
  wire \R4[0]_i_23_n_0 ;
  wire \R4[0]_i_24_n_0 ;
  wire \R4[0]_i_26_n_0 ;
  wire \R4[0]_i_27_n_0 ;
  wire \R4[0]_i_28_n_0 ;
  wire \R4[0]_i_29_n_0 ;
  wire \R4[0]_i_30_n_0 ;
  wire \R4[0]_i_31_n_0 ;
  wire \R4[0]_i_32_n_0 ;
  wire \R4[0]_i_33_n_0 ;
  wire \R4[0]_i_3_n_0 ;
  wire \R4[0]_i_4_n_0 ;
  wire \R4[0]_i_5_n_0 ;
  wire \R4[0]_i_6_n_0 ;
  wire \R4[0]_i_7_n_0 ;
  wire \R4[0]_i_8_n_0 ;
  wire \R4[0]_i_9_n_0 ;
  wire \R4[16]_i_10_n_0 ;
  wire \R4[16]_i_11_n_0 ;
  wire \R4[16]_i_12_n_0 ;
  wire \R4[16]_i_13_n_0 ;
  wire \R4[16]_i_14_n_0 ;
  wire \R4[16]_i_15_n_0 ;
  wire \R4[16]_i_16_n_0 ;
  wire \R4[16]_i_17_n_0 ;
  wire \R4[16]_i_2_n_0 ;
  wire \R4[16]_i_3_n_0 ;
  wire \R4[16]_i_4_n_0 ;
  wire \R4[16]_i_5_n_0 ;
  wire \R4[16]_i_6_n_0 ;
  wire \R4[16]_i_7_n_0 ;
  wire \R4[16]_i_8_n_0 ;
  wire \R4[16]_i_9_n_0 ;
  wire \R4[24]_i_10_n_0 ;
  wire \R4[24]_i_11_n_0 ;
  wire \R4[24]_i_12_n_0 ;
  wire \R4[24]_i_13_n_0 ;
  wire \R4[24]_i_14_n_0 ;
  wire \R4[24]_i_15_n_0 ;
  wire \R4[24]_i_16_n_0 ;
  wire \R4[24]_i_2_n_0 ;
  wire \R4[24]_i_3_n_0 ;
  wire \R4[24]_i_4_n_0 ;
  wire \R4[24]_i_5_n_0 ;
  wire \R4[24]_i_6_n_0 ;
  wire \R4[24]_i_7_n_0 ;
  wire \R4[24]_i_8_n_0 ;
  wire \R4[24]_i_9_n_0 ;
  wire \R4[8]_i_10_n_0 ;
  wire \R4[8]_i_11_n_0 ;
  wire \R4[8]_i_12_n_0 ;
  wire \R4[8]_i_13_n_0 ;
  wire \R4[8]_i_14_n_0 ;
  wire \R4[8]_i_15_n_0 ;
  wire \R4[8]_i_16_n_0 ;
  wire \R4[8]_i_17_n_0 ;
  wire \R4[8]_i_2_n_0 ;
  wire \R4[8]_i_3_n_0 ;
  wire \R4[8]_i_4_n_0 ;
  wire \R4[8]_i_5_n_0 ;
  wire \R4[8]_i_6_n_0 ;
  wire \R4[8]_i_7_n_0 ;
  wire \R4[8]_i_8_n_0 ;
  wire \R4[8]_i_9_n_0 ;
  wire [31:1]R4_reg;
  wire \R4_reg[0]_i_2_n_0 ;
  wire \R4_reg[0]_i_2_n_1 ;
  wire \R4_reg[0]_i_2_n_10 ;
  wire \R4_reg[0]_i_2_n_11 ;
  wire \R4_reg[0]_i_2_n_12 ;
  wire \R4_reg[0]_i_2_n_13 ;
  wire \R4_reg[0]_i_2_n_14 ;
  wire \R4_reg[0]_i_2_n_15 ;
  wire \R4_reg[0]_i_2_n_2 ;
  wire \R4_reg[0]_i_2_n_3 ;
  wire \R4_reg[0]_i_2_n_4 ;
  wire \R4_reg[0]_i_2_n_5 ;
  wire \R4_reg[0]_i_2_n_6 ;
  wire \R4_reg[0]_i_2_n_7 ;
  wire \R4_reg[0]_i_2_n_8 ;
  wire \R4_reg[0]_i_2_n_9 ;
  wire \R4_reg[16]_i_1_n_0 ;
  wire \R4_reg[16]_i_1_n_1 ;
  wire \R4_reg[16]_i_1_n_10 ;
  wire \R4_reg[16]_i_1_n_11 ;
  wire \R4_reg[16]_i_1_n_12 ;
  wire \R4_reg[16]_i_1_n_13 ;
  wire \R4_reg[16]_i_1_n_14 ;
  wire \R4_reg[16]_i_1_n_15 ;
  wire \R4_reg[16]_i_1_n_2 ;
  wire \R4_reg[16]_i_1_n_3 ;
  wire \R4_reg[16]_i_1_n_4 ;
  wire \R4_reg[16]_i_1_n_5 ;
  wire \R4_reg[16]_i_1_n_6 ;
  wire \R4_reg[16]_i_1_n_7 ;
  wire \R4_reg[16]_i_1_n_8 ;
  wire \R4_reg[16]_i_1_n_9 ;
  wire \R4_reg[24]_i_1_n_1 ;
  wire \R4_reg[24]_i_1_n_10 ;
  wire \R4_reg[24]_i_1_n_11 ;
  wire \R4_reg[24]_i_1_n_12 ;
  wire \R4_reg[24]_i_1_n_13 ;
  wire \R4_reg[24]_i_1_n_14 ;
  wire \R4_reg[24]_i_1_n_15 ;
  wire \R4_reg[24]_i_1_n_2 ;
  wire \R4_reg[24]_i_1_n_3 ;
  wire \R4_reg[24]_i_1_n_4 ;
  wire \R4_reg[24]_i_1_n_5 ;
  wire \R4_reg[24]_i_1_n_6 ;
  wire \R4_reg[24]_i_1_n_7 ;
  wire \R4_reg[24]_i_1_n_8 ;
  wire \R4_reg[24]_i_1_n_9 ;
  wire \R4_reg[8]_i_1_n_0 ;
  wire \R4_reg[8]_i_1_n_1 ;
  wire \R4_reg[8]_i_1_n_10 ;
  wire \R4_reg[8]_i_1_n_11 ;
  wire \R4_reg[8]_i_1_n_12 ;
  wire \R4_reg[8]_i_1_n_13 ;
  wire \R4_reg[8]_i_1_n_14 ;
  wire \R4_reg[8]_i_1_n_15 ;
  wire \R4_reg[8]_i_1_n_2 ;
  wire \R4_reg[8]_i_1_n_3 ;
  wire \R4_reg[8]_i_1_n_4 ;
  wire \R4_reg[8]_i_1_n_5 ;
  wire \R4_reg[8]_i_1_n_6 ;
  wire \R4_reg[8]_i_1_n_7 ;
  wire \R4_reg[8]_i_1_n_8 ;
  wire \R4_reg[8]_i_1_n_9 ;
  wire \R4_reg_n_0_[0] ;
  wire leqOp;
  wire leqOp_0;
  wire [7:7]\NLW_R4_reg[24]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    ON_OFF_i_1
       (.I0(leqOp_0),
        .I1(ON_OFF_reg_0),
        .O(ON_OFF_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ON_OFF_i_10
       (.I0(R4_reg[21]),
        .I1(R4_reg[20]),
        .I2(R4_reg[23]),
        .I3(R4_reg[22]),
        .O(ON_OFF_i_10_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ON_OFF_i_2
       (.I0(ON_OFF_i_3_n_0),
        .I1(ON_OFF_i_4_n_0),
        .I2(ON_OFF_i_5_n_0),
        .O(leqOp_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ON_OFF_i_3
       (.I0(ON_OFF_i_6_n_0),
        .I1(R4_reg[1]),
        .I2(R4_reg[3]),
        .I3(R4_reg[2]),
        .I4(ON_OFF_i_7_n_0),
        .I5(ON_OFF_i_8_n_0),
        .O(ON_OFF_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ON_OFF_i_4
       (.I0(R4_reg[26]),
        .I1(R4_reg[27]),
        .I2(R4_reg[24]),
        .I3(R4_reg[25]),
        .I4(ON_OFF_i_9_n_0),
        .O(ON_OFF_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ON_OFF_i_5
       (.I0(R4_reg[18]),
        .I1(R4_reg[19]),
        .I2(R4_reg[16]),
        .I3(R4_reg[17]),
        .I4(ON_OFF_i_10_n_0),
        .O(ON_OFF_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ON_OFF_i_6
       (.I0(R4_reg[5]),
        .I1(R4_reg[4]),
        .I2(R4_reg[7]),
        .I3(R4_reg[6]),
        .O(ON_OFF_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ON_OFF_i_7
       (.I0(R4_reg[13]),
        .I1(R4_reg[12]),
        .I2(R4_reg[15]),
        .I3(R4_reg[14]),
        .O(ON_OFF_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ON_OFF_i_8
       (.I0(R4_reg[9]),
        .I1(R4_reg[8]),
        .I2(R4_reg[11]),
        .I3(R4_reg[10]),
        .O(ON_OFF_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ON_OFF_i_9
       (.I0(R4_reg[29]),
        .I1(R4_reg[28]),
        .I2(R4_reg[31]),
        .I3(R4_reg[30]),
        .O(ON_OFF_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ON_OFF_reg
       (.C(I_CLK),
        .CE(1'b1),
        .D(ON_OFF_i_1_n_0),
        .Q(ON_OFF_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000222)) 
    \R4[0]_i_1 
       (.I0(leqOp_0),
        .I1(ON_OFF_reg_0),
        .I2(I_OnRate[0]),
        .I3(I_OnRate[1]),
        .I4(\R4[0]_i_3_n_0 ),
        .I5(\R4[0]_i_4_n_0 ),
        .O(R4));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[0]_i_10 
       (.I0(I_OffRate[2]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[2]),
        .I4(leqOp_0),
        .I5(R4_reg[2]),
        .O(\R4[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \R4[0]_i_11 
       (.I0(leqOp),
        .I1(I_OffRate[1]),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[1]),
        .I4(leqOp_0),
        .I5(R4_reg[1]),
        .O(\R4[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[0]_i_12 
       (.I0(I_OffRate[0]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[0]),
        .I4(leqOp_0),
        .I5(\R4_reg_n_0_[0] ),
        .O(\R4[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[0]_i_13 
       (.I0(R4_reg[7]),
        .I1(I_OnRate[7]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[7]),
        .I5(leqOp_0),
        .O(\R4[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[0]_i_14 
       (.I0(R4_reg[6]),
        .I1(I_OnRate[6]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[6]),
        .I5(leqOp_0),
        .O(\R4[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[0]_i_15 
       (.I0(R4_reg[5]),
        .I1(I_OnRate[5]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[5]),
        .I5(leqOp_0),
        .O(\R4[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[0]_i_16 
       (.I0(R4_reg[4]),
        .I1(I_OnRate[4]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[4]),
        .I5(leqOp_0),
        .O(\R4[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[0]_i_17 
       (.I0(R4_reg[3]),
        .I1(I_OnRate[3]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[3]),
        .I5(leqOp_0),
        .O(\R4[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[0]_i_18 
       (.I0(R4_reg[2]),
        .I1(I_OnRate[2]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[2]),
        .I5(leqOp_0),
        .O(\R4[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFC0C55555555)) 
    \R4[0]_i_19 
       (.I0(R4_reg[1]),
        .I1(I_OnRate[1]),
        .I2(ON_OFF_reg_0),
        .I3(I_OffRate[1]),
        .I4(leqOp),
        .I5(leqOp_0),
        .O(\R4[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[0]_i_20 
       (.I0(\R4_reg_n_0_[0] ),
        .I1(I_OnRate[0]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[0]),
        .I5(leqOp_0),
        .O(\R4[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \R4[0]_i_21 
       (.I0(I_OnRate[21]),
        .I1(I_OnRate[20]),
        .I2(I_OnRate[23]),
        .I3(I_OnRate[22]),
        .O(\R4[0]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \R4[0]_i_22 
       (.I0(I_OnRate[26]),
        .I1(I_OnRate[27]),
        .I2(I_OnRate[24]),
        .I3(I_OnRate[25]),
        .I4(\R4[0]_i_26_n_0 ),
        .O(\R4[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \R4[0]_i_23 
       (.I0(I_OnRate[3]),
        .I1(I_OnRate[2]),
        .I2(I_OnRate[6]),
        .I3(I_OnRate[7]),
        .I4(I_OnRate[4]),
        .I5(I_OnRate[5]),
        .O(\R4[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \R4[0]_i_24 
       (.I0(I_OnRate[13]),
        .I1(I_OnRate[12]),
        .I2(I_OnRate[15]),
        .I3(I_OnRate[14]),
        .O(\R4[0]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000007)) 
    \R4[0]_i_25 
       (.I0(I_OffRate[0]),
        .I1(I_OffRate[1]),
        .I2(\R4[0]_i_27_n_0 ),
        .I3(\R4[0]_i_28_n_0 ),
        .I4(\R4[0]_i_29_n_0 ),
        .O(leqOp));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \R4[0]_i_26 
       (.I0(I_OnRate[29]),
        .I1(I_OnRate[28]),
        .I2(I_OnRate[31]),
        .I3(I_OnRate[30]),
        .O(\R4[0]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \R4[0]_i_27 
       (.I0(I_OffRate[18]),
        .I1(I_OffRate[19]),
        .I2(I_OffRate[16]),
        .I3(I_OffRate[17]),
        .I4(\R4[0]_i_30_n_0 ),
        .O(\R4[0]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \R4[0]_i_28 
       (.I0(I_OffRate[26]),
        .I1(I_OffRate[27]),
        .I2(I_OffRate[24]),
        .I3(I_OffRate[25]),
        .I4(\R4[0]_i_31_n_0 ),
        .O(\R4[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \R4[0]_i_29 
       (.I0(\R4[0]_i_32_n_0 ),
        .I1(\R4[0]_i_33_n_0 ),
        .I2(I_OffRate[9]),
        .I3(I_OffRate[8]),
        .I4(I_OffRate[11]),
        .I5(I_OffRate[10]),
        .O(\R4[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \R4[0]_i_3 
       (.I0(\R4[0]_i_21_n_0 ),
        .I1(I_OnRate[17]),
        .I2(I_OnRate[16]),
        .I3(I_OnRate[19]),
        .I4(I_OnRate[18]),
        .I5(\R4[0]_i_22_n_0 ),
        .O(\R4[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \R4[0]_i_30 
       (.I0(I_OffRate[21]),
        .I1(I_OffRate[20]),
        .I2(I_OffRate[23]),
        .I3(I_OffRate[22]),
        .O(\R4[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \R4[0]_i_31 
       (.I0(I_OffRate[29]),
        .I1(I_OffRate[28]),
        .I2(I_OffRate[31]),
        .I3(I_OffRate[30]),
        .O(\R4[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \R4[0]_i_32 
       (.I0(I_OffRate[3]),
        .I1(I_OffRate[2]),
        .I2(I_OffRate[6]),
        .I3(I_OffRate[7]),
        .I4(I_OffRate[4]),
        .I5(I_OffRate[5]),
        .O(\R4[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \R4[0]_i_33 
       (.I0(I_OffRate[13]),
        .I1(I_OffRate[12]),
        .I2(I_OffRate[15]),
        .I3(I_OffRate[14]),
        .O(\R4[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \R4[0]_i_4 
       (.I0(\R4[0]_i_23_n_0 ),
        .I1(\R4[0]_i_24_n_0 ),
        .I2(I_OnRate[9]),
        .I3(I_OnRate[8]),
        .I4(I_OnRate[11]),
        .I5(I_OnRate[10]),
        .O(\R4[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[0]_i_5 
       (.I0(I_OffRate[7]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[7]),
        .I4(leqOp_0),
        .I5(R4_reg[7]),
        .O(\R4[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[0]_i_6 
       (.I0(I_OffRate[6]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[6]),
        .I4(leqOp_0),
        .I5(R4_reg[6]),
        .O(\R4[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[0]_i_7 
       (.I0(I_OffRate[5]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[5]),
        .I4(leqOp_0),
        .I5(R4_reg[5]),
        .O(\R4[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[0]_i_8 
       (.I0(I_OffRate[4]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[4]),
        .I4(leqOp_0),
        .I5(R4_reg[4]),
        .O(\R4[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[0]_i_9 
       (.I0(I_OffRate[3]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[3]),
        .I4(leqOp_0),
        .I5(R4_reg[3]),
        .O(\R4[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[16]_i_10 
       (.I0(R4_reg[23]),
        .I1(I_OnRate[23]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[23]),
        .I5(leqOp_0),
        .O(\R4[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[16]_i_11 
       (.I0(R4_reg[22]),
        .I1(I_OnRate[22]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[22]),
        .I5(leqOp_0),
        .O(\R4[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[16]_i_12 
       (.I0(R4_reg[21]),
        .I1(I_OnRate[21]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[21]),
        .I5(leqOp_0),
        .O(\R4[16]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[16]_i_13 
       (.I0(R4_reg[20]),
        .I1(I_OnRate[20]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[20]),
        .I5(leqOp_0),
        .O(\R4[16]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[16]_i_14 
       (.I0(R4_reg[19]),
        .I1(I_OnRate[19]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[19]),
        .I5(leqOp_0),
        .O(\R4[16]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[16]_i_15 
       (.I0(R4_reg[18]),
        .I1(I_OnRate[18]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[18]),
        .I5(leqOp_0),
        .O(\R4[16]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[16]_i_16 
       (.I0(R4_reg[17]),
        .I1(I_OnRate[17]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[17]),
        .I5(leqOp_0),
        .O(\R4[16]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[16]_i_17 
       (.I0(R4_reg[16]),
        .I1(I_OnRate[16]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[16]),
        .I5(leqOp_0),
        .O(\R4[16]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[16]_i_2 
       (.I0(I_OffRate[23]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[23]),
        .I4(leqOp_0),
        .I5(R4_reg[23]),
        .O(\R4[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[16]_i_3 
       (.I0(I_OffRate[22]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[22]),
        .I4(leqOp_0),
        .I5(R4_reg[22]),
        .O(\R4[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[16]_i_4 
       (.I0(I_OffRate[21]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[21]),
        .I4(leqOp_0),
        .I5(R4_reg[21]),
        .O(\R4[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[16]_i_5 
       (.I0(I_OffRate[20]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[20]),
        .I4(leqOp_0),
        .I5(R4_reg[20]),
        .O(\R4[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[16]_i_6 
       (.I0(I_OffRate[19]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[19]),
        .I4(leqOp_0),
        .I5(R4_reg[19]),
        .O(\R4[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[16]_i_7 
       (.I0(I_OffRate[18]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[18]),
        .I4(leqOp_0),
        .I5(R4_reg[18]),
        .O(\R4[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[16]_i_8 
       (.I0(I_OffRate[17]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[17]),
        .I4(leqOp_0),
        .I5(R4_reg[17]),
        .O(\R4[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[16]_i_9 
       (.I0(I_OffRate[16]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[16]),
        .I4(leqOp_0),
        .I5(R4_reg[16]),
        .O(\R4[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[24]_i_10 
       (.I0(R4_reg[30]),
        .I1(I_OnRate[30]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[30]),
        .I5(leqOp_0),
        .O(\R4[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[24]_i_11 
       (.I0(R4_reg[29]),
        .I1(I_OnRate[29]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[29]),
        .I5(leqOp_0),
        .O(\R4[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[24]_i_12 
       (.I0(R4_reg[28]),
        .I1(I_OnRate[28]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[28]),
        .I5(leqOp_0),
        .O(\R4[24]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[24]_i_13 
       (.I0(R4_reg[27]),
        .I1(I_OnRate[27]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[27]),
        .I5(leqOp_0),
        .O(\R4[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[24]_i_14 
       (.I0(R4_reg[26]),
        .I1(I_OnRate[26]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[26]),
        .I5(leqOp_0),
        .O(\R4[24]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[24]_i_15 
       (.I0(R4_reg[25]),
        .I1(I_OnRate[25]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[25]),
        .I5(leqOp_0),
        .O(\R4[24]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[24]_i_16 
       (.I0(R4_reg[24]),
        .I1(I_OnRate[24]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[24]),
        .I5(leqOp_0),
        .O(\R4[24]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[24]_i_2 
       (.I0(I_OffRate[30]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[30]),
        .I4(leqOp_0),
        .I5(R4_reg[30]),
        .O(\R4[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[24]_i_3 
       (.I0(I_OffRate[29]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[29]),
        .I4(leqOp_0),
        .I5(R4_reg[29]),
        .O(\R4[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[24]_i_4 
       (.I0(I_OffRate[28]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[28]),
        .I4(leqOp_0),
        .I5(R4_reg[28]),
        .O(\R4[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[24]_i_5 
       (.I0(I_OffRate[27]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[27]),
        .I4(leqOp_0),
        .I5(R4_reg[27]),
        .O(\R4[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[24]_i_6 
       (.I0(I_OffRate[26]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[26]),
        .I4(leqOp_0),
        .I5(R4_reg[26]),
        .O(\R4[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[24]_i_7 
       (.I0(I_OffRate[25]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[25]),
        .I4(leqOp_0),
        .I5(R4_reg[25]),
        .O(\R4[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[24]_i_8 
       (.I0(I_OffRate[24]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[24]),
        .I4(leqOp_0),
        .I5(R4_reg[24]),
        .O(\R4[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[24]_i_9 
       (.I0(R4_reg[31]),
        .I1(I_OnRate[31]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[31]),
        .I5(leqOp_0),
        .O(\R4[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[8]_i_10 
       (.I0(R4_reg[15]),
        .I1(I_OnRate[15]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[15]),
        .I5(leqOp_0),
        .O(\R4[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[8]_i_11 
       (.I0(R4_reg[14]),
        .I1(I_OnRate[14]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[14]),
        .I5(leqOp_0),
        .O(\R4[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[8]_i_12 
       (.I0(R4_reg[13]),
        .I1(I_OnRate[13]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[13]),
        .I5(leqOp_0),
        .O(\R4[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[8]_i_13 
       (.I0(R4_reg[12]),
        .I1(I_OnRate[12]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[12]),
        .I5(leqOp_0),
        .O(\R4[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[8]_i_14 
       (.I0(R4_reg[11]),
        .I1(I_OnRate[11]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[11]),
        .I5(leqOp_0),
        .O(\R4[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[8]_i_15 
       (.I0(R4_reg[10]),
        .I1(I_OnRate[10]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[10]),
        .I5(leqOp_0),
        .O(\R4[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[8]_i_16 
       (.I0(R4_reg[9]),
        .I1(I_OnRate[9]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[9]),
        .I5(leqOp_0),
        .O(\R4[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0CFC0C0C55555555)) 
    \R4[8]_i_17 
       (.I0(R4_reg[8]),
        .I1(I_OnRate[8]),
        .I2(ON_OFF_reg_0),
        .I3(leqOp),
        .I4(I_OffRate[8]),
        .I5(leqOp_0),
        .O(\R4[8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[8]_i_2 
       (.I0(I_OffRate[15]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[15]),
        .I4(leqOp_0),
        .I5(R4_reg[15]),
        .O(\R4[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[8]_i_3 
       (.I0(I_OffRate[14]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[14]),
        .I4(leqOp_0),
        .I5(R4_reg[14]),
        .O(\R4[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[8]_i_4 
       (.I0(I_OffRate[13]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[13]),
        .I4(leqOp_0),
        .I5(R4_reg[13]),
        .O(\R4[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[8]_i_5 
       (.I0(I_OffRate[12]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[12]),
        .I4(leqOp_0),
        .I5(R4_reg[12]),
        .O(\R4[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[8]_i_6 
       (.I0(I_OffRate[11]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[11]),
        .I4(leqOp_0),
        .I5(R4_reg[11]),
        .O(\R4[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[8]_i_7 
       (.I0(I_OffRate[10]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[10]),
        .I4(leqOp_0),
        .I5(R4_reg[10]),
        .O(\R4[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[8]_i_8 
       (.I0(I_OffRate[9]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[9]),
        .I4(leqOp_0),
        .I5(R4_reg[9]),
        .O(\R4[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \R4[8]_i_9 
       (.I0(I_OffRate[8]),
        .I1(leqOp),
        .I2(ON_OFF_reg_0),
        .I3(I_OnRate[8]),
        .I4(leqOp_0),
        .I5(R4_reg[8]),
        .O(\R4[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[0] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[0]_i_2_n_15 ),
        .Q(\R4_reg_n_0_[0] ),
        .R(R4));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \R4_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\R4_reg[0]_i_2_n_0 ,\R4_reg[0]_i_2_n_1 ,\R4_reg[0]_i_2_n_2 ,\R4_reg[0]_i_2_n_3 ,\R4_reg[0]_i_2_n_4 ,\R4_reg[0]_i_2_n_5 ,\R4_reg[0]_i_2_n_6 ,\R4_reg[0]_i_2_n_7 }),
        .DI({\R4[0]_i_5_n_0 ,\R4[0]_i_6_n_0 ,\R4[0]_i_7_n_0 ,\R4[0]_i_8_n_0 ,\R4[0]_i_9_n_0 ,\R4[0]_i_10_n_0 ,\R4[0]_i_11_n_0 ,\R4[0]_i_12_n_0 }),
        .O({\R4_reg[0]_i_2_n_8 ,\R4_reg[0]_i_2_n_9 ,\R4_reg[0]_i_2_n_10 ,\R4_reg[0]_i_2_n_11 ,\R4_reg[0]_i_2_n_12 ,\R4_reg[0]_i_2_n_13 ,\R4_reg[0]_i_2_n_14 ,\R4_reg[0]_i_2_n_15 }),
        .S({\R4[0]_i_13_n_0 ,\R4[0]_i_14_n_0 ,\R4[0]_i_15_n_0 ,\R4[0]_i_16_n_0 ,\R4[0]_i_17_n_0 ,\R4[0]_i_18_n_0 ,\R4[0]_i_19_n_0 ,\R4[0]_i_20_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[10] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[8]_i_1_n_13 ),
        .Q(R4_reg[10]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[11] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[8]_i_1_n_12 ),
        .Q(R4_reg[11]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[12] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[8]_i_1_n_11 ),
        .Q(R4_reg[12]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[13] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[8]_i_1_n_10 ),
        .Q(R4_reg[13]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[14] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[8]_i_1_n_9 ),
        .Q(R4_reg[14]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[15] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[8]_i_1_n_8 ),
        .Q(R4_reg[15]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[16] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[16]_i_1_n_15 ),
        .Q(R4_reg[16]),
        .R(R4));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \R4_reg[16]_i_1 
       (.CI(\R4_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\R4_reg[16]_i_1_n_0 ,\R4_reg[16]_i_1_n_1 ,\R4_reg[16]_i_1_n_2 ,\R4_reg[16]_i_1_n_3 ,\R4_reg[16]_i_1_n_4 ,\R4_reg[16]_i_1_n_5 ,\R4_reg[16]_i_1_n_6 ,\R4_reg[16]_i_1_n_7 }),
        .DI({\R4[16]_i_2_n_0 ,\R4[16]_i_3_n_0 ,\R4[16]_i_4_n_0 ,\R4[16]_i_5_n_0 ,\R4[16]_i_6_n_0 ,\R4[16]_i_7_n_0 ,\R4[16]_i_8_n_0 ,\R4[16]_i_9_n_0 }),
        .O({\R4_reg[16]_i_1_n_8 ,\R4_reg[16]_i_1_n_9 ,\R4_reg[16]_i_1_n_10 ,\R4_reg[16]_i_1_n_11 ,\R4_reg[16]_i_1_n_12 ,\R4_reg[16]_i_1_n_13 ,\R4_reg[16]_i_1_n_14 ,\R4_reg[16]_i_1_n_15 }),
        .S({\R4[16]_i_10_n_0 ,\R4[16]_i_11_n_0 ,\R4[16]_i_12_n_0 ,\R4[16]_i_13_n_0 ,\R4[16]_i_14_n_0 ,\R4[16]_i_15_n_0 ,\R4[16]_i_16_n_0 ,\R4[16]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[17] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[16]_i_1_n_14 ),
        .Q(R4_reg[17]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[18] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[16]_i_1_n_13 ),
        .Q(R4_reg[18]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[19] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[16]_i_1_n_12 ),
        .Q(R4_reg[19]),
        .R(R4));
  FDSE #(
    .INIT(1'b0)) 
    \R4_reg[1] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[0]_i_2_n_14 ),
        .Q(R4_reg[1]),
        .S(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[20] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[16]_i_1_n_11 ),
        .Q(R4_reg[20]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[21] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[16]_i_1_n_10 ),
        .Q(R4_reg[21]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[22] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[16]_i_1_n_9 ),
        .Q(R4_reg[22]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[23] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[16]_i_1_n_8 ),
        .Q(R4_reg[23]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[24] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[24]_i_1_n_15 ),
        .Q(R4_reg[24]),
        .R(R4));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \R4_reg[24]_i_1 
       (.CI(\R4_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_R4_reg[24]_i_1_CO_UNCONNECTED [7],\R4_reg[24]_i_1_n_1 ,\R4_reg[24]_i_1_n_2 ,\R4_reg[24]_i_1_n_3 ,\R4_reg[24]_i_1_n_4 ,\R4_reg[24]_i_1_n_5 ,\R4_reg[24]_i_1_n_6 ,\R4_reg[24]_i_1_n_7 }),
        .DI({1'b0,\R4[24]_i_2_n_0 ,\R4[24]_i_3_n_0 ,\R4[24]_i_4_n_0 ,\R4[24]_i_5_n_0 ,\R4[24]_i_6_n_0 ,\R4[24]_i_7_n_0 ,\R4[24]_i_8_n_0 }),
        .O({\R4_reg[24]_i_1_n_8 ,\R4_reg[24]_i_1_n_9 ,\R4_reg[24]_i_1_n_10 ,\R4_reg[24]_i_1_n_11 ,\R4_reg[24]_i_1_n_12 ,\R4_reg[24]_i_1_n_13 ,\R4_reg[24]_i_1_n_14 ,\R4_reg[24]_i_1_n_15 }),
        .S({\R4[24]_i_9_n_0 ,\R4[24]_i_10_n_0 ,\R4[24]_i_11_n_0 ,\R4[24]_i_12_n_0 ,\R4[24]_i_13_n_0 ,\R4[24]_i_14_n_0 ,\R4[24]_i_15_n_0 ,\R4[24]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[25] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[24]_i_1_n_14 ),
        .Q(R4_reg[25]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[26] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[24]_i_1_n_13 ),
        .Q(R4_reg[26]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[27] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[24]_i_1_n_12 ),
        .Q(R4_reg[27]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[28] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[24]_i_1_n_11 ),
        .Q(R4_reg[28]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[29] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[24]_i_1_n_10 ),
        .Q(R4_reg[29]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[2] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[0]_i_2_n_13 ),
        .Q(R4_reg[2]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[30] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[24]_i_1_n_9 ),
        .Q(R4_reg[30]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[31] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[24]_i_1_n_8 ),
        .Q(R4_reg[31]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[3] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[0]_i_2_n_12 ),
        .Q(R4_reg[3]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[4] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[0]_i_2_n_11 ),
        .Q(R4_reg[4]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[5] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[0]_i_2_n_10 ),
        .Q(R4_reg[5]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[6] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[0]_i_2_n_9 ),
        .Q(R4_reg[6]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[7] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[0]_i_2_n_8 ),
        .Q(R4_reg[7]),
        .R(R4));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[8] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[8]_i_1_n_15 ),
        .Q(R4_reg[8]),
        .R(R4));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \R4_reg[8]_i_1 
       (.CI(\R4_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\R4_reg[8]_i_1_n_0 ,\R4_reg[8]_i_1_n_1 ,\R4_reg[8]_i_1_n_2 ,\R4_reg[8]_i_1_n_3 ,\R4_reg[8]_i_1_n_4 ,\R4_reg[8]_i_1_n_5 ,\R4_reg[8]_i_1_n_6 ,\R4_reg[8]_i_1_n_7 }),
        .DI({\R4[8]_i_2_n_0 ,\R4[8]_i_3_n_0 ,\R4[8]_i_4_n_0 ,\R4[8]_i_5_n_0 ,\R4[8]_i_6_n_0 ,\R4[8]_i_7_n_0 ,\R4[8]_i_8_n_0 ,\R4[8]_i_9_n_0 }),
        .O({\R4_reg[8]_i_1_n_8 ,\R4_reg[8]_i_1_n_9 ,\R4_reg[8]_i_1_n_10 ,\R4_reg[8]_i_1_n_11 ,\R4_reg[8]_i_1_n_12 ,\R4_reg[8]_i_1_n_13 ,\R4_reg[8]_i_1_n_14 ,\R4_reg[8]_i_1_n_15 }),
        .S({\R4[8]_i_10_n_0 ,\R4[8]_i_11_n_0 ,\R4[8]_i_12_n_0 ,\R4[8]_i_13_n_0 ,\R4[8]_i_14_n_0 ,\R4[8]_i_15_n_0 ,\R4[8]_i_16_n_0 ,\R4[8]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \R4_reg[9] 
       (.C(I_CLK),
        .CE(1'b1),
        .D(\R4_reg[8]_i_1_n_14 ),
        .Q(R4_reg[9]),
        .R(R4));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
