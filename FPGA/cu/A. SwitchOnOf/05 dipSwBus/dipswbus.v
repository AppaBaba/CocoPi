// data output module
module swbus
(
    input wire [7:0] dipsw,
    output wire [7:0] led
);
// Internal data register
reg [7:0] dreg ; 

always @* begin
    dreg = dipsw;
end
// data register to output leds
assign led = dreg;

endmodule