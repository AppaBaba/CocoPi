module notGate(n,k); 
input k; 
output n;
assign n= ~k; 
endmodule

module nandGate(z,x,y); 
input x,y; 
output z;
assign z = ~(x&y); 
endmodule

module dffSM(d,clk,q,notq);
input d,clk; 
output q, notq;

wire notd;
notGate not1(notd,d); 
nandGate nand1(x,clk,d); 
nandGate nand2(y,clk,notd); 
nandGate nand3(q,notq,y); 
nandGate nand4(notq,q,x); 
endmodule