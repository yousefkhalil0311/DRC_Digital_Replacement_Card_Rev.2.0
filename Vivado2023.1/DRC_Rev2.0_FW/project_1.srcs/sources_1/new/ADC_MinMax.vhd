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

entity ADC_MinMax is
    Port ( 
           ADCDATA : in STD_LOGIC_VECTOR (11 downto 0);
           CHAMAX_OUT : out STD_LOGIC_VECTOR (11 downto 0);
           CHBMAX_OUT : out STD_LOGIC_VECTOR (11 downto 0);
           CHAMIN_OUT : out STD_LOGIC_VECTOR (11 downto 0);
           CHBMIN_OUT : out STD_LOGIC_VECTOR (11 downto 0);
           DCKIN : in STD_LOGIC;
           CLKIN : in STD_LOGIC);
end ADC_MinMax;

architecture Behavioral of ADC_MinMax is
    signal ADCVAL  : SIGNED(11 downto 0) := "000000000000";
    signal CHAMAX : SIGNED(11 downto 0) := "100000000000";
    signal CHBMAX : SIGNED(11 downto 0) := "100000000000";
    signal CHAMIN : SIGNED(11 downto 0) := "011111111111";
    signal CHBMIN : SIGNED(11 downto 0) := "011111111111";
    signal CHAMAX_OUT_SIG : SIGNED(11 downto 0) := "000000000000";
    signal CHBMAX_OUT_SIG : SIGNED(11 downto 0) := "000000000000";
    signal CHAMIN_OUT_SIG : SIGNED(11 downto 0) := "000000000000";
    signal CHBMIN_OUT_SIG : SIGNED(11 downto 0) := "000000000000";
    signal count520 : UNSIGNED(10 downto 0) := "00000000000";
begin
    ADCVAL <= SIGNED(ADCDATA);
   CHAMAX_OUT <= STD_LOGIC_VECTOR(CHAMAX_OUT_SIG);
   CHBMAX_OUT <= STD_LOGIC_VECTOR(CHBMAX_OUT_SIG);
   CHAMIN_OUT <= STD_LOGIC_VECTOR(CHAMIN_OUT_SIG);
   CHBMIN_OUT <= STD_LOGIC_VECTOR(CHBMIN_OUT_SIG);
    process(CLKIN)
    begin
        if (rising_edge(CLKIN)) then
            if(DCKIN = '1') then
                if (ADCVAL > CHAMAX) then
                    CHAMAX <= ADCVAL;
                end if;
                if (ADCVAL < CHAMIN) then
                    CHAMIN <= ADCVAL;
                end if;
            end if;
            if (DCKIN = '0') then
                if (ADCVAL > CHBMAX) then
                    CHBMAX <= ADCVAL;
                end if;
                if (ADCVAL < CHBMIN) then
                    CHBMIN <= ADCVAL;
                end if;
                count520 <= count520 + 1;
                if (count520 >= 520) then
                    CHAMAX_OUT_SIG <= CHAMAX;
                    CHBMAX_OUT_SIG <= CHBMAX;
                    CHAMIN_OUT_SIG <= CHAMIN;
                    CHBMIN_OUT_SIG <= CHBMIN;
                    CHAMAX <= "100000000000";
                    CHBMAX <= "100000000000";
                    CHAMIN <= "011111111111";
                    CHBMIN <= "011111111111";
                    count520 <= (others => '0');
                end if;
            end if;
        end if;
    end process;
end Behavioral;
