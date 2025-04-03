-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Apr  3 00:01:12 2025
-- Host        : OCP001 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Xilinx/Projects/DRC_Rev2.0_Deliverables/Vivado2023.1/DRC_Rev2.0_FW/project_1.gen/sources_1/bd/design_1/ip/design_1_ClockDivider_0_1/design_1_ClockDivider_0_1_stub.vhdl
-- Design      : design_1_ClockDivider_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ClockDivider_0_1 is
  Port ( 
    CLKIN : in STD_LOGIC;
    CLKOUT : out STD_LOGIC;
    counterVal : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );

end design_1_ClockDivider_0_1;

architecture stub of design_1_ClockDivider_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLKIN,CLKOUT,counterVal[27:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ClockDivider,Vivado 2023.1";
begin
end;
