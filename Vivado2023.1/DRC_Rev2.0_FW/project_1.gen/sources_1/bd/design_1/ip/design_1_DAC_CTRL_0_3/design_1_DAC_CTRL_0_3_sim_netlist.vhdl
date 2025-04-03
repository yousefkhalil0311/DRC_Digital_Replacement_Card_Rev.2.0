-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Apr  3 01:13:49 2025
-- Host        : OCP001 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_3/design_1_DAC_CTRL_0_3_sim_netlist.vhdl
-- Design      : design_1_DAC_CTRL_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DAC_CTRL_0_3_DAC_CTRL is
  port (
    DACDATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DCKOUT : out STD_LOGIC;
    CLKIN : in STD_LOGIC;
    DATA_INA : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA_INB : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DAC_CTRL_0_3_DAC_CTRL : entity is "DAC_CTRL";
end design_1_DAC_CTRL_0_3_DAC_CTRL;

architecture STRUCTURE of design_1_DAC_CTRL_0_3_DAC_CTRL is
  signal \^dacdata\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal DACVAL1 : STD_LOGIC;
  signal DACVAL13_out : STD_LOGIC;
  signal DACVAL2 : STD_LOGIC;
  signal \DACVAL[11]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_5_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_6_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_7_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_8_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_9_n_0\ : STD_LOGIC;
  signal \^dckout\ : STD_LOGIC;
  signal channel : STD_LOGIC;
  signal isDCLK1_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DACVAL[11]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of channel_i_1 : label is "soft_lutpair0";
begin
  DACDATA(11 downto 0) <= \^dacdata\(11 downto 0);
  DCKOUT <= \^dckout\;
\DACVAL[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(0),
      I3 => DATA_INA(0),
      I4 => DATA_INB(0),
      I5 => DACVAL13_out,
      O => p_1_in(0)
    );
\DACVAL[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(10),
      I3 => DATA_INA(10),
      I4 => DATA_INB(10),
      I5 => DACVAL13_out,
      O => p_1_in(10)
    );
\DACVAL[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => channel,
      I1 => DACVAL13_out,
      O => \DACVAL[11]_i_1_n_0\
    );
\DACVAL[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(11),
      I3 => DATA_INA(11),
      I4 => DATA_INB(11),
      I5 => DACVAL13_out,
      O => p_1_in(11)
    );
\DACVAL[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => channel,
      I1 => \DACVAL[11]_i_5_n_0\,
      I2 => \DACVAL[11]_i_6_n_0\,
      I3 => \DACVAL[11]_i_7_n_0\,
      O => DACVAL13_out
    );
\DACVAL[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \DACVAL[11]_i_8_n_0\,
      I1 => DATA_INA(11),
      I2 => DATA_INA(10),
      I3 => DATA_INA(9),
      I4 => DATA_INA(8),
      I5 => \DACVAL[11]_i_9_n_0\,
      O => DACVAL1
    );
\DACVAL[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DATA_INB(0),
      I1 => DATA_INB(1),
      I2 => DATA_INB(2),
      I3 => DATA_INB(3),
      O => \DACVAL[11]_i_5_n_0\
    );
\DACVAL[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DATA_INB(4),
      I1 => DATA_INB(5),
      I2 => DATA_INB(6),
      I3 => DATA_INB(7),
      O => \DACVAL[11]_i_6_n_0\
    );
\DACVAL[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DATA_INB(8),
      I1 => DATA_INB(9),
      I2 => DATA_INB(11),
      I3 => DATA_INB(10),
      O => \DACVAL[11]_i_7_n_0\
    );
\DACVAL[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DATA_INA(7),
      I1 => DATA_INA(6),
      I2 => DATA_INA(5),
      I3 => DATA_INA(4),
      O => \DACVAL[11]_i_8_n_0\
    );
\DACVAL[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DATA_INA(1),
      I1 => DATA_INA(0),
      I2 => DATA_INA(3),
      I3 => DATA_INA(2),
      O => \DACVAL[11]_i_9_n_0\
    );
\DACVAL[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(1),
      I3 => DATA_INA(1),
      I4 => DATA_INB(1),
      I5 => DACVAL13_out,
      O => p_1_in(1)
    );
\DACVAL[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(2),
      I3 => DATA_INA(2),
      I4 => DATA_INB(2),
      I5 => DACVAL13_out,
      O => p_1_in(2)
    );
\DACVAL[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(3),
      I3 => DATA_INA(3),
      I4 => DATA_INB(3),
      I5 => DACVAL13_out,
      O => p_1_in(3)
    );
\DACVAL[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(4),
      I3 => DATA_INA(4),
      I4 => DATA_INB(4),
      I5 => DACVAL13_out,
      O => p_1_in(4)
    );
\DACVAL[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(5),
      I3 => DATA_INA(5),
      I4 => DATA_INB(5),
      I5 => DACVAL13_out,
      O => p_1_in(5)
    );
\DACVAL[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(6),
      I3 => DATA_INA(6),
      I4 => DATA_INB(6),
      I5 => DACVAL13_out,
      O => p_1_in(6)
    );
\DACVAL[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(7),
      I3 => DATA_INA(7),
      I4 => DATA_INB(7),
      I5 => DACVAL13_out,
      O => p_1_in(7)
    );
\DACVAL[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(8),
      I3 => DATA_INA(8),
      I4 => DATA_INB(8),
      I5 => DACVAL13_out,
      O => p_1_in(8)
    );
\DACVAL[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00001F0E1F0E"
    )
        port map (
      I0 => channel,
      I1 => DACVAL1,
      I2 => \^dacdata\(9),
      I3 => DATA_INA(9),
      I4 => DATA_INB(9),
      I5 => DACVAL13_out,
      O => p_1_in(9)
    );
\DACVAL_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(0),
      Q => \^dacdata\(0),
      R => '0'
    );
\DACVAL_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(10),
      Q => \^dacdata\(10),
      R => '0'
    );
\DACVAL_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(11),
      Q => \^dacdata\(11),
      R => '0'
    );
\DACVAL_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(1),
      Q => \^dacdata\(1),
      R => '0'
    );
\DACVAL_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(2),
      Q => \^dacdata\(2),
      R => '0'
    );
\DACVAL_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(3),
      Q => \^dacdata\(3),
      R => '0'
    );
\DACVAL_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(4),
      Q => \^dacdata\(4),
      R => '0'
    );
\DACVAL_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(5),
      Q => \^dacdata\(5),
      R => '0'
    );
\DACVAL_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(6),
      Q => \^dacdata\(6),
      R => '0'
    );
\DACVAL_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(7),
      Q => \^dacdata\(7),
      R => '0'
    );
\DACVAL_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(8),
      Q => \^dacdata\(8),
      R => '0'
    );
\DACVAL_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => \DACVAL[11]_i_1_n_0\,
      D => p_1_in(9),
      Q => \^dacdata\(9),
      R => '0'
    );
channel_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => channel,
      O => DACVAL2
    );
channel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => DACVAL2,
      Q => channel,
      R => '0'
    );
isDCLK1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^dckout\,
      O => isDCLK1_i_1_n_0
    );
isDCLK1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => isDCLK1_i_1_n_0,
      Q => \^dckout\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DAC_CTRL_0_3 is
  port (
    CLKIN : in STD_LOGIC;
    DATA_INA : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA_INB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DACDATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DCKOUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_DAC_CTRL_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_DAC_CTRL_0_3 : entity is "design_1_DAC_CTRL_0_3,DAC_CTRL,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_DAC_CTRL_0_3 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_DAC_CTRL_0_3 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_DAC_CTRL_0_3 : entity is "DAC_CTRL,Vivado 2023.1";
end design_1_DAC_CTRL_0_3;

architecture STRUCTURE of design_1_DAC_CTRL_0_3 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLKIN : signal is "xilinx.com:signal:clock:1.0 CLKIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLKIN : signal is "XIL_INTERFACENAME CLKIN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.design_1_DAC_CTRL_0_3_DAC_CTRL
     port map (
      CLKIN => CLKIN,
      DACDATA(11 downto 0) => DACDATA(11 downto 0),
      DATA_INA(11 downto 0) => DATA_INA(11 downto 0),
      DATA_INB(11 downto 0) => DATA_INB(11 downto 0),
      DCKOUT => DCKOUT
    );
end STRUCTURE;
