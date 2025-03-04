
module slowcounter(clk,led);
input wire clk;
output wire [7:0] led;
reg [32:0] cnt = 0;

always @(posedge clk) begin
	cnt <= cnt + 1;
end
assign led = cnt[32:24];
endmodule

