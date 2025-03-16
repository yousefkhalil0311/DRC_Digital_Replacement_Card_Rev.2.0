-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Feb  5 01:30:37 2025
-- Host        : OCP001 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Xilinx/Vivado/2023.1/Projects/PL_ADC_Control/project_1.gen/sources_1/bd/design_1/ip/design_1_ADC_MinMax_0_3/design_1_ADC_MinMax_0_3_stub.vhdl
-- Design      : design_1_ADC_MinMax_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ADC_MinMax_0_3 is
  Port ( 
    ADCDATA : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CHAMAX_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHBMAX_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHAMIN_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    CHBMIN_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DCKIN : in STD_LOGIC;
    CLKIN : in STD_LOGIC
  );

end design_1_ADC_MinMax_0_3;

architecture stub of design_1_ADC_MinMax_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ADCDATA[11:0],CHAMAX_OUT[11:0],CHBMAX_OUT[11:0],CHAMIN_OUT[11:0],CHBMIN_OUT[11:0],DCKIN,CLKIN";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADC_MinMax,Vivado 2023.1";
begin
end;
