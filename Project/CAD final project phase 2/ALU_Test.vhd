--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:12:32 07/13/2022
-- Design Name:   
-- Module Name:   D:/uni/cad/project3/CAD_final_project/ALU_Test.vhd
-- Project Name:  CAD_final_project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SUPER_ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
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
    PORT(
			input : IN STD_LOGIC_VECTOR(47 downto 0);
         registers : INOUT  regs;
         out1Signal : INOUT  std_logic_vector(7 downto 0);
         out2Signal : INOUT  std_logic_vector(7 downto 0);
         out3Signal : INOUT  std_logic_vector(7 downto 0);
         Output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
	signal input : STD_LOGIC_VECTOR(47 downto 0) := (others => '0');

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
   uut: SUPER_ALU PORT MAP (
			 input => input,
          registers => registers,
          out1Signal => out1Signal,
          out2Signal => out2Signal,
          out3Signal => out3Signal,
          Output => Output
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
		-- (12 + 6) * (2 ^ 4) = 288 => "00100000" after overflow
		input <= "000000010100000001100000000110000000010000000100";
		--op1In <= "000"; --sum
		--op2In <= "010"; --multiply
		--op3In <= "100"; --power
		--number1In <= "000001100"; --12
		--number2In <= "000000110"; --6
		--number3In <= "000000010"; --2
		--number4In <= "000000100"; --4
		--regOut <= "000";
		
      wait for 10ns;
		-- (log 65) / (sqrt(10)) = 6 / 3 = 2 => "00000010"
		input <= "001101011110001000001000000000000001010000000000";
		--op1In <= "101"; --log
		--op2In <= "011"; --division
		--op3In <= "110"; --sqrt
		--number1In <= "001000001"; --65
		--number2In <= "000000000"; --0
		--number3In <= "000001010"; --10
		--number4In <= "000000000"; --0
		--regOut <= "001";
		
		wait for 10ns;
		-- (4 - 6) * (log 7) = -2 * 2 = -4 => "11111100" 2's complement of -4
		input <= "010001010101000000100000000110000000111000000000";
		--op1In <= "001"; --subtraction
		--op2In <= "010"; --multiply
		--op3In <= "101"; --log
		--number1In <= "000000100"; --4
		--number2In <= "000000110"; --6
		--number3In <= "000000111"; --7
		--number4In <= "000000000"; --0
		--regOut <= "010";
		
		wait for 10ns;
		-- (2 * -6) / (log 7) = -12 / 2 = -6 => "11111010" 2's complement of -6
		input <= "011010011101100000001011111010000000111000000000";
		--op1In <= "010"; --multiply
		--op2In <= "011"; --division
		--op3In <= "101"; --log
		--number1In <= "100000001"; --registers(1)= 2
		--number2In <= "011111010"; --(-6)
		--number3In <= "000000111"; --7
		--number4In <= "000000000"; --0
		--regOut <= "011";
		
		wait for 10ns;
		-- (2 + (-8)) * (sqrt(13)) = -6 * 3 = -18 => "11101110" 2's complement of -18
		input <= "100000010110100000001011111000000001101000000000";
		--op1In <= "000"; --sum
		--op2In <= "010"; --multiply
		--op3In <= "110"; --sqrt
		--number1In <= "100000001"; --registers(1)= 2
		--number2In <= "011111000"; --(-8)
		--number3In <= "000001101"; --13
		--number4In <= "000000000"; --0
		--regOut <= "100";
		
		wait for 10ns;
		-- (-6 - 2) * (log(9)) = -8 * 3 = -24 => "11101000" 2's complement of -24
		input <= "101001010101100000011100000001000001001000000000";
		--op1In <= "001"; --subtraction
		--op2In <= "010"; --multiply
		--op3In <= "101"; --log
		--number1In <= "100000011"; --registers(3)= -6
		--number2In <= "100000001"; --registers(1)= 2
		--number3In <= "000001001"; --9
		--number4In <= "000000000"; --0
		--regOut <= "101";
		
		wait for 10ns;
		
		-- (-18 - (-24)) * (log(32)) = 6 * 5 = 30 => "00011110"
		input <= "110001010101100000100100000101100000000000000000";
		--op1In <= "001"; --subtraction
		--op2In <= "010"; --multiply
		--op3In <= "101"; --log
		--number1In <= "100000100"; --registers(4)= -18 
		--number2In <= "100000101"; --registers(5)= -24
		--number3In <= "100000000"; --registers(0)= 32
		--number4In <= "000000000"; --0
		--regOut <= "110";
		
		wait for 10 ns;
		-- (-6 + 7) * (2 ^ 3) = 8 => "00001000"
		input <= "111000010100100000011000000111100000001000000011";
		--op1In <= "000"; --sum
		--op2In <= "010"; --multiply
		--op3In <= "100"; --power
		--number1In <= "100000011"; --registers(3)= -6
		--number2In <= "000000111"; --7
		--number3In <= "100000001"; --registers(1)= 2
		--number4In <= "000000011"; --3
		--regOut <= "111";
		
		wait for 10ns;

      wait;
   end process;

END;
