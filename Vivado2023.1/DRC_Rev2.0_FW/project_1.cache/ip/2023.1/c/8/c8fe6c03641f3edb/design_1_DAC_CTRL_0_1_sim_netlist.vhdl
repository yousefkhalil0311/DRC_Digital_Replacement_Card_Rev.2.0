-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Apr 14 02:49:07 2025
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
    DCKOUT : out STD_LOGIC;
    DACDATA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CLKIN : in STD_LOGIC;
    CONSTMODE : in STD_LOGIC;
    DATA_INB_MAX : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA_INA_MIN : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAC_CTRL;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DAC_CTRL is
  signal \DACVAL[0]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[10]_i_1_n_0\ : STD_LOGIC;
  signal \DACVAL[11]_i_1_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of \DACVAL[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of channel_i_1 : label is "soft_lutpair0";
begin
  DCKOUT <= \^dckout\;
\DACVAL[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(0),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(0),
      O => \DACVAL[0]_i_1_n_0\
    );
\DACVAL[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(10),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(10),
      O => \DACVAL[10]_i_1_n_0\
    );
\DACVAL[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(11),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(11),
      O => \DACVAL[11]_i_1_n_0\
    );
\DACVAL[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(1),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(1),
      O => \DACVAL[1]_i_1_n_0\
    );
\DACVAL[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(2),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(2),
      O => \DACVAL[2]_i_1_n_0\
    );
\DACVAL[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(3),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(3),
      O => \DACVAL[3]_i_1_n_0\
    );
\DACVAL[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(4),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(4),
      O => \DACVAL[4]_i_1_n_0\
    );
\DACVAL[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(5),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(5),
      O => \DACVAL[5]_i_1_n_0\
    );
\DACVAL[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(6),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(6),
      O => \DACVAL[6]_i_1_n_0\
    );
\DACVAL[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(7),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(7),
      O => \DACVAL[7]_i_1_n_0\
    );
\DACVAL[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(8),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(8),
      O => \DACVAL[8]_i_1_n_0\
    );
\DACVAL[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => channel,
      I1 => CONSTMODE,
      I2 => DATA_INB_MAX(9),
      I3 => \^dckout\,
      I4 => DATA_INA_MIN(9),
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
      D => \DACVAL[10]_i_1_n_0\,
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
      D => \DACVAL[11]_i_1_n_0\,
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
      D => \DACVAL[1]_i_1_n_0\,
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
      D => \DACVAL[2]_i_1_n_0\,
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
      D => \DACVAL[3]_i_1_n_0\,
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
      D => \DACVAL[4]_i_1_n_0\,
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
      D => \DACVAL[5]_i_1_n_0\,
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
      D => \DACVAL[6]_i_1_n_0\,
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
      D => \DACVAL[7]_i_1_n_0\,
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
      D => \DACVAL[8]_i_1_n_0\,
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
      D => \DACVAL[9]_i_1_n_0\,
      Q => DACDATA(9),
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
    CONSTMODE : in STD_LOGIC;
    DATA_INA_MIN : in STD_LOGIC_VECTOR ( 11 downto 0 );
    DATA_INB_MAX : in STD_LOGIC_VECTOR ( 11 downto 0 );
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
      CONSTMODE => CONSTMODE,
      DACDATA(11 downto 0) => DACDATA(11 downto 0),
      DATA_INA_MIN(11 downto 0) => DATA_INA_MIN(11 downto 0),
      DATA_INB_MAX(11 downto 0) => DATA_INB_MAX(11 downto 0),
      DCKOUT => DCKOUT
    );
end STRUCTURE;
