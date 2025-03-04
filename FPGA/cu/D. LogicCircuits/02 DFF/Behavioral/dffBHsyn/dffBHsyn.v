module dffBHsyn(d,clk,notreset,q,notq); 
input d, clk, notreset; 
output reg q, notq; 

reg reset;
always@(posedge clk) 
begin
  reset = !notreset;
  if(reset) begin
    q <= 0;
    notq <= 1;
  end
  else begin
    q <= d; 
    notq <= !d; 
  end
end 
endmodule