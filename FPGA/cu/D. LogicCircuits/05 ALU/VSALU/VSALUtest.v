// VSALU

`default_nettype none

// Bus System
module VSALUtest
(
 output [7:0] Result
);
 wire [0:7] bus0;
 wire [0:3] bus1;
 wire [0:7] bus2;
 wire [0:7] bus3;
 assign Result = bus0;
 TestData testdata 
(
  .opA(bus2),
  .opB(bus3),
  .Mux(bus1)
 );
 VSALU vsalu
(
  .opa(bus2),
  .opb(bus3),
  .mux(bus1),
  .result(bus0)
 );
endmodule


module TestData (opA,opB,Mux);
 
     // Data registers
     output reg [7:0] opA;
     output reg [7:0] opB;
     output reg [3:0] Mux;
 
     // testing
 
     initial begin
       // Apply inputs.
         opA = 8'b01101010;
         opB = 8'b00111011;
         // Multiplex
         Mux = 'h0; #10;
         Mux = 'h1; #10;
         Mux = 'h2; #10;
         Mux = 'h3; #10;
         Mux = 'h4; #10;
         Mux = 'h5; #10;
         Mux = 'h6; #10;
         Mux = 'h7; #10;
         Mux = 'h8; #10;
         Mux = 'h9; #10;
         Mux = 'hA; #10;
         Mux = 'hB; #10;
     end     
endmodule

module VSALU (
 input [7:0] opa,
 input [7:0] opb,
 input [3:0] mux,
 output [7:0] result
);
 //Simple ALU
 //`timescale 1ns/100ps
     
     reg [7:0] r;
 
     //variables for operations
     //Assign the output 
     assign result = r;
 
     always @(mux or opa or opb)
     begin
         case (mux)
          4'h0 : r = opa + opb;    //Add
          4'h1 : r = opa - opb;    //Sub
          4'h2 : r = opa * opb;    //Mul
          4'h3 : r = opa / opb;    //Div
          4'h4 : r = ~opa;         //NOT
          4'h5 : r = opa & opb;    //AND
          4'h6 : r = opa | opb;    //OR
          4'h7 : r = ~(opa & opb); //NAND 
          4'h8 : r = ~(opa | opb); //NOR                
          4'h9 : r = opa ^ opb;    //XOR
          4'ha : r = opa << 1;     //Logical shift left
          4'hb : r = opa >> 1;     //Logical shift right
         endcase 
     end
endmodule
