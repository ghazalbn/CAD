LIBRARY ieee;
USE ieee.std_logic_1164.ALL;


entity Stopwatch is
    generic (frequency: integer := 1); 
    PORT (
        clk: in std_logic; 
        reset: in std_logic;
        start: in std_logic;
        segment_1: out std_logic_vector(7 downto 0);
        segment_2: out std_logic_vector(7 downto 0);
        segment_3: out std_logic_vector(7 downto 0)
    );
end Stopwatch;

architecture Behavioral OF Stopwatch is
    signal clock_OneHz: std_logic;
    signal sec_1: integer range 0 to 10; 
    signal sec_2: integer range 0 to 6;  
    signal min: integer range 0 to 10;  
BEGIN
    
    PROCESS (clk)
        variable count: integer range 0 to frequency;
        BEGIN

        if (clk'event and clk='1') then
            count := count + 1;
            if (count = frequency/2) then
                clock_OneHz <= '1';
            elsif (count = frequency) then
                    clock_OneHz <= '0';
                    count := 0;
            end if;
        end if;

    end PROCESS;

    PROCESS (clock_OneHz, reset)
        variable seconds_1: integer range 0 to 10; 
        variable seconds_2: integer range 0 to 6; 
        variable minute: integer range 0 to 10; 

    BEGIN

        --reset signal

        if (reset = '1') then
            seconds_1 := 0;
            seconds_2 := 0;
            minute := 0;
        
        elsif (clk'event and clk = '1') then
            if (start = '1' and (seconds_1/=9 OR seconds_2/=5 OR minute/=9)) then
                seconds_1 := seconds_1 + 1;

                if (seconds_1 = 10) then --yekan
                    seconds_1 := 0;
                    seconds_2 := seconds_2 + 1;

                    if (seconds_2 = 6) then  --60 seconds
                        seconds_2 := 0; 
                        minute := minute + 1;

                    end if;
                end if;
            end if;
        end if;

        sec_1 <= seconds_1;
        sec_2 <= seconds_2;
        min <= minute;

    End PROCESS;


    --show on seven segments

    PROCESS (min, sec_1, sec_2)
    BEGIN

        CASE sec_1 is

            when 0 => segment_1 <= "11111100"; 
            when 1 => segment_1 <= "01100000"; 
            when 2 => segment_1 <= "11011010"; 
            when 3 => segment_1 <= "11110010"; 
            when 4 => segment_1 <= "01100110"; 
            when 5 => segment_1 <= "10110110"; 
            when 6 => segment_1 <= "10111110"; 
            when 7 => segment_1 <= "11100000"; 
            when 8 => segment_1 <= "11111110"; 
            when 9 => segment_1 <= "11110110"; 
            when others => null;

        end CASE;

        CASE sec_2 is

            when 0 => segment_2 <= "11111100"; 
            when 1 => segment_2 <= "01100000"; 
            when 2 => segment_2 <= "11011010"; 
            when 3 => segment_2 <= "11110010"; 
            when 4 => segment_2 <= "01100110";
            when 5 => segment_2 <= "10110110"; 
            when others => null;

        end CASE;

        CASE min is

            when 0 => segment_3 <= "11111101"; 
            when 1 => segment_3 <= "01100001"; 
            when 2 => segment_3 <= "11011011"; 
            when 3 => segment_3 <= "11110011"; 
            when 4 => segment_3 <= "01100111"; 
            when 5 => segment_3 <= "10110111"; 
            when 6 => segment_3 <= "10111111"; 
            when 7 => segment_3 <= "11100001"; 
            when 8 => segment_3 <= "11111111"; 
            when 9 => segment_3 <= "11110111"; 
            when others => null;

        End CASE;

    End PROCESS;
End Behavioral;


