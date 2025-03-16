// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Nov  4 10:55:10 2024
// Host        : DESKTOP-JTT5U02 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/NYorr/Downloads/project_1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0_sim_netlist.v
// Design      : design_1_util_ds_buf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_util_ds_buf_0_0,util_ds_buf,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "util_ds_buf,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_util_ds_buf_0_0
   (IOBUF_IO_T,
    IOBUF_IO_I,
    IOBUF_IO_O,
    IOBUF_IO_IO);
  input [5:0]IOBUF_IO_T;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IOBUF_IO_I CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IOBUF_IO_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input [5:0]IOBUF_IO_I;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IOBUF_IO_O CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IOBUF_IO_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_util_ds_buf_0_0_IOBUF_IO_O, INSERT_VIP 0" *) output [5:0]IOBUF_IO_O;
  inout [5:0]IOBUF_IO_IO;

  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [5:0]IOBUF_IO_I;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [5:0]IOBUF_IO_IO;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [5:0]IOBUF_IO_O;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [5:0]IOBUF_IO_T;
  wire [5:0]NLW_U0_BUFGCE_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFG_FABRIC_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFG_GT_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFG_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFG_PS_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFHCE_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFH_O_UNCONNECTED;
  wire [5:0]NLW_U0_IBUFDS_GTME5_O_UNCONNECTED;
  wire [5:0]NLW_U0_IBUFDS_GTME5_ODIV2_UNCONNECTED;
  wire [5:0]NLW_U0_IBUFDS_GTM_O_UNCONNECTED;
  wire [5:0]NLW_U0_IBUFDS_GTM_ODIV2_UNCONNECTED;
  wire [5:0]NLW_U0_IBUF_DS_ODIV2_UNCONNECTED;
  wire [5:0]NLW_U0_IBUF_OUT_UNCONNECTED;
  wire [5:0]NLW_U0_IOBUF_DS_N_UNCONNECTED;
  wire [5:0]NLW_U0_IOBUF_DS_P_UNCONNECTED;
  wire [5:0]NLW_U0_MBUFG_GT_O1_UNCONNECTED;
  wire [5:0]NLW_U0_MBUFG_GT_O2_UNCONNECTED;
  wire [5:0]NLW_U0_MBUFG_GT_O3_UNCONNECTED;
  wire [5:0]NLW_U0_MBUFG_GT_O4_UNCONNECTED;
  wire [5:0]NLW_U0_MBUFG_PS_O1_UNCONNECTED;
  wire [5:0]NLW_U0_MBUFG_PS_O2_UNCONNECTED;
  wire [5:0]NLW_U0_MBUFG_PS_O3_UNCONNECTED;
  wire [5:0]NLW_U0_MBUFG_PS_O4_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE3_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE3_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE3_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE3_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE4_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE4_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE4_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE4_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE5_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE5_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE5_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE5_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTME5_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTME5_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTME5_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTME5_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTM_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTM_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTM_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTM_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUF_DS_N_UNCONNECTED;
  wire [5:0]NLW_U0_OBUF_DS_P_UNCONNECTED;

  (* C_BUFGCE_DIV = "1" *) 
  (* C_BUFG_GT_SYNC = "0" *) 
  (* C_BUF_TYPE = "IOBUF" *) 
  (* C_MODE = "PERFORMANCE" *) 
  (* C_OBUFDS_GTE5_ADV = "2'b00" *) 
  (* C_REFCLK_ICNTL_TX = "5'b00000" *) 
  (* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) 
  (* C_SIZE = "6" *) 
  design_1_util_ds_buf_0_0_util_ds_buf U0
       (.BUFGCE_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFGCE_CLR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFGCE_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFGCE_O(NLW_U0_BUFGCE_O_UNCONNECTED[5:0]),
        .BUFG_FABRIC_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_FABRIC_O(NLW_U0_BUFG_FABRIC_O_UNCONNECTED[5:0]),
        .BUFG_GT_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BUFG_GT_CEMASK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_CLR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_CLRMASK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_DIV({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_O(NLW_U0_BUFG_GT_O_UNCONNECTED[5:0]),
        .BUFG_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_O(NLW_U0_BUFG_O_UNCONNECTED[5:0]),
        .BUFG_PS_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_PS_O(NLW_U0_BUFG_PS_O_UNCONNECTED[5:0]),
        .BUFHCE_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFHCE_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFHCE_O(NLW_U0_BUFHCE_O_UNCONNECTED[5:0]),
        .BUFH_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFH_O(NLW_U0_BUFH_O_UNCONNECTED[5:0]),
        .IBUFDS_GTME5_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTME5_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTME5_IB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTME5_O(NLW_U0_IBUFDS_GTME5_O_UNCONNECTED[5:0]),
        .IBUFDS_GTME5_ODIV2(NLW_U0_IBUFDS_GTME5_ODIV2_UNCONNECTED[5:0]),
        .IBUFDS_GTM_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTM_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTM_IB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTM_O(NLW_U0_IBUFDS_GTM_O_UNCONNECTED[5:0]),
        .IBUFDS_GTM_ODIV2(NLW_U0_IBUFDS_GTM_ODIV2_UNCONNECTED[5:0]),
        .IBUF_DS_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUF_DS_N({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUF_DS_ODIV2(NLW_U0_IBUF_DS_ODIV2_UNCONNECTED[5:0]),
        .IBUF_DS_P({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUF_OUT(NLW_U0_IBUF_OUT_UNCONNECTED[5:0]),
        .IOBUF_DS_N(NLW_U0_IOBUF_DS_N_UNCONNECTED[5:0]),
        .IOBUF_DS_P(NLW_U0_IOBUF_DS_P_UNCONNECTED[5:0]),
        .IOBUF_IO_I(IOBUF_IO_I),
        .IOBUF_IO_IO(IOBUF_IO_IO),
        .IOBUF_IO_O(IOBUF_IO_O),
        .IOBUF_IO_T(IOBUF_IO_T),
        .MBUFG_GT_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .MBUFG_GT_CEMASK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MBUFG_GT_CLR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MBUFG_GT_CLRB_LEAF({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .MBUFG_GT_CLRMASK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MBUFG_GT_DIV({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MBUFG_GT_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MBUFG_GT_O1(NLW_U0_MBUFG_GT_O1_UNCONNECTED[5:0]),
        .MBUFG_GT_O2(NLW_U0_MBUFG_GT_O2_UNCONNECTED[5:0]),
        .MBUFG_GT_O3(NLW_U0_MBUFG_GT_O3_UNCONNECTED[5:0]),
        .MBUFG_GT_O4(NLW_U0_MBUFG_GT_O4_UNCONNECTED[5:0]),
        .MBUFG_PS_CLRB_LEAF({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .MBUFG_PS_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MBUFG_PS_O1(NLW_U0_MBUFG_PS_O1_UNCONNECTED[5:0]),
        .MBUFG_PS_O2(NLW_U0_MBUFG_PS_O2_UNCONNECTED[5:0]),
        .MBUFG_PS_O3(NLW_U0_MBUFG_PS_O3_UNCONNECTED[5:0]),
        .MBUFG_PS_O4(NLW_U0_MBUFG_PS_O4_UNCONNECTED[5:0]),
        .OBUFDS_GTE3_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE3_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE3_ADV_O(NLW_U0_OBUFDS_GTE3_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE3_ADV_OB(NLW_U0_OBUFDS_GTE3_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE3_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE3_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE3_O(NLW_U0_OBUFDS_GTE3_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE3_OB(NLW_U0_OBUFDS_GTE3_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE4_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE4_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE4_ADV_O(NLW_U0_OBUFDS_GTE4_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE4_ADV_OB(NLW_U0_OBUFDS_GTE4_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE4_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE4_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE4_O(NLW_U0_OBUFDS_GTE4_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE4_OB(NLW_U0_OBUFDS_GTE4_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE5_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE5_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE5_ADV_O(NLW_U0_OBUFDS_GTE5_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE5_ADV_OB(NLW_U0_OBUFDS_GTE5_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE5_ADV_RXRECCLKSEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE5_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE5_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE5_O(NLW_U0_OBUFDS_GTE5_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE5_OB(NLW_U0_OBUFDS_GTE5_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTME5_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTME5_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTME5_ADV_O(NLW_U0_OBUFDS_GTME5_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTME5_ADV_OB(NLW_U0_OBUFDS_GTME5_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTME5_ADV_RXRECCLKSEL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTME5_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTME5_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTME5_O(NLW_U0_OBUFDS_GTME5_O_UNCONNECTED[5:0]),
        .OBUFDS_GTME5_OB(NLW_U0_OBUFDS_GTME5_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTM_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTM_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTM_ADV_O(NLW_U0_OBUFDS_GTM_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTM_ADV_OB(NLW_U0_OBUFDS_GTM_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTM_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTM_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTM_O(NLW_U0_OBUFDS_GTM_O_UNCONNECTED[5:0]),
        .OBUFDS_GTM_OB(NLW_U0_OBUFDS_GTM_OB_UNCONNECTED[5:0]),
        .OBUF_DS_N(NLW_U0_OBUF_DS_N_UNCONNECTED[5:0]),
        .OBUF_DS_P(NLW_U0_OBUF_DS_P_UNCONNECTED[5:0]),
        .OBUF_IN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXRECCLK_SEL_GTE3_ADV({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXRECCLK_SEL_GTE4_ADV({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* C_BUFGCE_DIV = "1" *) (* C_BUFG_GT_SYNC = "0" *) (* C_BUF_TYPE = "IOBUF" *) 
(* C_MODE = "PERFORMANCE" *) (* C_OBUFDS_GTE5_ADV = "2'b00" *) (* C_REFCLK_ICNTL_TX = "5'b00000" *) 
(* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) (* C_SIZE = "6" *) (* ORIG_REF_NAME = "util_ds_buf" *) 
module design_1_util_ds_buf_0_0_util_ds_buf
   (IBUF_DS_P,
    IBUF_DS_N,
    IBUF_OUT,
    IBUF_DS_ODIV2,
    IBUF_DS_CEB,
    OBUF_IN,
    OBUF_DS_P,
    OBUF_DS_N,
    IOBUF_DS_P,
    IOBUF_DS_N,
    IOBUF_IO_T,
    IOBUF_IO_I,
    IOBUF_IO_O,
    IOBUF_IO_IO,
    BUFG_I,
    BUFG_O,
    BUFGCE_I,
    BUFGCE_CE,
    BUFGCE_O,
    BUFGCE_CLR,
    BUFH_I,
    BUFH_O,
    BUFHCE_I,
    BUFHCE_CE,
    BUFHCE_O,
    BUFG_FABRIC_I,
    BUFG_FABRIC_O,
    OBUFDS_GTE5_CEB,
    OBUFDS_GTE5_I,
    OBUFDS_GTE5_O,
    OBUFDS_GTE5_OB,
    OBUFDS_GTE5_ADV_CEB,
    OBUFDS_GTE5_ADV_I,
    OBUFDS_GTE5_ADV_O,
    OBUFDS_GTE5_ADV_OB,
    OBUFDS_GTE5_ADV_RXRECCLKSEL,
    OBUFDS_GTE3_CEB,
    OBUFDS_GTE3_I,
    OBUFDS_GTE3_O,
    OBUFDS_GTE3_OB,
    OBUFDS_GTE3_ADV_CEB,
    OBUFDS_GTE3_ADV_I,
    OBUFDS_GTE3_ADV_O,
    OBUFDS_GTE3_ADV_OB,
    RXRECCLK_SEL_GTE3_ADV,
    OBUFDS_GTE4_CEB,
    OBUFDS_GTE4_I,
    OBUFDS_GTE4_O,
    OBUFDS_GTE4_OB,
    OBUFDS_GTE4_ADV_CEB,
    OBUFDS_GTE4_ADV_I,
    OBUFDS_GTE4_ADV_O,
    OBUFDS_GTE4_ADV_OB,
    RXRECCLK_SEL_GTE4_ADV,
    IBUFDS_GTM_O,
    IBUFDS_GTM_ODIV2,
    IBUFDS_GTM_CEB,
    IBUFDS_GTM_I,
    IBUFDS_GTM_IB,
    OBUFDS_GTM_O,
    OBUFDS_GTM_OB,
    OBUFDS_GTM_CEB,
    OBUFDS_GTM_I,
    OBUFDS_GTM_ADV_CEB,
    OBUFDS_GTM_ADV_I,
    OBUFDS_GTM_ADV_O,
    OBUFDS_GTM_ADV_OB,
    IBUFDS_GTME5_O,
    IBUFDS_GTME5_ODIV2,
    IBUFDS_GTME5_CEB,
    IBUFDS_GTME5_I,
    IBUFDS_GTME5_IB,
    OBUFDS_GTME5_CEB,
    OBUFDS_GTME5_I,
    OBUFDS_GTME5_O,
    OBUFDS_GTME5_OB,
    OBUFDS_GTME5_ADV_CEB,
    OBUFDS_GTME5_ADV_I,
    OBUFDS_GTME5_ADV_O,
    OBUFDS_GTME5_ADV_OB,
    OBUFDS_GTME5_ADV_RXRECCLKSEL,
    BUFG_GT_I,
    BUFG_GT_CE,
    BUFG_GT_CEMASK,
    BUFG_GT_CLR,
    BUFG_GT_CLRMASK,
    BUFG_GT_DIV,
    BUFG_GT_O,
    BUFG_PS_I,
    BUFG_PS_O,
    MBUFG_GT_I,
    MBUFG_GT_CE,
    MBUFG_GT_CEMASK,
    MBUFG_GT_CLR,
    MBUFG_GT_CLRB_LEAF,
    MBUFG_GT_CLRMASK,
    MBUFG_GT_DIV,
    MBUFG_GT_O1,
    MBUFG_GT_O2,
    MBUFG_GT_O3,
    MBUFG_GT_O4,
    MBUFG_PS_I,
    MBUFG_PS_CLRB_LEAF,
    MBUFG_PS_O1,
    MBUFG_PS_O2,
    MBUFG_PS_O3,
    MBUFG_PS_O4);
  input [5:0]IBUF_DS_P;
  input [5:0]IBUF_DS_N;
  output [5:0]IBUF_OUT;
  output [5:0]IBUF_DS_ODIV2;
  input [5:0]IBUF_DS_CEB;
  input [5:0]OBUF_IN;
  output [5:0]OBUF_DS_P;
  output [5:0]OBUF_DS_N;
  inout [5:0]IOBUF_DS_P;
  inout [5:0]IOBUF_DS_N;
  input [5:0]IOBUF_IO_T;
  input [5:0]IOBUF_IO_I;
  output [5:0]IOBUF_IO_O;
  inout [5:0]IOBUF_IO_IO;
  input [5:0]BUFG_I;
  output [5:0]BUFG_O;
  input [5:0]BUFGCE_I;
  input [5:0]BUFGCE_CE;
  output [5:0]BUFGCE_O;
  input [5:0]BUFGCE_CLR;
  input [5:0]BUFH_I;
  output [5:0]BUFH_O;
  input [5:0]BUFHCE_I;
  input [5:0]BUFHCE_CE;
  output [5:0]BUFHCE_O;
  input [5:0]BUFG_FABRIC_I;
  output [5:0]BUFG_FABRIC_O;
  input [5:0]OBUFDS_GTE5_CEB;
  input [5:0]OBUFDS_GTE5_I;
  output [5:0]OBUFDS_GTE5_O;
  output [5:0]OBUFDS_GTE5_OB;
  input [5:0]OBUFDS_GTE5_ADV_CEB;
  input [23:0]OBUFDS_GTE5_ADV_I;
  output [5:0]OBUFDS_GTE5_ADV_O;
  output [5:0]OBUFDS_GTE5_ADV_OB;
  input [11:0]OBUFDS_GTE5_ADV_RXRECCLKSEL;
  input [5:0]OBUFDS_GTE3_CEB;
  input [5:0]OBUFDS_GTE3_I;
  output [5:0]OBUFDS_GTE3_O;
  output [5:0]OBUFDS_GTE3_OB;
  input [5:0]OBUFDS_GTE3_ADV_CEB;
  input [23:0]OBUFDS_GTE3_ADV_I;
  output [5:0]OBUFDS_GTE3_ADV_O;
  output [5:0]OBUFDS_GTE3_ADV_OB;
  input [11:0]RXRECCLK_SEL_GTE3_ADV;
  input [5:0]OBUFDS_GTE4_CEB;
  input [5:0]OBUFDS_GTE4_I;
  output [5:0]OBUFDS_GTE4_O;
  output [5:0]OBUFDS_GTE4_OB;
  input [5:0]OBUFDS_GTE4_ADV_CEB;
  input [23:0]OBUFDS_GTE4_ADV_I;
  output [5:0]OBUFDS_GTE4_ADV_O;
  output [5:0]OBUFDS_GTE4_ADV_OB;
  input [11:0]RXRECCLK_SEL_GTE4_ADV;
  output [5:0]IBUFDS_GTM_O;
  output [5:0]IBUFDS_GTM_ODIV2;
  input [5:0]IBUFDS_GTM_CEB;
  input [5:0]IBUFDS_GTM_I;
  input [5:0]IBUFDS_GTM_IB;
  output [5:0]OBUFDS_GTM_O;
  output [5:0]OBUFDS_GTM_OB;
  input [5:0]OBUFDS_GTM_CEB;
  input [5:0]OBUFDS_GTM_I;
  input [5:0]OBUFDS_GTM_ADV_CEB;
  input [23:0]OBUFDS_GTM_ADV_I;
  output [5:0]OBUFDS_GTM_ADV_O;
  output [5:0]OBUFDS_GTM_ADV_OB;
  output [5:0]IBUFDS_GTME5_O;
  output [5:0]IBUFDS_GTME5_ODIV2;
  input [5:0]IBUFDS_GTME5_CEB;
  input [5:0]IBUFDS_GTME5_I;
  input [5:0]IBUFDS_GTME5_IB;
  input [5:0]OBUFDS_GTME5_CEB;
  input [5:0]OBUFDS_GTME5_I;
  output [5:0]OBUFDS_GTME5_O;
  output [5:0]OBUFDS_GTME5_OB;
  input [5:0]OBUFDS_GTME5_ADV_CEB;
  input [23:0]OBUFDS_GTME5_ADV_I;
  output [5:0]OBUFDS_GTME5_ADV_O;
  output [5:0]OBUFDS_GTME5_ADV_OB;
  input [11:0]OBUFDS_GTME5_ADV_RXRECCLKSEL;
  input [5:0]BUFG_GT_I;
  input [5:0]BUFG_GT_CE;
  input [5:0]BUFG_GT_CEMASK;
  input [5:0]BUFG_GT_CLR;
  input [5:0]BUFG_GT_CLRMASK;
  input [17:0]BUFG_GT_DIV;
  output [5:0]BUFG_GT_O;
  input [5:0]BUFG_PS_I;
  output [5:0]BUFG_PS_O;
  input [5:0]MBUFG_GT_I;
  input [5:0]MBUFG_GT_CE;
  input [5:0]MBUFG_GT_CEMASK;
  input [5:0]MBUFG_GT_CLR;
  input [5:0]MBUFG_GT_CLRB_LEAF;
  input [5:0]MBUFG_GT_CLRMASK;
  input [17:0]MBUFG_GT_DIV;
  output [5:0]MBUFG_GT_O1;
  output [5:0]MBUFG_GT_O2;
  output [5:0]MBUFG_GT_O3;
  output [5:0]MBUFG_GT_O4;
  input [5:0]MBUFG_PS_I;
  input [5:0]MBUFG_PS_CLRB_LEAF;
  output [5:0]MBUFG_PS_O1;
  output [5:0]MBUFG_PS_O2;
  output [5:0]MBUFG_PS_O3;
  output [5:0]MBUFG_PS_O4;

  wire \<const0> ;
  wire [5:0]IOBUF_IO_I;
  wire [5:0]IOBUF_IO_IO;
  wire [5:0]IOBUF_IO_O;
  wire [5:0]IOBUF_IO_T;

  assign BUFGCE_O[5] = \<const0> ;
  assign BUFGCE_O[4] = \<const0> ;
  assign BUFGCE_O[3] = \<const0> ;
  assign BUFGCE_O[2] = \<const0> ;
  assign BUFGCE_O[1] = \<const0> ;
  assign BUFGCE_O[0] = \<const0> ;
  assign BUFG_FABRIC_O[5] = \<const0> ;
  assign BUFG_FABRIC_O[4] = \<const0> ;
  assign BUFG_FABRIC_O[3] = \<const0> ;
  assign BUFG_FABRIC_O[2] = \<const0> ;
  assign BUFG_FABRIC_O[1] = \<const0> ;
  assign BUFG_FABRIC_O[0] = \<const0> ;
  assign BUFG_GT_O[5] = \<const0> ;
  assign BUFG_GT_O[4] = \<const0> ;
  assign BUFG_GT_O[3] = \<const0> ;
  assign BUFG_GT_O[2] = \<const0> ;
  assign BUFG_GT_O[1] = \<const0> ;
  assign BUFG_GT_O[0] = \<const0> ;
  assign BUFG_O[5] = \<const0> ;
  assign BUFG_O[4] = \<const0> ;
  assign BUFG_O[3] = \<const0> ;
  assign BUFG_O[2] = \<const0> ;
  assign BUFG_O[1] = \<const0> ;
  assign BUFG_O[0] = \<const0> ;
  assign BUFG_PS_O[5] = \<const0> ;
  assign BUFG_PS_O[4] = \<const0> ;
  assign BUFG_PS_O[3] = \<const0> ;
  assign BUFG_PS_O[2] = \<const0> ;
  assign BUFG_PS_O[1] = \<const0> ;
  assign BUFG_PS_O[0] = \<const0> ;
  assign BUFHCE_O[5] = \<const0> ;
  assign BUFHCE_O[4] = \<const0> ;
  assign BUFHCE_O[3] = \<const0> ;
  assign BUFHCE_O[2] = \<const0> ;
  assign BUFHCE_O[1] = \<const0> ;
  assign BUFHCE_O[0] = \<const0> ;
  assign BUFH_O[5] = \<const0> ;
  assign BUFH_O[4] = \<const0> ;
  assign BUFH_O[3] = \<const0> ;
  assign BUFH_O[2] = \<const0> ;
  assign BUFH_O[1] = \<const0> ;
  assign BUFH_O[0] = \<const0> ;
  assign IBUFDS_GTME5_O[5] = \<const0> ;
  assign IBUFDS_GTME5_O[4] = \<const0> ;
  assign IBUFDS_GTME5_O[3] = \<const0> ;
  assign IBUFDS_GTME5_O[2] = \<const0> ;
  assign IBUFDS_GTME5_O[1] = \<const0> ;
  assign IBUFDS_GTME5_O[0] = \<const0> ;
  assign IBUFDS_GTME5_ODIV2[5] = \<const0> ;
  assign IBUFDS_GTME5_ODIV2[4] = \<const0> ;
  assign IBUFDS_GTME5_ODIV2[3] = \<const0> ;
  assign IBUFDS_GTME5_ODIV2[2] = \<const0> ;
  assign IBUFDS_GTME5_ODIV2[1] = \<const0> ;
  assign IBUFDS_GTME5_ODIV2[0] = \<const0> ;
  assign IBUFDS_GTM_O[5] = \<const0> ;
  assign IBUFDS_GTM_O[4] = \<const0> ;
  assign IBUFDS_GTM_O[3] = \<const0> ;
  assign IBUFDS_GTM_O[2] = \<const0> ;
  assign IBUFDS_GTM_O[1] = \<const0> ;
  assign IBUFDS_GTM_O[0] = \<const0> ;
  assign IBUFDS_GTM_ODIV2[5] = \<const0> ;
  assign IBUFDS_GTM_ODIV2[4] = \<const0> ;
  assign IBUFDS_GTM_ODIV2[3] = \<const0> ;
  assign IBUFDS_GTM_ODIV2[2] = \<const0> ;
  assign IBUFDS_GTM_ODIV2[1] = \<const0> ;
  assign IBUFDS_GTM_ODIV2[0] = \<const0> ;
  assign IBUF_DS_ODIV2[5] = \<const0> ;
  assign IBUF_DS_ODIV2[4] = \<const0> ;
  assign IBUF_DS_ODIV2[3] = \<const0> ;
  assign IBUF_DS_ODIV2[2] = \<const0> ;
  assign IBUF_DS_ODIV2[1] = \<const0> ;
  assign IBUF_DS_ODIV2[0] = \<const0> ;
  assign IBUF_OUT[5] = \<const0> ;
  assign IBUF_OUT[4] = \<const0> ;
  assign IBUF_OUT[3] = \<const0> ;
  assign IBUF_OUT[2] = \<const0> ;
  assign IBUF_OUT[1] = \<const0> ;
  assign IBUF_OUT[0] = \<const0> ;
  assign MBUFG_GT_O1[5] = \<const0> ;
  assign MBUFG_GT_O1[4] = \<const0> ;
  assign MBUFG_GT_O1[3] = \<const0> ;
  assign MBUFG_GT_O1[2] = \<const0> ;
  assign MBUFG_GT_O1[1] = \<const0> ;
  assign MBUFG_GT_O1[0] = \<const0> ;
  assign MBUFG_GT_O2[5] = \<const0> ;
  assign MBUFG_GT_O2[4] = \<const0> ;
  assign MBUFG_GT_O2[3] = \<const0> ;
  assign MBUFG_GT_O2[2] = \<const0> ;
  assign MBUFG_GT_O2[1] = \<const0> ;
  assign MBUFG_GT_O2[0] = \<const0> ;
  assign MBUFG_GT_O3[5] = \<const0> ;
  assign MBUFG_GT_O3[4] = \<const0> ;
  assign MBUFG_GT_O3[3] = \<const0> ;
  assign MBUFG_GT_O3[2] = \<const0> ;
  assign MBUFG_GT_O3[1] = \<const0> ;
  assign MBUFG_GT_O3[0] = \<const0> ;
  assign MBUFG_GT_O4[5] = \<const0> ;
  assign MBUFG_GT_O4[4] = \<const0> ;
  assign MBUFG_GT_O4[3] = \<const0> ;
  assign MBUFG_GT_O4[2] = \<const0> ;
  assign MBUFG_GT_O4[1] = \<const0> ;
  assign MBUFG_GT_O4[0] = \<const0> ;
  assign MBUFG_PS_O1[5] = \<const0> ;
  assign MBUFG_PS_O1[4] = \<const0> ;
  assign MBUFG_PS_O1[3] = \<const0> ;
  assign MBUFG_PS_O1[2] = \<const0> ;
  assign MBUFG_PS_O1[1] = \<const0> ;
  assign MBUFG_PS_O1[0] = \<const0> ;
  assign MBUFG_PS_O2[5] = \<const0> ;
  assign MBUFG_PS_O2[4] = \<const0> ;
  assign MBUFG_PS_O2[3] = \<const0> ;
  assign MBUFG_PS_O2[2] = \<const0> ;
  assign MBUFG_PS_O2[1] = \<const0> ;
  assign MBUFG_PS_O2[0] = \<const0> ;
  assign MBUFG_PS_O3[5] = \<const0> ;
  assign MBUFG_PS_O3[4] = \<const0> ;
  assign MBUFG_PS_O3[3] = \<const0> ;
  assign MBUFG_PS_O3[2] = \<const0> ;
  assign MBUFG_PS_O3[1] = \<const0> ;
  assign MBUFG_PS_O3[0] = \<const0> ;
  assign MBUFG_PS_O4[5] = \<const0> ;
  assign MBUFG_PS_O4[4] = \<const0> ;
  assign MBUFG_PS_O4[3] = \<const0> ;
  assign MBUFG_PS_O4[2] = \<const0> ;
  assign MBUFG_PS_O4[1] = \<const0> ;
  assign MBUFG_PS_O4[0] = \<const0> ;
  assign OBUFDS_GTE3_ADV_O[5] = \<const0> ;
  assign OBUFDS_GTE3_ADV_O[4] = \<const0> ;
  assign OBUFDS_GTE3_ADV_O[3] = \<const0> ;
  assign OBUFDS_GTE3_ADV_O[2] = \<const0> ;
  assign OBUFDS_GTE3_ADV_O[1] = \<const0> ;
  assign OBUFDS_GTE3_ADV_O[0] = \<const0> ;
  assign OBUFDS_GTE3_ADV_OB[5] = \<const0> ;
  assign OBUFDS_GTE3_ADV_OB[4] = \<const0> ;
  assign OBUFDS_GTE3_ADV_OB[3] = \<const0> ;
  assign OBUFDS_GTE3_ADV_OB[2] = \<const0> ;
  assign OBUFDS_GTE3_ADV_OB[1] = \<const0> ;
  assign OBUFDS_GTE3_ADV_OB[0] = \<const0> ;
  assign OBUFDS_GTE3_O[5] = \<const0> ;
  assign OBUFDS_GTE3_O[4] = \<const0> ;
  assign OBUFDS_GTE3_O[3] = \<const0> ;
  assign OBUFDS_GTE3_O[2] = \<const0> ;
  assign OBUFDS_GTE3_O[1] = \<const0> ;
  assign OBUFDS_GTE3_O[0] = \<const0> ;
  assign OBUFDS_GTE3_OB[5] = \<const0> ;
  assign OBUFDS_GTE3_OB[4] = \<const0> ;
  assign OBUFDS_GTE3_OB[3] = \<const0> ;
  assign OBUFDS_GTE3_OB[2] = \<const0> ;
  assign OBUFDS_GTE3_OB[1] = \<const0> ;
  assign OBUFDS_GTE3_OB[0] = \<const0> ;
  assign OBUFDS_GTE4_ADV_O[5] = \<const0> ;
  assign OBUFDS_GTE4_ADV_O[4] = \<const0> ;
  assign OBUFDS_GTE4_ADV_O[3] = \<const0> ;
  assign OBUFDS_GTE4_ADV_O[2] = \<const0> ;
  assign OBUFDS_GTE4_ADV_O[1] = \<const0> ;
  assign OBUFDS_GTE4_ADV_O[0] = \<const0> ;
  assign OBUFDS_GTE4_ADV_OB[5] = \<const0> ;
  assign OBUFDS_GTE4_ADV_OB[4] = \<const0> ;
  assign OBUFDS_GTE4_ADV_OB[3] = \<const0> ;
  assign OBUFDS_GTE4_ADV_OB[2] = \<const0> ;
  assign OBUFDS_GTE4_ADV_OB[1] = \<const0> ;
  assign OBUFDS_GTE4_ADV_OB[0] = \<const0> ;
  assign OBUFDS_GTE4_O[5] = \<const0> ;
  assign OBUFDS_GTE4_O[4] = \<const0> ;
  assign OBUFDS_GTE4_O[3] = \<const0> ;
  assign OBUFDS_GTE4_O[2] = \<const0> ;
  assign OBUFDS_GTE4_O[1] = \<const0> ;
  assign OBUFDS_GTE4_O[0] = \<const0> ;
  assign OBUFDS_GTE4_OB[5] = \<const0> ;
  assign OBUFDS_GTE4_OB[4] = \<const0> ;
  assign OBUFDS_GTE4_OB[3] = \<const0> ;
  assign OBUFDS_GTE4_OB[2] = \<const0> ;
  assign OBUFDS_GTE4_OB[1] = \<const0> ;
  assign OBUFDS_GTE4_OB[0] = \<const0> ;
  assign OBUFDS_GTE5_ADV_O[5] = \<const0> ;
  assign OBUFDS_GTE5_ADV_O[4] = \<const0> ;
  assign OBUFDS_GTE5_ADV_O[3] = \<const0> ;
  assign OBUFDS_GTE5_ADV_O[2] = \<const0> ;
  assign OBUFDS_GTE5_ADV_O[1] = \<const0> ;
  assign OBUFDS_GTE5_ADV_O[0] = \<const0> ;
  assign OBUFDS_GTE5_ADV_OB[5] = \<const0> ;
  assign OBUFDS_GTE5_ADV_OB[4] = \<const0> ;
  assign OBUFDS_GTE5_ADV_OB[3] = \<const0> ;
  assign OBUFDS_GTE5_ADV_OB[2] = \<const0> ;
  assign OBUFDS_GTE5_ADV_OB[1] = \<const0> ;
  assign OBUFDS_GTE5_ADV_OB[0] = \<const0> ;
  assign OBUFDS_GTE5_O[5] = \<const0> ;
  assign OBUFDS_GTE5_O[4] = \<const0> ;
  assign OBUFDS_GTE5_O[3] = \<const0> ;
  assign OBUFDS_GTE5_O[2] = \<const0> ;
  assign OBUFDS_GTE5_O[1] = \<const0> ;
  assign OBUFDS_GTE5_O[0] = \<const0> ;
  assign OBUFDS_GTE5_OB[5] = \<const0> ;
  assign OBUFDS_GTE5_OB[4] = \<const0> ;
  assign OBUFDS_GTE5_OB[3] = \<const0> ;
  assign OBUFDS_GTE5_OB[2] = \<const0> ;
  assign OBUFDS_GTE5_OB[1] = \<const0> ;
  assign OBUFDS_GTE5_OB[0] = \<const0> ;
  assign OBUFDS_GTME5_ADV_O[5] = \<const0> ;
  assign OBUFDS_GTME5_ADV_O[4] = \<const0> ;
  assign OBUFDS_GTME5_ADV_O[3] = \<const0> ;
  assign OBUFDS_GTME5_ADV_O[2] = \<const0> ;
  assign OBUFDS_GTME5_ADV_O[1] = \<const0> ;
  assign OBUFDS_GTME5_ADV_O[0] = \<const0> ;
  assign OBUFDS_GTME5_ADV_OB[5] = \<const0> ;
  assign OBUFDS_GTME5_ADV_OB[4] = \<const0> ;
  assign OBUFDS_GTME5_ADV_OB[3] = \<const0> ;
  assign OBUFDS_GTME5_ADV_OB[2] = \<const0> ;
  assign OBUFDS_GTME5_ADV_OB[1] = \<const0> ;
  assign OBUFDS_GTME5_ADV_OB[0] = \<const0> ;
  assign OBUFDS_GTME5_O[5] = \<const0> ;
  assign OBUFDS_GTME5_O[4] = \<const0> ;
  assign OBUFDS_GTME5_O[3] = \<const0> ;
  assign OBUFDS_GTME5_O[2] = \<const0> ;
  assign OBUFDS_GTME5_O[1] = \<const0> ;
  assign OBUFDS_GTME5_O[0] = \<const0> ;
  assign OBUFDS_GTME5_OB[5] = \<const0> ;
  assign OBUFDS_GTME5_OB[4] = \<const0> ;
  assign OBUFDS_GTME5_OB[3] = \<const0> ;
  assign OBUFDS_GTME5_OB[2] = \<const0> ;
  assign OBUFDS_GTME5_OB[1] = \<const0> ;
  assign OBUFDS_GTME5_OB[0] = \<const0> ;
  assign OBUFDS_GTM_ADV_O[5] = \<const0> ;
  assign OBUFDS_GTM_ADV_O[4] = \<const0> ;
  assign OBUFDS_GTM_ADV_O[3] = \<const0> ;
  assign OBUFDS_GTM_ADV_O[2] = \<const0> ;
  assign OBUFDS_GTM_ADV_O[1] = \<const0> ;
  assign OBUFDS_GTM_ADV_O[0] = \<const0> ;
  assign OBUFDS_GTM_ADV_OB[5] = \<const0> ;
  assign OBUFDS_GTM_ADV_OB[4] = \<const0> ;
  assign OBUFDS_GTM_ADV_OB[3] = \<const0> ;
  assign OBUFDS_GTM_ADV_OB[2] = \<const0> ;
  assign OBUFDS_GTM_ADV_OB[1] = \<const0> ;
  assign OBUFDS_GTM_ADV_OB[0] = \<const0> ;
  assign OBUFDS_GTM_O[5] = \<const0> ;
  assign OBUFDS_GTM_O[4] = \<const0> ;
  assign OBUFDS_GTM_O[3] = \<const0> ;
  assign OBUFDS_GTM_O[2] = \<const0> ;
  assign OBUFDS_GTM_O[1] = \<const0> ;
  assign OBUFDS_GTM_O[0] = \<const0> ;
  assign OBUFDS_GTM_OB[5] = \<const0> ;
  assign OBUFDS_GTM_OB[4] = \<const0> ;
  assign OBUFDS_GTM_OB[3] = \<const0> ;
  assign OBUFDS_GTM_OB[2] = \<const0> ;
  assign OBUFDS_GTM_OB[1] = \<const0> ;
  assign OBUFDS_GTM_OB[0] = \<const0> ;
  assign OBUF_DS_N[5] = \<const0> ;
  assign OBUF_DS_N[4] = \<const0> ;
  assign OBUF_DS_N[3] = \<const0> ;
  assign OBUF_DS_N[2] = \<const0> ;
  assign OBUF_DS_N[1] = \<const0> ;
  assign OBUF_DS_N[0] = \<const0> ;
  assign OBUF_DS_P[5] = \<const0> ;
  assign OBUF_DS_P[4] = \<const0> ;
  assign OBUF_DS_P[3] = \<const0> ;
  assign OBUF_DS_P[2] = \<const0> ;
  assign OBUF_DS_P[1] = \<const0> ;
  assign OBUF_DS_P[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IOBUF.GEN_IOBUF[0].IOBUF_I 
       (.I(IOBUF_IO_I[0]),
        .IO(IOBUF_IO_IO[0]),
        .O(IOBUF_IO_O[0]),
        .T(IOBUF_IO_T[0]));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IOBUF.GEN_IOBUF[1].IOBUF_I 
       (.I(IOBUF_IO_I[1]),
        .IO(IOBUF_IO_IO[1]),
        .O(IOBUF_IO_O[1]),
        .T(IOBUF_IO_T[1]));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IOBUF.GEN_IOBUF[2].IOBUF_I 
       (.I(IOBUF_IO_I[2]),
        .IO(IOBUF_IO_IO[2]),
        .O(IOBUF_IO_O[2]),
        .T(IOBUF_IO_T[2]));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IOBUF.GEN_IOBUF[3].IOBUF_I 
       (.I(IOBUF_IO_I[3]),
        .IO(IOBUF_IO_IO[3]),
        .O(IOBUF_IO_O[3]),
        .T(IOBUF_IO_T[3]));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IOBUF.GEN_IOBUF[4].IOBUF_I 
       (.I(IOBUF_IO_I[4]),
        .IO(IOBUF_IO_IO[4]),
        .O(IOBUF_IO_O[4]),
        .T(IOBUF_IO_T[4]));
  (* box_type = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IOBUF.GEN_IOBUF[5].IOBUF_I 
       (.I(IOBUF_IO_I[5]),
        .IO(IOBUF_IO_IO[5]),
        .O(IOBUF_IO_O[5]),
        .T(IOBUF_IO_T[5]));
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
