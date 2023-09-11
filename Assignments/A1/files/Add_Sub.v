//Q2

module Add_Sub(
	OutP, 
	Cout,
	A, 
	B, 
	select
);

wire B0, B1, B2, B3;
wire C0, C1, C2, C3;    
input[3:0] A, B;  
input select; 
output[3:0] OutP;
output Cout;
   
xor(B0, B[0], select);
xor(B1, B[1], select);
xor(B2, B[2], select);
xor(B3, B[3], select);
xor(Cout, C3, select);
   
FA F0(OutP[0], C0, A[0], B0, select);
FA F1(OutP[1], C1, A[1], B1, C0);
FA F2(OutP[2], C2, A[2], B2, C1);
FA F3(OutP[3], C3, A[3], B3, C2); 

endmodule


module FA(
	OutP,
	Cout, 
	Cin,
	Ai, 
	Bi
);

wire O1, O2, O3, O4;
input Cin, Ai, Bi;
output OutP, Cout;
   
xor(O1, Ai, Bi);
and(O2, Ai, Bi);   
and(O3, Ai, Cin);
and(O4, Bi, Cin);   
xor(OutP, O1, Cin);
or(Cout, O2, O3, O4);

endmodule