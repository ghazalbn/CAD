library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity BCDToBinary is
    Port 
    ( 
        clk: in std_logic;
        input: in std_logic_vector(11 downto 0); --  input BCD number
        output: out std_logic_vector(10 downto 0) -- output Binary number
    ); 
end BCDToBinary;

architecture Behavioral of BCDToBinary is
    begin
    process (clk, input)
        begin        
            if (clk'event and clk='1') then

                output <= (input(11 downto 8) * "1100100")  -- digit_1 * 100
                + (input(7 downto 4) * "1010")  -- + digit_2 * 10 
                + input(3 downto 0);            -- + digit_3 * 1
            end if;

        end process;
end Behavioral;

