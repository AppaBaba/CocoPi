
// Verilog Data Flow Full Adder
module fullAdderDF(a,b,cin,sum,carry);
input  a,b,cin;
output wire carry,sum;
assign {carry,sum}=a+b+cin;
endmodule
