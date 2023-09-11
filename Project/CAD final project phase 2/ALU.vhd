library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;
use work.ALU_Procedure.all;


entity SUPER_ALU is
  Port (
	input : in STD_LOGIC_VECTOR(47 downto 0);  -- 1 input 48-bit 
	--regOut, op1In, op2In, op3In : inout STD_LOGIC_VECTOR(2 downto 0); 
	--number1In, number2In, number3In, number4In: inout STD_LOGIC_VECTOR(8 downto 0); 
	registers : inout regs; 
	out1Signal, out2Signal, out3Signal : inout std_logic_vector (7 downto 0); 
	Output: out STD_LOGIC_VECTOR(7 downto 0) 
	);
end SUPER_ALU; 

architecture Behavioral of SUPER_ALU is
--signal registers : regs; 
--signal out1Signal, out2Signal, out3Signal : std_logic_vector (7 downto 0); 
signal number1signal, number2signal, number3signal, number4signal: std_logic_vector(7 downto 0); 
shared variable regOut: std_logic_vector (2 downto 0); 
begin

	process(input)
		variable op1, op2, op3: std_logic_vector (2 downto 0); 
		variable number1In, number2In, number3In, number4In: STD_LOGIC_VECTOR(8 downto 0);
		variable number1, number2, number3, number4 : std_logic_vector (7 downto 0); 
		variable out1, out2, out3 : std_logic_vector (7 downto 0); 
	begin
	
		regOut:= input(47 downto 45);
		op1 := input(44 downto 42);
		op2 := input(41 downto 39);
		op3 := input(38 downto 36);
		
		number1In := input(35 downto 27);
		number2In := input(26 downto 18);
		number3In := input(17 downto 9);
		number4In := input(8 downto 0);
		
		if number1In(8)='0' then 
		  number1 := number1In(7 downto 0); 
		else 
		  number1 := registers(to_integer(unsigned(number1In(2 downto 0)))); 
		end if; 
		  
		if number2In(8)='0' then 
		  number2 := number2In(7 downto 0); 
		else 
		  number2 := std_logic_vector(signed(registers(to_integer(unsigned(number2In(2 downto 0)))))); 
		end if; 
		  
		if number3In(8)='0' then 
		  number3 := number3In(7 downto 0); 
		else 
		  number3 := registers(to_integer(unsigned(number3In(2 downto 0)))); 
		end if; 
		  
		if number4In(8)='0' then 
		  number4 := number4In(7 downto 0); 
		else 
		  number4 := registers(to_integer(unsigned(number4In(2 downto 0)))); 
		end if; 
		
		ALU(number1, number2, op1, out1);
		ALU(number3, number4, op3, out2);
		ALU(out1, out2, op2, out3);
		
		out1Signal <= out1;
		out2Signal <= out2;
		out3Signal <= out3;
	
	end process;
	
	registers(to_integer(unsigned(regOut))) <= out3Signal;
	Output <= out3Signal;
	

end Behavioral;
