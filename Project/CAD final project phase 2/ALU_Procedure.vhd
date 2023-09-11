library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.ALL;
use ieee.NUMERIC_STD.all;
use work.ALU_utility_functions.all;


package ALU_Procedure is
	type lines is ARRAY (integer range <>) OF STD_LOGIC_VECTOR(47 DOWNTO 0);
	type regs is ARRAY (0 to 7) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
	procedure ALU(
		variable A, B: in  STD_LOGIC_VECTOR(7 downto 0);  -- 2 inputs 8-bit
		variable OP  : in  STD_LOGIC_VECTOR(2 downto 0);  -- 1 input 3-bit for operation
		variable Output : inout  STD_LOGIC_VECTOR(7 downto 0) -- 1 output 8-bit 
	);

end ALU_Procedure;


package body ALU_Procedure is
procedure ALU(
	variable A, B: in  STD_LOGIC_VECTOR(7 downto 0);  -- 2 inputs 8-bit
	variable OP  : in  STD_LOGIC_VECTOR(2 downto 0);  -- 1 input 3-bit for operation
	variable Output : inout  STD_LOGIC_VECTOR(7 downto 0) -- 1 output 8-bit 
	) is begin
	
	case(OP) is
		when "000" => -- Addition
			Output := A + B ; 
		when "001" => -- Subtraction
			Output := A - B ;
		when "010" => -- Multiplication
			Output := std_logic_vector(to_signed((to_integer(signed(A)) * to_integer(signed(B))), 8)) ;
		when "011" => -- Division
			Output := std_logic_vector(to_signed(DIVIDE(to_integer(signed(A)), to_integer(signed(B))), 8)) ;
		when "100" => -- Power
			Output := std_logic_vector(to_signed(POW(to_integer(signed(A)), to_integer(signed(B))), 8));
		when "101" => -- logarithm
			Output := std_logic_vector(to_signed(LOG(to_integer(signed(A))), 8)) ;
		when "110" => -- Sqrt
			Output := std_logic_vector(to_signed(SQRT(to_integer(signed(A))), 8)) ;
		when others => Output := (others => 'X'); 
	end case;
		
end procedure ALU;

end ALU_Procedure;