

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY UnaryToBinary_Test IS
END UnaryToBinary_Test;
 
ARCHITECTURE behavior OF UnaryToBinary_Test IS 
 
 
    COMPONENT UnaryToBinary
    PORT(
         clk: in std_logic;
         input : IN  std_logic_vector(15 downto 0);
         output : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '1';
   signal input  : std_logic_vector (15 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector (4 downto 0);
   
  -- Clock period definitions
   constant clk_period : time := 10ns;
 
 
BEGIN
 
   uut: UnaryToBinary PORT MAP (
          clk => clk,
          input => input,
          output => output
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
        wait for clk_period;	
        input<=('0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1');

        wait for clk_period;	
        input<=('0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','1');

        wait for clk_period;	
        input<=('0','0','0','0','0','0','0','0','0','0','0','0','1','1','1','1');

        wait for clk_period;	
        input<=('0','0','0','0','0','0','0','0','0','0','1','1','1','1','1','1');

        wait for clk_period;	
        input<=('0','0','0','0','0','0','0','0','1','1','1','1','1','1','1','1');

        wait for clk_period;	
        input<=('0','0','0','0','1','1','1','1','1','1','1','1','1','1','1','1');

        wait for clk_period;	
        input<=('0','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');

        wait for clk_period;	
        input<=('1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1');

      wait;
   end process;

END;
