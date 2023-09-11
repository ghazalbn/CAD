library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.all;
use work.ALU_Procedure.all;


entity SUPER_ALU is
  Port (
	regOut, op1In, op2In, op3In : in STD_LOGIC_VECTOR(2 downto 0);
	number1In, number2In, number3In, number4In: in STD_LOGIC_VECTOR(7 downto 0);
	Output: out STD_LOGIC_VECTOR(7 downto 0)
	);
end SUPER_ALU; 

architecture Behavioral of SUPER_ALU is
signal registers: regs;
signal out1Signal, out2Signal, out3Signal : std_logic_vector (7 downto 0);
begin

	process(regOut, op1In, op2In, op3In, number1In, number2In, number3In, number4In)
		variable op1, op2, op3: std_logic_vector (2 downto 0);
		variable number1, number2, number3, number4 : std_logic_vector (7 downto 0);
		variable out1, out2, out3 : std_logic_vector (7 downto 0);
	begin
	
	op1 := op1In;
	op2 := op2In;
	op3 := op3In;
	
	number1 := number1In;
	number2 := number2In;
	number3 := number3In;
	number4 := number4In;

	
	ALU(number1, number2, op1, out1);
	ALU(number3, number4, op3, out2);
	ALU(out1, out2, op2, out3);

	out1Signal <= out1;
	out2Signal <= out2;
	out3Signal <= out3;
	Output <= out3;
	registers(to_integer(unsigned(regOut))) <= out3;
	
	end process;
	
	

end Behavioral;
