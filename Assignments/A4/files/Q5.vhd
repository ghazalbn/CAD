library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Perceptron is
    Port 
    ( 
        x0, w0: in integer;
        x1, w1: in integer;
        x2, w2: in integer;
        output: out integer
    ); 
end Perceptron;

architecture Behavioral of Perceptron is
    begin

    output <= (x0 * w0) + (x1 * w1) + (x2 * w2);

end Behavioral;



entity MLP is
    Port 
    ( 
        x0, w00, w01, w02: in integer;
        x1, w10, w11, w12: in integer;
        x2, w20, w21, w22: in integer;
        w30, w31: in integer;
        w40, w41: in integer;
        w50, w51: in integer;
        out_1, out_2: out integer
    ); 
end MLP;

architecture Behavioral of MLP is

    COMPONENT Perceptron
    Port 
    ( 
        x0, w0: in integer;
        x1, w1: in integer;
        x2, w2: in integer;
        output: out integer
    ); 
    end COMPONENT;

    signal p1_out, p2_out, p3_out : integer;
    signal output1, output2 : integer;

begin

    p1 : Perceptron
    port map(
        x0 => x0, w0 => w00,
        x1 => x1, w1 => w10,
        x2 => x2, w2 => w20, 
        output => p1_out);

    p2 : Perceptron
    port map(
        x0, w01,
        x1, w11,
        x2, w21, 
        p2_out);

    p3 : Perceptron
    port map(
        x0, w02,
        x1, w12,
        x2, w22, 
        p3_out);

    p4 : Perceptron
    port map(
        p1_out, w30,
        p2_out, w40,
        p3_out, w50, 
        output1);

    p5 : Perceptron
    port map(
        p1_out, w31,
        p2_out, w41,
        p3_out, w51, 
        output2);
    
    out_1 <= output1;
    out_2 <= output2;

end Behavioral;

