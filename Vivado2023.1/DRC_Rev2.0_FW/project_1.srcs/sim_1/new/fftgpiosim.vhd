----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2025 08:34:10 PM
-- Design Name: 
-- Module Name: fftgpiosim - Behavioral
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

entity fftgpiosim is
--  Port ( );
end fftgpiosim;

architecture Behavioral of fftgpiosim is


signal  Dout : std_logic_vector (23 downto 0);
signal  imgn12bits : std_logic_vector (11 downto 0) := (others => '0');
signal  nrst : std_logic := '0';
signal  rd_clk : std_logic := '0';
signal  real12bits : std_logic_vector (11 downto 0) := (others => '0');
signal  sample_clk : std_logic := '0';
  


component FFT_to_GPIO_wrapper is
    port ( 
  Dout : out std_logic_vector (23 downto 0);
  imgn12bits : in std_logic_vector (11 downto 0);
  nrst : in std_logic;
  rd_clk : in std_logic;
  real12bits : in std_logic_vector (11 downto 0);
  sample_clk : in std_logic
  
);

end component;

begin

sample_clk <= not sample_clk after 5 ns;
rd_clk <= not rd_clk after 50 ns;
nrst <= '1';

instance_tb : FFT_to_GPIO_wrapper
    port map ( 
  Dout => Dout,
  imgn12bits => imgn12bits,
  nrst => nrst,
  rd_clk => rd_clk,
  real12bits => real12bits,
  sample_clk => sample_clk
);

end Behavioral;
