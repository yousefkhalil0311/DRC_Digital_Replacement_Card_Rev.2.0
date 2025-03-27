----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2025 11:42:57 AM
-- Design Name: 
-- Module Name: Clock_Pulse_to_Transition - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Clock_Pulse_to_Transition is
    Port ( CLKIN : in STD_LOGIC;
           CLKOUT : out STD_LOGIC);
end Clock_Pulse_to_Transition;

architecture Behavioral of Clock_Pulse_to_Transition is
    signal clkstate : STD_LOGIC := '0';
begin
    CLKOUT <= clkstate;
    process(CLKIN)
    begin
        if (rising_edge(CLKIN)) then
            clkstate <= not clkstate;
        end if;
    end process;

end Behavioral;
