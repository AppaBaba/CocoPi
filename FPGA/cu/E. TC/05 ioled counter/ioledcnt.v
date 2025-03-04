
/*
 * LED array counter on the Alchitry IO board.
 */
module ioledcnt (
  input clk,
  input notreset,
  output [23:0] ioled
);

  reg [47:0] cnt;

  always @(posedge clk) begin
    if (!notreset)
      cnt <= 0;
    else
      cnt <= cnt + 1;
  end

  assign ioled = cnt[47:24];
endmodule
