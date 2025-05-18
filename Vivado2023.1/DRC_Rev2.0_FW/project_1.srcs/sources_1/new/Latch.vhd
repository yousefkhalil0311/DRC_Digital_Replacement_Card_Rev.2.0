----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2025 03:41:55 AM
-- Design Name: 
-- Module Name: Latch - Behavioral
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

entity Latch is
    Port ( clkin : in STD_LOGIC;
           set : in STD_LOGIC;
           rset : in STD_LOGIC;
           Dout : out STD_LOGIC);
           
end Latch;

architecture Behavioral of Latch is
    signal outState : STD_LOGIC := '0';
begin
    Dout <= outState;
    process(clkin)
    begin
        if(set = '1') then
            outState <= '1';
        end if;
        if(rset = '1') then
            outState <= '0';
        end if;
    end process;

end Behavioral;
