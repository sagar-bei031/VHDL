library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T14_ConcurrentProcTb is
end entity;
    
architecture sim of T14_ConcurrentProcTb is

    signal Uns : unsigned(5 downto 0) := (others => '0');
    signal Mul1 : unsigned(7 downto 0);
    signal Mul2 : unsigned(7 downto 0);
    signal Mul3 : unsigned(7 downto 0);

begin 

    process is
    begin

        Uns <= Uns + 1;

        wait for 10 ns;

    end process;

    process is
    begin

        Mul1 <= Uns & "00"; -- multiplying Uns by 4 by bit shifting
        wait on Uns;

    end process;

    -- Equiv  process using sensitity list
    process(Uns) is
    begin
    
            Mul2 <= Uns & "00"; -- multiplying Uns by 4 by bit shifting
    
    end process;

    -- Equiv process using concurrent process
    Mul3 <= Uns & "00";

end architecture;