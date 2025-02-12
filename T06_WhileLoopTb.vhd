entity T06_WhileLoopTb is
    end entity;
    
    architecture sim of T06_WhileLoopTb is
    begin 
    
        process is

            variable i : integer := 0;

        begin
    
            while i < 10 loop
                report "i=" & integer'image(i);
                i := i + 1;
            end loop;

                wait;
    
        end process;
    
    end architecture;