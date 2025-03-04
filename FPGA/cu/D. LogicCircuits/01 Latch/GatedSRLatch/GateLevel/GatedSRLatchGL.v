module GatedSRLatchGL(q, notq);

output q, notq;        // Q and  not Q outputs
wire nots;
wire notr;
// input s, r, e;      // Set, Reset and Enable inputs
wire s, r, e;
assign s = 1;
assign r = 0;
assign e = 1;

// Logic for Gated SR Latch
and(nots, e, s);      // And gate for enable and Set input
and(notr, e, r);      // And gate for enable and ReSet input
// RS Latch part of Gated SR Latch
nor(q, nots, notq);   // nor gate for Q output
nor(notq, notr, q);   // nor gate for notQ output

endmodule