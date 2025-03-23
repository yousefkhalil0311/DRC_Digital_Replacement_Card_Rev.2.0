library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ADC_MinMax_tb is
end ADC_MinMax_tb;

architecture Behavioral of ADC_MinMax_tb is
    -- Component declaration for the DUT (Device Under Test)
    component ADC_MinMax
        Port ( 
            CLKIN      : in STD_LOGIC;
            ADCDATA    : in STD_LOGIC_VECTOR (11 downto 0);
            CHAMAX_OUT : out STD_LOGIC_VECTOR (11 downto 0);
            CHBMAX_OUT : out STD_LOGIC_VECTOR (11 downto 0);
            CHAMIN_OUT : out STD_LOGIC_VECTOR (11 downto 0);
            CHBMIN_OUT : out STD_LOGIC_VECTOR (11 downto 0);
            DCKIN      : in STD_LOGIC
        );
    end component;

    -- Signals to connect to the DUT
    signal CLKIN      : STD_LOGIC := '0';
    signal DCKIN      : STD_LOGIC := '0';
    signal ADCDATA    : STD_LOGIC_VECTOR (11 downto 0) := (others => '0');
    signal CHAMAX_OUT : STD_LOGIC_VECTOR (11 downto 0);
    signal CHBMAX_OUT : STD_LOGIC_VECTOR (11 downto 0);
    signal CHAMIN_OUT : STD_LOGIC_VECTOR (11 downto 0);
    signal CHBMIN_OUT : STD_LOGIC_VECTOR (11 downto 0);

    -- Testbench Clock Periods
    constant CLK_PERIOD  : time := 10 ns;  -- Main clock
    constant DCK_PERIOD  : time := 20 ns;  -- Data clock

begin
    -- Instantiate the DUT (Device Under Test)
    DUT: ADC_MinMax
        port map (
            CLKIN      => CLKIN,
            ADCDATA    => ADCDATA,
            CHAMAX_OUT => CHAMAX_OUT,
            CHBMAX_OUT => CHBMAX_OUT,
            CHAMIN_OUT => CHAMIN_OUT,
            CHBMIN_OUT => CHBMIN_OUT,
            DCKIN      => DCKIN
        );

    -- CLKIN Generation (Not used in logic but included for completeness)
    process
    begin
        while true loop
            CLKIN <= '0';
            wait for CLK_PERIOD / 2;
            CLKIN <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- DCKIN Clock Generation (Data Clock)
    process
    begin
        while true loop
            DCKIN <= '0';
            wait for DCK_PERIOD / 2;
            DCKIN <= '1';
            wait for DCK_PERIOD / 2;
        end loop;
    end process;

    -- ADC Data Stimulus Process
    process
    begin
        -- Initial Reset-like Condition
        ADCDATA <= "000000000000";  -- 0
        wait for DCK_PERIOD;

        -- Provide a sequence of ADC values
        ADCDATA <= "000000000101";  -- 5
        wait for DCK_PERIOD;
        
        ADCDATA <= "000000001010";  -- 10
        wait for DCK_PERIOD;
        
        ADCDATA <= "111111111101";  -- -3 (two's complement)
        wait for DCK_PERIOD;
        
        ADCDATA <= "000000000111";  -- 7
        wait for DCK_PERIOD;
        
        ADCDATA <= "111111111000";  -- -8
        wait for DCK_PERIOD;

        ADCDATA <= "000000100000";  -- 32
        wait for DCK_PERIOD;

        ADCDATA <= "111111100000";  -- -32
        wait for DCK_PERIOD;

        -- Continue feeding values until the min/max cycle is complete
        wait for 2 ms;

        -- End simulation
        report "Simulation complete.";
        wait;
    end process;

end Behavioral;
