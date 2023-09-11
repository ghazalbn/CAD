
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SUPER_ALU
    PORT(
         regOut : IN  std_logic_vector(2 downto 0);
         op1In : IN  std_logic_vector(2 downto 0);
         op2In : IN  std_logic_vector(2 downto 0);
         op3In : IN  std_logic_vector(2 downto 0);
         number1In : IN  std_logic_vector(7 downto 0);
         number2In : IN  std_logic_vector(7 downto 0);
         number3In : IN  std_logic_vector(7 downto 0);
         number4In : IN  std_logic_vector(7 downto 0);
         Output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal regOut : std_logic_vector(2 downto 0) := (others => '0');
   signal op1In : std_logic_vector(2 downto 0) := (others => '0');
   signal op2In : std_logic_vector(2 downto 0) := (others => '0');
   signal op3In : std_logic_vector(2 downto 0) := (others => '0');
   signal number1In : std_logic_vector(7 downto 0) := (others => '0');
   signal number2In : std_logic_vector(7 downto 0) := (others => '0');
   signal number3In : std_logic_vector(7 downto 0) := (others => '0');
   signal number4In : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SUPER_ALU PORT MAP (
          regOut => regOut,
          op1In => op1In,
          op2In => op2In,
          op3In => op3In,
          number1In => number1In,
          number2In => number2In,
          number3In => number3In,
          number4In => number4In,
          Output => Output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
		-- (12 + 6) * (2 ^ 4) = 288 => "00100000" after overflow
		op1In <= "000"; --sum
		op2In <= "010"; --multiply
		op3In <= "100"; --power
		number1In <= "00001100"; --12
		number2In <= "00000110"; --6
		number3In <= "00000010"; --2
		number4In <= "00000100"; --4
		regOut <= "000";
		

      -- insert stimulus here 

      wait for 10ns;
		-- (log 65) / (sqrt(10)) = 6 / 3 = 2 => "00000010"
		op1In <= "101"; --log
		op2In <= "011"; --division
		op3In <= "110"; --sqrt
		number1In <= "01000001"; --65
		number2In <= "00000000"; --0
		number3In <= "00001010"; --10
		number4In <= "00000000"; --0
		regOut <= "000";
		
		wait for 10ns;
		-- (4 - 6) * (log 7) = -2 * 2 = -4 => "11111100" 2's complement of -4
		op1In <= "001"; --subtraction
		op2In <= "010"; --multiply
		op3In <= "101"; --log
		number1In <= "00000100"; --4
		number2In <= "00000110"; --6
		number3In <= "00000111"; --7
		number4In <= "00000000"; --0
		regOut <= "000";
		
		
		
		wait for 10ns;
   end process;

END;
