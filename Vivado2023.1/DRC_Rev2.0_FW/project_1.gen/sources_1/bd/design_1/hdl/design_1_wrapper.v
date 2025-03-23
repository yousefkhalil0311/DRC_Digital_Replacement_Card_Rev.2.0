//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Sun Mar 16 17:48:58 2025
//Host        : OCP001 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (IOBUF_CLK0,
    IOBUF_CLK1,
    IOBUF_CLK2,
    IOBUF_CLK3,
    IOBUF_CLKN,
    IOBUF_CLKP,
    IOBUF_DATA0,
    IOBUF_DATA1,
    IOBUF_DATA2,
    IOBUF_DATA3,
    IOBUF_DS_0_21_n,
    IOBUF_DS_0_21_p,
    IOBUF_SCL_0,
    IOBUF_SCL_1,
    IOBUF_SCL_2,
    IOBUF_SDA_0,
    IOBUF_SDA_1,
    IOBUF_SDA_2,
    IOBUF_SE_0_31,
    IOBUF_SE_32_37,
    MISO_0,
    MISO_1,
    MOSI_0,
    MOSI_1,
    SCK_0,
    SCK_1,
    SS_0_4bits,
    SS_1_2bits,
    ctrl_8bits_tri_o,
    leds_4bits_tri_o,
    spdt_10bits_tri_o);
  input IOBUF_CLK0;
  input IOBUF_CLK1;
  input IOBUF_CLK2;
  input IOBUF_CLK3;
  output [0:0]IOBUF_CLKN;
  output [0:0]IOBUF_CLKP;
  input [11:0]IOBUF_DATA0;
  input [11:0]IOBUF_DATA1;
  input [11:0]IOBUF_DATA2;
  input [11:0]IOBUF_DATA3;
  inout [21:0]IOBUF_DS_0_21_n;
  inout [21:0]IOBUF_DS_0_21_p;
  inout [0:0]IOBUF_SCL_0;
  inout [0:0]IOBUF_SCL_1;
  inout [0:0]IOBUF_SCL_2;
  inout [0:0]IOBUF_SDA_0;
  inout [0:0]IOBUF_SDA_1;
  inout [0:0]IOBUF_SDA_2;
  inout [31:0]IOBUF_SE_0_31;
  inout [5:0]IOBUF_SE_32_37;
  input MISO_0;
  input MISO_1;
  output MOSI_0;
  output MOSI_1;
  output SCK_0;
  output SCK_1;
  output [3:0]SS_0_4bits;
  output [1:0]SS_1_2bits;
  output [7:0]ctrl_8bits_tri_o;
  output [3:0]leds_4bits_tri_o;
  output [9:0]spdt_10bits_tri_o;

  wire IOBUF_CLK0;
  wire IOBUF_CLK1;
  wire IOBUF_CLK2;
  wire IOBUF_CLK3;
  wire [0:0]IOBUF_CLKN;
  wire [0:0]IOBUF_CLKP;
  wire [11:0]IOBUF_DATA0;
  wire [11:0]IOBUF_DATA1;
  wire [11:0]IOBUF_DATA2;
  wire [11:0]IOBUF_DATA3;
  wire [21:0]IOBUF_DS_0_21_n;
  wire [21:0]IOBUF_DS_0_21_p;
  wire [0:0]IOBUF_SCL_0;
  wire [0:0]IOBUF_SCL_1;
  wire [0:0]IOBUF_SCL_2;
  wire [0:0]IOBUF_SDA_0;
  wire [0:0]IOBUF_SDA_1;
  wire [0:0]IOBUF_SDA_2;
  wire [31:0]IOBUF_SE_0_31;
  wire [5:0]IOBUF_SE_32_37;
  wire MISO_0;
  wire MISO_1;
  wire MOSI_0;
  wire MOSI_1;
  wire SCK_0;
  wire SCK_1;
  wire [3:0]SS_0_4bits;
  wire [1:0]SS_1_2bits;
  wire [7:0]ctrl_8bits_tri_o;
  wire [3:0]leds_4bits_tri_o;
  wire [9:0]spdt_10bits_tri_o;

  design_1 design_1_i
       (.IOBUF_CLK0(IOBUF_CLK0),
        .IOBUF_CLK1(IOBUF_CLK1),
        .IOBUF_CLK2(IOBUF_CLK2),
        .IOBUF_CLK3(IOBUF_CLK3),
        .IOBUF_CLKN(IOBUF_CLKN),
        .IOBUF_CLKP(IOBUF_CLKP),
        .IOBUF_DATA0(IOBUF_DATA0),
        .IOBUF_DATA1(IOBUF_DATA1),
        .IOBUF_DATA2(IOBUF_DATA2),
        .IOBUF_DATA3(IOBUF_DATA3),
        .IOBUF_DS_0_21_n(IOBUF_DS_0_21_n),
        .IOBUF_DS_0_21_p(IOBUF_DS_0_21_p),
        .IOBUF_SCL_0(IOBUF_SCL_0),
        .IOBUF_SCL_1(IOBUF_SCL_1),
        .IOBUF_SCL_2(IOBUF_SCL_2),
        .IOBUF_SDA_0(IOBUF_SDA_0),
        .IOBUF_SDA_1(IOBUF_SDA_1),
        .IOBUF_SDA_2(IOBUF_SDA_2),
        .IOBUF_SE_0_31(IOBUF_SE_0_31),
        .IOBUF_SE_32_37(IOBUF_SE_32_37),
        .MISO_0(MISO_0),
        .MISO_1(MISO_1),
        .MOSI_0(MOSI_0),
        .MOSI_1(MOSI_1),
        .SCK_0(SCK_0),
        .SCK_1(SCK_1),
        .SS_0_4bits(SS_0_4bits),
        .SS_1_2bits(SS_1_2bits),
        .ctrl_8bits_tri_o(ctrl_8bits_tri_o),
        .leds_4bits_tri_o(leds_4bits_tri_o),
        .spdt_10bits_tri_o(spdt_10bits_tri_o));
endmodule
