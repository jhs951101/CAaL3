
module onebitlogic(Ai, Bi, S1, S0, Fi);

	input Ai, Bi, S1, S0;
	output Fi;
	wire l0, l1, l2, l3;
	wire f0, f1, f2, f3;
	wire not_s0, not_s1;

	and(l0, Ai, Bi);
	or(l1, Ai, Bi);
	xor(l2, Ai, Bi);
	not(l3, Ai);

	not(not_s0, S0);
	not(not_s1, S1);

	and(f0, l0, not_s0, not_s1);
	and(f1, l1, S0, not_s1);
	and(f2, l2, not_s0, S1);
	and(f3, l3, S0, S1);

	or(Fi, f0, f1, f2, f3);

endmodule
