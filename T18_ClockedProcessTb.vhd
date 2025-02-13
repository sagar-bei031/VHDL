library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T18_ClockedProcessTb is
end entity;
    
architecture sim of T18_ClockedProcessTb is

    constant ClockFrequency : integer := 100e6;
    constant ClockPeriod : time := 1000 ms / ClockFrequency;

    signal Clk : std_logic := '1';
    signal nRst : std_logic := '0';
    signal Input : std_logic := '0';
    signal Output : std_logic;

begin

    i_FlipFlop : entity work.T18_FlipFlop(rtl)
    port map(
        Clk => Clk,
        nRst => nRst,
        Input => Input,
        Output => Output
    );

    -- Process for generating clock
    Clk <= not Clk after ClockPeriod / 2;

    process is
    begin

        nRst <= '1';

        wait for 20 ns;
        Input <= '1';
        wait for 22 ns;
        Input <= '0';
        wait for 6 ns;
        Input <= '1';
        wait for 20 ns;

        nRst <= '0';

    end process;

end architecture;