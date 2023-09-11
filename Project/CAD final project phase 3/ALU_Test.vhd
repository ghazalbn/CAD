LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.ALU_Procedure.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_Test IS
END ALU_Test;
 
ARCHITECTURE behavior OF ALU_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SUPER_ALU
	 GENERIC (n: integer := 3); 
    PORT(
			program: IN lines(0 to n - 1);
         registers : INOUT  regs;
         out1Signal : INOUT  std_logic_vector(7 downto 0);
         out2Signal : INOUT  std_logic_vector(7 downto 0);
         out3Signal : INOUT  std_logic_vector(7 downto 0);
         Output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    
	 -- n parameter definitions
    CONSTANT parameter : integer := 3;

   --Inputs
	signal program: lines(0 to parameter - 1);

 	--Outputs
   signal registers : regs := (others => "00000000");
   signal out1Signal : std_logic_vector(7 downto 0);
   signal out2Signal : std_logic_vector(7 downto 0);
   signal out3Signal : std_logic_vector(7 downto 0);
   signal Output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SUPER_ALU 
	GENERIC MAP (n => parameter)
	PORT MAP (
			 program => program,
          registers => registers,
          out1Signal => out1Signal,
          out2Signal => out2Signal,
          out3Signal => out3Signal,
          Output => Output
        );

 

   -- Stimulus process
   stim_proc: process
   begin	
		wait for 10ns;
		program <= 
		(
		"000000010100000001100000000110000000010000000100",
		"001101011110001000001000000000000001010000000000",
		"110001010101000000100000000110000000111000000000"
		);
		
		-- (12 + 6) * (2 ^ 4) = 288 => "00100000" after overflow
		--input <= "000000010100000001100000000110000000010000000100";
		--op1In <= "000"; --sum
		--op2In <= "010"; --multiply
		--op3In <= "100"; --power
		--number1In <= "000001100"; --12
		--number2In <= "000000110"; --6
		--number3In <= "000000010"; --2
		--number4In <= "000000100"; --4
		--regOut <= "000";
		
		-- (log 65) / (sqrt(10)) = 6 / 3 = 2 => "00000010"
		--input <= "001101011110001000001000000000000001010000000000";
		--op1In <= "101"; --log
		--op2In <= "011"; --division
		--op3In <= "110"; --sqrt
		--number1In <= "001000001"; --65
		--number2In <= "000000000"; --0
		--number3In <= "000001010"; --10
		--number4In <= "000000000"; --0
		--regOut <= "001";
		
		-- (4 - 6) * (log 7) = -2 * 2 = -4 => "11111100" 2's complement of -4
		--input <= "010001010101000000100000000110000000111000000000";
		--op1In <= "001"; --subtraction
		--op2In <= "010"; --multiply
		--op3In <= "101"; --log
		--number1In <= "000000100"; --4
		--number2In <= "000000110"; --6
		--number3In <= "000000111"; --7
		--number4In <= "000000000"; --0
		
		
		wait for 100ns;

      wait;
   end process;

END;
