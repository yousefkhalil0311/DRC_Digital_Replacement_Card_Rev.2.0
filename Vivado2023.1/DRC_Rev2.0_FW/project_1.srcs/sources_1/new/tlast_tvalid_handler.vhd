----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2025 06:16:45 PM
-- Design Name: 
-- Module Name: tlast_tvalid_handler - Behavioral
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

entity tlast_tvalid_handler is
    generic (
        numSamples : integer := 1024
    );
    Port ( clkin : in STD_LOGIC;
           tlast : out STD_LOGIC;
           rst : in STD_LOGIC;
           tvalid : out STD_LOGIC);
end tlast_tvalid_handler;

architecture Behavioral of tlast_tvalid_handler is


signal sampleNum : integer range 0 to numSamples - 1 := 0;

begin
process(clkin)
begin
    if(rising_edge(clkin)) then
    
        if(rst = '0') then
            tvalid <= '0';
            tlast <= '0';
        else
            sampleNum <= (sampleNum + 1) mod numSamples;
            tvalid <= '1';
            if(sampleNum = numSamples - 1) then
                tlast <= '1';
            else
                tlast <= '0';
            end if;
        end if;
    end if;
end process;


end Behavioral;
