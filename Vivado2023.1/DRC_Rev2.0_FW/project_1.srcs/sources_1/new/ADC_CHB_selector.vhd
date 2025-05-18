----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2025 02:22:36 AM
-- Design Name: 
-- Module Name: ADC_CHB_selector - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADC_CHB_selector is
    Port ( clkin : in STD_LOGIC;
           ADC_DATA_IN : in STD_LOGIC_VECTOR (11 downto 0);
           ADC_DATA_OUT : out STD_LOGIC_VECTOR (11 downto 0);
           ADC_DATA_OUT2 : out STD_LOGIC_VECTOR (11 downto 0));
end ADC_CHB_selector;

architecture Behavioral of ADC_CHB_selector is

begin
    process(clkin)
    begin
        if(falling_edge(clkin)) then
            ADC_DATA_OUT <= ADC_DATA_IN;
            ADC_DATA_OUT2 <= ADC_DATA_IN;
        end if;
    end process;

end Behavioral;
