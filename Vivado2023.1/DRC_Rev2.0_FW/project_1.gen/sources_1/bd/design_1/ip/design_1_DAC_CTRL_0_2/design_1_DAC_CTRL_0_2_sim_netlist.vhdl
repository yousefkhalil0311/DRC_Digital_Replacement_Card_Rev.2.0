-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Apr 14 00:58:55 2025
-- Host        : OCP001 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/project_1.gen/sources_1/bd/design_1/ip/design_1_DAC_CTRL_0_2/design_1_DAC_CTRL_0_2_sim_netlist.vhdl
-- Design      : design_1_DAC_CTRL_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_DAC_CTRL_0_2_DAC_CTRL is
  port (
    DACDATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DCKOUT : out STD_LOGIC;
    CLKIN : in STD_LOGIC;
    DATA_INB_MAX : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA_INA_MIN : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_DAC_CTRL_0_2_DAC_CTRL : entity is "DAC_CTRL";
end design_1_DAC_CTRL_0_2_DAC_CTRL;

architecture STRUCTURE of design_1_DAC_CTRL_0_2_DAC_CTRL is
  signal DACVAL20_in : STD_LOGIC;
  signal \^dckout\ : STD_LOGIC;
  signal channel : STD_LOGIC;
  signal isDCLK1_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DACVAL[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DACVAL[10]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \DACVAL[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \DACVAL[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \DACVAL[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DACVAL[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \DACVAL[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DACVAL[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \DACVAL[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DACVAL[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DACVAL[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DACVAL[9]_i_1\ : label is "soft_lutpair1";
begin
  DCKOUT <= \^dckout\;
\DACVAL[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(0),
      I2 => DATA_INA_MIN(0),
      O => p_1_in(0)
    );
\DACVAL[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(10),
      I2 => DATA_INA_MIN(10),
      O => p_1_in(10)
    );
\DACVAL[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(11),
      I2 => DATA_INA_MIN(11),
      O => p_1_in(11)
    );
\DACVAL[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(1),
      I2 => DATA_INA_MIN(1),
      O => p_1_in(1)
    );
\DACVAL[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(2),
      I2 => DATA_INA_MIN(2),
      O => p_1_in(2)
    );
\DACVAL[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(3),
      I2 => DATA_INA_MIN(3),
      O => p_1_in(3)
    );
\DACVAL[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(4),
      I2 => DATA_INA_MIN(4),
      O => p_1_in(4)
    );
\DACVAL[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(5),
      I2 => DATA_INA_MIN(5),
      O => p_1_in(5)
    );
\DACVAL[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(6),
      I2 => DATA_INA_MIN(6),
      O => p_1_in(6)
    );
\DACVAL[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(7),
      I2 => DATA_INA_MIN(7),
      O => p_1_in(7)
    );
\DACVAL[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(8),
      I2 => DATA_INA_MIN(8),
      O => p_1_in(8)
    );
\DACVAL[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => channel,
      I1 => DATA_INB_MAX(9),
      I2 => DATA_INA_MIN(9),
      O => p_1_in(9)
    );
\DACVAL_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(0),
      Q => DACDATA(0),
      R => '0'
    );
\DACVAL_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(10),
      Q => DACDATA(10),
      R => '0'
    );
\DACVAL_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(11),
      Q => DACDATA(11),
      R => '0'
    );
\DACVAL_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(1),
      Q => DACDATA(1),
      R => '0'
    );
\DACVAL_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(2),
      Q => DACDATA(2),
      R => '0'
    );
\DACVAL_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(3),
      Q => DACDATA(3),
      R => '0'
    );
\DACVAL_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(4),
      Q => DACDATA(4),
      R => '0'
    );
\DACVAL_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(5),
      Q => DACDATA(5),
      R => '0'
    );
\DACVAL_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(6),
      Q => DACDATA(6),
      R => '0'
    );
\DACVAL_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(7),
      Q => DACDATA(7),
      R => '0'
    );
\DACVAL_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(8),
      Q => DACDATA(8),
      R => '0'
    );
\DACVAL_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_1_in(9),
      Q => DACDATA(9),
      R => '0'
    );
channel_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => channel,
      O => DACVAL20_in
    );
channel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => DACVAL20_in,
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
entity design_1_DAC_CTRL_0_2 is
  port (
    CLKIN : in STD_LOGIC;
    CONSTMODE : in STD_LOGIC;
    DATA_INA_MIN : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA_INB_MAX : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DACDATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DCKOUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_DAC_CTRL_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_DAC_CTRL_0_2 : entity is "design_1_DAC_CTRL_0_2,DAC_CTRL,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_DAC_CTRL_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_DAC_CTRL_0_2 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_DAC_CTRL_0_2 : entity is "DAC_CTRL,Vivado 2023.1";
end design_1_DAC_CTRL_0_2;

architecture STRUCTURE of design_1_DAC_CTRL_0_2 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLKIN : signal is "xilinx.com:signal:clock:1.0 CLKIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLKIN : signal is "XIL_INTERFACENAME CLKIN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.design_1_DAC_CTRL_0_2_DAC_CTRL
     port map (
      CLKIN => CLKIN,
      DACDATA(11 downto 0) => DACDATA(11 downto 0),
      DATA_INA_MIN(11 downto 0) => DATA_INA_MIN(11 downto 0),
      DATA_INB_MAX(11 downto 0) => DATA_INB_MAX(11 downto 0),
      DCKOUT => DCKOUT
    );
end STRUCTURE;
