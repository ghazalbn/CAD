
module ALU_TestBench;

	reg[31:0] A, B;
	reg[2:0] S;
	wire[31:0] O;
	ALU AU(O, A, B, S);

	initial
	begin
		A = 32'd15;
		B = 32'd11;
		S = 0;
		#10;
		S = 1;
		#10;
		S = 2;
		#10;
		S = 3;
		#10;
		S = 4;
		#10;
		S = 5;
		#10;
	end

endmodule