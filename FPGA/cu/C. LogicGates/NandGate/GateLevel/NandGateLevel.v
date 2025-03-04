module NandGateLevel(a,b,c);

input a,b;
output c;

wire c1;
and(c1, a, b);
not(c, c1);

endmodule
