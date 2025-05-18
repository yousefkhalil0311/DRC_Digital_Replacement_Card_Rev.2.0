----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2024 02:43:27 PM
-- Design Name: 
-- Module Name: DAC_CTRL - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DAC_CTRL is
    Port ( CLKIN : in STD_LOGIC;
           CONSTMODE: in STD_LOGIC;
           DATA_INA_MIN : in STD_LOGIC_VECTOR (11 downto 0);
           DATA_INB_MAX : in STD_LOGIC_VECTOR (11 downto 0);
           DACDATA : out STD_LOGIC_VECTOR (11 downto 0);
           DCKOUT : out STD_LOGIC);
end DAC_CTRL;

architecture Behavioral of DAC_CTRL is
    signal DACVAL  : UNSIGNED(11 downto 0) := "100000000000";
    signal isDCLK1 : STD_LOGIC := '0';
    signal channel : STD_LOGIC := '0';                          --Channel of converter to set data for
begin
    DACDATA <= STD_LOGIC_VECTOR(DACVAL);
    DCKOUT <= isDCLK1;
    process(CLKIN)
    begin
        
        if (rising_edge(CLKIN)) then
            if (CONSTMODE = '0') then
                if (DACVAL = UNSIGNED(DATA_INB_MAX)) then
                    DACVAL <= UNSIGNED(DATA_INA_MIN);
                elsif (DACVAL = UNSIGNED(DATA_INA_MIN)) then
                    DACVAL <= UNSIGNED(DATA_INB_MAX);
                else
                    DACVAL <= UNSIGNED(DATA_INA_MIN);
                end if;
            else
                if (channel = '0') then
                    DACVAL <= UNSIGNED(DATA_INA_MIN);
                elsif (channel = '1') then
                    DACVAL <= UNSIGNED(DATA_INB_MAX);
                end if;
            end if;
            
            channel <= not channel;
        end if;
    end process;
    
    process(CLKIN)
    begin
        if (CONSTMODE = '0') then
            isDCLK1 <= CLKIN;
        else
            if(falling_edge(CLKIN)) then
                isDCLK1 <= not(isDCLK1);
            end if;
        end if;
    end process;
end Behavioral;