`timescale 1ns/1ps
`include "1bitlogic.v"

module onebitlogic_test();

reg Ai, Bi, S1, S0;
wire Fi;

onebitlogic obj(Ai, Bi, S1, S0, Fi);

initial
begin
	Ai = 1'b0;
end

always
begin
	#5 Ai = 1'b0;
	#5 Ai = 1'b1;
	#5 Ai = 1'b1;
	#5 Ai = 1'b0;
end

initial
begin
	Bi = 1'b0;
end

always
begin
	#5 Bi = 1'b1;
	#5 Bi = 1'b0;
	#5 Bi = 1'b1;
	#5 Bi = 1'b0;
end

initial
begin
	S1 = 1'b0;
	#10 S1 = 1'b0;
	#10 S1 = 1'b0;
	#10 S1 = 1'b0;
	#10 S1 = 1'b1;
	#10 S1 = 1'b1;
	#10 S1 = 1'b1;
	#10 S1 = 1'b1;
end

initial
begin
	S0 = 1'b0;
	#10 S0 = 1'b0;
	#10 S0 = 1'b1;
	#10 S0 = 1'b1;
	#10 S0 = 1'b0;
	#10 S0 = 1'b0;
	#10 S0 = 1'b1;
	#10 S0 = 1'b1;
end

endmodule
