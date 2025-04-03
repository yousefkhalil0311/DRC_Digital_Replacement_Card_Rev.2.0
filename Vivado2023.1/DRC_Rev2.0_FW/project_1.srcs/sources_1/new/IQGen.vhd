library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.numeric_std.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity iq_generator is

    Port ( clk_100mhz  : in  STD_LOGIC;

           reset       : in  STD_LOGIC;

           control     : in  STD_LOGIC_VECTOR(1 downto 0);

           fm_signal   : in  STD_LOGIC_VECTOR(11 downto 0);

           enable_fm   : in  STD_LOGIC;

           blank       : in  STD_LOGIC;

           i_signal    : out STD_LOGIC_VECTOR(11 downto 0);

           q_signal    : out STD_LOGIC_VECTOR(11 downto 0));

end iq_generator;

 

architecture Behavioral of iq_generator is

   

    --prefer data types of std_logic_vectors for compatibility using BSPs in the future

    type phase_array is array(0 to 63) of STD_LOGIC_VECTOR(11 downto 0);

    signal phase_accumulator : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');

    signal sin_wave          : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');

    signal cos_wave          : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');

    signal freq_modulated    : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');

   

     -- create constants to define "control" input

     constant bypass    : STD_LOGIC_VECTOR(1 downto 0)  :=  "00";

     constant lead      : STD_LOGIC_VECTOR(1 downto 0)  :=  "01";

     constant lag       : STD_LOGIC_VECTOR(1 downto 0)  :=  "10";

     constant in_phase  : STD_LOGIC_VECTOR(1 downto 0)  :=  "11";

 

 

    -- Note hurting for space and 2 tables can help control based on offset manipulation

constant sin_table : phase_array := (

    X"7FF",

    X"8C8",

    X"98E",

    X"A51",

    X"B0F",

    X"BC4",

    X"C71",

    X"D12",

    X"DA7",

    X"E2E",

    X"EA5",

    X"F0D",

    X"F63",

    X"FA6",

    X"FD7",

    X"FF5",

    X"FFF",

    X"FF5",

    X"FD7",

    X"FA6",

    X"F63",

    X"F0D",

    X"EA5",

    X"E2E",

    X"DA7",

    X"D12",

    X"C71",

    X"BC4",

    X"B0F",

    X"A51",

    X"98E",

    X"8C8",

    X"7FF",

    X"736",

    X"670",

    X"5AD",

    X"4EF",

    X"43A",

    X"38D",

    X"2EC",

    X"257",

    X"1D0",

    X"159",

    X"0F1",

    X"09B",

    X"058",

    X"027",

    X"009",

    X"000",

    X"009",

    X"027",

    X"058",

    X"09B",

    X"0F1",

    X"159",

    X"1D0",

    X"257",

    X"2EC",

    X"38D",

    X"43A",

    X"4EF",

    X"5AD",

    X"670",

    X"736"

);

 

constant cos_table : phase_array := (

    X"FFF",

    X"FF5",

    X"FD7",

    X"FA6",

    X"F63",

    X"F0D",

    X"EA5",

    X"E2E",

    X"DA7",

    X"D12",

    X"C71",

    X"BC4",

    X"B0F",

    X"A51",

    X"98E",

    X"8C8",

    X"7FF",

    X"736",

    X"670",

    X"5AD",

    X"4EF",

    X"43A",

    X"38D",

    X"2EC",

    X"257",

    X"1D0",

    X"159",

    X"0F1",

    X"09B",

    X"058",

    X"027",

    X"009",

    X"000",

    X"009",

    X"027",

    X"058",

    X"09B",

    X"0F1",

    X"159",

    X"1D0",

    X"257",

    X"2EC",

    X"38D",

    X"43A",

    X"4EF",

    X"5AD",

    X"670",

    X"736",

    X"7FF",

    X"8C8",

    X"98E",

    X"A51",

    X"B0F",

    X"BC4",

    X"C71",

    X"D12",

    X"DA7",

    X"E2E",

    X"EA5",

    X"F0D",

    X"F63",

    X"FA6",

    X"FD7",

    X"FF5"

);

 

begin

    process(clk_100mhz, reset)

    variable Phasers : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";

    begin

        if reset = '1' then

            phase_accumulator <= (others => '0');

        elsif rising_edge(clk_100mhz) then

            if enable_fm = '1' then

                freq_modulated <= fm_signal; -- Use the modulation signal

            else

                freq_modulated <= (others => '0');

            end if;

            Phasers := phase_accumulator + 1 + freq_modulated;

            phase_accumulator <= Phasers;

        end if;

    end process;

 

    -- Use lookup table for sine and cosine wave generation inside a process

    process(phase_accumulator)

    begin

        sin_wave <= sin_table(to_integer(unsigned(phase_accumulator(11 downto 6))));

        cos_wave <= cos_table(to_integer(unsigned(phase_accumulator(11 downto 6))));

    end process;

 

    -- Output logic with blanking signal

    process(blank, sin_wave, cos_wave, control)

    begin

        if blank = '1' then

            i_signal <= (others => '0');

            q_signal <= (others => '0');

        else

            --others case doesnt super matter and can be meshed with lag case but leaving it incse other cases are wanted in future

            case control is

                     when bypass =>

                           i_signal <= (others => '1');

                           q_signal <= (others => '1');

                     when lead =>

                           i_signal <= cos_wave;

                           q_signal <= sin_wave;

                      when lag =>

                           i_signal <= sin_wave;

                           q_signal <= cos_wave;

                      when in_phase =>

                           i_signal <= sin_wave;

                           q_signal <= sin_wave;

                      when others =>

                           i_signal <= sin_wave;

                           q_signal <= cos_wave;      

               end case;

        end if;

    end process;

 

end Behavioral;