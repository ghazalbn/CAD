`timescale 1ns / 1ps

module Q1_TestBench;

  reg clock, reset_n, enter, exit;
  reg [1:0] code1, code2;
  wire GREEN_LED, RED_LED;
  wire [6:0] HEX_1, HEX_2;

  Park P (
    .clock(clock), 
    .reset_n(reset_n), 
    .enter(enter), 
    .exit(exit), 
    .code1(code1), 
    .code2(code2), 
    .GREEN_LED(GREEN_LED), 
    .RED_LED(RED_LED), 
    .HEX_1(HEX_1), 
    .HEX_2(HEX_2)
 );

 initial begin
    clock = 0;
    forever #10 clock = ~clock;
 end

 initial begin
    reset_n = 0;
    enter = 0;
    exit = 0;  
    code1 = 0;
    code2 = 0;

    #100;
        reset_n = 1;
    #20;
    enter = 1;
    #1000;
    enter = 0;
    code1 = 1;
    code2 = 2;
    #2000;
    exit =1;

 end
      
endmodule
