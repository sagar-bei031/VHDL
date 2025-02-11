entity T03_LoopTb is
end entity;

architecture sim of T03_LoopTb is
begin 

    process is
    begin

        report "Start of Process";

        loop

            report "Hello World";
            wait for 10 ns;

        end loop;

        report "End of Process";

    end process;

end architecture;