library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity SerialToParallel is
    generic (n: integer := 4); 
	port
	(
        clk: in std_logic;
        input_bit: in std_logic;
        output_frame: out std_logic_vector(n - 1 downto 0);
        output_changing: out std_logic_vector(n - 1 downto 0)
	);
end SerialToParallel;

architecture Behavioral of SerialToParallel is

    signal frame: std_logic_vector(n - 1 downto 0) := (others => '0');
    shared variable count: integer := 0;
    begin

        process (clk, input_bit)
        begin        
            if (clk'event and clk='1') then

                frame(n - 1 downto 1) <= frame(n - 2 downto 0);
                frame(0) <= input_bit;
                count := count + 1;

                if (count > n) then
                    count := 1;
                    output_frame <= frame;
                end if;
                
            end if;

        end process;

        output_changing <= frame;
        --output_frame <= frame;

end Behavioral;


 

