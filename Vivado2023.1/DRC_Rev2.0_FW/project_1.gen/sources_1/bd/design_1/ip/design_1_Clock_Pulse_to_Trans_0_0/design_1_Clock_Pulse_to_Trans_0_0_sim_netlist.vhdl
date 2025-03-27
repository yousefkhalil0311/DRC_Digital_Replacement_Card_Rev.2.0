-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Mar 27 11:57:37 2025
-- Host        : OCP001 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/project_1.gen/sources_1/bd/design_1/ip/design_1_Clock_Pulse_to_Trans_0_0/design_1_Clock_Pulse_to_Trans_0_0_sim_netlist.vhdl
-- Design      : design_1_Clock_Pulse_to_Trans_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Clock_Pulse_to_Trans_0_0_Clock_Pulse_to_Transition is
  port (
    CLKOUT : out STD_LOGIC;
    CLKIN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Clock_Pulse_to_Trans_0_0_Clock_Pulse_to_Transition : entity is "Clock_Pulse_to_Transition";
end design_1_Clock_Pulse_to_Trans_0_0_Clock_Pulse_to_Transition;

architecture STRUCTURE of design_1_Clock_Pulse_to_Trans_0_0_Clock_Pulse_to_Transition is
  signal \^clkout\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  CLKOUT <= \^clkout\;
clkstate_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clkout\,
      O => p_0_in
    );
clkstate_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLKIN,
      CE => '1',
      D => p_0_in,
      Q => \^clkout\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Clock_Pulse_to_Trans_0_0 is
  port (
    CLKIN : in STD_LOGIC;
    CLKOUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Clock_Pulse_to_Trans_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Clock_Pulse_to_Trans_0_0 : entity is "design_1_Clock_Pulse_to_Trans_0_0,Clock_Pulse_to_Transition,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Clock_Pulse_to_Trans_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Clock_Pulse_to_Trans_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Clock_Pulse_to_Trans_0_0 : entity is "Clock_Pulse_to_Transition,Vivado 2023.1";
end design_1_Clock_Pulse_to_Trans_0_0;

architecture STRUCTURE of design_1_Clock_Pulse_to_Trans_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLKIN : signal is "xilinx.com:signal:clock:1.0 CLKIN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLKIN : signal is "XIL_INTERFACENAME CLKIN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.design_1_Clock_Pulse_to_Trans_0_0_Clock_Pulse_to_Transition
     port map (
      CLKIN => CLKIN,
      CLKOUT => CLKOUT
    );
end STRUCTURE;
