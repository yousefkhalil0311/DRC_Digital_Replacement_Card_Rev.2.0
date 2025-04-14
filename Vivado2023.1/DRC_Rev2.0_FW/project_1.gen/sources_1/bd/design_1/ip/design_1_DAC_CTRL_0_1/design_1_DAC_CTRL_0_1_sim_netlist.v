// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 14 14:16:29 2025
// Host        : OCP001 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_1/design_1_DAC_CTRL_0_1_sim_netlist.v
// Design      : design_1_DAC_CTRL_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_DAC_CTRL_0_1,DAC_CTRL,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DAC_CTRL,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_DAC_CTRL_0_1
   (CLKIN,
    CONSTMODE,
    DATA_INA_MIN,
    DATA_INB_MAX,
    DACDATA,
    DCKOUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLKIN;
  input CONSTMODE;
  input [11:0]DATA_INA_MIN;
  input [11:0]DATA_INB_MAX;
  output [11:0]DACDATA;
  output DCKOUT;

  wire CLKIN;
  wire CONSTMODE;
  wire [11:0]DACDATA;
  wire [11:0]DATA_INA_MIN;
  wire [11:0]DATA_INB_MAX;
  wire DCKOUT;

  design_1_DAC_CTRL_0_1_DAC_CTRL inst
       (.CLKIN(CLKIN),
        .CONSTMODE(CONSTMODE),
        .DACDATA(DACDATA),
        .DATA_INA_MIN(DATA_INA_MIN),
        .DATA_INB_MAX(DATA_INB_MAX),
        .DCKOUT(DCKOUT));
endmodule

(* ORIG_REF_NAME = "DAC_CTRL" *) 
module design_1_DAC_CTRL_0_1_DAC_CTRL
   (DACDATA,
    DCKOUT,
    CONSTMODE,
    CLKIN,
    DATA_INB_MAX,
    DATA_INA_MIN);
  output [11:0]DACDATA;
  output DCKOUT;
  input CONSTMODE;
  input CLKIN;
  input [11:0]DATA_INB_MAX;
  input [11:0]DATA_INA_MIN;

  wire CLKIN;
  wire CONSTMODE;
  wire [11:0]DACDATA;
  wire DACVAL1;
  wire DACVAL10_out;
  wire \DACVAL[0]_i_1_n_0 ;
  wire \DACVAL[10]_i_1_n_0 ;
  wire \DACVAL[11]_i_10_n_0 ;
  wire \DACVAL[11]_i_11_n_0 ;
  wire \DACVAL[11]_i_1_n_0 ;
  wire \DACVAL[11]_i_4_n_0 ;
  wire \DACVAL[11]_i_5_n_0 ;
  wire \DACVAL[11]_i_6_n_0 ;
  wire \DACVAL[11]_i_7_n_0 ;
  wire \DACVAL[11]_i_8_n_0 ;
  wire \DACVAL[11]_i_9_n_0 ;
  wire \DACVAL[1]_i_1_n_0 ;
  wire \DACVAL[2]_i_1_n_0 ;
  wire \DACVAL[3]_i_1_n_0 ;
  wire \DACVAL[4]_i_1_n_0 ;
  wire \DACVAL[5]_i_1_n_0 ;
  wire \DACVAL[6]_i_1_n_0 ;
  wire \DACVAL[7]_i_1_n_0 ;
  wire \DACVAL[8]_i_1_n_0 ;
  wire \DACVAL[9]_i_1_n_0 ;
  wire [11:0]DATA_INA_MIN;
  wire [11:0]DATA_INB_MAX;
  wire DCKOUT;
  wire channel;
  wire isDCLK1_i_2_n_0;
  wire isDCLK1_i_3_n_0;
  wire p_0_in;
  wire p_2_in;

  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[0]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[0]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[0]),
        .O(\DACVAL[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[10]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[10]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[10]),
        .O(\DACVAL[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[11]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[11]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[11]),
        .O(\DACVAL[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \DACVAL[11]_i_10 
       (.I0(DACDATA[9]),
        .I1(DATA_INA_MIN[9]),
        .I2(DATA_INA_MIN[11]),
        .I3(DACDATA[11]),
        .I4(DATA_INA_MIN[10]),
        .I5(DACDATA[10]),
        .O(\DACVAL[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \DACVAL[11]_i_11 
       (.I0(DACDATA[6]),
        .I1(DATA_INA_MIN[6]),
        .I2(DATA_INA_MIN[8]),
        .I3(DACDATA[8]),
        .I4(DATA_INA_MIN[7]),
        .I5(DACDATA[7]),
        .O(\DACVAL[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \DACVAL[11]_i_2 
       (.I0(\DACVAL[11]_i_4_n_0 ),
        .I1(\DACVAL[11]_i_5_n_0 ),
        .I2(\DACVAL[11]_i_6_n_0 ),
        .I3(\DACVAL[11]_i_7_n_0 ),
        .O(DACVAL10_out));
  LUT4 #(
    .INIT(16'h8000)) 
    \DACVAL[11]_i_3 
       (.I0(\DACVAL[11]_i_8_n_0 ),
        .I1(\DACVAL[11]_i_9_n_0 ),
        .I2(\DACVAL[11]_i_10_n_0 ),
        .I3(\DACVAL[11]_i_11_n_0 ),
        .O(DACVAL1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \DACVAL[11]_i_4 
       (.I0(DACDATA[3]),
        .I1(DATA_INB_MAX[3]),
        .I2(DATA_INB_MAX[5]),
        .I3(DACDATA[5]),
        .I4(DATA_INB_MAX[4]),
        .I5(DACDATA[4]),
        .O(\DACVAL[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \DACVAL[11]_i_5 
       (.I0(DACDATA[0]),
        .I1(DATA_INB_MAX[0]),
        .I2(DATA_INB_MAX[2]),
        .I3(DACDATA[2]),
        .I4(DATA_INB_MAX[1]),
        .I5(DACDATA[1]),
        .O(\DACVAL[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \DACVAL[11]_i_6 
       (.I0(DACDATA[9]),
        .I1(DATA_INB_MAX[9]),
        .I2(DATA_INB_MAX[11]),
        .I3(DACDATA[11]),
        .I4(DATA_INB_MAX[10]),
        .I5(DACDATA[10]),
        .O(\DACVAL[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \DACVAL[11]_i_7 
       (.I0(DACDATA[6]),
        .I1(DATA_INB_MAX[6]),
        .I2(DATA_INB_MAX[8]),
        .I3(DACDATA[8]),
        .I4(DATA_INB_MAX[7]),
        .I5(DACDATA[7]),
        .O(\DACVAL[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \DACVAL[11]_i_8 
       (.I0(DACDATA[3]),
        .I1(DATA_INA_MIN[3]),
        .I2(DATA_INA_MIN[5]),
        .I3(DACDATA[5]),
        .I4(DATA_INA_MIN[4]),
        .I5(DACDATA[4]),
        .O(\DACVAL[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \DACVAL[11]_i_9 
       (.I0(DACDATA[0]),
        .I1(DATA_INA_MIN[0]),
        .I2(DATA_INA_MIN[2]),
        .I3(DACDATA[2]),
        .I4(DATA_INA_MIN[1]),
        .I5(DACDATA[1]),
        .O(\DACVAL[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[1]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[1]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[1]),
        .O(\DACVAL[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[2]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[2]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[2]),
        .O(\DACVAL[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[3]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[3]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[3]),
        .O(\DACVAL[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[4]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[4]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[4]),
        .O(\DACVAL[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[5]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[5]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[5]),
        .O(\DACVAL[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[6]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[6]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[6]),
        .O(\DACVAL[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[7]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[7]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[7]),
        .O(\DACVAL[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[8]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[8]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[8]),
        .O(\DACVAL[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF74FF778B008800)) 
    \DACVAL[9]_i_1 
       (.I0(channel),
        .I1(CONSTMODE),
        .I2(DACVAL10_out),
        .I3(DATA_INB_MAX[9]),
        .I4(DACVAL1),
        .I5(DATA_INA_MIN[9]),
        .O(\DACVAL[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[0] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[0]_i_1_n_0 ),
        .Q(DACDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[10] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[10]_i_1_n_0 ),
        .Q(DACDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \DACVAL_reg[11] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[11]_i_1_n_0 ),
        .Q(DACDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[1] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[1]_i_1_n_0 ),
        .Q(DACDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[2] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[2]_i_1_n_0 ),
        .Q(DACDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[3] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[3]_i_1_n_0 ),
        .Q(DACDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[4] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[4]_i_1_n_0 ),
        .Q(DACDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[5] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[5]_i_1_n_0 ),
        .Q(DACDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[6] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[6]_i_1_n_0 ),
        .Q(DACDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[7] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[7]_i_1_n_0 ),
        .Q(DACDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[8] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[8]_i_1_n_0 ),
        .Q(DACDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[9] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(\DACVAL[9]_i_1_n_0 ),
        .Q(DACDATA[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    channel_i_1
       (.I0(channel),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    channel_reg
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_0_in),
        .Q(channel),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    isDCLK1_i_1
       (.I0(DCKOUT),
        .O(p_2_in));
  LUT2 #(
    .INIT(4'h1)) 
    isDCLK1_i_2
       (.I0(CONSTMODE),
        .I1(CLKIN),
        .O(isDCLK1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    isDCLK1_i_3
       (.I0(CLKIN),
        .I1(CONSTMODE),
        .O(isDCLK1_i_3_n_0));
  (* SYNTH_INFERRED *) 
  (* XILINX_LEGACY_PRIM = "FDCP_1" *) 
  FDCP #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    isDCLK1_reg
       (.C(CLKIN),
        .CLR(isDCLK1_i_2_n_0),
        .D(p_2_in),
        .PRE(isDCLK1_i_3_n_0),
        .Q(DCKOUT));
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
