
module SUM(S, A1, A2);

	input[31:0] A1, A2;
	output[31:0] S;
	assign S = A1 + A2;

endmodule



module SUB(S, A1, A2);

	input[31:0] A1, A2;
	output[31:0] S;
	assign S = A1 - A2;

endmodule


module MUL(M, A1, A2);

	input[31:0] A1, A2;
	output[31:0] M;
	assign M = A1 * A2;

endmodule

module DIV(D, A1, A2);

	input [31:0] A1, A2;
	output [31:0] D;
	assign D = A1 / A2;

endmodule


module GCD(G, A1, A2);

	input [31:0] A1, A2;
	output integer G;
	integer N1, N2, temp;
	integer done;

	always @(*)
	begin
		N1 = A1; 
		N2 = A2;
		while (N2 != 0)
		begin
			if (N1 < N2)
			begin
				temp = N1;
				N1 = N2;
				N2 = temp;
			end
			else if (N2 != 0)
				N1 = N1 - N2;
		end
		G = N1;
	end

endmodule


module POWER(P, A1, A2);

	input[31:0] A1, A2;
	output[31:0] P;
	assign P = A1 ** A2;

endmodule


module MUX(O, S, SUM_OUT, 
		SUB_OUT, MUL_OUT, DIV_OUT, 
		GCD_OUT, POWER_OUT);

	input[31:0] SUM_OUT, SUB_OUT, MUL_OUT;
	input[31:0] DIV_OUT, GCD_OUT, POWER_OUT;
    input[2:0] S;
	output reg[31:0] O;

	always @(*)
	begin
		case(S)  
			3'b000  : O <= SUM_OUT;        
			3'b001  : O <= SUB_OUT;        
			3'b010  : O <= MUL_OUT;        
			3'b011  : O <= DIV_OUT;       
			3'b100  : O <= GCD_OUT;        
			3'b101  : O <= POWER_OUT;       
			default : O <= 0;
		endcase
	end

endmodule


module ALU (O, A, B, S);
	input[31:0] A, B;
	input[2:0] S;
	wire[31:0] SUM_OUT, SUB_OUT, MUL_OUT;
	wire[31:0] DIV_OUT, GCD_OUT, POWER_OUT;
	output reg[31:0] O;

	SUM SM(SUM_OUT, A, B);
	SUB SB(SUB_OUT, A, B);
	MUL ML(MUL_OUT, A, B);
	DIV DV(DIV_OUT, A, B);
	GCD GD(GCD_OUT, A, B);
	POWER PW(POWER_OUT, A, B);

	always @(*)
	begin
		case(S)  
			3'b000  : O <= SUM_OUT;        
			3'b001  : O <= SUB_OUT;        
			3'b010  : O <= MUL_OUT;        
			3'b011  : O <= DIV_OUT;       
			3'b100  : O <= GCD_OUT;        
			3'b101  : O <= POWER_OUT;       
			default : O <= 0;
		endcase
	end
	
endmodule