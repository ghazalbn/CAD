module Mux (select, b0, b1, b2, b3, out);

    input [1:0] wire select,
    input [7:0] wire b0, b1, b2, b3,
    output [7:0] reg out

    always @ (*) 
    begin
        case(select)
            2'b00 : out = b0;        
            2'b01 : out = b1;        
            2'b10 : out = b2;        
            2'b11 : out = b3; 
        endcase
    end

endmodule

module DFF_E(clock, reset, enable, d, q);

    input wire clock, reset, enable,
    input [7:0] d,
    output [7:0] wire q

    always @ (*) 
    begin

        if (clock) 
        begin q = d;
        end
        if (reset) 
        begin q = 1'b0;
        end
        if (~enable) 
        begin q = 1'bz;
        end
    end
endmodule


module DFF(clock, reset, d, q);
    input wire clock, reset, 
    input [7:0] wire d,
    output [7:0] wire q
    always @ (*) 
    begin
        if(clock) 
        begin q = d;
        end
        if(reset) 
        begin q = 1'b0;
        end
    end
endmodule


module Encoder(In, s);

    output s; 
    input [3: 0]  In; 
    
    wire b1;
    or(b1,In[0],In[1],In[2],In[3]);

    and(x,b1,s);

endmodule


module ADD(a, b, out);
    input [7:0] wire a, b,
    output [7:0] wire out;

    assign out = a + b;
endmodule


module PR(a, b, out);
    input [7:0] wire a, b,
    output [7:0] wire out;

    assign out = a * b;
endmodule


module MD(
    input c, input s, input [3:0] b, 
    input a, input clk, output Out
    );

    wire w1; 
    wire [7:0] w2, w3, w3Bar, w4, w5, w6;

    not (w3Bar, w3);
    Encoder E(b, w1);
    or (w2, w1, a);

    DFF D_1 (c, clk, w3);
    DFF D_2 (w2, clk, w4);
    DFF_E D1 (w4, clk, w3, w5);
    DFF_E D2 (w4, clk, w3Bar, w6);
    or (w7, w5, w6);
    and (Out, a, clk);