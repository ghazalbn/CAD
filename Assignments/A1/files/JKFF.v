module JKFF(
	Q,
	QB,
	CLK,
	J,
	K
);

wire N1_OUT;
wire N2_OUT;
input J, K, CLK;
output Q, QB;

nand(N1_OUT, J, CLK, QB);
nand(N2_OUT, K , CLK, Q);
nand(Q, QB, N1_OUT);
nand(QB, Q, N2_OUT);

endmodule
