
// Verilog Gate Level Full Adder
module fullAdderGL(a,b,cin,sum,carry);

input  a,b,cin;
output carry,sum;
wire s1,c1,c2;

xor x1(s1,a,b);
and a1(c1,a,b);
xor x2(sum,s1,cin);
and a2(c2,s1,cin);
or o1(carry,c1,c2);

endmodule
