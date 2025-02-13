library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T19_TimerTb is
end entity;
    
architecture sim of T19_TimerTb is

    constant ClockFrequency : integer := 10;
    constant ClockPeriod : time := 1000 ms / ClockFrequency;

    signal Clk : std_logic := '1';
    signal nRst : std_logic := '0';
    signal Seconds : integer;
    signal Minutes : integer;
    signal Hours : integer;

begin

    i_Timer : entity work.T19_Timer(rtl)
    generic map (ClockFrequency => ClockFrequency)
    port map(
        Clk => Clk,
        nRst => nRst,
        Seconds => Seconds,
        Minutes => Minutes,
        Hours => Hours
    );

    -- Process for generating clock
    Clk <= not Clk after ClockPeriod / 2;

    process is
    begin

        wait until rising_edge(Clk);
        wait until rising_edge(Clk);

        nRst <= '1';
        wait;

    end process;

end architecture;