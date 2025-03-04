
module hexdisp (
  input clk,                  // clock
  input [3:0] hex,            // hexadecimal number
  output [7:0] segout         // segment output
);

  reg [7:0] db;               // display buffer

  always @(posedge clk) begin
    case (hex)
      4'h0: db <= 8'hC0;
      4'h1: db <= 8'hF9;
      4'h2: db <= 8'hA4;
      4'h3: db <= 8'hB0;
      4'h4: db <= 8'h99;
      4'h5: db <= 8'h92;
      4'h6: db <= 8'h82;
      4'h7: db <= 8'hF8;
      4'h8: db <= 8'h80;
      4'h9: db <= 8'h90;
      4'ha: db <= 8'h88;
      4'hb: db <= 8'h83;
      4'hc: db <= 8'hc6;
      4'hd: db <= 8'ha1;
      4'he: db <= 8'h86;
      4'hf: db <= 8'h8e;
      default: db <= db;
    endcase
  end

  assign segout = db;
endmodule










