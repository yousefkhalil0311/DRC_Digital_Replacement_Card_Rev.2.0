// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Mar 31 17:15:53 2025
// Host        : OCP001 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_2/design_1_DAC_CTRL_0_2_sim_netlist.v
// Design      : design_1_DAC_CTRL_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_DAC_CTRL_0_2,DAC_CTRL,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "DAC_CTRL,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_DAC_CTRL_0_2
   (CLKIN,
    DATA_INA,
    DATA_INB,
    DACDATA,
    DCKOUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLKIN;
  input [11:0]DATA_INA;
  input [11:0]DATA_INB;
  output [11:0]DACDATA;
  output DCKOUT;

  wire CLKIN;
  wire [11:0]DACDATA;
  wire [11:0]DATA_INA;
  wire [11:0]DATA_INB;
  wire DCKOUT;

  design_1_DAC_CTRL_0_2_DAC_CTRL inst
       (.CLKIN(CLKIN),
        .DACDATA(DACDATA),
        .DATA_INA(DATA_INA),
        .DATA_INB(DATA_INB),
        .DCKOUT(DCKOUT));
endmodule

(* ORIG_REF_NAME = "DAC_CTRL" *) 
module design_1_DAC_CTRL_0_2_DAC_CTRL
   (DACDATA,
    DCKOUT,
    CLKIN,
    DATA_INA,
    DATA_INB);
  output [11:0]DACDATA;
  output DCKOUT;
  input CLKIN;
  input [11:0]DATA_INA;
  input [11:0]DATA_INB;

  wire CLKIN;
  wire [11:0]DACDATA;
  wire DACVAL12_out;
  wire DACVAL1__11;
  wire \DACVAL[0]_i_1_n_0 ;
  wire \DACVAL[10]_i_1_n_0 ;
  wire \DACVAL[11]_i_1_n_0 ;
  wire \DACVAL[11]_i_4_n_0 ;
  wire \DACVAL[11]_i_5_n_0 ;
  wire \DACVAL[11]_i_6_n_0 ;
  wire \DACVAL[11]_i_7_n_0 ;
  wire \DACVAL[11]_i_8_n_0 ;
  wire \DACVAL[1]_i_1_n_0 ;
  wire \DACVAL[2]_i_1_n_0 ;
  wire \DACVAL[3]_i_1_n_0 ;
  wire \DACVAL[4]_i_1_n_0 ;
  wire \DACVAL[5]_i_1_n_0 ;
  wire \DACVAL[6]_i_1_n_0 ;
  wire \DACVAL[7]_i_1_n_0 ;
  wire \DACVAL[8]_i_1_n_0 ;
  wire \DACVAL[9]_i_1_n_0 ;
  wire [11:0]DATA_INA;
  wire [11:0]DATA_INB;
  wire DCKOUT;
  wire channel;
  wire isDCLK1_i_1_n_0;
  wire p_0_in;

  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[0]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[0]),
        .I2(DACDATA[0]),
        .I3(DATA_INB[0]),
        .I4(DACVAL1__11),
        .O(\DACVAL[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[10]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[10]),
        .I2(DACDATA[10]),
        .I3(DATA_INB[10]),
        .I4(DACVAL1__11),
        .O(\DACVAL[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[11]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[11]),
        .I2(DACDATA[11]),
        .I3(DATA_INB[11]),
        .I4(DACVAL1__11),
        .O(\DACVAL[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \DACVAL[11]_i_2 
       (.I0(\DACVAL[11]_i_4_n_0 ),
        .I1(DATA_INA[2]),
        .I2(DATA_INA[1]),
        .I3(DATA_INA[0]),
        .I4(\DACVAL[11]_i_5_n_0 ),
        .O(DACVAL12_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \DACVAL[11]_i_3 
       (.I0(channel),
        .I1(\DACVAL[11]_i_6_n_0 ),
        .I2(\DACVAL[11]_i_7_n_0 ),
        .I3(\DACVAL[11]_i_8_n_0 ),
        .O(DACVAL1__11));
  LUT4 #(
    .INIT(16'h0001)) 
    \DACVAL[11]_i_4 
       (.I0(DATA_INA[6]),
        .I1(DATA_INA[5]),
        .I2(DATA_INA[4]),
        .I3(DATA_INA[3]),
        .O(\DACVAL[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \DACVAL[11]_i_5 
       (.I0(DATA_INA[7]),
        .I1(DATA_INA[8]),
        .I2(DATA_INA[9]),
        .I3(DATA_INA[10]),
        .I4(channel),
        .I5(DATA_INA[11]),
        .O(\DACVAL[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DACVAL[11]_i_6 
       (.I0(DATA_INB[0]),
        .I1(DATA_INB[1]),
        .I2(DATA_INB[2]),
        .I3(DATA_INB[3]),
        .O(\DACVAL[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DACVAL[11]_i_7 
       (.I0(DATA_INB[4]),
        .I1(DATA_INB[5]),
        .I2(DATA_INB[6]),
        .I3(DATA_INB[7]),
        .O(\DACVAL[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \DACVAL[11]_i_8 
       (.I0(DATA_INB[8]),
        .I1(DATA_INB[9]),
        .I2(DATA_INB[11]),
        .I3(DATA_INB[10]),
        .O(\DACVAL[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[1]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[1]),
        .I2(DACDATA[1]),
        .I3(DATA_INB[1]),
        .I4(DACVAL1__11),
        .O(\DACVAL[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[2]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[2]),
        .I2(DACDATA[2]),
        .I3(DATA_INB[2]),
        .I4(DACVAL1__11),
        .O(\DACVAL[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[3]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[3]),
        .I2(DACDATA[3]),
        .I3(DATA_INB[3]),
        .I4(DACVAL1__11),
        .O(\DACVAL[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[4]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[4]),
        .I2(DACDATA[4]),
        .I3(DATA_INB[4]),
        .I4(DACVAL1__11),
        .O(\DACVAL[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[5]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[5]),
        .I2(DACDATA[5]),
        .I3(DATA_INB[5]),
        .I4(DACVAL1__11),
        .O(\DACVAL[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[6]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[6]),
        .I2(DACDATA[6]),
        .I3(DATA_INB[6]),
        .I4(DACVAL1__11),
        .O(\DACVAL[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[7]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[7]),
        .I2(DACDATA[7]),
        .I3(DATA_INB[7]),
        .I4(DACVAL1__11),
        .O(\DACVAL[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[8]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[8]),
        .I2(DACDATA[8]),
        .I3(DATA_INB[8]),
        .I4(DACVAL1__11),
        .O(\DACVAL[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF004E4E)) 
    \DACVAL[9]_i_1 
       (.I0(DACVAL12_out),
        .I1(DATA_INA[9]),
        .I2(DACDATA[9]),
        .I3(DATA_INB[9]),
        .I4(DACVAL1__11),
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
