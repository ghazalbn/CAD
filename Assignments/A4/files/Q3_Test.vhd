
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BCDToBinary_Test IS
END BCDToBinary_Test;
 
ARCHITECTURE behavior OF BCDToBinary_Test IS 
 
 
    COMPONENT BCDToBinary
    PORT(
            clk: in std_logic;
            input : in std_logic_vector (11 downto 0);
            output : out std_logic_vector (10 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic;
   signal input  : std_logic_vector (11 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector (10 downto 0);

  -- Clock period definitions
   constant clk_period : time := 10ns;
  
 
 
BEGIN
 
   uut: BCDToBinary PORT MAP (
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
        input<= "011101100111";

        wait for clk_period;	
        input<= "010101000011";

        wait for clk_period;	
        input<= "011110000111";

        wait for clk_period;	
        input<= "100110011001";

        wait for clk_period;	
        input<= "000100100011";

        wait for clk_period;	
        input<= "001100000001";

        wait for clk_period;	
        input<= "000100000000";

      wait;
   end process;

END;


