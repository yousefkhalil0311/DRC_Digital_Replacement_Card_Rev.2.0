-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Nov  4 10:55:30 2024
-- Host        : DESKTOP-JTT5U02 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_util_ds_buf_14_0_sim_netlist.vhdl
-- Design      : design_1_util_ds_buf_14_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUF_DS_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUF_IN : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IOBUF_DS_P : inout STD_LOGIC_VECTOR ( 11 downto 0 );
    IOBUF_DS_N : inout STD_LOGIC_VECTOR ( 11 downto 0 );
    IOBUF_IO_T : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IOBUF_IO_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IOBUF_IO_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IOBUF_IO_IO : inout STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFGCE_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFGCE_CE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFGCE_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFGCE_CLR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFH_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFH_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFHCE_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFHCE_CE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFHCE_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_FABRIC_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_FABRIC_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE5_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE5_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE5_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE5_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE5_ADV_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE5_ADV_I : in STD_LOGIC_VECTOR ( 47 downto 0 );
    OBUFDS_GTE5_ADV_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE5_ADV_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE5_ADV_RXRECCLKSEL : in STD_LOGIC_VECTOR ( 23 downto 0 );
    OBUFDS_GTE3_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE3_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE3_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE3_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE3_ADV_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE3_ADV_I : in STD_LOGIC_VECTOR ( 47 downto 0 );
    OBUFDS_GTE3_ADV_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE3_ADV_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    RXRECCLK_SEL_GTE3_ADV : in STD_LOGIC_VECTOR ( 23 downto 0 );
    OBUFDS_GTE4_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE4_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE4_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE4_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE4_ADV_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE4_ADV_I : in STD_LOGIC_VECTOR ( 47 downto 0 );
    OBUFDS_GTE4_ADV_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTE4_ADV_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    RXRECCLK_SEL_GTE4_ADV : in STD_LOGIC_VECTOR ( 23 downto 0 );
    IBUFDS_GTM_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUFDS_GTM_ODIV2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUFDS_GTM_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUFDS_GTM_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUFDS_GTM_IB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTM_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTM_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTM_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTM_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTM_ADV_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTM_ADV_I : in STD_LOGIC_VECTOR ( 47 downto 0 );
    OBUFDS_GTM_ADV_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTM_ADV_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUFDS_GTME5_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUFDS_GTME5_ODIV2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUFDS_GTME5_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUFDS_GTME5_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IBUFDS_GTME5_IB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTME5_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTME5_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTME5_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTME5_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTME5_ADV_CEB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTME5_ADV_I : in STD_LOGIC_VECTOR ( 47 downto 0 );
    OBUFDS_GTME5_ADV_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTME5_ADV_OB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OBUFDS_GTME5_ADV_RXRECCLKSEL : in STD_LOGIC_VECTOR ( 23 downto 0 );
    BUFG_GT_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_GT_CE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_GT_CEMASK : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_GT_CLR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_GT_CLRMASK : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_GT_DIV : in STD_LOGIC_VECTOR ( 35 downto 0 );
    BUFG_GT_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_PS_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    BUFG_PS_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_CE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_CEMASK : in STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_CLR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_CLRB_LEAF : in STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_CLRMASK : in STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_DIV : in STD_LOGIC_VECTOR ( 35 downto 0 );
    MBUFG_GT_O1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_O2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_O3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_GT_O4 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_PS_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_PS_CLRB_LEAF : in STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_PS_O1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_PS_O2 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_PS_O3 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    MBUFG_PS_O4 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is "IOBUF";
  attribute C_MODE : string;
  attribute C_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is "PERFORMANCE";
  attribute C_OBUFDS_GTE5_ADV : string;
  attribute C_OBUFDS_GTE5_ADV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is "2'b00";
  attribute C_REFCLK_ICNTL_TX : string;
  attribute C_REFCLK_ICNTL_TX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is "5'b00000";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is 12;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf is
  signal \<const0>\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \USE_IOBUF.GEN_IOBUF[0].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[10].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[11].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[1].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[2].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[3].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[4].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[5].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[6].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[7].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[8].IOBUF_I\ : label is "PRIMITIVE";
  attribute box_type of \USE_IOBUF.GEN_IOBUF[9].IOBUF_I\ : label is "PRIMITIVE";
begin
  BUFGCE_O(11) <= \<const0>\;
  BUFGCE_O(10) <= \<const0>\;
  BUFGCE_O(9) <= \<const0>\;
  BUFGCE_O(8) <= \<const0>\;
  BUFGCE_O(7) <= \<const0>\;
  BUFGCE_O(6) <= \<const0>\;
  BUFGCE_O(5) <= \<const0>\;
  BUFGCE_O(4) <= \<const0>\;
  BUFGCE_O(3) <= \<const0>\;
  BUFGCE_O(2) <= \<const0>\;
  BUFGCE_O(1) <= \<const0>\;
  BUFGCE_O(0) <= \<const0>\;
  BUFG_FABRIC_O(11) <= \<const0>\;
  BUFG_FABRIC_O(10) <= \<const0>\;
  BUFG_FABRIC_O(9) <= \<const0>\;
  BUFG_FABRIC_O(8) <= \<const0>\;
  BUFG_FABRIC_O(7) <= \<const0>\;
  BUFG_FABRIC_O(6) <= \<const0>\;
  BUFG_FABRIC_O(5) <= \<const0>\;
  BUFG_FABRIC_O(4) <= \<const0>\;
  BUFG_FABRIC_O(3) <= \<const0>\;
  BUFG_FABRIC_O(2) <= \<const0>\;
  BUFG_FABRIC_O(1) <= \<const0>\;
  BUFG_FABRIC_O(0) <= \<const0>\;
  BUFG_GT_O(11) <= \<const0>\;
  BUFG_GT_O(10) <= \<const0>\;
  BUFG_GT_O(9) <= \<const0>\;
  BUFG_GT_O(8) <= \<const0>\;
  BUFG_GT_O(7) <= \<const0>\;
  BUFG_GT_O(6) <= \<const0>\;
  BUFG_GT_O(5) <= \<const0>\;
  BUFG_GT_O(4) <= \<const0>\;
  BUFG_GT_O(3) <= \<const0>\;
  BUFG_GT_O(2) <= \<const0>\;
  BUFG_GT_O(1) <= \<const0>\;
  BUFG_GT_O(0) <= \<const0>\;
  BUFG_O(11) <= \<const0>\;
  BUFG_O(10) <= \<const0>\;
  BUFG_O(9) <= \<const0>\;
  BUFG_O(8) <= \<const0>\;
  BUFG_O(7) <= \<const0>\;
  BUFG_O(6) <= \<const0>\;
  BUFG_O(5) <= \<const0>\;
  BUFG_O(4) <= \<const0>\;
  BUFG_O(3) <= \<const0>\;
  BUFG_O(2) <= \<const0>\;
  BUFG_O(1) <= \<const0>\;
  BUFG_O(0) <= \<const0>\;
  BUFG_PS_O(11) <= \<const0>\;
  BUFG_PS_O(10) <= \<const0>\;
  BUFG_PS_O(9) <= \<const0>\;
  BUFG_PS_O(8) <= \<const0>\;
  BUFG_PS_O(7) <= \<const0>\;
  BUFG_PS_O(6) <= \<const0>\;
  BUFG_PS_O(5) <= \<const0>\;
  BUFG_PS_O(4) <= \<const0>\;
  BUFG_PS_O(3) <= \<const0>\;
  BUFG_PS_O(2) <= \<const0>\;
  BUFG_PS_O(1) <= \<const0>\;
  BUFG_PS_O(0) <= \<const0>\;
  BUFHCE_O(11) <= \<const0>\;
  BUFHCE_O(10) <= \<const0>\;
  BUFHCE_O(9) <= \<const0>\;
  BUFHCE_O(8) <= \<const0>\;
  BUFHCE_O(7) <= \<const0>\;
  BUFHCE_O(6) <= \<const0>\;
  BUFHCE_O(5) <= \<const0>\;
  BUFHCE_O(4) <= \<const0>\;
  BUFHCE_O(3) <= \<const0>\;
  BUFHCE_O(2) <= \<const0>\;
  BUFHCE_O(1) <= \<const0>\;
  BUFHCE_O(0) <= \<const0>\;
  BUFH_O(11) <= \<const0>\;
  BUFH_O(10) <= \<const0>\;
  BUFH_O(9) <= \<const0>\;
  BUFH_O(8) <= \<const0>\;
  BUFH_O(7) <= \<const0>\;
  BUFH_O(6) <= \<const0>\;
  BUFH_O(5) <= \<const0>\;
  BUFH_O(4) <= \<const0>\;
  BUFH_O(3) <= \<const0>\;
  BUFH_O(2) <= \<const0>\;
  BUFH_O(1) <= \<const0>\;
  BUFH_O(0) <= \<const0>\;
  IBUFDS_GTME5_O(11) <= \<const0>\;
  IBUFDS_GTME5_O(10) <= \<const0>\;
  IBUFDS_GTME5_O(9) <= \<const0>\;
  IBUFDS_GTME5_O(8) <= \<const0>\;
  IBUFDS_GTME5_O(7) <= \<const0>\;
  IBUFDS_GTME5_O(6) <= \<const0>\;
  IBUFDS_GTME5_O(5) <= \<const0>\;
  IBUFDS_GTME5_O(4) <= \<const0>\;
  IBUFDS_GTME5_O(3) <= \<const0>\;
  IBUFDS_GTME5_O(2) <= \<const0>\;
  IBUFDS_GTME5_O(1) <= \<const0>\;
  IBUFDS_GTME5_O(0) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(11) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(10) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(9) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(8) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(7) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(6) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(5) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(4) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(3) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(2) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(1) <= \<const0>\;
  IBUFDS_GTME5_ODIV2(0) <= \<const0>\;
  IBUFDS_GTM_O(11) <= \<const0>\;
  IBUFDS_GTM_O(10) <= \<const0>\;
  IBUFDS_GTM_O(9) <= \<const0>\;
  IBUFDS_GTM_O(8) <= \<const0>\;
  IBUFDS_GTM_O(7) <= \<const0>\;
  IBUFDS_GTM_O(6) <= \<const0>\;
  IBUFDS_GTM_O(5) <= \<const0>\;
  IBUFDS_GTM_O(4) <= \<const0>\;
  IBUFDS_GTM_O(3) <= \<const0>\;
  IBUFDS_GTM_O(2) <= \<const0>\;
  IBUFDS_GTM_O(1) <= \<const0>\;
  IBUFDS_GTM_O(0) <= \<const0>\;
  IBUFDS_GTM_ODIV2(11) <= \<const0>\;
  IBUFDS_GTM_ODIV2(10) <= \<const0>\;
  IBUFDS_GTM_ODIV2(9) <= \<const0>\;
  IBUFDS_GTM_ODIV2(8) <= \<const0>\;
  IBUFDS_GTM_ODIV2(7) <= \<const0>\;
  IBUFDS_GTM_ODIV2(6) <= \<const0>\;
  IBUFDS_GTM_ODIV2(5) <= \<const0>\;
  IBUFDS_GTM_ODIV2(4) <= \<const0>\;
  IBUFDS_GTM_ODIV2(3) <= \<const0>\;
  IBUFDS_GTM_ODIV2(2) <= \<const0>\;
  IBUFDS_GTM_ODIV2(1) <= \<const0>\;
  IBUFDS_GTM_ODIV2(0) <= \<const0>\;
  IBUF_DS_ODIV2(11) <= \<const0>\;
  IBUF_DS_ODIV2(10) <= \<const0>\;
  IBUF_DS_ODIV2(9) <= \<const0>\;
  IBUF_DS_ODIV2(8) <= \<const0>\;
  IBUF_DS_ODIV2(7) <= \<const0>\;
  IBUF_DS_ODIV2(6) <= \<const0>\;
  IBUF_DS_ODIV2(5) <= \<const0>\;
  IBUF_DS_ODIV2(4) <= \<const0>\;
  IBUF_DS_ODIV2(3) <= \<const0>\;
  IBUF_DS_ODIV2(2) <= \<const0>\;
  IBUF_DS_ODIV2(1) <= \<const0>\;
  IBUF_DS_ODIV2(0) <= \<const0>\;
  IBUF_OUT(11) <= \<const0>\;
  IBUF_OUT(10) <= \<const0>\;
  IBUF_OUT(9) <= \<const0>\;
  IBUF_OUT(8) <= \<const0>\;
  IBUF_OUT(7) <= \<const0>\;
  IBUF_OUT(6) <= \<const0>\;
  IBUF_OUT(5) <= \<const0>\;
  IBUF_OUT(4) <= \<const0>\;
  IBUF_OUT(3) <= \<const0>\;
  IBUF_OUT(2) <= \<const0>\;
  IBUF_OUT(1) <= \<const0>\;
  IBUF_OUT(0) <= \<const0>\;
  MBUFG_GT_O1(11) <= \<const0>\;
  MBUFG_GT_O1(10) <= \<const0>\;
  MBUFG_GT_O1(9) <= \<const0>\;
  MBUFG_GT_O1(8) <= \<const0>\;
  MBUFG_GT_O1(7) <= \<const0>\;
  MBUFG_GT_O1(6) <= \<const0>\;
  MBUFG_GT_O1(5) <= \<const0>\;
  MBUFG_GT_O1(4) <= \<const0>\;
  MBUFG_GT_O1(3) <= \<const0>\;
  MBUFG_GT_O1(2) <= \<const0>\;
  MBUFG_GT_O1(1) <= \<const0>\;
  MBUFG_GT_O1(0) <= \<const0>\;
  MBUFG_GT_O2(11) <= \<const0>\;
  MBUFG_GT_O2(10) <= \<const0>\;
  MBUFG_GT_O2(9) <= \<const0>\;
  MBUFG_GT_O2(8) <= \<const0>\;
  MBUFG_GT_O2(7) <= \<const0>\;
  MBUFG_GT_O2(6) <= \<const0>\;
  MBUFG_GT_O2(5) <= \<const0>\;
  MBUFG_GT_O2(4) <= \<const0>\;
  MBUFG_GT_O2(3) <= \<const0>\;
  MBUFG_GT_O2(2) <= \<const0>\;
  MBUFG_GT_O2(1) <= \<const0>\;
  MBUFG_GT_O2(0) <= \<const0>\;
  MBUFG_GT_O3(11) <= \<const0>\;
  MBUFG_GT_O3(10) <= \<const0>\;
  MBUFG_GT_O3(9) <= \<const0>\;
  MBUFG_GT_O3(8) <= \<const0>\;
  MBUFG_GT_O3(7) <= \<const0>\;
  MBUFG_GT_O3(6) <= \<const0>\;
  MBUFG_GT_O3(5) <= \<const0>\;
  MBUFG_GT_O3(4) <= \<const0>\;
  MBUFG_GT_O3(3) <= \<const0>\;
  MBUFG_GT_O3(2) <= \<const0>\;
  MBUFG_GT_O3(1) <= \<const0>\;
  MBUFG_GT_O3(0) <= \<const0>\;
  MBUFG_GT_O4(11) <= \<const0>\;
  MBUFG_GT_O4(10) <= \<const0>\;
  MBUFG_GT_O4(9) <= \<const0>\;
  MBUFG_GT_O4(8) <= \<const0>\;
  MBUFG_GT_O4(7) <= \<const0>\;
  MBUFG_GT_O4(6) <= \<const0>\;
  MBUFG_GT_O4(5) <= \<const0>\;
  MBUFG_GT_O4(4) <= \<const0>\;
  MBUFG_GT_O4(3) <= \<const0>\;
  MBUFG_GT_O4(2) <= \<const0>\;
  MBUFG_GT_O4(1) <= \<const0>\;
  MBUFG_GT_O4(0) <= \<const0>\;
  MBUFG_PS_O1(11) <= \<const0>\;
  MBUFG_PS_O1(10) <= \<const0>\;
  MBUFG_PS_O1(9) <= \<const0>\;
  MBUFG_PS_O1(8) <= \<const0>\;
  MBUFG_PS_O1(7) <= \<const0>\;
  MBUFG_PS_O1(6) <= \<const0>\;
  MBUFG_PS_O1(5) <= \<const0>\;
  MBUFG_PS_O1(4) <= \<const0>\;
  MBUFG_PS_O1(3) <= \<const0>\;
  MBUFG_PS_O1(2) <= \<const0>\;
  MBUFG_PS_O1(1) <= \<const0>\;
  MBUFG_PS_O1(0) <= \<const0>\;
  MBUFG_PS_O2(11) <= \<const0>\;
  MBUFG_PS_O2(10) <= \<const0>\;
  MBUFG_PS_O2(9) <= \<const0>\;
  MBUFG_PS_O2(8) <= \<const0>\;
  MBUFG_PS_O2(7) <= \<const0>\;
  MBUFG_PS_O2(6) <= \<const0>\;
  MBUFG_PS_O2(5) <= \<const0>\;
  MBUFG_PS_O2(4) <= \<const0>\;
  MBUFG_PS_O2(3) <= \<const0>\;
  MBUFG_PS_O2(2) <= \<const0>\;
  MBUFG_PS_O2(1) <= \<const0>\;
  MBUFG_PS_O2(0) <= \<const0>\;
  MBUFG_PS_O3(11) <= \<const0>\;
  MBUFG_PS_O3(10) <= \<const0>\;
  MBUFG_PS_O3(9) <= \<const0>\;
  MBUFG_PS_O3(8) <= \<const0>\;
  MBUFG_PS_O3(7) <= \<const0>\;
  MBUFG_PS_O3(6) <= \<const0>\;
  MBUFG_PS_O3(5) <= \<const0>\;
  MBUFG_PS_O3(4) <= \<const0>\;
  MBUFG_PS_O3(3) <= \<const0>\;
  MBUFG_PS_O3(2) <= \<const0>\;
  MBUFG_PS_O3(1) <= \<const0>\;
  MBUFG_PS_O3(0) <= \<const0>\;
  MBUFG_PS_O4(11) <= \<const0>\;
  MBUFG_PS_O4(10) <= \<const0>\;
  MBUFG_PS_O4(9) <= \<const0>\;
  MBUFG_PS_O4(8) <= \<const0>\;
  MBUFG_PS_O4(7) <= \<const0>\;
  MBUFG_PS_O4(6) <= \<const0>\;
  MBUFG_PS_O4(5) <= \<const0>\;
  MBUFG_PS_O4(4) <= \<const0>\;
  MBUFG_PS_O4(3) <= \<const0>\;
  MBUFG_PS_O4(2) <= \<const0>\;
  MBUFG_PS_O4(1) <= \<const0>\;
  MBUFG_PS_O4(0) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(11) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(10) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(9) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(8) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(7) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(6) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(5) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(4) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(3) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(2) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(1) <= \<const0>\;
  OBUFDS_GTE3_ADV_O(0) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(11) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(10) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(9) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(8) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(7) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(6) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(5) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(4) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(3) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(2) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(1) <= \<const0>\;
  OBUFDS_GTE3_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTE3_O(11) <= \<const0>\;
  OBUFDS_GTE3_O(10) <= \<const0>\;
  OBUFDS_GTE3_O(9) <= \<const0>\;
  OBUFDS_GTE3_O(8) <= \<const0>\;
  OBUFDS_GTE3_O(7) <= \<const0>\;
  OBUFDS_GTE3_O(6) <= \<const0>\;
  OBUFDS_GTE3_O(5) <= \<const0>\;
  OBUFDS_GTE3_O(4) <= \<const0>\;
  OBUFDS_GTE3_O(3) <= \<const0>\;
  OBUFDS_GTE3_O(2) <= \<const0>\;
  OBUFDS_GTE3_O(1) <= \<const0>\;
  OBUFDS_GTE3_O(0) <= \<const0>\;
  OBUFDS_GTE3_OB(11) <= \<const0>\;
  OBUFDS_GTE3_OB(10) <= \<const0>\;
  OBUFDS_GTE3_OB(9) <= \<const0>\;
  OBUFDS_GTE3_OB(8) <= \<const0>\;
  OBUFDS_GTE3_OB(7) <= \<const0>\;
  OBUFDS_GTE3_OB(6) <= \<const0>\;
  OBUFDS_GTE3_OB(5) <= \<const0>\;
  OBUFDS_GTE3_OB(4) <= \<const0>\;
  OBUFDS_GTE3_OB(3) <= \<const0>\;
  OBUFDS_GTE3_OB(2) <= \<const0>\;
  OBUFDS_GTE3_OB(1) <= \<const0>\;
  OBUFDS_GTE3_OB(0) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(11) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(10) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(9) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(8) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(7) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(6) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(5) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(4) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(3) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(2) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(1) <= \<const0>\;
  OBUFDS_GTE4_ADV_O(0) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(11) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(10) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(9) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(8) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(7) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(6) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(5) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(4) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(3) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(2) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(1) <= \<const0>\;
  OBUFDS_GTE4_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTE4_O(11) <= \<const0>\;
  OBUFDS_GTE4_O(10) <= \<const0>\;
  OBUFDS_GTE4_O(9) <= \<const0>\;
  OBUFDS_GTE4_O(8) <= \<const0>\;
  OBUFDS_GTE4_O(7) <= \<const0>\;
  OBUFDS_GTE4_O(6) <= \<const0>\;
  OBUFDS_GTE4_O(5) <= \<const0>\;
  OBUFDS_GTE4_O(4) <= \<const0>\;
  OBUFDS_GTE4_O(3) <= \<const0>\;
  OBUFDS_GTE4_O(2) <= \<const0>\;
  OBUFDS_GTE4_O(1) <= \<const0>\;
  OBUFDS_GTE4_O(0) <= \<const0>\;
  OBUFDS_GTE4_OB(11) <= \<const0>\;
  OBUFDS_GTE4_OB(10) <= \<const0>\;
  OBUFDS_GTE4_OB(9) <= \<const0>\;
  OBUFDS_GTE4_OB(8) <= \<const0>\;
  OBUFDS_GTE4_OB(7) <= \<const0>\;
  OBUFDS_GTE4_OB(6) <= \<const0>\;
  OBUFDS_GTE4_OB(5) <= \<const0>\;
  OBUFDS_GTE4_OB(4) <= \<const0>\;
  OBUFDS_GTE4_OB(3) <= \<const0>\;
  OBUFDS_GTE4_OB(2) <= \<const0>\;
  OBUFDS_GTE4_OB(1) <= \<const0>\;
  OBUFDS_GTE4_OB(0) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(11) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(10) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(9) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(8) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(7) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(6) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(5) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(4) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(3) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(2) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(1) <= \<const0>\;
  OBUFDS_GTE5_ADV_O(0) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(11) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(10) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(9) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(8) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(7) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(6) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(5) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(4) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(3) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(2) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(1) <= \<const0>\;
  OBUFDS_GTE5_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTE5_O(11) <= \<const0>\;
  OBUFDS_GTE5_O(10) <= \<const0>\;
  OBUFDS_GTE5_O(9) <= \<const0>\;
  OBUFDS_GTE5_O(8) <= \<const0>\;
  OBUFDS_GTE5_O(7) <= \<const0>\;
  OBUFDS_GTE5_O(6) <= \<const0>\;
  OBUFDS_GTE5_O(5) <= \<const0>\;
  OBUFDS_GTE5_O(4) <= \<const0>\;
  OBUFDS_GTE5_O(3) <= \<const0>\;
  OBUFDS_GTE5_O(2) <= \<const0>\;
  OBUFDS_GTE5_O(1) <= \<const0>\;
  OBUFDS_GTE5_O(0) <= \<const0>\;
  OBUFDS_GTE5_OB(11) <= \<const0>\;
  OBUFDS_GTE5_OB(10) <= \<const0>\;
  OBUFDS_GTE5_OB(9) <= \<const0>\;
  OBUFDS_GTE5_OB(8) <= \<const0>\;
  OBUFDS_GTE5_OB(7) <= \<const0>\;
  OBUFDS_GTE5_OB(6) <= \<const0>\;
  OBUFDS_GTE5_OB(5) <= \<const0>\;
  OBUFDS_GTE5_OB(4) <= \<const0>\;
  OBUFDS_GTE5_OB(3) <= \<const0>\;
  OBUFDS_GTE5_OB(2) <= \<const0>\;
  OBUFDS_GTE5_OB(1) <= \<const0>\;
  OBUFDS_GTE5_OB(0) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(11) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(10) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(9) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(8) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(7) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(6) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(5) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(4) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(3) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(2) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(1) <= \<const0>\;
  OBUFDS_GTME5_ADV_O(0) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(11) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(10) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(9) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(8) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(7) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(6) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(5) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(4) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(3) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(2) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(1) <= \<const0>\;
  OBUFDS_GTME5_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTME5_O(11) <= \<const0>\;
  OBUFDS_GTME5_O(10) <= \<const0>\;
  OBUFDS_GTME5_O(9) <= \<const0>\;
  OBUFDS_GTME5_O(8) <= \<const0>\;
  OBUFDS_GTME5_O(7) <= \<const0>\;
  OBUFDS_GTME5_O(6) <= \<const0>\;
  OBUFDS_GTME5_O(5) <= \<const0>\;
  OBUFDS_GTME5_O(4) <= \<const0>\;
  OBUFDS_GTME5_O(3) <= \<const0>\;
  OBUFDS_GTME5_O(2) <= \<const0>\;
  OBUFDS_GTME5_O(1) <= \<const0>\;
  OBUFDS_GTME5_O(0) <= \<const0>\;
  OBUFDS_GTME5_OB(11) <= \<const0>\;
  OBUFDS_GTME5_OB(10) <= \<const0>\;
  OBUFDS_GTME5_OB(9) <= \<const0>\;
  OBUFDS_GTME5_OB(8) <= \<const0>\;
  OBUFDS_GTME5_OB(7) <= \<const0>\;
  OBUFDS_GTME5_OB(6) <= \<const0>\;
  OBUFDS_GTME5_OB(5) <= \<const0>\;
  OBUFDS_GTME5_OB(4) <= \<const0>\;
  OBUFDS_GTME5_OB(3) <= \<const0>\;
  OBUFDS_GTME5_OB(2) <= \<const0>\;
  OBUFDS_GTME5_OB(1) <= \<const0>\;
  OBUFDS_GTME5_OB(0) <= \<const0>\;
  OBUFDS_GTM_ADV_O(11) <= \<const0>\;
  OBUFDS_GTM_ADV_O(10) <= \<const0>\;
  OBUFDS_GTM_ADV_O(9) <= \<const0>\;
  OBUFDS_GTM_ADV_O(8) <= \<const0>\;
  OBUFDS_GTM_ADV_O(7) <= \<const0>\;
  OBUFDS_GTM_ADV_O(6) <= \<const0>\;
  OBUFDS_GTM_ADV_O(5) <= \<const0>\;
  OBUFDS_GTM_ADV_O(4) <= \<const0>\;
  OBUFDS_GTM_ADV_O(3) <= \<const0>\;
  OBUFDS_GTM_ADV_O(2) <= \<const0>\;
  OBUFDS_GTM_ADV_O(1) <= \<const0>\;
  OBUFDS_GTM_ADV_O(0) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(11) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(10) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(9) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(8) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(7) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(6) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(5) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(4) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(3) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(2) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(1) <= \<const0>\;
  OBUFDS_GTM_ADV_OB(0) <= \<const0>\;
  OBUFDS_GTM_O(11) <= \<const0>\;
  OBUFDS_GTM_O(10) <= \<const0>\;
  OBUFDS_GTM_O(9) <= \<const0>\;
  OBUFDS_GTM_O(8) <= \<const0>\;
  OBUFDS_GTM_O(7) <= \<const0>\;
  OBUFDS_GTM_O(6) <= \<const0>\;
  OBUFDS_GTM_O(5) <= \<const0>\;
  OBUFDS_GTM_O(4) <= \<const0>\;
  OBUFDS_GTM_O(3) <= \<const0>\;
  OBUFDS_GTM_O(2) <= \<const0>\;
  OBUFDS_GTM_O(1) <= \<const0>\;
  OBUFDS_GTM_O(0) <= \<const0>\;
  OBUFDS_GTM_OB(11) <= \<const0>\;
  OBUFDS_GTM_OB(10) <= \<const0>\;
  OBUFDS_GTM_OB(9) <= \<const0>\;
  OBUFDS_GTM_OB(8) <= \<const0>\;
  OBUFDS_GTM_OB(7) <= \<const0>\;
  OBUFDS_GTM_OB(6) <= \<const0>\;
  OBUFDS_GTM_OB(5) <= \<const0>\;
  OBUFDS_GTM_OB(4) <= \<const0>\;
  OBUFDS_GTM_OB(3) <= \<const0>\;
  OBUFDS_GTM_OB(2) <= \<const0>\;
  OBUFDS_GTM_OB(1) <= \<const0>\;
  OBUFDS_GTM_OB(0) <= \<const0>\;
  OBUF_DS_N(11) <= \<const0>\;
  OBUF_DS_N(10) <= \<const0>\;
  OBUF_DS_N(9) <= \<const0>\;
  OBUF_DS_N(8) <= \<const0>\;
  OBUF_DS_N(7) <= \<const0>\;
  OBUF_DS_N(6) <= \<const0>\;
  OBUF_DS_N(5) <= \<const0>\;
  OBUF_DS_N(4) <= \<const0>\;
  OBUF_DS_N(3) <= \<const0>\;
  OBUF_DS_N(2) <= \<const0>\;
  OBUF_DS_N(1) <= \<const0>\;
  OBUF_DS_N(0) <= \<const0>\;
  OBUF_DS_P(11) <= \<const0>\;
  OBUF_DS_P(10) <= \<const0>\;
  OBUF_DS_P(9) <= \<const0>\;
  OBUF_DS_P(8) <= \<const0>\;
  OBUF_DS_P(7) <= \<const0>\;
  OBUF_DS_P(6) <= \<const0>\;
  OBUF_DS_P(5) <= \<const0>\;
  OBUF_DS_P(4) <= \<const0>\;
  OBUF_DS_P(3) <= \<const0>\;
  OBUF_DS_P(2) <= \<const0>\;
  OBUF_DS_P(1) <= \<const0>\;
  OBUF_DS_P(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\USE_IOBUF.GEN_IOBUF[0].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(0),
      IO => IOBUF_IO_IO(0),
      O => IOBUF_IO_O(0),
      T => IOBUF_IO_T(0)
    );
\USE_IOBUF.GEN_IOBUF[10].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(10),
      IO => IOBUF_IO_IO(10),
      O => IOBUF_IO_O(10),
      T => IOBUF_IO_T(10)
    );
\USE_IOBUF.GEN_IOBUF[11].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(11),
      IO => IOBUF_IO_IO(11),
      O => IOBUF_IO_O(11),
      T => IOBUF_IO_T(11)
    );
\USE_IOBUF.GEN_IOBUF[1].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(1),
      IO => IOBUF_IO_IO(1),
      O => IOBUF_IO_O(1),
      T => IOBUF_IO_T(1)
    );
\USE_IOBUF.GEN_IOBUF[2].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(2),
      IO => IOBUF_IO_IO(2),
      O => IOBUF_IO_O(2),
      T => IOBUF_IO_T(2)
    );
\USE_IOBUF.GEN_IOBUF[3].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(3),
      IO => IOBUF_IO_IO(3),
      O => IOBUF_IO_O(3),
      T => IOBUF_IO_T(3)
    );
\USE_IOBUF.GEN_IOBUF[4].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(4),
      IO => IOBUF_IO_IO(4),
      O => IOBUF_IO_O(4),
      T => IOBUF_IO_T(4)
    );
\USE_IOBUF.GEN_IOBUF[5].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(5),
      IO => IOBUF_IO_IO(5),
      O => IOBUF_IO_O(5),
      T => IOBUF_IO_T(5)
    );
\USE_IOBUF.GEN_IOBUF[6].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(6),
      IO => IOBUF_IO_IO(6),
      O => IOBUF_IO_O(6),
      T => IOBUF_IO_T(6)
    );
\USE_IOBUF.GEN_IOBUF[7].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(7),
      IO => IOBUF_IO_IO(7),
      O => IOBUF_IO_O(7),
      T => IOBUF_IO_T(7)
    );
\USE_IOBUF.GEN_IOBUF[8].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(8),
      IO => IOBUF_IO_IO(8),
      O => IOBUF_IO_O(8),
      T => IOBUF_IO_T(8)
    );
\USE_IOBUF.GEN_IOBUF[9].IOBUF_I\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IOBUF_IO_I(9),
      IO => IOBUF_IO_IO(9),
      O => IOBUF_IO_O(9),
      T => IOBUF_IO_T(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    IOBUF_IO_T : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IOBUF_IO_I : in STD_LOGIC_VECTOR ( 11 downto 0 );
    IOBUF_IO_O : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IOBUF_IO_IO : inout STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_util_ds_buf_14_0,util_ds_buf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "util_ds_buf,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_BUFGCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_BUFG_FABRIC_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_BUFG_GT_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_BUFG_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_BUFG_PS_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_BUFHCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_BUFH_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_IBUFDS_GTME5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_IBUFDS_GTME5_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_IBUFDS_GTM_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_IBUFDS_GTM_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_IBUF_OUT_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_IOBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_IOBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_MBUFG_GT_O1_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_MBUFG_GT_O2_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_MBUFG_GT_O3_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_MBUFG_GT_O4_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_MBUFG_PS_O1_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_MBUFG_PS_O2_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_MBUFG_PS_O3_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_MBUFG_PS_O4_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE3_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE3_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE3_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE4_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE4_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE4_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE5_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE5_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTE5_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTME5_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTME5_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTME5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTME5_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTM_ADV_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTM_ADV_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTM_O_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUFDS_GTM_OB_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_OBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of U0 : label is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of U0 : label is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of U0 : label is "IOBUF";
  attribute C_MODE : string;
  attribute C_MODE of U0 : label is "PERFORMANCE";
  attribute C_OBUFDS_GTE5_ADV : string;
  attribute C_OBUFDS_GTE5_ADV of U0 : label is "2'b00";
  attribute C_REFCLK_ICNTL_TX : string;
  attribute C_REFCLK_ICNTL_TX of U0 : label is "5'b00000";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of U0 : label is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of U0 : label is 12;
  attribute x_interface_info : string;
  attribute x_interface_info of IOBUF_IO_I : signal is "xilinx.com:signal:clock:1.0 IOBUF_IO_I CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of IOBUF_IO_I : signal is "XIL_INTERFACENAME IOBUF_IO_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of IOBUF_IO_O : signal is "xilinx.com:signal:clock:1.0 IOBUF_IO_O CLK";
  attribute x_interface_parameter of IOBUF_IO_O : signal is "XIL_INTERFACENAME IOBUF_IO_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_util_ds_buf_14_0_IOBUF_IO_O, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf
     port map (
      BUFGCE_CE(11 downto 0) => B"000000000000",
      BUFGCE_CLR(11 downto 0) => B"000000000000",
      BUFGCE_I(11 downto 0) => B"000000000000",
      BUFGCE_O(11 downto 0) => NLW_U0_BUFGCE_O_UNCONNECTED(11 downto 0),
      BUFG_FABRIC_I(11 downto 0) => B"000000000000",
      BUFG_FABRIC_O(11 downto 0) => NLW_U0_BUFG_FABRIC_O_UNCONNECTED(11 downto 0),
      BUFG_GT_CE(11 downto 0) => B"000000000001",
      BUFG_GT_CEMASK(11 downto 0) => B"000000000000",
      BUFG_GT_CLR(11 downto 0) => B"000000000000",
      BUFG_GT_CLRMASK(11 downto 0) => B"000000000000",
      BUFG_GT_DIV(35 downto 0) => B"000000000000000000000000000000000000",
      BUFG_GT_I(11 downto 0) => B"000000000000",
      BUFG_GT_O(11 downto 0) => NLW_U0_BUFG_GT_O_UNCONNECTED(11 downto 0),
      BUFG_I(11 downto 0) => B"000000000000",
      BUFG_O(11 downto 0) => NLW_U0_BUFG_O_UNCONNECTED(11 downto 0),
      BUFG_PS_I(11 downto 0) => B"000000000000",
      BUFG_PS_O(11 downto 0) => NLW_U0_BUFG_PS_O_UNCONNECTED(11 downto 0),
      BUFHCE_CE(11 downto 0) => B"000000000000",
      BUFHCE_I(11 downto 0) => B"000000000000",
      BUFHCE_O(11 downto 0) => NLW_U0_BUFHCE_O_UNCONNECTED(11 downto 0),
      BUFH_I(11 downto 0) => B"000000000000",
      BUFH_O(11 downto 0) => NLW_U0_BUFH_O_UNCONNECTED(11 downto 0),
      IBUFDS_GTME5_CEB(11 downto 0) => B"000000000000",
      IBUFDS_GTME5_I(11 downto 0) => B"000000000000",
      IBUFDS_GTME5_IB(11 downto 0) => B"000000000000",
      IBUFDS_GTME5_O(11 downto 0) => NLW_U0_IBUFDS_GTME5_O_UNCONNECTED(11 downto 0),
      IBUFDS_GTME5_ODIV2(11 downto 0) => NLW_U0_IBUFDS_GTME5_ODIV2_UNCONNECTED(11 downto 0),
      IBUFDS_GTM_CEB(11 downto 0) => B"000000000000",
      IBUFDS_GTM_I(11 downto 0) => B"000000000000",
      IBUFDS_GTM_IB(11 downto 0) => B"000000000000",
      IBUFDS_GTM_O(11 downto 0) => NLW_U0_IBUFDS_GTM_O_UNCONNECTED(11 downto 0),
      IBUFDS_GTM_ODIV2(11 downto 0) => NLW_U0_IBUFDS_GTM_ODIV2_UNCONNECTED(11 downto 0),
      IBUF_DS_CEB(11 downto 0) => B"000000000000",
      IBUF_DS_N(11 downto 0) => B"000000000000",
      IBUF_DS_ODIV2(11 downto 0) => NLW_U0_IBUF_DS_ODIV2_UNCONNECTED(11 downto 0),
      IBUF_DS_P(11 downto 0) => B"000000000000",
      IBUF_OUT(11 downto 0) => NLW_U0_IBUF_OUT_UNCONNECTED(11 downto 0),
      IOBUF_DS_N(11 downto 0) => NLW_U0_IOBUF_DS_N_UNCONNECTED(11 downto 0),
      IOBUF_DS_P(11 downto 0) => NLW_U0_IOBUF_DS_P_UNCONNECTED(11 downto 0),
      IOBUF_IO_I(11 downto 0) => IOBUF_IO_I(11 downto 0),
      IOBUF_IO_IO(11 downto 0) => IOBUF_IO_IO(11 downto 0),
      IOBUF_IO_O(11 downto 0) => IOBUF_IO_O(11 downto 0),
      IOBUF_IO_T(11 downto 0) => IOBUF_IO_T(11 downto 0),
      MBUFG_GT_CE(11 downto 0) => B"000000000001",
      MBUFG_GT_CEMASK(11 downto 0) => B"000000000000",
      MBUFG_GT_CLR(11 downto 0) => B"000000000000",
      MBUFG_GT_CLRB_LEAF(11 downto 0) => B"000000000001",
      MBUFG_GT_CLRMASK(11 downto 0) => B"000000000000",
      MBUFG_GT_DIV(35 downto 0) => B"000000000000000000000000000000000000",
      MBUFG_GT_I(11 downto 0) => B"000000000000",
      MBUFG_GT_O1(11 downto 0) => NLW_U0_MBUFG_GT_O1_UNCONNECTED(11 downto 0),
      MBUFG_GT_O2(11 downto 0) => NLW_U0_MBUFG_GT_O2_UNCONNECTED(11 downto 0),
      MBUFG_GT_O3(11 downto 0) => NLW_U0_MBUFG_GT_O3_UNCONNECTED(11 downto 0),
      MBUFG_GT_O4(11 downto 0) => NLW_U0_MBUFG_GT_O4_UNCONNECTED(11 downto 0),
      MBUFG_PS_CLRB_LEAF(11 downto 0) => B"000000000001",
      MBUFG_PS_I(11 downto 0) => B"000000000000",
      MBUFG_PS_O1(11 downto 0) => NLW_U0_MBUFG_PS_O1_UNCONNECTED(11 downto 0),
      MBUFG_PS_O2(11 downto 0) => NLW_U0_MBUFG_PS_O2_UNCONNECTED(11 downto 0),
      MBUFG_PS_O3(11 downto 0) => NLW_U0_MBUFG_PS_O3_UNCONNECTED(11 downto 0),
      MBUFG_PS_O4(11 downto 0) => NLW_U0_MBUFG_PS_O4_UNCONNECTED(11 downto 0),
      OBUFDS_GTE3_ADV_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTE3_ADV_I(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      OBUFDS_GTE3_ADV_O(11 downto 0) => NLW_U0_OBUFDS_GTE3_ADV_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTE3_ADV_OB(11 downto 0) => NLW_U0_OBUFDS_GTE3_ADV_OB_UNCONNECTED(11 downto 0),
      OBUFDS_GTE3_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTE3_I(11 downto 0) => B"000000000000",
      OBUFDS_GTE3_O(11 downto 0) => NLW_U0_OBUFDS_GTE3_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTE3_OB(11 downto 0) => NLW_U0_OBUFDS_GTE3_OB_UNCONNECTED(11 downto 0),
      OBUFDS_GTE4_ADV_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTE4_ADV_I(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      OBUFDS_GTE4_ADV_O(11 downto 0) => NLW_U0_OBUFDS_GTE4_ADV_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTE4_ADV_OB(11 downto 0) => NLW_U0_OBUFDS_GTE4_ADV_OB_UNCONNECTED(11 downto 0),
      OBUFDS_GTE4_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTE4_I(11 downto 0) => B"000000000000",
      OBUFDS_GTE4_O(11 downto 0) => NLW_U0_OBUFDS_GTE4_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTE4_OB(11 downto 0) => NLW_U0_OBUFDS_GTE4_OB_UNCONNECTED(11 downto 0),
      OBUFDS_GTE5_ADV_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTE5_ADV_I(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      OBUFDS_GTE5_ADV_O(11 downto 0) => NLW_U0_OBUFDS_GTE5_ADV_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTE5_ADV_OB(11 downto 0) => NLW_U0_OBUFDS_GTE5_ADV_OB_UNCONNECTED(11 downto 0),
      OBUFDS_GTE5_ADV_RXRECCLKSEL(23 downto 0) => B"000000000000000000000000",
      OBUFDS_GTE5_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTE5_I(11 downto 0) => B"000000000000",
      OBUFDS_GTE5_O(11 downto 0) => NLW_U0_OBUFDS_GTE5_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTE5_OB(11 downto 0) => NLW_U0_OBUFDS_GTE5_OB_UNCONNECTED(11 downto 0),
      OBUFDS_GTME5_ADV_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTME5_ADV_I(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      OBUFDS_GTME5_ADV_O(11 downto 0) => NLW_U0_OBUFDS_GTME5_ADV_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTME5_ADV_OB(11 downto 0) => NLW_U0_OBUFDS_GTME5_ADV_OB_UNCONNECTED(11 downto 0),
      OBUFDS_GTME5_ADV_RXRECCLKSEL(23 downto 0) => B"000000000000000000000000",
      OBUFDS_GTME5_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTME5_I(11 downto 0) => B"000000000000",
      OBUFDS_GTME5_O(11 downto 0) => NLW_U0_OBUFDS_GTME5_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTME5_OB(11 downto 0) => NLW_U0_OBUFDS_GTME5_OB_UNCONNECTED(11 downto 0),
      OBUFDS_GTM_ADV_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTM_ADV_I(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      OBUFDS_GTM_ADV_O(11 downto 0) => NLW_U0_OBUFDS_GTM_ADV_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTM_ADV_OB(11 downto 0) => NLW_U0_OBUFDS_GTM_ADV_OB_UNCONNECTED(11 downto 0),
      OBUFDS_GTM_CEB(11 downto 0) => B"000000000000",
      OBUFDS_GTM_I(11 downto 0) => B"000000000000",
      OBUFDS_GTM_O(11 downto 0) => NLW_U0_OBUFDS_GTM_O_UNCONNECTED(11 downto 0),
      OBUFDS_GTM_OB(11 downto 0) => NLW_U0_OBUFDS_GTM_OB_UNCONNECTED(11 downto 0),
      OBUF_DS_N(11 downto 0) => NLW_U0_OBUF_DS_N_UNCONNECTED(11 downto 0),
      OBUF_DS_P(11 downto 0) => NLW_U0_OBUF_DS_P_UNCONNECTED(11 downto 0),
      OBUF_IN(11 downto 0) => B"000000000000",
      RXRECCLK_SEL_GTE3_ADV(23 downto 0) => B"000000000000000000000000",
      RXRECCLK_SEL_GTE4_ADV(23 downto 0) => B"000000000000000000000000"
    );
end STRUCTURE;
