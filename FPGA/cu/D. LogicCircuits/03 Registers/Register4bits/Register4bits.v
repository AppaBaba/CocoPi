module Register4bits
(
    input wire clk, notreset, enable,
    input wire [3:0] D,
    output reg [3:0] Q
);
reg reset;
always @(posedge clk) 
  begin
  reset = !notreset;
    if (reset)
      Q <= 4'b0000;      
    else if (enable)
      Q <= D;
  end
endmodule