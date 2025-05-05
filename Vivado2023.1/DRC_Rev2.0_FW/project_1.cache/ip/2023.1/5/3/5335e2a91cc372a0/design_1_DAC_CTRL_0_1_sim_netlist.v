// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 14 00:58:55 2025
// Host        : OCP001 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DAC_CTRL_0_1_sim_netlist.v
// Design      : design_1_DAC_CTRL_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAC_CTRL
   (DACDATA,
    DCKOUT,
    CLKIN,
    DATA_INB_MAX,
    DATA_INA_MIN);
  output [11:0]DACDATA;
  output DCKOUT;
  input CLKIN;
  input [11:0]DATA_INB_MAX;
  input [11:0]DATA_INA_MIN;

  wire CLKIN;
  wire [11:0]DACDATA;
  wire DACVAL20_in;
  wire [11:0]DATA_INA_MIN;
  wire [11:0]DATA_INB_MAX;
  wire DCKOUT;
  wire channel;
  wire isDCLK1_i_1_n_0;
  wire [11:0]p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[0]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[0]),
        .I2(DATA_INA_MIN[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[10]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[10]),
        .I2(DATA_INA_MIN[10]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[11]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[11]),
        .I2(DATA_INA_MIN[11]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[1]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[1]),
        .I2(DATA_INA_MIN[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[2]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[2]),
        .I2(DATA_INA_MIN[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[3]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[3]),
        .I2(DATA_INA_MIN[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[4]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[4]),
        .I2(DATA_INA_MIN[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[5]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[5]),
        .I2(DATA_INA_MIN[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[6]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[6]),
        .I2(DATA_INA_MIN[6]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[7]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[7]),
        .I2(DATA_INA_MIN[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[8]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[8]),
        .I2(DATA_INA_MIN[8]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    \DACVAL[9]_i_1 
       (.I0(channel),
        .I1(DATA_INB_MAX[9]),
        .I2(DATA_INA_MIN[9]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[0] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(DACDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[10] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(DACDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \DACVAL_reg[11] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(DACDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[1] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(DACDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[2] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(DACDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[3] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(DACDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[4] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(DACDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[5] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(DACDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[6] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(DACDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[7] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(DACDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[8] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(DACDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DACVAL_reg[9] 
       (.C(CLKIN),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(DACDATA[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    channel_i_1
       (.I0(channel),
        .O(DACVAL20_in));
  FDRE #(
    .INIT(1'b0)) 
    channel_reg
       (.C(CLKIN),
        .CE(1'b1),
        .D(DACVAL20_in),
        .Q(channel),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    isDCLK1_i_1
       (.I0(DCKOUT),
        .O(isDCLK1_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    isDCLK1_reg
       (.C(CLKIN),
        .CE(1'b1),
        .D(isDCLK1_i_1_n_0),
        .Q(DCKOUT),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_DAC_CTRL_0_1,DAC_CTRL,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DAC_CTRL,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  wire [11:0]DACDATA;
  wire [11:0]DATA_INA_MIN;
  wire [11:0]DATA_INB_MAX;
  wire DCKOUT;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAC_CTRL inst
       (.CLKIN(CLKIN),
        .DACDATA(DACDATA),
        .DATA_INA_MIN(DATA_INA_MIN),
        .DATA_INB_MAX(DATA_INB_MAX),
        .DCKOUT(DCKOUT));
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
