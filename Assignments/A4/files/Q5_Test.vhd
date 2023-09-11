
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MLP_Test IS
END MLP_Test;
 
ARCHITECTURE behavior OF MLP_Test IS 
 
 
    COMPONENT MLP
    PORT(
            x0, w00, w01, w02: in integer;
            x1, w10, w11, w12: in integer;
            x2, w20, w21, w22: in integer;
            w30, w31: in integer;
            w40, w41: in integer;
            w50, w51: in integer;
            out_1, out_2: out integer
        );
    END COMPONENT;
    

   --Inputs
        signal x0, w00, w01, w02: integer := 0;
        signal x1, w10, w11, w12: integer := 0;
        signal x2, w20, w21, w22: integer := 0;
        signal w30, w31: integer:= 0;
        signal w40, w41: integer:= 0;
        signal w50, w51: integer:= 0;

 	--Outputs
        signal out_1, out_2: integer;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
   uut: MLP 
        PORT MAP(
            x0    => x0,
            w00   => w00,
            w01   => w01,
            w02   => w02,
            x1    => x1,
            w10   => w10,
            w11   => w11,
            w12   => w12,
            x2    => x2,
            w20   => w20,
            w21   => w21,
            w22   => w22,
            w30   => w30,
            w31   => w31,
            w40   => w40,
            w41   => w41,
            w50   => w50,
            w51   => w51,
            out_1 => out_1,
            out_2 => out_2);


   -- Stimulus process
   stim_proc: process
   begin

        w00<= 1; w01<= 2; w02<= 3;
        w10<= 4; w11<= 5; w12<= 6;
        w20<= 7; w21<= 8; w22<= 9;
        w30<= 10; w31<= 11; 
        w40<= 12; w41<= 13; 
        w50<= 14; w51<= 15;

        wait for 10 ns;	
        x0<= 3;
        x1<= 5;
        x2<= 8;

        wait for 10 ns;	
        x0<= 2;
        x1<= 0;
        x2<= 7;

        wait for 10 ns;	
        x0<= 10;
        x1<= 4;
        x2<= 3;

        wait for 10 ns;	
        x0<= 11;
        x1<= 7;
        x2<= 6;

        wait for 10 ns;	
        x0<= 5;
        x1<= 5;
        x2<= 5;

      wait;
   end process;

END;


