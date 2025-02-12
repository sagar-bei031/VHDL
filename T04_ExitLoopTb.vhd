entity T04_ExitLoopTb is
end entity;

architecture sim of T04_ExitLoopTb is
begin 

    process is
    begin

        report "Start of Process";

        loop

            report "Hello World";
            exit; -- exit from loop but not process

        end loop;

        report "End of Process";
        wait;

    end process;

end architecture;