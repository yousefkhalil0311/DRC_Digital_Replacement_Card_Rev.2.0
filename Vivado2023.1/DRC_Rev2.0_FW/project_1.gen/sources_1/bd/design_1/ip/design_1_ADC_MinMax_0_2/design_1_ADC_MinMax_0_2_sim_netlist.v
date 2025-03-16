// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Feb  5 01:30:37 2025
// Host        : OCP001 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_2/design_1_ADC_MinMax_0_2_sim_netlist.v
// Design      : design_1_ADC_MinMax_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ADC_MinMax_0_2,ADC_MinMax,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ADC_MinMax,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_ADC_MinMax_0_2
   (ADCDATA,
    CHAMAX_OUT,
    CHBMAX_OUT,
    CHAMIN_OUT,
    CHBMIN_OUT,
    DCKIN,
    CLKIN);
  input [11:0]ADCDATA;
  output [11:0]CHAMAX_OUT;
  output [11:0]CHBMAX_OUT;
  output [11:0]CHAMIN_OUT;
  output [11:0]CHBMIN_OUT;
  input DCKIN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIN, FREQ_HZ 519994800, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input CLKIN;

  wire [11:0]ADCDATA;
  wire [11:0]CHAMAX_OUT;
  wire [11:0]CHAMIN_OUT;
  wire [11:0]CHBMAX_OUT;
  wire [11:0]CHBMIN_OUT;
  wire CLKIN;
  wire DCKIN;

  design_1_ADC_MinMax_0_2_ADC_MinMax inst
       (.ADCDATA(ADCDATA),
        .CHAMAX_OUT(CHAMAX_OUT),
        .CHAMIN_OUT(CHAMIN_OUT),
        .CHBMAX_OUT(CHBMAX_OUT),
        .CHBMIN_OUT(CHBMIN_OUT),
        .CLKIN(CLKIN),
        .DCKIN(DCKIN));
endmodule

(* ORIG_REF_NAME = "ADC_MinMax" *) 
module design_1_ADC_MinMax_0_2_ADC_MinMax
   (CHAMAX_OUT,
    CHBMAX_OUT,
    CHAMIN_OUT,
    CHBMIN_OUT,
    DCKIN,
    ADCDATA,
    CLKIN);
  output [11:0]CHAMAX_OUT;
  output [11:0]CHBMAX_OUT;
  output [11:0]CHAMIN_OUT;
  output [11:0]CHBMIN_OUT;
  input DCKIN;
  input [11:0]ADCDATA;
  input CLKIN;

  wire [11:0]ADCDATA;
  wire CHAMAX;
  wire CHAMAX0_carry_i_10_n_0;
  wire CHAMAX0_carry_i_11_n_0;
  wire CHAMAX0_carry_i_12_n_0;
  wire CHAMAX0_carry_i_1_n_0;
  wire CHAMAX0_carry_i_2_n_0;
  wire CHAMAX0_carry_i_3_n_0;
  wire CHAMAX0_carry_i_4_n_0;
  wire CHAMAX0_carry_i_5_n_0;
  wire CHAMAX0_carry_i_6_n_0;
  wire CHAMAX0_carry_i_7_n_0;
  wire CHAMAX0_carry_i_8_n_0;
  wire CHAMAX0_carry_i_9_n_0;
  wire CHAMAX0_carry_n_2;
  wire CHAMAX0_carry_n_3;
  wire CHAMAX0_carry_n_4;
  wire CHAMAX0_carry_n_5;
  wire CHAMAX0_carry_n_6;
  wire CHAMAX0_carry_n_7;
  wire [11:0]CHAMAX_OUT;
  wire \CHAMAX_OUT_SIG[11]_i_1_n_0 ;
  wire \CHAMAX_OUT_SIG[11]_i_2_n_0 ;
  wire \CHAMAX_reg_n_0_[0] ;
  wire \CHAMAX_reg_n_0_[10] ;
  wire \CHAMAX_reg_n_0_[11] ;
  wire \CHAMAX_reg_n_0_[1] ;
  wire \CHAMAX_reg_n_0_[2] ;
  wire \CHAMAX_reg_n_0_[3] ;
  wire \CHAMAX_reg_n_0_[4] ;
  wire \CHAMAX_reg_n_0_[5] ;
  wire \CHAMAX_reg_n_0_[6] ;
  wire \CHAMAX_reg_n_0_[7] ;
  wire \CHAMAX_reg_n_0_[8] ;
  wire \CHAMAX_reg_n_0_[9] ;
  wire [11:0]CHAMIN;
  wire CHAMIN0_carry_i_10_n_0;
  wire CHAMIN0_carry_i_11_n_0;
  wire CHAMIN0_carry_i_12_n_0;
  wire CHAMIN0_carry_i_1_n_0;
  wire CHAMIN0_carry_i_2_n_0;
  wire CHAMIN0_carry_i_3_n_0;
  wire CHAMIN0_carry_i_4_n_0;
  wire CHAMIN0_carry_i_5_n_0;
  wire CHAMIN0_carry_i_6_n_0;
  wire CHAMIN0_carry_i_7_n_0;
  wire CHAMIN0_carry_i_8_n_0;
  wire CHAMIN0_carry_i_9_n_0;
  wire CHAMIN0_carry_n_2;
  wire CHAMIN0_carry_n_3;
  wire CHAMIN0_carry_n_4;
  wire CHAMIN0_carry_n_5;
  wire CHAMIN0_carry_n_6;
  wire CHAMIN0_carry_n_7;
  wire CHAMIN_0;
  wire [11:0]CHAMIN_OUT;
  wire [11:0]CHBMAX;
  wire CHBMAX0_carry_i_10_n_0;
  wire CHBMAX0_carry_i_11_n_0;
  wire CHBMAX0_carry_i_12_n_0;
  wire CHBMAX0_carry_i_1_n_0;
  wire CHBMAX0_carry_i_2_n_0;
  wire CHBMAX0_carry_i_3_n_0;
  wire CHBMAX0_carry_i_4_n_0;
  wire CHBMAX0_carry_i_5_n_0;
  wire CHBMAX0_carry_i_6_n_0;
  wire CHBMAX0_carry_i_7_n_0;
  wire CHBMAX0_carry_i_8_n_0;
  wire CHBMAX0_carry_i_9_n_0;
  wire CHBMAX0_carry_n_2;
  wire CHBMAX0_carry_n_3;
  wire CHBMAX0_carry_n_4;
  wire CHBMAX0_carry_n_5;
  wire CHBMAX0_carry_n_6;
  wire CHBMAX0_carry_n_7;
  wire \CHBMAX[11]_i_1_n_0 ;
  wire [11:0]CHBMAX_OUT;
  wire [11:0]CHBMIN;
  wire CHBMIN0_carry_i_10_n_0;
  wire CHBMIN0_carry_i_11_n_0;
  wire CHBMIN0_carry_i_12_n_0;
  wire CHBMIN0_carry_i_1_n_0;
  wire CHBMIN0_carry_i_2_n_0;
  wire CHBMIN0_carry_i_3_n_0;
  wire CHBMIN0_carry_i_4_n_0;
  wire CHBMIN0_carry_i_5_n_0;
  wire CHBMIN0_carry_i_6_n_0;
  wire CHBMIN0_carry_i_7_n_0;
  wire CHBMIN0_carry_i_8_n_0;
  wire CHBMIN0_carry_i_9_n_0;
  wire CHBMIN0_carry_n_2;
  wire CHBMIN0_carry_n_3;
  wire CHBMIN0_carry_n_4;
  wire CHBMIN0_carry_n_5;
  wire CHBMIN0_carry_n_6;
  wire CHBMIN0_carry_n_7;
  wire \CHBMIN[11]_i_1_n_0 ;
  wire [11:0]CHBMIN_OUT;
  wire CLKIN;
  wire DCKIN;
  wire \count520[9]_i_1_n_0 ;
  wire \count520[9]_i_3_n_0 ;
  wire [9:3]count520_reg;
  wire \count520_reg_n_0_[0] ;
  wire \count520_reg_n_0_[1] ;
  wire \count520_reg_n_0_[2] ;
  wire [9:0]plusOp;
  wire [7:6]NLW_CHAMAX0_carry_CO_UNCONNECTED;
  wire [7:0]NLW_CHAMAX0_carry_O_UNCONNECTED;
  wire [7:6]NLW_CHAMIN0_carry_CO_UNCONNECTED;
  wire [7:0]NLW_CHAMIN0_carry_O_UNCONNECTED;
  wire [7:6]NLW_CHBMAX0_carry_CO_UNCONNECTED;
  wire [7:0]NLW_CHBMAX0_carry_O_UNCONNECTED;
  wire [7:6]NLW_CHBMIN0_carry_CO_UNCONNECTED;
  wire [7:0]NLW_CHBMIN0_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 CHAMAX0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_CHAMAX0_carry_CO_UNCONNECTED[7:6],CHAMAX0_carry_n_2,CHAMAX0_carry_n_3,CHAMAX0_carry_n_4,CHAMAX0_carry_n_5,CHAMAX0_carry_n_6,CHAMAX0_carry_n_7}),
        .DI({1'b0,1'b0,CHAMAX0_carry_i_1_n_0,CHAMAX0_carry_i_2_n_0,CHAMAX0_carry_i_3_n_0,CHAMAX0_carry_i_4_n_0,CHAMAX0_carry_i_5_n_0,CHAMAX0_carry_i_6_n_0}),
        .O(NLW_CHAMAX0_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,CHAMAX0_carry_i_7_n_0,CHAMAX0_carry_i_8_n_0,CHAMAX0_carry_i_9_n_0,CHAMAX0_carry_i_10_n_0,CHAMAX0_carry_i_11_n_0,CHAMAX0_carry_i_12_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMAX0_carry_i_1
       (.I0(ADCDATA[10]),
        .I1(\CHAMAX_reg_n_0_[10] ),
        .I2(ADCDATA[11]),
        .I3(\CHAMAX_reg_n_0_[11] ),
        .O(CHAMAX0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMAX0_carry_i_10
       (.I0(ADCDATA[4]),
        .I1(\CHAMAX_reg_n_0_[4] ),
        .I2(ADCDATA[5]),
        .I3(\CHAMAX_reg_n_0_[5] ),
        .O(CHAMAX0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMAX0_carry_i_11
       (.I0(ADCDATA[2]),
        .I1(\CHAMAX_reg_n_0_[2] ),
        .I2(ADCDATA[3]),
        .I3(\CHAMAX_reg_n_0_[3] ),
        .O(CHAMAX0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMAX0_carry_i_12
       (.I0(ADCDATA[0]),
        .I1(\CHAMAX_reg_n_0_[0] ),
        .I2(ADCDATA[1]),
        .I3(\CHAMAX_reg_n_0_[1] ),
        .O(CHAMAX0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMAX0_carry_i_2
       (.I0(ADCDATA[8]),
        .I1(\CHAMAX_reg_n_0_[8] ),
        .I2(\CHAMAX_reg_n_0_[9] ),
        .I3(ADCDATA[9]),
        .O(CHAMAX0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMAX0_carry_i_3
       (.I0(ADCDATA[6]),
        .I1(\CHAMAX_reg_n_0_[6] ),
        .I2(\CHAMAX_reg_n_0_[7] ),
        .I3(ADCDATA[7]),
        .O(CHAMAX0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMAX0_carry_i_4
       (.I0(ADCDATA[4]),
        .I1(\CHAMAX_reg_n_0_[4] ),
        .I2(\CHAMAX_reg_n_0_[5] ),
        .I3(ADCDATA[5]),
        .O(CHAMAX0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMAX0_carry_i_5
       (.I0(ADCDATA[2]),
        .I1(\CHAMAX_reg_n_0_[2] ),
        .I2(\CHAMAX_reg_n_0_[3] ),
        .I3(ADCDATA[3]),
        .O(CHAMAX0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMAX0_carry_i_6
       (.I0(ADCDATA[0]),
        .I1(\CHAMAX_reg_n_0_[0] ),
        .I2(\CHAMAX_reg_n_0_[1] ),
        .I3(ADCDATA[1]),
        .O(CHAMAX0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMAX0_carry_i_7
       (.I0(ADCDATA[10]),
        .I1(\CHAMAX_reg_n_0_[10] ),
        .I2(\CHAMAX_reg_n_0_[11] ),
        .I3(ADCDATA[11]),
        .O(CHAMAX0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMAX0_carry_i_8
       (.I0(ADCDATA[8]),
        .I1(\CHAMAX_reg_n_0_[8] ),
        .I2(ADCDATA[9]),
        .I3(\CHAMAX_reg_n_0_[9] ),
        .O(CHAMAX0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMAX0_carry_i_9
       (.I0(ADCDATA[6]),
        .I1(\CHAMAX_reg_n_0_[6] ),
        .I2(ADCDATA[7]),
        .I3(\CHAMAX_reg_n_0_[7] ),
        .O(CHAMAX0_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \CHAMAX[11]_i_1 
       (.I0(DCKIN),
        .I1(CHAMAX0_carry_n_2),
        .O(CHAMAX));
  LUT3 #(
    .INIT(8'h08)) 
    \CHAMAX_OUT_SIG[11]_i_1 
       (.I0(\CHAMAX_OUT_SIG[11]_i_2_n_0 ),
        .I1(count520_reg[9]),
        .I2(DCKIN),
        .O(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \CHAMAX_OUT_SIG[11]_i_2 
       (.I0(count520_reg[5]),
        .I1(count520_reg[4]),
        .I2(count520_reg[8]),
        .I3(count520_reg[3]),
        .I4(count520_reg[6]),
        .I5(count520_reg[7]),
        .O(\CHAMAX_OUT_SIG[11]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[0] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[0] ),
        .Q(CHAMAX_OUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[10] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[10] ),
        .Q(CHAMAX_OUT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[11] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[11] ),
        .Q(CHAMAX_OUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[1] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[1] ),
        .Q(CHAMAX_OUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[2] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[2] ),
        .Q(CHAMAX_OUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[3] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[3] ),
        .Q(CHAMAX_OUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[4] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[4] ),
        .Q(CHAMAX_OUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[5] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[5] ),
        .Q(CHAMAX_OUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[6] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[6] ),
        .Q(CHAMAX_OUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[7] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[7] ),
        .Q(CHAMAX_OUT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[8] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[8] ),
        .Q(CHAMAX_OUT[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_OUT_SIG_reg[9] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(\CHAMAX_reg_n_0_[9] ),
        .Q(CHAMAX_OUT[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[0] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[0]),
        .Q(\CHAMAX_reg_n_0_[0] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[10] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[10]),
        .Q(\CHAMAX_reg_n_0_[10] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMAX_reg[11] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[11]),
        .Q(\CHAMAX_reg_n_0_[11] ),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[1] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[1]),
        .Q(\CHAMAX_reg_n_0_[1] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[2] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[2]),
        .Q(\CHAMAX_reg_n_0_[2] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[3] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[3]),
        .Q(\CHAMAX_reg_n_0_[3] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[4] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[4]),
        .Q(\CHAMAX_reg_n_0_[4] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[5] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[5]),
        .Q(\CHAMAX_reg_n_0_[5] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[6] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[6]),
        .Q(\CHAMAX_reg_n_0_[6] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[7] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[7]),
        .Q(\CHAMAX_reg_n_0_[7] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[8] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[8]),
        .Q(\CHAMAX_reg_n_0_[8] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMAX_reg[9] 
       (.C(CLKIN),
        .CE(CHAMAX),
        .D(ADCDATA[9]),
        .Q(\CHAMAX_reg_n_0_[9] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 CHAMIN0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_CHAMIN0_carry_CO_UNCONNECTED[7:6],CHAMIN0_carry_n_2,CHAMIN0_carry_n_3,CHAMIN0_carry_n_4,CHAMIN0_carry_n_5,CHAMIN0_carry_n_6,CHAMIN0_carry_n_7}),
        .DI({1'b0,1'b0,CHAMIN0_carry_i_1_n_0,CHAMIN0_carry_i_2_n_0,CHAMIN0_carry_i_3_n_0,CHAMIN0_carry_i_4_n_0,CHAMIN0_carry_i_5_n_0,CHAMIN0_carry_i_6_n_0}),
        .O(NLW_CHAMIN0_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,CHAMIN0_carry_i_7_n_0,CHAMIN0_carry_i_8_n_0,CHAMIN0_carry_i_9_n_0,CHAMIN0_carry_i_10_n_0,CHAMIN0_carry_i_11_n_0,CHAMIN0_carry_i_12_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMIN0_carry_i_1
       (.I0(CHAMIN[10]),
        .I1(ADCDATA[10]),
        .I2(CHAMIN[11]),
        .I3(ADCDATA[11]),
        .O(CHAMIN0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMIN0_carry_i_10
       (.I0(CHAMIN[4]),
        .I1(ADCDATA[4]),
        .I2(CHAMIN[5]),
        .I3(ADCDATA[5]),
        .O(CHAMIN0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMIN0_carry_i_11
       (.I0(CHAMIN[2]),
        .I1(ADCDATA[2]),
        .I2(CHAMIN[3]),
        .I3(ADCDATA[3]),
        .O(CHAMIN0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMIN0_carry_i_12
       (.I0(CHAMIN[0]),
        .I1(ADCDATA[0]),
        .I2(CHAMIN[1]),
        .I3(ADCDATA[1]),
        .O(CHAMIN0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMIN0_carry_i_2
       (.I0(CHAMIN[8]),
        .I1(ADCDATA[8]),
        .I2(ADCDATA[9]),
        .I3(CHAMIN[9]),
        .O(CHAMIN0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMIN0_carry_i_3
       (.I0(CHAMIN[6]),
        .I1(ADCDATA[6]),
        .I2(ADCDATA[7]),
        .I3(CHAMIN[7]),
        .O(CHAMIN0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMIN0_carry_i_4
       (.I0(CHAMIN[4]),
        .I1(ADCDATA[4]),
        .I2(ADCDATA[5]),
        .I3(CHAMIN[5]),
        .O(CHAMIN0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMIN0_carry_i_5
       (.I0(CHAMIN[2]),
        .I1(ADCDATA[2]),
        .I2(ADCDATA[3]),
        .I3(CHAMIN[3]),
        .O(CHAMIN0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHAMIN0_carry_i_6
       (.I0(CHAMIN[0]),
        .I1(ADCDATA[0]),
        .I2(ADCDATA[1]),
        .I3(CHAMIN[1]),
        .O(CHAMIN0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMIN0_carry_i_7
       (.I0(CHAMIN[10]),
        .I1(ADCDATA[10]),
        .I2(ADCDATA[11]),
        .I3(CHAMIN[11]),
        .O(CHAMIN0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMIN0_carry_i_8
       (.I0(CHAMIN[8]),
        .I1(ADCDATA[8]),
        .I2(CHAMIN[9]),
        .I3(ADCDATA[9]),
        .O(CHAMIN0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHAMIN0_carry_i_9
       (.I0(CHAMIN[6]),
        .I1(ADCDATA[6]),
        .I2(CHAMIN[7]),
        .I3(ADCDATA[7]),
        .O(CHAMIN0_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \CHAMIN[11]_i_1 
       (.I0(DCKIN),
        .I1(CHAMIN0_carry_n_2),
        .O(CHAMIN_0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[0] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[0]),
        .Q(CHAMIN_OUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[10] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[10]),
        .Q(CHAMIN_OUT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[11] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[11]),
        .Q(CHAMIN_OUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[1] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[1]),
        .Q(CHAMIN_OUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[2] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[2]),
        .Q(CHAMIN_OUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[3] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[3]),
        .Q(CHAMIN_OUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[4] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[4]),
        .Q(CHAMIN_OUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[5] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[5]),
        .Q(CHAMIN_OUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[6] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[6]),
        .Q(CHAMIN_OUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[7] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[7]),
        .Q(CHAMIN_OUT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[8] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[8]),
        .Q(CHAMIN_OUT[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_OUT_SIG_reg[9] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHAMIN[9]),
        .Q(CHAMIN_OUT[9]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[0] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[0]),
        .Q(CHAMIN[0]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[10] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[10]),
        .Q(CHAMIN[10]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHAMIN_reg[11] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[11]),
        .Q(CHAMIN[11]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[1] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[1]),
        .Q(CHAMIN[1]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[2] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[2]),
        .Q(CHAMIN[2]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[3] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[3]),
        .Q(CHAMIN[3]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[4] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[4]),
        .Q(CHAMIN[4]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[5] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[5]),
        .Q(CHAMIN[5]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[6] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[6]),
        .Q(CHAMIN[6]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[7] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[7]),
        .Q(CHAMIN[7]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[8] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[8]),
        .Q(CHAMIN[8]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHAMIN_reg[9] 
       (.C(CLKIN),
        .CE(CHAMIN_0),
        .D(ADCDATA[9]),
        .Q(CHAMIN[9]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 CHBMAX0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_CHBMAX0_carry_CO_UNCONNECTED[7:6],CHBMAX0_carry_n_2,CHBMAX0_carry_n_3,CHBMAX0_carry_n_4,CHBMAX0_carry_n_5,CHBMAX0_carry_n_6,CHBMAX0_carry_n_7}),
        .DI({1'b0,1'b0,CHBMAX0_carry_i_1_n_0,CHBMAX0_carry_i_2_n_0,CHBMAX0_carry_i_3_n_0,CHBMAX0_carry_i_4_n_0,CHBMAX0_carry_i_5_n_0,CHBMAX0_carry_i_6_n_0}),
        .O(NLW_CHBMAX0_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,CHBMAX0_carry_i_7_n_0,CHBMAX0_carry_i_8_n_0,CHBMAX0_carry_i_9_n_0,CHBMAX0_carry_i_10_n_0,CHBMAX0_carry_i_11_n_0,CHBMAX0_carry_i_12_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMAX0_carry_i_1
       (.I0(ADCDATA[10]),
        .I1(CHBMAX[10]),
        .I2(ADCDATA[11]),
        .I3(CHBMAX[11]),
        .O(CHBMAX0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMAX0_carry_i_10
       (.I0(ADCDATA[4]),
        .I1(CHBMAX[4]),
        .I2(ADCDATA[5]),
        .I3(CHBMAX[5]),
        .O(CHBMAX0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMAX0_carry_i_11
       (.I0(ADCDATA[2]),
        .I1(CHBMAX[2]),
        .I2(ADCDATA[3]),
        .I3(CHBMAX[3]),
        .O(CHBMAX0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMAX0_carry_i_12
       (.I0(ADCDATA[0]),
        .I1(CHBMAX[0]),
        .I2(ADCDATA[1]),
        .I3(CHBMAX[1]),
        .O(CHBMAX0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMAX0_carry_i_2
       (.I0(ADCDATA[8]),
        .I1(CHBMAX[8]),
        .I2(CHBMAX[9]),
        .I3(ADCDATA[9]),
        .O(CHBMAX0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMAX0_carry_i_3
       (.I0(ADCDATA[6]),
        .I1(CHBMAX[6]),
        .I2(CHBMAX[7]),
        .I3(ADCDATA[7]),
        .O(CHBMAX0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMAX0_carry_i_4
       (.I0(ADCDATA[4]),
        .I1(CHBMAX[4]),
        .I2(CHBMAX[5]),
        .I3(ADCDATA[5]),
        .O(CHBMAX0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMAX0_carry_i_5
       (.I0(ADCDATA[2]),
        .I1(CHBMAX[2]),
        .I2(CHBMAX[3]),
        .I3(ADCDATA[3]),
        .O(CHBMAX0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMAX0_carry_i_6
       (.I0(ADCDATA[0]),
        .I1(CHBMAX[0]),
        .I2(CHBMAX[1]),
        .I3(ADCDATA[1]),
        .O(CHBMAX0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMAX0_carry_i_7
       (.I0(ADCDATA[10]),
        .I1(CHBMAX[10]),
        .I2(CHBMAX[11]),
        .I3(ADCDATA[11]),
        .O(CHBMAX0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMAX0_carry_i_8
       (.I0(ADCDATA[8]),
        .I1(CHBMAX[8]),
        .I2(ADCDATA[9]),
        .I3(CHBMAX[9]),
        .O(CHBMAX0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMAX0_carry_i_9
       (.I0(ADCDATA[6]),
        .I1(CHBMAX[6]),
        .I2(ADCDATA[7]),
        .I3(CHBMAX[7]),
        .O(CHBMAX0_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \CHBMAX[11]_i_1 
       (.I0(CHBMAX0_carry_n_2),
        .I1(DCKIN),
        .O(\CHBMAX[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[0] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[0]),
        .Q(CHBMAX_OUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[10] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[10]),
        .Q(CHBMAX_OUT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[11] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[11]),
        .Q(CHBMAX_OUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[1] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[1]),
        .Q(CHBMAX_OUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[2] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[2]),
        .Q(CHBMAX_OUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[3] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[3]),
        .Q(CHBMAX_OUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[4] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[4]),
        .Q(CHBMAX_OUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[5] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[5]),
        .Q(CHBMAX_OUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[6] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[6]),
        .Q(CHBMAX_OUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[7] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[7]),
        .Q(CHBMAX_OUT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[8] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[8]),
        .Q(CHBMAX_OUT[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_OUT_SIG_reg[9] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMAX[9]),
        .Q(CHBMAX_OUT[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[0] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[0]),
        .Q(CHBMAX[0]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[10] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[10]),
        .Q(CHBMAX[10]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMAX_reg[11] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[11]),
        .Q(CHBMAX[11]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[1] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[1]),
        .Q(CHBMAX[1]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[2] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[2]),
        .Q(CHBMAX[2]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[3] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[3]),
        .Q(CHBMAX[3]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[4] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[4]),
        .Q(CHBMAX[4]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[5] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[5]),
        .Q(CHBMAX[5]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[6] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[6]),
        .Q(CHBMAX[6]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[7] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[7]),
        .Q(CHBMAX[7]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[8] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[8]),
        .Q(CHBMAX[8]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMAX_reg[9] 
       (.C(CLKIN),
        .CE(\CHBMAX[11]_i_1_n_0 ),
        .D(ADCDATA[9]),
        .Q(CHBMAX[9]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 CHBMIN0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_CHBMIN0_carry_CO_UNCONNECTED[7:6],CHBMIN0_carry_n_2,CHBMIN0_carry_n_3,CHBMIN0_carry_n_4,CHBMIN0_carry_n_5,CHBMIN0_carry_n_6,CHBMIN0_carry_n_7}),
        .DI({1'b0,1'b0,CHBMIN0_carry_i_1_n_0,CHBMIN0_carry_i_2_n_0,CHBMIN0_carry_i_3_n_0,CHBMIN0_carry_i_4_n_0,CHBMIN0_carry_i_5_n_0,CHBMIN0_carry_i_6_n_0}),
        .O(NLW_CHBMIN0_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,CHBMIN0_carry_i_7_n_0,CHBMIN0_carry_i_8_n_0,CHBMIN0_carry_i_9_n_0,CHBMIN0_carry_i_10_n_0,CHBMIN0_carry_i_11_n_0,CHBMIN0_carry_i_12_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMIN0_carry_i_1
       (.I0(CHBMIN[10]),
        .I1(ADCDATA[10]),
        .I2(CHBMIN[11]),
        .I3(ADCDATA[11]),
        .O(CHBMIN0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMIN0_carry_i_10
       (.I0(CHBMIN[4]),
        .I1(ADCDATA[4]),
        .I2(CHBMIN[5]),
        .I3(ADCDATA[5]),
        .O(CHBMIN0_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMIN0_carry_i_11
       (.I0(CHBMIN[2]),
        .I1(ADCDATA[2]),
        .I2(CHBMIN[3]),
        .I3(ADCDATA[3]),
        .O(CHBMIN0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMIN0_carry_i_12
       (.I0(CHBMIN[0]),
        .I1(ADCDATA[0]),
        .I2(CHBMIN[1]),
        .I3(ADCDATA[1]),
        .O(CHBMIN0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMIN0_carry_i_2
       (.I0(CHBMIN[8]),
        .I1(ADCDATA[8]),
        .I2(ADCDATA[9]),
        .I3(CHBMIN[9]),
        .O(CHBMIN0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMIN0_carry_i_3
       (.I0(CHBMIN[6]),
        .I1(ADCDATA[6]),
        .I2(ADCDATA[7]),
        .I3(CHBMIN[7]),
        .O(CHBMIN0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMIN0_carry_i_4
       (.I0(CHBMIN[4]),
        .I1(ADCDATA[4]),
        .I2(ADCDATA[5]),
        .I3(CHBMIN[5]),
        .O(CHBMIN0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMIN0_carry_i_5
       (.I0(CHBMIN[2]),
        .I1(ADCDATA[2]),
        .I2(ADCDATA[3]),
        .I3(CHBMIN[3]),
        .O(CHBMIN0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    CHBMIN0_carry_i_6
       (.I0(CHBMIN[0]),
        .I1(ADCDATA[0]),
        .I2(ADCDATA[1]),
        .I3(CHBMIN[1]),
        .O(CHBMIN0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMIN0_carry_i_7
       (.I0(CHBMIN[10]),
        .I1(ADCDATA[10]),
        .I2(ADCDATA[11]),
        .I3(CHBMIN[11]),
        .O(CHBMIN0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMIN0_carry_i_8
       (.I0(CHBMIN[8]),
        .I1(ADCDATA[8]),
        .I2(CHBMIN[9]),
        .I3(ADCDATA[9]),
        .O(CHBMIN0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    CHBMIN0_carry_i_9
       (.I0(CHBMIN[6]),
        .I1(ADCDATA[6]),
        .I2(CHBMIN[7]),
        .I3(ADCDATA[7]),
        .O(CHBMIN0_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \CHBMIN[11]_i_1 
       (.I0(CHBMIN0_carry_n_2),
        .I1(DCKIN),
        .O(\CHBMIN[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[0] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[0]),
        .Q(CHBMIN_OUT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[10] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[10]),
        .Q(CHBMIN_OUT[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[11] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[11]),
        .Q(CHBMIN_OUT[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[1] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[1]),
        .Q(CHBMIN_OUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[2] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[2]),
        .Q(CHBMIN_OUT[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[3] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[3]),
        .Q(CHBMIN_OUT[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[4] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[4]),
        .Q(CHBMIN_OUT[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[5] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[5]),
        .Q(CHBMIN_OUT[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[6] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[6]),
        .Q(CHBMIN_OUT[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[7] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[7]),
        .Q(CHBMIN_OUT[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[8] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[8]),
        .Q(CHBMIN_OUT[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_OUT_SIG_reg[9] 
       (.C(CLKIN),
        .CE(\CHAMAX_OUT_SIG[11]_i_1_n_0 ),
        .D(CHBMIN[9]),
        .Q(CHBMIN_OUT[9]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[0] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[0]),
        .Q(CHBMIN[0]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[10] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[10]),
        .Q(CHBMIN[10]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CHBMIN_reg[11] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[11]),
        .Q(CHBMIN[11]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[1] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[1]),
        .Q(CHBMIN[1]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[2] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[2]),
        .Q(CHBMIN[2]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[3] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[3]),
        .Q(CHBMIN[3]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[4] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[4]),
        .Q(CHBMIN[4]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[5] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[5]),
        .Q(CHBMIN[5]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[6] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[6]),
        .Q(CHBMIN[6]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[7] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[7]),
        .Q(CHBMIN[7]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[8] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[8]),
        .Q(CHBMIN[8]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CHBMIN_reg[9] 
       (.C(CLKIN),
        .CE(\CHBMIN[11]_i_1_n_0 ),
        .D(ADCDATA[9]),
        .Q(CHBMIN[9]),
        .S(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count520[0]_i_1 
       (.I0(\count520_reg_n_0_[0] ),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count520[1]_i_1 
       (.I0(\count520_reg_n_0_[0] ),
        .I1(\count520_reg_n_0_[1] ),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count520[2]_i_1 
       (.I0(\count520_reg_n_0_[0] ),
        .I1(\count520_reg_n_0_[1] ),
        .I2(\count520_reg_n_0_[2] ),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count520[3]_i_1 
       (.I0(\count520_reg_n_0_[1] ),
        .I1(\count520_reg_n_0_[0] ),
        .I2(\count520_reg_n_0_[2] ),
        .I3(count520_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count520[4]_i_1 
       (.I0(\count520_reg_n_0_[2] ),
        .I1(\count520_reg_n_0_[0] ),
        .I2(\count520_reg_n_0_[1] ),
        .I3(count520_reg[3]),
        .I4(count520_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count520[5]_i_1 
       (.I0(count520_reg[3]),
        .I1(\count520_reg_n_0_[1] ),
        .I2(\count520_reg_n_0_[0] ),
        .I3(\count520_reg_n_0_[2] ),
        .I4(count520_reg[4]),
        .I5(count520_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count520[6]_i_1 
       (.I0(\count520[9]_i_3_n_0 ),
        .I1(count520_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count520[7]_i_1 
       (.I0(\count520[9]_i_3_n_0 ),
        .I1(count520_reg[6]),
        .I2(count520_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count520[8]_i_1 
       (.I0(count520_reg[6]),
        .I1(\count520[9]_i_3_n_0 ),
        .I2(count520_reg[7]),
        .I3(count520_reg[8]),
        .O(plusOp[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \count520[9]_i_1 
       (.I0(DCKIN),
        .O(\count520[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count520[9]_i_2 
       (.I0(count520_reg[7]),
        .I1(\count520[9]_i_3_n_0 ),
        .I2(count520_reg[6]),
        .I3(count520_reg[8]),
        .I4(count520_reg[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count520[9]_i_3 
       (.I0(count520_reg[5]),
        .I1(count520_reg[3]),
        .I2(\count520_reg_n_0_[1] ),
        .I3(\count520_reg_n_0_[0] ),
        .I4(\count520_reg_n_0_[2] ),
        .I5(count520_reg[4]),
        .O(\count520[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[0] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[0]),
        .Q(\count520_reg_n_0_[0] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[1] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[1]),
        .Q(\count520_reg_n_0_[1] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[2] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[2]),
        .Q(\count520_reg_n_0_[2] ),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[3] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[3]),
        .Q(count520_reg[3]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[4] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[4]),
        .Q(count520_reg[4]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[5] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[5]),
        .Q(count520_reg[5]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[6] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[6]),
        .Q(count520_reg[6]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[7] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[7]),
        .Q(count520_reg[7]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[8] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[8]),
        .Q(count520_reg[8]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count520_reg[9] 
       (.C(CLKIN),
        .CE(\count520[9]_i_1_n_0 ),
        .D(plusOp[9]),
        .Q(count520_reg[9]),
        .R(\CHAMAX_OUT_SIG[11]_i_1_n_0 ));
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
