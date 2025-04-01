-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Mar 31 17:15:54 2025
-- Host        : OCP001 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_DAC_CTRL_0_1_sim_netlist.vhdl
-- Design      : design_1_DAC_CTRL_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAC_CTRL is
  port (
    DACDATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DCKOUT : out STD_LOGIC;
    CLKIN : in STD_LOGIC;
    DATA_INA : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA_INB : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAC_CTRL;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAC_CTRL is
  signal \^dacdata\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal DACVAL12_out : STD_LOGIC;
  signal \DACVAL1__11\ : STD_LOGIC;
  signal \DACVAL[0]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[10]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_4_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_5_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_6_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_7_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_8_n_0\ : STD_LOGIC;
  signal \DACVAL[1]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[2]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[3]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[4]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[5]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[6]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[7]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[8]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[9]_i_1_n_0\ : STD_LOGIC;
  signal \^dckout\ : STD_LOGIC;
  signal channel : STD_LOGIC;
  signal isDCLK1_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DACVAL[11]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of channel_i_1 : label is "soft_lutpair0";
begin
  DACDATA(11 downto 0) <= \^dacdata\(11 downto 0);
  DCKOUT <= \^dckout\;
\DACVAL[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(0),
      I2 => \^dacdata\(0),
      I3 => DATA_INB(0),
      I4 => \DACVAL1__11\,
      O => \DACVAL[0]_i_1_n_0\
    );
\DACVAL[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(10),
      I2 => \^dacdata\(10),
      I3 => DATA_INB(10),
      I4 => \DACVAL1__11\,
      O => \DACVAL[10]_i_1_n_0\
    );
\DACVAL[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(11),
      I2 => \^dacdata\(11),
      I3 => DATA_INB(11),
      I4 => \DACVAL1__11\,
      O => \DACVAL[11]_i_1_n_0\
    );
\DACVAL[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \DACVAL[11]_i_4_n_0\,
      I1 => DATA_INA(2),
      I2 => DATA_INA(1),
      I3 => DATA_INA(0),
      I4 => \DACVAL[11]_i_5_n_0\,
      O => DACVAL12_out
    );
\DACVAL[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => channel,
      I1 => \DACVAL[11]_i_6_n_0\,
      I2 => \DACVAL[11]_i_7_n_0\,
      I3 => \DACVAL[11]_i_8_n_0\,
      O => \DACVAL1__11\
    );
\DACVAL[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => DATA_INA(6),
      I1 => DATA_INA(5),
      I2 => DATA_INA(4),
      I3 => DATA_INA(3),
      O => \DACVAL[11]_i_4_n_0\
    );
\DACVAL[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => DATA_INA(7),
      I1 => DATA_INA(8),
      I2 => DATA_INA(9),
      I3 => DATA_INA(10),
      I4 => channel,
      I5 => DATA_INA(11),
      O => \DACVAL[11]_i_5_n_0\
    );
\DACVAL[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DATA_INB(0),
      I1 => DATA_INB(1),
      I2 => DATA_INB(2),
      I3 => DATA_INB(3),
      O => \DACVAL[11]_i_6_n_0\
    );
\DACVAL[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DATA_INB(4),
      I1 => DATA_INB(5),
      I2 => DATA_INB(6),
      I3 => DATA_INB(7),
      O => \DACVAL[11]_i_7_n_0\
    );
\DACVAL[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => DATA_INB(8),
      I1 => DATA_INB(9),
      I2 => DATA_INB(11),
      I3 => DATA_INB(10),
      O => \DACVAL[11]_i_8_n_0\
    );
\DACVAL[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(1),
      I2 => \^dacdata\(1),
      I3 => DATA_INB(1),
      I4 => \DACVAL1__11\,
      O => \DACVAL[1]_i_1_n_0\
    );
\DACVAL[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(2),
      I2 => \^dacdata\(2),
      I3 => DATA_INB(2),
      I4 => \DACVAL1__11\,
      O => \DACVAL[2]_i_1_n_0\
    );
\DACVAL[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(3),
      I2 => \^dacdata\(3),
      I3 => DATA_INB(3),
      I4 => \DACVAL1__11\,
      O => \DACVAL[3]_i_1_n_0\
    );
\DACVAL[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(4),
      I2 => \^dacdata\(4),
      I3 => DATA_INB(4),
      I4 => \DACVAL1__11\,
      O => \DACVAL[4]_i_1_n_0\
    );
\DACVAL[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(5),
      I2 => \^dacdata\(5),
      I3 => DATA_INB(5),
      I4 => \DACVAL1__11\,
      O => \DACVAL[5]_i_1_n_0\
    );
\DACVAL[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(6),
      I2 => \^dacdata\(6),
      I3 => DATA_INB(6),
      I4 => \DACVAL1__11\,
      O => \DACVAL[6]_i_1_n_0\
    );
\DACVAL[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(7),
      I2 => \^dacdata\(7),
      I3 => DATA_INB(7),
      I4 => \DACVAL1__11\,
      O => \DACVAL[7]_i_1_n_0\
    );
\DACVAL[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(8),
      I2 => \^dacdata\(8),
      I3 => DATA_INB(8),
      I4 => \DACVAL1__11\,
      O => \DACVAL[8]_i_1_n_0\
    );
\DACVAL[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF004E4E"
    )
        port map (
      I0 => DACVAL12_out,
      I1 => DATA_INA(9),
      I2 => \^dacdata\(9),
      I3 => DATA_INB(9),
      I4 => \DACVAL1__11\,
      O => \DACVAL[9]_i_1_n_0\
    );
\DACVAL_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[0]_i_1_n_0\,
      Q => \^dacdata\(0),
      R => '0'
    );
\DACVAL_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[10]_i_1_n_0\,
      Q => \^dacdata\(10),
      R => '0'
    );
\DACVAL_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[11]_i_1_n_0\,
      Q => \^dacdata\(11),
      R => '0'
    );
\DACVAL_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[1]_i_1_n_0\,
      Q => \^dacdata\(1),
      R => '0'
    );
\DACVAL_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[2]_i_1_n_0\,
      Q => \^dacdata\(2),
      R => '0'
    );
\DACVAL_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[3]_i_1_n_0\,
      Q => \^dacdata\(3),
      R => '0'
    );
\DACVAL_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[4]_i_1_n_0\,
      Q => \^dacdata\(4),
      R => '0'
    );
\DACVAL_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[5]_i_1_n_0\,
      Q => \^dacdata\(5),
      R => '0'
    );
\DACVAL_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[6]_i_1_n_0\,
      Q => \^dacdata\(6),
      R => '0'
    );
\DACVAL_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[7]_i_1_n_0\,
      Q => \^dacdata\(7),
      R => '0'
    );
\DACVAL_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[8]_i_1_n_0\,
      Q => \^dacdata\(8),
      R => '0'
    );
\DACVAL_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => \DACVAL[9]_i_1_n_0\,
      Q => \^dacdata\(9),
      R => '0'
    );
channel_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => channel,
      O => p_0_in
    );
channel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_0_in,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLKIN : in STD_LOGIC;
    DATA_INA : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA_INB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DACDATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DCKOUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_DAC_CTRL_0_1,DAC_CTRL,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DAC_CTRL,Vivado 2023.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLKIN : signal is "xilinx.com:signal:clock:1.0 CLKIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLKIN : signal is "XIL_INTERFACENAME CLKIN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAC_CTRL
     port map (
      CLKIN => CLKIN,
      DACDATA(11 downto 0) => DACDATA(11 downto 0),
      DATA_INA(11 downto 0) => DATA_INA(11 downto 0),
      DATA_INB(11 downto 0) => DATA_INB(11 downto 0),
      DCKOUT => DCKOUT
    );
end STRUCTURE;
