entity T07_SignalTb is
    end entity;
    
    architecture sim of T07_SignalTb is
        signal MySignal : integer := 0;
    begin 
    
        process is
            variable MyVariable : integer := 0;
        begin

            report "** Process start **";

            MySignal <= MySignal + 1;
            MyVariable := MyVariable + 1;

            report "MySignal=" & integer'image(MySignal) & 
                ", MyVariable=" & integer'image(MyVariable);
    
            MySignal <= MySignal + 1;
            MyVariable := MyVariable + 1;

            report "MySignal=" & integer'image(MySignal) & 
                ", MyVariable=" & integer'image(MyVariable);

            wait for 10 ns;

            report "MySignal=" & integer'image(MySignal) & 
                ", MyVariable=" & integer'image(MyVariable);
    
        end process;
    
    end architecture;