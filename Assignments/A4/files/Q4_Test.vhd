
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Stopwatch_Test IS
END Stopwatch_Test;
 
ARCHITECTURE behavior OF Stopwatch_Test IS

 
    COMPONENT Stopwatch
    PORT(
        clk : IN std_logic;
        reset : IN std_logic;
        start : IN std_logic;
        segment_1 : OUT std_logic_vector(7 downto 0);
        segment_2 : OUT std_logic_vector(7 downto 0);
        segment_3 : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '1';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal segment_1 : std_logic_vector(7 downto 0);
   signal segment_2 : std_logic_vector(7 downto 0);
   signal segment_3 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: Stopwatch PORT MAP (
          clk => clk,
          reset => reset,
          start => start,
          segment_1 => segment_1,
          segment_2 => segment_2,
          segment_3 => segment_3
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2; -- 5ns
		clk <= '1';
		wait for clk_period/2; -- 5ns
   end process;

 

   -- Stimulus process
        
    stim_proc: process
    begin		
        wait for clk_period; --10ns	
        reset<='1';

        wait for clk_period; --10ns	
        reset<='0';
        start<='0';

        wait for clk_period; --10ns
        start<='1';

        wait for clk_period*6; --60ns
        start<='0';
        reset<='1';

        wait;
   end process;

END;
