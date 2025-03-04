
module SRLatchGL(r,s,q,notq);
input r, s;
output q, notq;

// RSlatch
nor(q, r, notq);
nor(notq, s, q);

endmodule

module SRLatchGLTester(q,notq);
output q, notq;
wire r, s;

SRLatchGL SRlatch(.r(r), .s(s), .q(q), .notq(notq));

assign r = 1'b1; // reset
assign s = 1'b0; // set

endmodule
