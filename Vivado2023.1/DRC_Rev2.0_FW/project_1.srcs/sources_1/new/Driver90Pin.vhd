----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2025 03:30:38 PM
-- Design Name: 
-- Module Name: Driver90Pin - Behavioral
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

 

--State 0 will be full bypass

--State 1 will be Input OR MAsk

--State 2 will be Input AND MAsk

--State 3 will be Input XOR Mask

--State 4 will be MASK Only

--State 5 will be all 0

--State 6 will be all 1

--State 7 ND

 

entity Driver90Pin is

Port ( inputs : in std_logic_vector(90 downto 0 );

        state : in std_logic_vector(2 downto 0 );

        Mask : in std_logic_vector(90 downto 0 );

        outputs : out std_logic_vector(90 downto 0 )

);

end Driver90Pin;

 

architecture Behavioral of Driver90Pin is

 

begin

 

process(inputs,state,mask)

begin

    case state is

        when "001" => outputs <= inputs OR MASK;

        when "010" => outputs <= inputs AND MASK;

        when "011" => outputs <= inputs XOR MASK;

        when "100" => outputs <= MASK;

        when "101" => outputs <= (others => '0');

        when "110" => outputs <= (others => '1');

        when others => outputs <= inputs;

     end case;

end process;

 

end Behavioral;