module prescalertocounter
(
input CLK,
output [7:0] LED
);
wire clk, ticksig;
wire [7:0] bus0;

assign LED = bus0;

prescaler ps(.clk(CLK), .tick(ticksig));
counter ctr(.tickin(ticksig), .led(bus0));

endmodule

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

module counter
(
    input wire tickin,
    output wire [7:0] led
);
reg [7:0] c = 0;
always @  (posedge tickin)
begin
    c <= c + 1;
end
assign led = c;
endmodule