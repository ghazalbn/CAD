
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY SerialToParallel_Test IS
END SerialToParallel_Test;
 
ARCHITECTURE behavior OF SerialToParallel_Test IS

    COMPONENT SerialToParallel
    GENERIC (n: integer := 4); 
    PORT(
            clk : in std_logic;
            input_bit : in std_logic;
            output_frame : out std_logic_vector (n - 1 downto 0);
            output_changing: out std_logic_vector(n - 1 downto 0)
        );
    END COMPONENT;
    
    -- n parameter definitions
    CONSTANT parameter : integer := 4;
    
   --Inputs
    signal clk : std_logic;
    signal input_bit : std_logic;

 	--Outputs
   signal output_frame : std_logic_vector (parameter - 1 downto 0);
   signal output_changing: std_logic_vector(parameter - 1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 6 ns;
 
BEGIN
 
   uut: SerialToParallel 
   GENERIC MAP (n => parameter)
   PORT MAP (
            clk => clk,
            input_bit => input_bit,
            output_frame => output_frame,
            output_changing => output_changing
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2; -- 3ns
		clk <= '1';
		wait for clk_period/2; -- 3ns
   end process;

 

   -- Stimulus process
    stim_proc: process
    begin		
        input_bit<='0';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='0';

        wait for clk_period; -- 6ns
        input_bit<='0';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='0';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='0';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait for clk_period; -- 6ns
        input_bit<='1';

        wait;
    end process;

END;

