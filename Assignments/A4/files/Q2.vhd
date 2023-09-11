library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity UnaryToBinary is
	port
	(
    clk: in std_logic;
	input: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(4 downto 0)
	);
end UnaryToBinary;

architecture Behavioral of UnaryToBinary is

    SHARED variable number : unsigned(4 downto 0) := "00000";

    begin
        process(clk, input)
        begin
            if (clk'event and clk='1') then

                number := "00000";   
                for i in input'range loop   --check for all the bits.

                    if(input(i) = '1') then --check if the bit is '1'
                        number := number + 1; --if its one, increment the number.
                    end if;

                end loop;

                output <= std_logic_vector(number);  

            end if;
        end process;

end Behavioral;


