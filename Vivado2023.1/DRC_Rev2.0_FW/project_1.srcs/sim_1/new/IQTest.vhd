library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.numeric_std.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

-- Uncomment the following library declaration if using

-- arithmetic functions with Signed or Unsigned values

--use IEEE.NUMERIC_STD.ALL;

 

-- Uncomment the following library declaration if instantiating

-- any Xilinx leaf cells in this code.

--library UNISIM;

--use UNISIM.VComponents.all;

 

entity IQTest is

--  Port ( );

end IQTest;

 

architecture Behavioral of IQTest is

 

signal clock : std_logic := '0';

signal reset : std_logic := '0';

signal FM : STD_LOGIC_VECTOR(11 downto 0) := "000010000000";

signal en_FM : std_logic := '0';

signal Blanker : std_logic := '0';

signal I : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";

signal Q : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";

signal Blankingen : std_logic := '0';

signal control :  STD_LOGIC_VECTOR(1 downto 0) := "01";

signal FM_Mod : std_logic := '0';

 

component iq_generator is

    Port ( clk_100mhz  : in  STD_LOGIC;

           reset       : in  STD_LOGIC;

           control     : in  STD_LOGIC_VECTOR(1 downto 0);

           fm_signal   : in  STD_LOGIC_VECTOR(11 downto 0);

           enable_fm   : in  STD_LOGIC;

           blank       : in  STD_LOGIC;

           i_signal    : out STD_LOGIC_VECTOR(11 downto 0);

           q_signal    : out STD_LOGIC_VECTOR(11 downto 0));

end component;

 

begin

 

 

dut: iq_generator

    Port map( clk_100mhz  => clock,

           reset => reset,

           control => control,

           fm_signal => FM,

           enable_fm  => en_FM,

           blank => Blanker,

           i_signal => I,

           q_signal => Q);

 

 

clk_gen: PROCESS

BEGIN

   WAIT FOR 10 ns;

   clock <= NOT clock;

END PROCESS;

 

 

blanking_gen: PROCESS

BEGIN

   WAIT FOR 100 ns;

   Blanker <= (NOT Blanker) and Blankingen;

END PROCESS;

 

 

 

stimulus: PROCESS

BEGIN

   reset <= '1';

   WAIT FOR 20 ns;

   reset <= '0';

 

   -- Test Waveform

   WAIT FOR 200000 ns;

   en_FM <= en_FM xor '1';

   FM <= "100000000000";

   WAIT FOR 200000 ns;

   en_FM <= en_FM xor '1';

   WAIT FOR 200000 ns;

   en_FM <= en_FM xor '1';

   FM <= "000000100000";

   WAIT FOR 200000 ns;

   en_FM <= en_FM xor '1';

   WAIT FOR 200000 ns;

  

   

   reset <= '1';

   WAIT FOR 20 ns;

   reset <= '0';

  

   --Test Increase over time

   en_FM <= en_FM xor '1';

   FM <= "000000000000";

   FM_Mod <= '1';

   for i in 0 to 5000 loop

        FM <= FM + 1;

        wait for 10 ns;

    end loop;

  

   

   

   WAIT FOR 900000 ns;

  

   

   

   

   reset <= '1';

   WAIT FOR 20 ns;

   reset <= '0';

   -- Test Waveform with Blanking

   Blankingen <= '1';

   FM_Mod <= '0';

   WAIT FOR 200000 ns;

   en_FM <= en_FM xor '1';

   FM <= "100000000000";

   WAIT FOR 200000 ns;

   en_FM <= en_FM xor '1';

   WAIT FOR 200000 ns;

   en_FM <= en_FM xor '1';

   FM <= "000000100000";

   WAIT FOR 200000 ns;

   en_FM <= en_FM xor '1';

   WAIT FOR 200000 ns;

   Blankingen <= '0';

   en_FM <= en_FM xor '1';

  

   

   

   reset <= '1';

   WAIT FOR 20 ns;

   reset <= '0';

   FM <= "000010000000";

   en_FM <= '1';

   -- Testing Modes

   Blankingen <= '0';

   WAIT FOR 200000 ns;

   control <= "00";

   WAIT FOR 200000 ns;

   control <= "01";

   WAIT FOR 200000 ns;

   control <= "10";

   WAIT FOR 200000 ns;

   control <= "11";

   WAIT FOR 200000 ns;

   control <= "01";

  

 

  

 

END PROCESS;

 

 

end Behavioral;