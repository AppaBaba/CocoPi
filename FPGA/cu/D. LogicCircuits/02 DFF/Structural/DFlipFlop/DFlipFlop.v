module Dlatch(Dq, Dnotq, Dgate, Dd);
   output Dq;
   output Dnotq;
   input  Dgate;   
   input  Dd;

   wire   notd;
   wire   d1;
   wire   notd1;

   not(notd, Dd);   
   and(d1, Dgate, Dd);
   and(notd1, Dgate, notd);   
   nor(Dnotq, d1, Dq);
   nor(Dq, notd1, Dnotq);
endmodule

module SRlatch(SRq, SRnotq, SRgate, s, r);
   output SRq;
   output SRnotq;
   input  SRgate;   
   input  s;
   input  r;

   wire   s1;
   wire   r1;
   
   and(s1, SRgate, s);
   and(r1, SRgate, r);   
   nor(SRnotq, s1, SRq);
   nor(SRq, r1, SRnotq);
endmodule

module DFlipFlop(q, notq, clk, d);
   output q;
   output notq;
   input  clk;
   input  d;

   wire   cn;   // Control input to the D latch.
   wire   cnn;  // Control input to the SR latch.
   wire   dq;   // Output from the D latch, input to the gated SR latch.
   wire   dqn;  // Output from the D latch, input to the gated SR latch.
   
   not(cn, clk);
   not(cnn, cn);   
   Dlatch dl(dq, dqn, cn, d);
   SRlatch sr(q, notq, cnn, dq, dqn);   
endmodule
