
// Verilog Data Flow Half Adder
module halfAdderDF(a, b, s, c);
input a,b;
output s,c;
assign {c,s}=a+b;                                
endmodule
