module SRlatch(s,r,q,notq);
    input wire s, r;
    output wire q, notq;
    // SRlatch
    assign q     = ~(r | notq);
    assign notq  = ~(s | q);
    
endmodule

module SRlatchTester(q,notq);
output q, notq;
wire r, s;

SRlatch srlatch(.r(r), .s(s), .q(q), .notq(notq));

assign r = 1'b1; // reset
assign s = 1'b0; // set

endmodule
