// data output module
module swbus
(
    output wire [7:0] led
);
// Internal data register
reg [7:0] dreg ; 

always @* begin
    dreg = 8'b11011101;
end
// data register to output leds
assign led = dreg;

endmodule