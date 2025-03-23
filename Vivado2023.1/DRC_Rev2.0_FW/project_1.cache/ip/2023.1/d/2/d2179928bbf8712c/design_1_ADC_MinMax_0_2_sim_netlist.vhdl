-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Feb  5 01:30:37 2025
-- Host        : OCP001 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ADC_MinMax_0_2_sim_netlist.vhdl
-- Design      : design_1_ADC_MinMax_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_MinMax is
  port (
    CHAMAX_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHBMAX_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHAMIN_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHBMIN_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DCKIN : in STD_LOGIC;
    ADCDATA : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CLKIN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_MinMax;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_MinMax is
  signal CHAMAX : STD_LOGIC;
  signal CHAMAX0_carry_i_10_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_11_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_12_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_1_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_2_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_3_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_4_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_5_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_6_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_7_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_8_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_i_9_n_0 : STD_LOGIC;
  signal CHAMAX0_carry_n_2 : STD_LOGIC;
  signal CHAMAX0_carry_n_3 : STD_LOGIC;
  signal CHAMAX0_carry_n_4 : STD_LOGIC;
  signal CHAMAX0_carry_n_5 : STD_LOGIC;
  signal CHAMAX0_carry_n_6 : STD_LOGIC;
  signal CHAMAX0_carry_n_7 : STD_LOGIC;
  signal \CHAMAX_OUT_SIG[11]_i_1_n_0\ : STD_LOGIC;
  signal \CHAMAX_OUT_SIG[11]_i_2_n_0\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[0]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[10]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[11]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[1]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[2]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[3]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[4]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[5]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[6]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[7]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[8]\ : STD_LOGIC;
  signal \CHAMAX_reg_n_0_[9]\ : STD_LOGIC;
  signal CHAMIN : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal CHAMIN0_carry_i_10_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_11_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_12_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_1_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_2_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_3_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_4_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_5_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_6_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_7_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_8_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_i_9_n_0 : STD_LOGIC;
  signal CHAMIN0_carry_n_2 : STD_LOGIC;
  signal CHAMIN0_carry_n_3 : STD_LOGIC;
  signal CHAMIN0_carry_n_4 : STD_LOGIC;
  signal CHAMIN0_carry_n_5 : STD_LOGIC;
  signal CHAMIN0_carry_n_6 : STD_LOGIC;
  signal CHAMIN0_carry_n_7 : STD_LOGIC;
  signal CHAMIN_0 : STD_LOGIC;
  signal CHBMAX : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal CHBMAX0_carry_i_10_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_11_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_12_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_1_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_2_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_3_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_4_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_5_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_6_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_7_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_8_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_i_9_n_0 : STD_LOGIC;
  signal CHBMAX0_carry_n_2 : STD_LOGIC;
  signal CHBMAX0_carry_n_3 : STD_LOGIC;
  signal CHBMAX0_carry_n_4 : STD_LOGIC;
  signal CHBMAX0_carry_n_5 : STD_LOGIC;
  signal CHBMAX0_carry_n_6 : STD_LOGIC;
  signal CHBMAX0_carry_n_7 : STD_LOGIC;
  signal \CHBMAX[11]_i_1_n_0\ : STD_LOGIC;
  signal CHBMIN : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal CHBMIN0_carry_i_10_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_11_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_12_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_1_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_2_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_3_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_4_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_5_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_6_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_7_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_8_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_i_9_n_0 : STD_LOGIC;
  signal CHBMIN0_carry_n_2 : STD_LOGIC;
  signal CHBMIN0_carry_n_3 : STD_LOGIC;
  signal CHBMIN0_carry_n_4 : STD_LOGIC;
  signal CHBMIN0_carry_n_5 : STD_LOGIC;
  signal CHBMIN0_carry_n_6 : STD_LOGIC;
  signal CHBMIN0_carry_n_7 : STD_LOGIC;
  signal \CHBMIN[11]_i_1_n_0\ : STD_LOGIC;
  signal \count520[9]_i_1_n_0\ : STD_LOGIC;
  signal \count520[9]_i_3_n_0\ : STD_LOGIC;
  signal count520_reg : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal \count520_reg_n_0_[0]\ : STD_LOGIC;
  signal \count520_reg_n_0_[1]\ : STD_LOGIC;
  signal \count520_reg_n_0_[2]\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_CHAMAX0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_CHAMAX0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_CHAMIN0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_CHAMIN0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_CHBMAX0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_CHBMAX0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_CHBMIN0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_CHBMIN0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of CHAMAX0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of CHAMIN0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of CHBMAX0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of CHBMIN0_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count520[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count520[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count520[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count520[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count520[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count520[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count520[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count520[9]_i_2\ : label is "soft_lutpair0";
begin
CHAMAX0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_CHAMAX0_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => CHAMAX0_carry_n_2,
      CO(4) => CHAMAX0_carry_n_3,
      CO(3) => CHAMAX0_carry_n_4,
      CO(2) => CHAMAX0_carry_n_5,
      CO(1) => CHAMAX0_carry_n_6,
      CO(0) => CHAMAX0_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => CHAMAX0_carry_i_1_n_0,
      DI(4) => CHAMAX0_carry_i_2_n_0,
      DI(3) => CHAMAX0_carry_i_3_n_0,
      DI(2) => CHAMAX0_carry_i_4_n_0,
      DI(1) => CHAMAX0_carry_i_5_n_0,
      DI(0) => CHAMAX0_carry_i_6_n_0,
      O(7 downto 0) => NLW_CHAMAX0_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => CHAMAX0_carry_i_7_n_0,
      S(4) => CHAMAX0_carry_i_8_n_0,
      S(3) => CHAMAX0_carry_i_9_n_0,
      S(2) => CHAMAX0_carry_i_10_n_0,
      S(1) => CHAMAX0_carry_i_11_n_0,
      S(0) => CHAMAX0_carry_i_12_n_0
    );
CHAMAX0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(10),
      I1 => \CHAMAX_reg_n_0_[10]\,
      I2 => ADCDATA(11),
      I3 => \CHAMAX_reg_n_0_[11]\,
      O => CHAMAX0_carry_i_1_n_0
    );
CHAMAX0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(4),
      I1 => \CHAMAX_reg_n_0_[4]\,
      I2 => ADCDATA(5),
      I3 => \CHAMAX_reg_n_0_[5]\,
      O => CHAMAX0_carry_i_10_n_0
    );
CHAMAX0_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(2),
      I1 => \CHAMAX_reg_n_0_[2]\,
      I2 => ADCDATA(3),
      I3 => \CHAMAX_reg_n_0_[3]\,
      O => CHAMAX0_carry_i_11_n_0
    );
CHAMAX0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(0),
      I1 => \CHAMAX_reg_n_0_[0]\,
      I2 => ADCDATA(1),
      I3 => \CHAMAX_reg_n_0_[1]\,
      O => CHAMAX0_carry_i_12_n_0
    );
CHAMAX0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(8),
      I1 => \CHAMAX_reg_n_0_[8]\,
      I2 => \CHAMAX_reg_n_0_[9]\,
      I3 => ADCDATA(9),
      O => CHAMAX0_carry_i_2_n_0
    );
CHAMAX0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(6),
      I1 => \CHAMAX_reg_n_0_[6]\,
      I2 => \CHAMAX_reg_n_0_[7]\,
      I3 => ADCDATA(7),
      O => CHAMAX0_carry_i_3_n_0
    );
CHAMAX0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(4),
      I1 => \CHAMAX_reg_n_0_[4]\,
      I2 => \CHAMAX_reg_n_0_[5]\,
      I3 => ADCDATA(5),
      O => CHAMAX0_carry_i_4_n_0
    );
CHAMAX0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(2),
      I1 => \CHAMAX_reg_n_0_[2]\,
      I2 => \CHAMAX_reg_n_0_[3]\,
      I3 => ADCDATA(3),
      O => CHAMAX0_carry_i_5_n_0
    );
CHAMAX0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(0),
      I1 => \CHAMAX_reg_n_0_[0]\,
      I2 => \CHAMAX_reg_n_0_[1]\,
      I3 => ADCDATA(1),
      O => CHAMAX0_carry_i_6_n_0
    );
CHAMAX0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(10),
      I1 => \CHAMAX_reg_n_0_[10]\,
      I2 => \CHAMAX_reg_n_0_[11]\,
      I3 => ADCDATA(11),
      O => CHAMAX0_carry_i_7_n_0
    );
CHAMAX0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(8),
      I1 => \CHAMAX_reg_n_0_[8]\,
      I2 => ADCDATA(9),
      I3 => \CHAMAX_reg_n_0_[9]\,
      O => CHAMAX0_carry_i_8_n_0
    );
CHAMAX0_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(6),
      I1 => \CHAMAX_reg_n_0_[6]\,
      I2 => ADCDATA(7),
      I3 => \CHAMAX_reg_n_0_[7]\,
      O => CHAMAX0_carry_i_9_n_0
    );
\CHAMAX[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DCKIN,
      I1 => CHAMAX0_carry_n_2,
      O => CHAMAX
    );
\CHAMAX_OUT_SIG[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \CHAMAX_OUT_SIG[11]_i_2_n_0\,
      I1 => count520_reg(9),
      I2 => DCKIN,
      O => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_OUT_SIG[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count520_reg(5),
      I1 => count520_reg(4),
      I2 => count520_reg(8),
      I3 => count520_reg(3),
      I4 => count520_reg(6),
      I5 => count520_reg(7),
      O => \CHAMAX_OUT_SIG[11]_i_2_n_0\
    );
\CHAMAX_OUT_SIG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[0]\,
      Q => CHAMAX_OUT(0),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[10]\,
      Q => CHAMAX_OUT(10),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[11]\,
      Q => CHAMAX_OUT(11),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[1]\,
      Q => CHAMAX_OUT(1),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[2]\,
      Q => CHAMAX_OUT(2),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[3]\,
      Q => CHAMAX_OUT(3),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[4]\,
      Q => CHAMAX_OUT(4),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[5]\,
      Q => CHAMAX_OUT(5),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[6]\,
      Q => CHAMAX_OUT(6),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[7]\,
      Q => CHAMAX_OUT(7),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[8]\,
      Q => CHAMAX_OUT(8),
      R => '0'
    );
\CHAMAX_OUT_SIG_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => \CHAMAX_reg_n_0_[9]\,
      Q => CHAMAX_OUT(9),
      R => '0'
    );
\CHAMAX_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(0),
      Q => \CHAMAX_reg_n_0_[0]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(10),
      Q => \CHAMAX_reg_n_0_[10]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(11),
      Q => \CHAMAX_reg_n_0_[11]\,
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(1),
      Q => \CHAMAX_reg_n_0_[1]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(2),
      Q => \CHAMAX_reg_n_0_[2]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(3),
      Q => \CHAMAX_reg_n_0_[3]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(4),
      Q => \CHAMAX_reg_n_0_[4]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(5),
      Q => \CHAMAX_reg_n_0_[5]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(6),
      Q => \CHAMAX_reg_n_0_[6]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(7),
      Q => \CHAMAX_reg_n_0_[7]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(8),
      Q => \CHAMAX_reg_n_0_[8]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMAX_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMAX,
      D => ADCDATA(9),
      Q => \CHAMAX_reg_n_0_[9]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
CHAMIN0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_CHAMIN0_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => CHAMIN0_carry_n_2,
      CO(4) => CHAMIN0_carry_n_3,
      CO(3) => CHAMIN0_carry_n_4,
      CO(2) => CHAMIN0_carry_n_5,
      CO(1) => CHAMIN0_carry_n_6,
      CO(0) => CHAMIN0_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => CHAMIN0_carry_i_1_n_0,
      DI(4) => CHAMIN0_carry_i_2_n_0,
      DI(3) => CHAMIN0_carry_i_3_n_0,
      DI(2) => CHAMIN0_carry_i_4_n_0,
      DI(1) => CHAMIN0_carry_i_5_n_0,
      DI(0) => CHAMIN0_carry_i_6_n_0,
      O(7 downto 0) => NLW_CHAMIN0_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => CHAMIN0_carry_i_7_n_0,
      S(4) => CHAMIN0_carry_i_8_n_0,
      S(3) => CHAMIN0_carry_i_9_n_0,
      S(2) => CHAMIN0_carry_i_10_n_0,
      S(1) => CHAMIN0_carry_i_11_n_0,
      S(0) => CHAMIN0_carry_i_12_n_0
    );
CHAMIN0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHAMIN(10),
      I1 => ADCDATA(10),
      I2 => CHAMIN(11),
      I3 => ADCDATA(11),
      O => CHAMIN0_carry_i_1_n_0
    );
CHAMIN0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHAMIN(4),
      I1 => ADCDATA(4),
      I2 => CHAMIN(5),
      I3 => ADCDATA(5),
      O => CHAMIN0_carry_i_10_n_0
    );
CHAMIN0_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHAMIN(2),
      I1 => ADCDATA(2),
      I2 => CHAMIN(3),
      I3 => ADCDATA(3),
      O => CHAMIN0_carry_i_11_n_0
    );
CHAMIN0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHAMIN(0),
      I1 => ADCDATA(0),
      I2 => CHAMIN(1),
      I3 => ADCDATA(1),
      O => CHAMIN0_carry_i_12_n_0
    );
CHAMIN0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHAMIN(8),
      I1 => ADCDATA(8),
      I2 => ADCDATA(9),
      I3 => CHAMIN(9),
      O => CHAMIN0_carry_i_2_n_0
    );
CHAMIN0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHAMIN(6),
      I1 => ADCDATA(6),
      I2 => ADCDATA(7),
      I3 => CHAMIN(7),
      O => CHAMIN0_carry_i_3_n_0
    );
CHAMIN0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHAMIN(4),
      I1 => ADCDATA(4),
      I2 => ADCDATA(5),
      I3 => CHAMIN(5),
      O => CHAMIN0_carry_i_4_n_0
    );
CHAMIN0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHAMIN(2),
      I1 => ADCDATA(2),
      I2 => ADCDATA(3),
      I3 => CHAMIN(3),
      O => CHAMIN0_carry_i_5_n_0
    );
CHAMIN0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHAMIN(0),
      I1 => ADCDATA(0),
      I2 => ADCDATA(1),
      I3 => CHAMIN(1),
      O => CHAMIN0_carry_i_6_n_0
    );
CHAMIN0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHAMIN(10),
      I1 => ADCDATA(10),
      I2 => ADCDATA(11),
      I3 => CHAMIN(11),
      O => CHAMIN0_carry_i_7_n_0
    );
CHAMIN0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHAMIN(8),
      I1 => ADCDATA(8),
      I2 => CHAMIN(9),
      I3 => ADCDATA(9),
      O => CHAMIN0_carry_i_8_n_0
    );
CHAMIN0_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHAMIN(6),
      I1 => ADCDATA(6),
      I2 => CHAMIN(7),
      I3 => ADCDATA(7),
      O => CHAMIN0_carry_i_9_n_0
    );
\CHAMIN[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => DCKIN,
      I1 => CHAMIN0_carry_n_2,
      O => CHAMIN_0
    );
\CHAMIN_OUT_SIG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(0),
      Q => CHAMIN_OUT(0),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(10),
      Q => CHAMIN_OUT(10),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(11),
      Q => CHAMIN_OUT(11),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(1),
      Q => CHAMIN_OUT(1),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(2),
      Q => CHAMIN_OUT(2),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(3),
      Q => CHAMIN_OUT(3),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(4),
      Q => CHAMIN_OUT(4),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(5),
      Q => CHAMIN_OUT(5),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(6),
      Q => CHAMIN_OUT(6),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(7),
      Q => CHAMIN_OUT(7),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(8),
      Q => CHAMIN_OUT(8),
      R => '0'
    );
\CHAMIN_OUT_SIG_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHAMIN(9),
      Q => CHAMIN_OUT(9),
      R => '0'
    );
\CHAMIN_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(0),
      Q => CHAMIN(0),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(10),
      Q => CHAMIN(10),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(11),
      Q => CHAMIN(11),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(1),
      Q => CHAMIN(1),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(2),
      Q => CHAMIN(2),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(3),
      Q => CHAMIN(3),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(4),
      Q => CHAMIN(4),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(5),
      Q => CHAMIN(5),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(6),
      Q => CHAMIN(6),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(7),
      Q => CHAMIN(7),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(8),
      Q => CHAMIN(8),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHAMIN_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => CHAMIN_0,
      D => ADCDATA(9),
      Q => CHAMIN(9),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
CHBMAX0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_CHBMAX0_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => CHBMAX0_carry_n_2,
      CO(4) => CHBMAX0_carry_n_3,
      CO(3) => CHBMAX0_carry_n_4,
      CO(2) => CHBMAX0_carry_n_5,
      CO(1) => CHBMAX0_carry_n_6,
      CO(0) => CHBMAX0_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => CHBMAX0_carry_i_1_n_0,
      DI(4) => CHBMAX0_carry_i_2_n_0,
      DI(3) => CHBMAX0_carry_i_3_n_0,
      DI(2) => CHBMAX0_carry_i_4_n_0,
      DI(1) => CHBMAX0_carry_i_5_n_0,
      DI(0) => CHBMAX0_carry_i_6_n_0,
      O(7 downto 0) => NLW_CHBMAX0_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => CHBMAX0_carry_i_7_n_0,
      S(4) => CHBMAX0_carry_i_8_n_0,
      S(3) => CHBMAX0_carry_i_9_n_0,
      S(2) => CHBMAX0_carry_i_10_n_0,
      S(1) => CHBMAX0_carry_i_11_n_0,
      S(0) => CHBMAX0_carry_i_12_n_0
    );
CHBMAX0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(10),
      I1 => CHBMAX(10),
      I2 => ADCDATA(11),
      I3 => CHBMAX(11),
      O => CHBMAX0_carry_i_1_n_0
    );
CHBMAX0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(4),
      I1 => CHBMAX(4),
      I2 => ADCDATA(5),
      I3 => CHBMAX(5),
      O => CHBMAX0_carry_i_10_n_0
    );
CHBMAX0_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(2),
      I1 => CHBMAX(2),
      I2 => ADCDATA(3),
      I3 => CHBMAX(3),
      O => CHBMAX0_carry_i_11_n_0
    );
CHBMAX0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(0),
      I1 => CHBMAX(0),
      I2 => ADCDATA(1),
      I3 => CHBMAX(1),
      O => CHBMAX0_carry_i_12_n_0
    );
CHBMAX0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(8),
      I1 => CHBMAX(8),
      I2 => CHBMAX(9),
      I3 => ADCDATA(9),
      O => CHBMAX0_carry_i_2_n_0
    );
CHBMAX0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(6),
      I1 => CHBMAX(6),
      I2 => CHBMAX(7),
      I3 => ADCDATA(7),
      O => CHBMAX0_carry_i_3_n_0
    );
CHBMAX0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(4),
      I1 => CHBMAX(4),
      I2 => CHBMAX(5),
      I3 => ADCDATA(5),
      O => CHBMAX0_carry_i_4_n_0
    );
CHBMAX0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(2),
      I1 => CHBMAX(2),
      I2 => CHBMAX(3),
      I3 => ADCDATA(3),
      O => CHBMAX0_carry_i_5_n_0
    );
CHBMAX0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ADCDATA(0),
      I1 => CHBMAX(0),
      I2 => CHBMAX(1),
      I3 => ADCDATA(1),
      O => CHBMAX0_carry_i_6_n_0
    );
CHBMAX0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(10),
      I1 => CHBMAX(10),
      I2 => CHBMAX(11),
      I3 => ADCDATA(11),
      O => CHBMAX0_carry_i_7_n_0
    );
CHBMAX0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(8),
      I1 => CHBMAX(8),
      I2 => ADCDATA(9),
      I3 => CHBMAX(9),
      O => CHBMAX0_carry_i_8_n_0
    );
CHBMAX0_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ADCDATA(6),
      I1 => CHBMAX(6),
      I2 => ADCDATA(7),
      I3 => CHBMAX(7),
      O => CHBMAX0_carry_i_9_n_0
    );
\CHBMAX[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CHBMAX0_carry_n_2,
      I1 => DCKIN,
      O => \CHBMAX[11]_i_1_n_0\
    );
\CHBMAX_OUT_SIG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(0),
      Q => CHBMAX_OUT(0),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(10),
      Q => CHBMAX_OUT(10),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(11),
      Q => CHBMAX_OUT(11),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(1),
      Q => CHBMAX_OUT(1),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(2),
      Q => CHBMAX_OUT(2),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(3),
      Q => CHBMAX_OUT(3),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(4),
      Q => CHBMAX_OUT(4),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(5),
      Q => CHBMAX_OUT(5),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(6),
      Q => CHBMAX_OUT(6),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(7),
      Q => CHBMAX_OUT(7),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(8),
      Q => CHBMAX_OUT(8),
      R => '0'
    );
\CHBMAX_OUT_SIG_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMAX(9),
      Q => CHBMAX_OUT(9),
      R => '0'
    );
\CHBMAX_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(0),
      Q => CHBMAX(0),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(10),
      Q => CHBMAX(10),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(11),
      Q => CHBMAX(11),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(1),
      Q => CHBMAX(1),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(2),
      Q => CHBMAX(2),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(3),
      Q => CHBMAX(3),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(4),
      Q => CHBMAX(4),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(5),
      Q => CHBMAX(5),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(6),
      Q => CHBMAX(6),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(7),
      Q => CHBMAX(7),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(8),
      Q => CHBMAX(8),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMAX_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMAX[11]_i_1_n_0\,
      D => ADCDATA(9),
      Q => CHBMAX(9),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
CHBMIN0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 6) => NLW_CHBMIN0_carry_CO_UNCONNECTED(7 downto 6),
      CO(5) => CHBMIN0_carry_n_2,
      CO(4) => CHBMIN0_carry_n_3,
      CO(3) => CHBMIN0_carry_n_4,
      CO(2) => CHBMIN0_carry_n_5,
      CO(1) => CHBMIN0_carry_n_6,
      CO(0) => CHBMIN0_carry_n_7,
      DI(7 downto 6) => B"00",
      DI(5) => CHBMIN0_carry_i_1_n_0,
      DI(4) => CHBMIN0_carry_i_2_n_0,
      DI(3) => CHBMIN0_carry_i_3_n_0,
      DI(2) => CHBMIN0_carry_i_4_n_0,
      DI(1) => CHBMIN0_carry_i_5_n_0,
      DI(0) => CHBMIN0_carry_i_6_n_0,
      O(7 downto 0) => NLW_CHBMIN0_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 6) => B"00",
      S(5) => CHBMIN0_carry_i_7_n_0,
      S(4) => CHBMIN0_carry_i_8_n_0,
      S(3) => CHBMIN0_carry_i_9_n_0,
      S(2) => CHBMIN0_carry_i_10_n_0,
      S(1) => CHBMIN0_carry_i_11_n_0,
      S(0) => CHBMIN0_carry_i_12_n_0
    );
CHBMIN0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHBMIN(10),
      I1 => ADCDATA(10),
      I2 => CHBMIN(11),
      I3 => ADCDATA(11),
      O => CHBMIN0_carry_i_1_n_0
    );
CHBMIN0_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHBMIN(4),
      I1 => ADCDATA(4),
      I2 => CHBMIN(5),
      I3 => ADCDATA(5),
      O => CHBMIN0_carry_i_10_n_0
    );
CHBMIN0_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHBMIN(2),
      I1 => ADCDATA(2),
      I2 => CHBMIN(3),
      I3 => ADCDATA(3),
      O => CHBMIN0_carry_i_11_n_0
    );
CHBMIN0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHBMIN(0),
      I1 => ADCDATA(0),
      I2 => CHBMIN(1),
      I3 => ADCDATA(1),
      O => CHBMIN0_carry_i_12_n_0
    );
CHBMIN0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHBMIN(8),
      I1 => ADCDATA(8),
      I2 => ADCDATA(9),
      I3 => CHBMIN(9),
      O => CHBMIN0_carry_i_2_n_0
    );
CHBMIN0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHBMIN(6),
      I1 => ADCDATA(6),
      I2 => ADCDATA(7),
      I3 => CHBMIN(7),
      O => CHBMIN0_carry_i_3_n_0
    );
CHBMIN0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHBMIN(4),
      I1 => ADCDATA(4),
      I2 => ADCDATA(5),
      I3 => CHBMIN(5),
      O => CHBMIN0_carry_i_4_n_0
    );
CHBMIN0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHBMIN(2),
      I1 => ADCDATA(2),
      I2 => ADCDATA(3),
      I3 => CHBMIN(3),
      O => CHBMIN0_carry_i_5_n_0
    );
CHBMIN0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => CHBMIN(0),
      I1 => ADCDATA(0),
      I2 => ADCDATA(1),
      I3 => CHBMIN(1),
      O => CHBMIN0_carry_i_6_n_0
    );
CHBMIN0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHBMIN(10),
      I1 => ADCDATA(10),
      I2 => ADCDATA(11),
      I3 => CHBMIN(11),
      O => CHBMIN0_carry_i_7_n_0
    );
CHBMIN0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHBMIN(8),
      I1 => ADCDATA(8),
      I2 => CHBMIN(9),
      I3 => ADCDATA(9),
      O => CHBMIN0_carry_i_8_n_0
    );
CHBMIN0_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => CHBMIN(6),
      I1 => ADCDATA(6),
      I2 => CHBMIN(7),
      I3 => ADCDATA(7),
      O => CHBMIN0_carry_i_9_n_0
    );
\CHBMIN[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CHBMIN0_carry_n_2,
      I1 => DCKIN,
      O => \CHBMIN[11]_i_1_n_0\
    );
\CHBMIN_OUT_SIG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(0),
      Q => CHBMIN_OUT(0),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(10),
      Q => CHBMIN_OUT(10),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(11),
      Q => CHBMIN_OUT(11),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(1),
      Q => CHBMIN_OUT(1),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(2),
      Q => CHBMIN_OUT(2),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(3),
      Q => CHBMIN_OUT(3),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(4),
      Q => CHBMIN_OUT(4),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(5),
      Q => CHBMIN_OUT(5),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(6),
      Q => CHBMIN_OUT(6),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(7),
      Q => CHBMIN_OUT(7),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(8),
      Q => CHBMIN_OUT(8),
      R => '0'
    );
\CHBMIN_OUT_SIG_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHAMAX_OUT_SIG[11]_i_1_n_0\,
      D => CHBMIN(9),
      Q => CHBMIN_OUT(9),
      R => '0'
    );
\CHBMIN_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(0),
      Q => CHBMIN(0),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(10),
      Q => CHBMIN(10),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(11),
      Q => CHBMIN(11),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(1),
      Q => CHBMIN(1),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(2),
      Q => CHBMIN(2),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(3),
      Q => CHBMIN(3),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(4),
      Q => CHBMIN(4),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(5),
      Q => CHBMIN(5),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(6),
      Q => CHBMIN(6),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(7),
      Q => CHBMIN(7),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(8),
      Q => CHBMIN(8),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\CHBMIN_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \CHBMIN[11]_i_1_n_0\,
      D => ADCDATA(9),
      Q => CHBMIN(9),
      S => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count520_reg_n_0_[0]\,
      O => plusOp(0)
    );
\count520[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count520_reg_n_0_[0]\,
      I1 => \count520_reg_n_0_[1]\,
      O => plusOp(1)
    );
\count520[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count520_reg_n_0_[0]\,
      I1 => \count520_reg_n_0_[1]\,
      I2 => \count520_reg_n_0_[2]\,
      O => plusOp(2)
    );
\count520[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count520_reg_n_0_[1]\,
      I1 => \count520_reg_n_0_[0]\,
      I2 => \count520_reg_n_0_[2]\,
      I3 => count520_reg(3),
      O => plusOp(3)
    );
\count520[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count520_reg_n_0_[2]\,
      I1 => \count520_reg_n_0_[0]\,
      I2 => \count520_reg_n_0_[1]\,
      I3 => count520_reg(3),
      I4 => count520_reg(4),
      O => plusOp(4)
    );
\count520[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => count520_reg(3),
      I1 => \count520_reg_n_0_[1]\,
      I2 => \count520_reg_n_0_[0]\,
      I3 => \count520_reg_n_0_[2]\,
      I4 => count520_reg(4),
      I5 => count520_reg(5),
      O => plusOp(5)
    );
\count520[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count520[9]_i_3_n_0\,
      I1 => count520_reg(6),
      O => plusOp(6)
    );
\count520[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count520[9]_i_3_n_0\,
      I1 => count520_reg(6),
      I2 => count520_reg(7),
      O => plusOp(7)
    );
\count520[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count520_reg(6),
      I1 => \count520[9]_i_3_n_0\,
      I2 => count520_reg(7),
      I3 => count520_reg(8),
      O => plusOp(8)
    );
\count520[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DCKIN,
      O => \count520[9]_i_1_n_0\
    );
\count520[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count520_reg(7),
      I1 => \count520[9]_i_3_n_0\,
      I2 => count520_reg(6),
      I3 => count520_reg(8),
      I4 => count520_reg(9),
      O => plusOp(9)
    );
\count520[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count520_reg(5),
      I1 => count520_reg(3),
      I2 => \count520_reg_n_0_[1]\,
      I3 => \count520_reg_n_0_[0]\,
      I4 => \count520_reg_n_0_[2]\,
      I5 => count520_reg(4),
      O => \count520[9]_i_3_n_0\
    );
\count520_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(0),
      Q => \count520_reg_n_0_[0]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(1),
      Q => \count520_reg_n_0_[1]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(2),
      Q => \count520_reg_n_0_[2]\,
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(3),
      Q => count520_reg(3),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(4),
      Q => count520_reg(4),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(5),
      Q => count520_reg(5),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(6),
      Q => count520_reg(6),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(7),
      Q => count520_reg(7),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(8),
      Q => count520_reg(8),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
\count520_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \count520[9]_i_1_n_0\,
      D => plusOp(9),
      Q => count520_reg(9),
      R => \CHAMAX_OUT_SIG[11]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ADCDATA : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CHAMAX_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHBMAX_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHAMIN_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHBMIN_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DCKIN : in STD_LOGIC;
    CLKIN : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ADC_MinMax_0_2,ADC_MinMax,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ADC_MinMax,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLKIN : signal is "xilinx.com:signal:clock:1.0 CLKIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLKIN : signal is "XIL_INTERFACENAME CLKIN, FREQ_HZ 519994800, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_MinMax
     port map (
      ADCDATA(11 downto 0) => ADCDATA(11 downto 0),
      CHAMAX_OUT(11 downto 0) => CHAMAX_OUT(11 downto 0),
      CHAMIN_OUT(11 downto 0) => CHAMIN_OUT(11 downto 0),
      CHBMAX_OUT(11 downto 0) => CHBMAX_OUT(11 downto 0),
      CHBMIN_OUT(11 downto 0) => CHBMIN_OUT(11 downto 0),
      CLKIN => CLKIN,
      DCKIN => DCKIN
    );
end STRUCTURE;
