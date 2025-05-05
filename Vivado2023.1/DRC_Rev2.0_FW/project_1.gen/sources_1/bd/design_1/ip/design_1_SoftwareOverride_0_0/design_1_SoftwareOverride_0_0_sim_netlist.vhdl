-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun May  4 21:55:33 2025
-- Host        : OCP001 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/project_1.gen/sources_1/bd/design_1/ip/design_1_SoftwareOverride_0_0/design_1_SoftwareOverride_0_0_sim_netlist.vhdl
-- Design      : design_1_SoftwareOverride_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SoftwareOverride_0_0_SoftwareOverride is
  port (
    ON_OFF_reg_0 : out STD_LOGIC;
    I_OnRate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I_OffRate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I_CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SoftwareOverride_0_0_SoftwareOverride : entity is "SoftwareOverride";
end design_1_SoftwareOverride_0_0_SoftwareOverride;

architecture STRUCTURE of design_1_SoftwareOverride_0_0_SoftwareOverride is
  signal ON_OFF_i_10_n_0 : STD_LOGIC;
  signal ON_OFF_i_1_n_0 : STD_LOGIC;
  signal ON_OFF_i_3_n_0 : STD_LOGIC;
  signal ON_OFF_i_4_n_0 : STD_LOGIC;
  signal ON_OFF_i_5_n_0 : STD_LOGIC;
  signal ON_OFF_i_6_n_0 : STD_LOGIC;
  signal ON_OFF_i_7_n_0 : STD_LOGIC;
  signal ON_OFF_i_8_n_0 : STD_LOGIC;
  signal ON_OFF_i_9_n_0 : STD_LOGIC;
  signal \^on_off_reg_0\ : STD_LOGIC;
  signal R4 : STD_LOGIC;
  signal \R4[0]_i_10_n_0\ : STD_LOGIC;
  signal \R4[0]_i_11_n_0\ : STD_LOGIC;
  signal \R4[0]_i_12_n_0\ : STD_LOGIC;
  signal \R4[0]_i_13_n_0\ : STD_LOGIC;
  signal \R4[0]_i_14_n_0\ : STD_LOGIC;
  signal \R4[0]_i_15_n_0\ : STD_LOGIC;
  signal \R4[0]_i_16_n_0\ : STD_LOGIC;
  signal \R4[0]_i_17_n_0\ : STD_LOGIC;
  signal \R4[0]_i_18_n_0\ : STD_LOGIC;
  signal \R4[0]_i_19_n_0\ : STD_LOGIC;
  signal \R4[0]_i_20_n_0\ : STD_LOGIC;
  signal \R4[0]_i_21_n_0\ : STD_LOGIC;
  signal \R4[0]_i_22_n_0\ : STD_LOGIC;
  signal \R4[0]_i_23_n_0\ : STD_LOGIC;
  signal \R4[0]_i_24_n_0\ : STD_LOGIC;
  signal \R4[0]_i_26_n_0\ : STD_LOGIC;
  signal \R4[0]_i_27_n_0\ : STD_LOGIC;
  signal \R4[0]_i_28_n_0\ : STD_LOGIC;
  signal \R4[0]_i_29_n_0\ : STD_LOGIC;
  signal \R4[0]_i_30_n_0\ : STD_LOGIC;
  signal \R4[0]_i_31_n_0\ : STD_LOGIC;
  signal \R4[0]_i_32_n_0\ : STD_LOGIC;
  signal \R4[0]_i_33_n_0\ : STD_LOGIC;
  signal \R4[0]_i_3_n_0\ : STD_LOGIC;
  signal \R4[0]_i_4_n_0\ : STD_LOGIC;
  signal \R4[0]_i_5_n_0\ : STD_LOGIC;
  signal \R4[0]_i_6_n_0\ : STD_LOGIC;
  signal \R4[0]_i_7_n_0\ : STD_LOGIC;
  signal \R4[0]_i_8_n_0\ : STD_LOGIC;
  signal \R4[0]_i_9_n_0\ : STD_LOGIC;
  signal \R4[16]_i_10_n_0\ : STD_LOGIC;
  signal \R4[16]_i_11_n_0\ : STD_LOGIC;
  signal \R4[16]_i_12_n_0\ : STD_LOGIC;
  signal \R4[16]_i_13_n_0\ : STD_LOGIC;
  signal \R4[16]_i_14_n_0\ : STD_LOGIC;
  signal \R4[16]_i_15_n_0\ : STD_LOGIC;
  signal \R4[16]_i_16_n_0\ : STD_LOGIC;
  signal \R4[16]_i_17_n_0\ : STD_LOGIC;
  signal \R4[16]_i_2_n_0\ : STD_LOGIC;
  signal \R4[16]_i_3_n_0\ : STD_LOGIC;
  signal \R4[16]_i_4_n_0\ : STD_LOGIC;
  signal \R4[16]_i_5_n_0\ : STD_LOGIC;
  signal \R4[16]_i_6_n_0\ : STD_LOGIC;
  signal \R4[16]_i_7_n_0\ : STD_LOGIC;
  signal \R4[16]_i_8_n_0\ : STD_LOGIC;
  signal \R4[16]_i_9_n_0\ : STD_LOGIC;
  signal \R4[24]_i_10_n_0\ : STD_LOGIC;
  signal \R4[24]_i_11_n_0\ : STD_LOGIC;
  signal \R4[24]_i_12_n_0\ : STD_LOGIC;
  signal \R4[24]_i_13_n_0\ : STD_LOGIC;
  signal \R4[24]_i_14_n_0\ : STD_LOGIC;
  signal \R4[24]_i_15_n_0\ : STD_LOGIC;
  signal \R4[24]_i_16_n_0\ : STD_LOGIC;
  signal \R4[24]_i_2_n_0\ : STD_LOGIC;
  signal \R4[24]_i_3_n_0\ : STD_LOGIC;
  signal \R4[24]_i_4_n_0\ : STD_LOGIC;
  signal \R4[24]_i_5_n_0\ : STD_LOGIC;
  signal \R4[24]_i_6_n_0\ : STD_LOGIC;
  signal \R4[24]_i_7_n_0\ : STD_LOGIC;
  signal \R4[24]_i_8_n_0\ : STD_LOGIC;
  signal \R4[24]_i_9_n_0\ : STD_LOGIC;
  signal \R4[8]_i_10_n_0\ : STD_LOGIC;
  signal \R4[8]_i_11_n_0\ : STD_LOGIC;
  signal \R4[8]_i_12_n_0\ : STD_LOGIC;
  signal \R4[8]_i_13_n_0\ : STD_LOGIC;
  signal \R4[8]_i_14_n_0\ : STD_LOGIC;
  signal \R4[8]_i_15_n_0\ : STD_LOGIC;
  signal \R4[8]_i_16_n_0\ : STD_LOGIC;
  signal \R4[8]_i_17_n_0\ : STD_LOGIC;
  signal \R4[8]_i_2_n_0\ : STD_LOGIC;
  signal \R4[8]_i_3_n_0\ : STD_LOGIC;
  signal \R4[8]_i_4_n_0\ : STD_LOGIC;
  signal \R4[8]_i_5_n_0\ : STD_LOGIC;
  signal \R4[8]_i_6_n_0\ : STD_LOGIC;
  signal \R4[8]_i_7_n_0\ : STD_LOGIC;
  signal \R4[8]_i_8_n_0\ : STD_LOGIC;
  signal \R4[8]_i_9_n_0\ : STD_LOGIC;
  signal R4_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \R4_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \R4_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \R4_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \R4_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \R4_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \R4_reg_n_0_[0]\ : STD_LOGIC;
  signal leqOp : STD_LOGIC;
  signal leqOp_0 : STD_LOGIC;
  signal \NLW_R4_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \R4_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \R4_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \R4_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \R4_reg[8]_i_1\ : label is 16;
begin
  ON_OFF_reg_0 <= \^on_off_reg_0\;
ON_OFF_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => leqOp_0,
      I1 => \^on_off_reg_0\,
      O => ON_OFF_i_1_n_0
    );
ON_OFF_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => R4_reg(21),
      I1 => R4_reg(20),
      I2 => R4_reg(23),
      I3 => R4_reg(22),
      O => ON_OFF_i_10_n_0
    );
ON_OFF_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ON_OFF_i_3_n_0,
      I1 => ON_OFF_i_4_n_0,
      I2 => ON_OFF_i_5_n_0,
      O => leqOp_0
    );
ON_OFF_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ON_OFF_i_6_n_0,
      I1 => R4_reg(1),
      I2 => R4_reg(3),
      I3 => R4_reg(2),
      I4 => ON_OFF_i_7_n_0,
      I5 => ON_OFF_i_8_n_0,
      O => ON_OFF_i_3_n_0
    );
ON_OFF_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => R4_reg(26),
      I1 => R4_reg(27),
      I2 => R4_reg(24),
      I3 => R4_reg(25),
      I4 => ON_OFF_i_9_n_0,
      O => ON_OFF_i_4_n_0
    );
ON_OFF_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => R4_reg(18),
      I1 => R4_reg(19),
      I2 => R4_reg(16),
      I3 => R4_reg(17),
      I4 => ON_OFF_i_10_n_0,
      O => ON_OFF_i_5_n_0
    );
ON_OFF_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => R4_reg(5),
      I1 => R4_reg(4),
      I2 => R4_reg(7),
      I3 => R4_reg(6),
      O => ON_OFF_i_6_n_0
    );
ON_OFF_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => R4_reg(13),
      I1 => R4_reg(12),
      I2 => R4_reg(15),
      I3 => R4_reg(14),
      O => ON_OFF_i_7_n_0
    );
ON_OFF_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => R4_reg(9),
      I1 => R4_reg(8),
      I2 => R4_reg(11),
      I3 => R4_reg(10),
      O => ON_OFF_i_8_n_0
    );
ON_OFF_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => R4_reg(29),
      I1 => R4_reg(28),
      I2 => R4_reg(31),
      I3 => R4_reg(30),
      O => ON_OFF_i_9_n_0
    );
ON_OFF_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => ON_OFF_i_1_n_0,
      Q => \^on_off_reg_0\,
      R => '0'
    );
\R4[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => leqOp_0,
      I1 => \^on_off_reg_0\,
      I2 => I_OnRate(0),
      I3 => I_OnRate(1),
      I4 => \R4[0]_i_3_n_0\,
      I5 => \R4[0]_i_4_n_0\,
      O => R4
    );
\R4[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(2),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(2),
      I4 => leqOp_0,
      I5 => R4_reg(2),
      O => \R4[0]_i_10_n_0\
    );
\R4[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0FFFFEFE00000"
    )
        port map (
      I0 => leqOp,
      I1 => I_OffRate(1),
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(1),
      I4 => leqOp_0,
      I5 => R4_reg(1),
      O => \R4[0]_i_11_n_0\
    );
\R4[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(0),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(0),
      I4 => leqOp_0,
      I5 => \R4_reg_n_0_[0]\,
      O => \R4[0]_i_12_n_0\
    );
\R4[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(7),
      I1 => I_OnRate(7),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(7),
      I5 => leqOp_0,
      O => \R4[0]_i_13_n_0\
    );
\R4[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(6),
      I1 => I_OnRate(6),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(6),
      I5 => leqOp_0,
      O => \R4[0]_i_14_n_0\
    );
\R4[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(5),
      I1 => I_OnRate(5),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(5),
      I5 => leqOp_0,
      O => \R4[0]_i_15_n_0\
    );
\R4[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(4),
      I1 => I_OnRate(4),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(4),
      I5 => leqOp_0,
      O => \R4[0]_i_16_n_0\
    );
\R4[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(3),
      I1 => I_OnRate(3),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(3),
      I5 => leqOp_0,
      O => \R4[0]_i_17_n_0\
    );
\R4[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(2),
      I1 => I_OnRate(2),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(2),
      I5 => leqOp_0,
      O => \R4[0]_i_18_n_0\
    );
\R4[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFC0C55555555"
    )
        port map (
      I0 => R4_reg(1),
      I1 => I_OnRate(1),
      I2 => \^on_off_reg_0\,
      I3 => I_OffRate(1),
      I4 => leqOp,
      I5 => leqOp_0,
      O => \R4[0]_i_19_n_0\
    );
\R4[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => \R4_reg_n_0_[0]\,
      I1 => I_OnRate(0),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(0),
      I5 => leqOp_0,
      O => \R4[0]_i_20_n_0\
    );
\R4[0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_OnRate(21),
      I1 => I_OnRate(20),
      I2 => I_OnRate(23),
      I3 => I_OnRate(22),
      O => \R4[0]_i_21_n_0\
    );
\R4[0]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => I_OnRate(26),
      I1 => I_OnRate(27),
      I2 => I_OnRate(24),
      I3 => I_OnRate(25),
      I4 => \R4[0]_i_26_n_0\,
      O => \R4[0]_i_22_n_0\
    );
\R4[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I_OnRate(3),
      I1 => I_OnRate(2),
      I2 => I_OnRate(6),
      I3 => I_OnRate(7),
      I4 => I_OnRate(4),
      I5 => I_OnRate(5),
      O => \R4[0]_i_23_n_0\
    );
\R4[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_OnRate(13),
      I1 => I_OnRate(12),
      I2 => I_OnRate(15),
      I3 => I_OnRate(14),
      O => \R4[0]_i_24_n_0\
    );
\R4[0]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => I_OffRate(0),
      I1 => I_OffRate(1),
      I2 => \R4[0]_i_27_n_0\,
      I3 => \R4[0]_i_28_n_0\,
      I4 => \R4[0]_i_29_n_0\,
      O => leqOp
    );
\R4[0]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_OnRate(29),
      I1 => I_OnRate(28),
      I2 => I_OnRate(31),
      I3 => I_OnRate(30),
      O => \R4[0]_i_26_n_0\
    );
\R4[0]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => I_OffRate(18),
      I1 => I_OffRate(19),
      I2 => I_OffRate(16),
      I3 => I_OffRate(17),
      I4 => \R4[0]_i_30_n_0\,
      O => \R4[0]_i_27_n_0\
    );
\R4[0]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => I_OffRate(26),
      I1 => I_OffRate(27),
      I2 => I_OffRate(24),
      I3 => I_OffRate(25),
      I4 => \R4[0]_i_31_n_0\,
      O => \R4[0]_i_28_n_0\
    );
\R4[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \R4[0]_i_32_n_0\,
      I1 => \R4[0]_i_33_n_0\,
      I2 => I_OffRate(9),
      I3 => I_OffRate(8),
      I4 => I_OffRate(11),
      I5 => I_OffRate(10),
      O => \R4[0]_i_29_n_0\
    );
\R4[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \R4[0]_i_21_n_0\,
      I1 => I_OnRate(17),
      I2 => I_OnRate(16),
      I3 => I_OnRate(19),
      I4 => I_OnRate(18),
      I5 => \R4[0]_i_22_n_0\,
      O => \R4[0]_i_3_n_0\
    );
\R4[0]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_OffRate(21),
      I1 => I_OffRate(20),
      I2 => I_OffRate(23),
      I3 => I_OffRate(22),
      O => \R4[0]_i_30_n_0\
    );
\R4[0]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_OffRate(29),
      I1 => I_OffRate(28),
      I2 => I_OffRate(31),
      I3 => I_OffRate(30),
      O => \R4[0]_i_31_n_0\
    );
\R4[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => I_OffRate(3),
      I1 => I_OffRate(2),
      I2 => I_OffRate(6),
      I3 => I_OffRate(7),
      I4 => I_OffRate(4),
      I5 => I_OffRate(5),
      O => \R4[0]_i_32_n_0\
    );
\R4[0]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => I_OffRate(13),
      I1 => I_OffRate(12),
      I2 => I_OffRate(15),
      I3 => I_OffRate(14),
      O => \R4[0]_i_33_n_0\
    );
\R4[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \R4[0]_i_23_n_0\,
      I1 => \R4[0]_i_24_n_0\,
      I2 => I_OnRate(9),
      I3 => I_OnRate(8),
      I4 => I_OnRate(11),
      I5 => I_OnRate(10),
      O => \R4[0]_i_4_n_0\
    );
\R4[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(7),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(7),
      I4 => leqOp_0,
      I5 => R4_reg(7),
      O => \R4[0]_i_5_n_0\
    );
\R4[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(6),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(6),
      I4 => leqOp_0,
      I5 => R4_reg(6),
      O => \R4[0]_i_6_n_0\
    );
\R4[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(5),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(5),
      I4 => leqOp_0,
      I5 => R4_reg(5),
      O => \R4[0]_i_7_n_0\
    );
\R4[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(4),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(4),
      I4 => leqOp_0,
      I5 => R4_reg(4),
      O => \R4[0]_i_8_n_0\
    );
\R4[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(3),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(3),
      I4 => leqOp_0,
      I5 => R4_reg(3),
      O => \R4[0]_i_9_n_0\
    );
\R4[16]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(23),
      I1 => I_OnRate(23),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(23),
      I5 => leqOp_0,
      O => \R4[16]_i_10_n_0\
    );
\R4[16]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(22),
      I1 => I_OnRate(22),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(22),
      I5 => leqOp_0,
      O => \R4[16]_i_11_n_0\
    );
\R4[16]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(21),
      I1 => I_OnRate(21),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(21),
      I5 => leqOp_0,
      O => \R4[16]_i_12_n_0\
    );
\R4[16]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(20),
      I1 => I_OnRate(20),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(20),
      I5 => leqOp_0,
      O => \R4[16]_i_13_n_0\
    );
\R4[16]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(19),
      I1 => I_OnRate(19),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(19),
      I5 => leqOp_0,
      O => \R4[16]_i_14_n_0\
    );
\R4[16]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(18),
      I1 => I_OnRate(18),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(18),
      I5 => leqOp_0,
      O => \R4[16]_i_15_n_0\
    );
\R4[16]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(17),
      I1 => I_OnRate(17),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(17),
      I5 => leqOp_0,
      O => \R4[16]_i_16_n_0\
    );
\R4[16]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(16),
      I1 => I_OnRate(16),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(16),
      I5 => leqOp_0,
      O => \R4[16]_i_17_n_0\
    );
\R4[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(23),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(23),
      I4 => leqOp_0,
      I5 => R4_reg(23),
      O => \R4[16]_i_2_n_0\
    );
\R4[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(22),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(22),
      I4 => leqOp_0,
      I5 => R4_reg(22),
      O => \R4[16]_i_3_n_0\
    );
\R4[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(21),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(21),
      I4 => leqOp_0,
      I5 => R4_reg(21),
      O => \R4[16]_i_4_n_0\
    );
\R4[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(20),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(20),
      I4 => leqOp_0,
      I5 => R4_reg(20),
      O => \R4[16]_i_5_n_0\
    );
\R4[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(19),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(19),
      I4 => leqOp_0,
      I5 => R4_reg(19),
      O => \R4[16]_i_6_n_0\
    );
\R4[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(18),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(18),
      I4 => leqOp_0,
      I5 => R4_reg(18),
      O => \R4[16]_i_7_n_0\
    );
\R4[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(17),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(17),
      I4 => leqOp_0,
      I5 => R4_reg(17),
      O => \R4[16]_i_8_n_0\
    );
\R4[16]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(16),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(16),
      I4 => leqOp_0,
      I5 => R4_reg(16),
      O => \R4[16]_i_9_n_0\
    );
\R4[24]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(30),
      I1 => I_OnRate(30),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(30),
      I5 => leqOp_0,
      O => \R4[24]_i_10_n_0\
    );
\R4[24]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(29),
      I1 => I_OnRate(29),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(29),
      I5 => leqOp_0,
      O => \R4[24]_i_11_n_0\
    );
\R4[24]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(28),
      I1 => I_OnRate(28),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(28),
      I5 => leqOp_0,
      O => \R4[24]_i_12_n_0\
    );
\R4[24]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(27),
      I1 => I_OnRate(27),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(27),
      I5 => leqOp_0,
      O => \R4[24]_i_13_n_0\
    );
\R4[24]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(26),
      I1 => I_OnRate(26),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(26),
      I5 => leqOp_0,
      O => \R4[24]_i_14_n_0\
    );
\R4[24]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(25),
      I1 => I_OnRate(25),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(25),
      I5 => leqOp_0,
      O => \R4[24]_i_15_n_0\
    );
\R4[24]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(24),
      I1 => I_OnRate(24),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(24),
      I5 => leqOp_0,
      O => \R4[24]_i_16_n_0\
    );
\R4[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(30),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(30),
      I4 => leqOp_0,
      I5 => R4_reg(30),
      O => \R4[24]_i_2_n_0\
    );
\R4[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(29),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(29),
      I4 => leqOp_0,
      I5 => R4_reg(29),
      O => \R4[24]_i_3_n_0\
    );
\R4[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(28),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(28),
      I4 => leqOp_0,
      I5 => R4_reg(28),
      O => \R4[24]_i_4_n_0\
    );
\R4[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(27),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(27),
      I4 => leqOp_0,
      I5 => R4_reg(27),
      O => \R4[24]_i_5_n_0\
    );
\R4[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(26),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(26),
      I4 => leqOp_0,
      I5 => R4_reg(26),
      O => \R4[24]_i_6_n_0\
    );
\R4[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(25),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(25),
      I4 => leqOp_0,
      I5 => R4_reg(25),
      O => \R4[24]_i_7_n_0\
    );
\R4[24]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(24),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(24),
      I4 => leqOp_0,
      I5 => R4_reg(24),
      O => \R4[24]_i_8_n_0\
    );
\R4[24]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(31),
      I1 => I_OnRate(31),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(31),
      I5 => leqOp_0,
      O => \R4[24]_i_9_n_0\
    );
\R4[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(15),
      I1 => I_OnRate(15),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(15),
      I5 => leqOp_0,
      O => \R4[8]_i_10_n_0\
    );
\R4[8]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(14),
      I1 => I_OnRate(14),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(14),
      I5 => leqOp_0,
      O => \R4[8]_i_11_n_0\
    );
\R4[8]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(13),
      I1 => I_OnRate(13),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(13),
      I5 => leqOp_0,
      O => \R4[8]_i_12_n_0\
    );
\R4[8]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(12),
      I1 => I_OnRate(12),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(12),
      I5 => leqOp_0,
      O => \R4[8]_i_13_n_0\
    );
\R4[8]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(11),
      I1 => I_OnRate(11),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(11),
      I5 => leqOp_0,
      O => \R4[8]_i_14_n_0\
    );
\R4[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(10),
      I1 => I_OnRate(10),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(10),
      I5 => leqOp_0,
      O => \R4[8]_i_15_n_0\
    );
\R4[8]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(9),
      I1 => I_OnRate(9),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(9),
      I5 => leqOp_0,
      O => \R4[8]_i_16_n_0\
    );
\R4[8]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFC0C0C55555555"
    )
        port map (
      I0 => R4_reg(8),
      I1 => I_OnRate(8),
      I2 => \^on_off_reg_0\,
      I3 => leqOp,
      I4 => I_OffRate(8),
      I5 => leqOp_0,
      O => \R4[8]_i_17_n_0\
    );
\R4[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(15),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(15),
      I4 => leqOp_0,
      I5 => R4_reg(15),
      O => \R4[8]_i_2_n_0\
    );
\R4[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(14),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(14),
      I4 => leqOp_0,
      I5 => R4_reg(14),
      O => \R4[8]_i_3_n_0\
    );
\R4[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(13),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(13),
      I4 => leqOp_0,
      I5 => R4_reg(13),
      O => \R4[8]_i_4_n_0\
    );
\R4[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(12),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(12),
      I4 => leqOp_0,
      I5 => R4_reg(12),
      O => \R4[8]_i_5_n_0\
    );
\R4[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(11),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(11),
      I4 => leqOp_0,
      I5 => R4_reg(11),
      O => \R4[8]_i_6_n_0\
    );
\R4[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(10),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(10),
      I4 => leqOp_0,
      I5 => R4_reg(10),
      O => \R4[8]_i_7_n_0\
    );
\R4[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(9),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(9),
      I4 => leqOp_0,
      I5 => R4_reg(9),
      O => \R4[8]_i_8_n_0\
    );
\R4[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => I_OffRate(8),
      I1 => leqOp,
      I2 => \^on_off_reg_0\,
      I3 => I_OnRate(8),
      I4 => leqOp_0,
      I5 => R4_reg(8),
      O => \R4[8]_i_9_n_0\
    );
\R4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[0]_i_2_n_15\,
      Q => \R4_reg_n_0_[0]\,
      R => R4
    );
\R4_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \R4_reg[0]_i_2_n_0\,
      CO(6) => \R4_reg[0]_i_2_n_1\,
      CO(5) => \R4_reg[0]_i_2_n_2\,
      CO(4) => \R4_reg[0]_i_2_n_3\,
      CO(3) => \R4_reg[0]_i_2_n_4\,
      CO(2) => \R4_reg[0]_i_2_n_5\,
      CO(1) => \R4_reg[0]_i_2_n_6\,
      CO(0) => \R4_reg[0]_i_2_n_7\,
      DI(7) => \R4[0]_i_5_n_0\,
      DI(6) => \R4[0]_i_6_n_0\,
      DI(5) => \R4[0]_i_7_n_0\,
      DI(4) => \R4[0]_i_8_n_0\,
      DI(3) => \R4[0]_i_9_n_0\,
      DI(2) => \R4[0]_i_10_n_0\,
      DI(1) => \R4[0]_i_11_n_0\,
      DI(0) => \R4[0]_i_12_n_0\,
      O(7) => \R4_reg[0]_i_2_n_8\,
      O(6) => \R4_reg[0]_i_2_n_9\,
      O(5) => \R4_reg[0]_i_2_n_10\,
      O(4) => \R4_reg[0]_i_2_n_11\,
      O(3) => \R4_reg[0]_i_2_n_12\,
      O(2) => \R4_reg[0]_i_2_n_13\,
      O(1) => \R4_reg[0]_i_2_n_14\,
      O(0) => \R4_reg[0]_i_2_n_15\,
      S(7) => \R4[0]_i_13_n_0\,
      S(6) => \R4[0]_i_14_n_0\,
      S(5) => \R4[0]_i_15_n_0\,
      S(4) => \R4[0]_i_16_n_0\,
      S(3) => \R4[0]_i_17_n_0\,
      S(2) => \R4[0]_i_18_n_0\,
      S(1) => \R4[0]_i_19_n_0\,
      S(0) => \R4[0]_i_20_n_0\
    );
\R4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[8]_i_1_n_13\,
      Q => R4_reg(10),
      R => R4
    );
\R4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[8]_i_1_n_12\,
      Q => R4_reg(11),
      R => R4
    );
\R4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[8]_i_1_n_11\,
      Q => R4_reg(12),
      R => R4
    );
\R4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[8]_i_1_n_10\,
      Q => R4_reg(13),
      R => R4
    );
\R4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[8]_i_1_n_9\,
      Q => R4_reg(14),
      R => R4
    );
\R4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[8]_i_1_n_8\,
      Q => R4_reg(15),
      R => R4
    );
\R4_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[16]_i_1_n_15\,
      Q => R4_reg(16),
      R => R4
    );
\R4_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \R4_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \R4_reg[16]_i_1_n_0\,
      CO(6) => \R4_reg[16]_i_1_n_1\,
      CO(5) => \R4_reg[16]_i_1_n_2\,
      CO(4) => \R4_reg[16]_i_1_n_3\,
      CO(3) => \R4_reg[16]_i_1_n_4\,
      CO(2) => \R4_reg[16]_i_1_n_5\,
      CO(1) => \R4_reg[16]_i_1_n_6\,
      CO(0) => \R4_reg[16]_i_1_n_7\,
      DI(7) => \R4[16]_i_2_n_0\,
      DI(6) => \R4[16]_i_3_n_0\,
      DI(5) => \R4[16]_i_4_n_0\,
      DI(4) => \R4[16]_i_5_n_0\,
      DI(3) => \R4[16]_i_6_n_0\,
      DI(2) => \R4[16]_i_7_n_0\,
      DI(1) => \R4[16]_i_8_n_0\,
      DI(0) => \R4[16]_i_9_n_0\,
      O(7) => \R4_reg[16]_i_1_n_8\,
      O(6) => \R4_reg[16]_i_1_n_9\,
      O(5) => \R4_reg[16]_i_1_n_10\,
      O(4) => \R4_reg[16]_i_1_n_11\,
      O(3) => \R4_reg[16]_i_1_n_12\,
      O(2) => \R4_reg[16]_i_1_n_13\,
      O(1) => \R4_reg[16]_i_1_n_14\,
      O(0) => \R4_reg[16]_i_1_n_15\,
      S(7) => \R4[16]_i_10_n_0\,
      S(6) => \R4[16]_i_11_n_0\,
      S(5) => \R4[16]_i_12_n_0\,
      S(4) => \R4[16]_i_13_n_0\,
      S(3) => \R4[16]_i_14_n_0\,
      S(2) => \R4[16]_i_15_n_0\,
      S(1) => \R4[16]_i_16_n_0\,
      S(0) => \R4[16]_i_17_n_0\
    );
\R4_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[16]_i_1_n_14\,
      Q => R4_reg(17),
      R => R4
    );
\R4_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[16]_i_1_n_13\,
      Q => R4_reg(18),
      R => R4
    );
\R4_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[16]_i_1_n_12\,
      Q => R4_reg(19),
      R => R4
    );
\R4_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[0]_i_2_n_14\,
      Q => R4_reg(1),
      S => R4
    );
\R4_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[16]_i_1_n_11\,
      Q => R4_reg(20),
      R => R4
    );
\R4_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[16]_i_1_n_10\,
      Q => R4_reg(21),
      R => R4
    );
\R4_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[16]_i_1_n_9\,
      Q => R4_reg(22),
      R => R4
    );
\R4_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[16]_i_1_n_8\,
      Q => R4_reg(23),
      R => R4
    );
\R4_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[24]_i_1_n_15\,
      Q => R4_reg(24),
      R => R4
    );
\R4_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \R4_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_R4_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \R4_reg[24]_i_1_n_1\,
      CO(5) => \R4_reg[24]_i_1_n_2\,
      CO(4) => \R4_reg[24]_i_1_n_3\,
      CO(3) => \R4_reg[24]_i_1_n_4\,
      CO(2) => \R4_reg[24]_i_1_n_5\,
      CO(1) => \R4_reg[24]_i_1_n_6\,
      CO(0) => \R4_reg[24]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \R4[24]_i_2_n_0\,
      DI(5) => \R4[24]_i_3_n_0\,
      DI(4) => \R4[24]_i_4_n_0\,
      DI(3) => \R4[24]_i_5_n_0\,
      DI(2) => \R4[24]_i_6_n_0\,
      DI(1) => \R4[24]_i_7_n_0\,
      DI(0) => \R4[24]_i_8_n_0\,
      O(7) => \R4_reg[24]_i_1_n_8\,
      O(6) => \R4_reg[24]_i_1_n_9\,
      O(5) => \R4_reg[24]_i_1_n_10\,
      O(4) => \R4_reg[24]_i_1_n_11\,
      O(3) => \R4_reg[24]_i_1_n_12\,
      O(2) => \R4_reg[24]_i_1_n_13\,
      O(1) => \R4_reg[24]_i_1_n_14\,
      O(0) => \R4_reg[24]_i_1_n_15\,
      S(7) => \R4[24]_i_9_n_0\,
      S(6) => \R4[24]_i_10_n_0\,
      S(5) => \R4[24]_i_11_n_0\,
      S(4) => \R4[24]_i_12_n_0\,
      S(3) => \R4[24]_i_13_n_0\,
      S(2) => \R4[24]_i_14_n_0\,
      S(1) => \R4[24]_i_15_n_0\,
      S(0) => \R4[24]_i_16_n_0\
    );
\R4_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[24]_i_1_n_14\,
      Q => R4_reg(25),
      R => R4
    );
\R4_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[24]_i_1_n_13\,
      Q => R4_reg(26),
      R => R4
    );
\R4_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[24]_i_1_n_12\,
      Q => R4_reg(27),
      R => R4
    );
\R4_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[24]_i_1_n_11\,
      Q => R4_reg(28),
      R => R4
    );
\R4_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[24]_i_1_n_10\,
      Q => R4_reg(29),
      R => R4
    );
\R4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[0]_i_2_n_13\,
      Q => R4_reg(2),
      R => R4
    );
\R4_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[24]_i_1_n_9\,
      Q => R4_reg(30),
      R => R4
    );
\R4_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[24]_i_1_n_8\,
      Q => R4_reg(31),
      R => R4
    );
\R4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[0]_i_2_n_12\,
      Q => R4_reg(3),
      R => R4
    );
\R4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[0]_i_2_n_11\,
      Q => R4_reg(4),
      R => R4
    );
\R4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[0]_i_2_n_10\,
      Q => R4_reg(5),
      R => R4
    );
\R4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[0]_i_2_n_9\,
      Q => R4_reg(6),
      R => R4
    );
\R4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[0]_i_2_n_8\,
      Q => R4_reg(7),
      R => R4
    );
\R4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[8]_i_1_n_15\,
      Q => R4_reg(8),
      R => R4
    );
\R4_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \R4_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \R4_reg[8]_i_1_n_0\,
      CO(6) => \R4_reg[8]_i_1_n_1\,
      CO(5) => \R4_reg[8]_i_1_n_2\,
      CO(4) => \R4_reg[8]_i_1_n_3\,
      CO(3) => \R4_reg[8]_i_1_n_4\,
      CO(2) => \R4_reg[8]_i_1_n_5\,
      CO(1) => \R4_reg[8]_i_1_n_6\,
      CO(0) => \R4_reg[8]_i_1_n_7\,
      DI(7) => \R4[8]_i_2_n_0\,
      DI(6) => \R4[8]_i_3_n_0\,
      DI(5) => \R4[8]_i_4_n_0\,
      DI(4) => \R4[8]_i_5_n_0\,
      DI(3) => \R4[8]_i_6_n_0\,
      DI(2) => \R4[8]_i_7_n_0\,
      DI(1) => \R4[8]_i_8_n_0\,
      DI(0) => \R4[8]_i_9_n_0\,
      O(7) => \R4_reg[8]_i_1_n_8\,
      O(6) => \R4_reg[8]_i_1_n_9\,
      O(5) => \R4_reg[8]_i_1_n_10\,
      O(4) => \R4_reg[8]_i_1_n_11\,
      O(3) => \R4_reg[8]_i_1_n_12\,
      O(2) => \R4_reg[8]_i_1_n_13\,
      O(1) => \R4_reg[8]_i_1_n_14\,
      O(0) => \R4_reg[8]_i_1_n_15\,
      S(7) => \R4[8]_i_10_n_0\,
      S(6) => \R4[8]_i_11_n_0\,
      S(5) => \R4[8]_i_12_n_0\,
      S(4) => \R4[8]_i_13_n_0\,
      S(3) => \R4[8]_i_14_n_0\,
      S(2) => \R4[8]_i_15_n_0\,
      S(1) => \R4[8]_i_16_n_0\,
      S(0) => \R4[8]_i_17_n_0\
    );
\R4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => I_CLK,
      CE => '1',
      D => \R4_reg[8]_i_1_n_14\,
      Q => R4_reg(9),
      R => R4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SoftwareOverride_0_0 is
  port (
    I_OnRate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I_OffRate : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I_CLK : in STD_LOGIC;
    Output_Y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_SoftwareOverride_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SoftwareOverride_0_0 : entity is "design_1_SoftwareOverride_0_0,SoftwareOverride,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_SoftwareOverride_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_SoftwareOverride_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_SoftwareOverride_0_0 : entity is "SoftwareOverride,Vivado 2023.1";
end design_1_SoftwareOverride_0_0;

architecture STRUCTURE of design_1_SoftwareOverride_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of I_CLK : signal is "xilinx.com:signal:clock:1.0 I_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of I_CLK : signal is "XIL_INTERFACENAME I_CLK, FREQ_HZ 519994800, FREQ_TOLERANCE_HZ 0, PHASE 90.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_SoftwareOverride_0_0_SoftwareOverride
     port map (
      I_CLK => I_CLK,
      I_OffRate(31 downto 0) => I_OffRate(31 downto 0),
      I_OnRate(31 downto 0) => I_OnRate(31 downto 0),
      ON_OFF_reg_0 => Output_Y
    );
end STRUCTURE;
