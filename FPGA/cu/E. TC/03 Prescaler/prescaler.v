
module prescaler
(
    input wire clk,
    output wire tick
 );

parameter N = 25;
reg [N-1:0] p = 0;
assign tick = p[N-1];
always @  (posedge clk)
begin
    p <= p + 1;
end
endmodule