----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2025 03:17:06 AM
-- Design Name: 
-- Module Name: Pulse_Trigger - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pulse_Trigger is
    Port ( clkin : in STD_LOGIC;
           trigger : in STD_LOGIC;
           output : out STD_LOGIC);
end Pulse_Trigger;

architecture Behavioral of Pulse_Trigger is

    signal count : SIGNED(11 downto 0) := "000000000000";
begin
    process(clkin)
    begin
    if(rising_edge(clkin)) then
        count <= count + 1;
    elsif(trigger = '1') then
        count <= "1";
    end if;
    end process;

end Behavioral;
