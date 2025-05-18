----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2025 12:22:58 AM
-- Design Name: 
-- Module Name: bram_writer - Behavioral
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

entity bram_writer is
    generic (
        ramDepth : integer := 512
    );
      Port ( 
      
            clk     : in std_logic; 
            indata  : in std_logic_vector (23 downto 0);
            rst     : in std_logic;
            en      : in std_logic;
            
            --BRAM signals
            addra   : out std_logic_vector (31 downto 0);
            ena     : out std_logic;
            wea     : out std_logic_vector (3 downto 0);
            BRAMdin : out std_logic_vector (31 downto 0)
            
            );
end bram_writer;

architecture Behavioral of bram_writer is
    
    signal address_cntr : unsigned (31 downto 0);   --keeps track of BRAM address
    signal tlast_captured : std_logic := '0';       --flag to check for tlast event (end of 1 FFT output, beginning of next)
    signal endOperation : std_logic := '0';         --is set true if 1 full FFT output is stored in BRAM. No need to store more data
    
begin
process(clk)
begin

    if(rising_edge(clk)) then
        
        if(rst = '0') then
        
            addra <= (others => '0');
            address_cntr <= (others => '0');
            ena <= '0';
            wea <= (others => '0');
            tlast_captured <= '0';
        
        elsif(en = '1') then
                
            ena <= '1';
            addra <= std_logic_vector(address_cntr);
            wea <= "1111";
            BRAMdin <= x"00" & indata;
        
            if(endOperation = '1') then                 --don't do anything if endOperation bit set.
            
            elsif(tlast_captured = '0') then
            
                if(indata(0) = '1') then                --if first tlast event occurs
                    
                    tlast_captured <= '1';              --set tlast_captured flag
                    address_cntr <= address_cntr + 1;   --increment address since this value will be the first FFT bin value
                    
                end if;
            
            else
          
                if(indata(0) = '1') then                --on second tlast_captured event
                    address_cntr <= (others => '0');    --reset address
                    tlast_captured <= '0';              --reset flag
                    endOperation <= '1';                --end operations until new data from the FIFO is ready
                    
                elsif(address_cntr = ramDepth) then     
                    address_cntr <= (others => '0');
                    tlast_captured <= '0';
                    
                else
                    address_cntr <= address_cntr + 1;
                    
                end if;
                
            end if;
            
        elsif (en = '0') then                           --reset values when block is disabled.
        
            addra <= (others => '0');
            address_cntr <= (others => '0');
            ena <= '0';
            wea <= (others => '0');
            tlast_captured <= '0';
            endOperation <= '0';
            
        end if;
    end if;

end process;

end Behavioral;
