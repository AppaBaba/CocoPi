
// A four Seven Segment Output Counter.
// Counter starts at the 24th lowest bit.
// A segment makes a count of 4 bits
// from 0 to F, hexadecimal format.
// There are 4 4bits or nibbles
// 

`include "hexdisp.v"

module hexcounter (
  input clk,
  input notreset,
  output [3:0] an,
  output [7:0] seg,
  output [23:0] ioled
);

  localparam N          = 4;   // one nibble
  localparam BD         = 24;  // Bit Delay
  localparam H0         = 0;   // first nibble
  localparam H1         = 1;   // second nibble
  localparam H2         = 2;   // third nibble
  localparam H3         = 3;   // forth nibble
  localparam DB         = 4;   // Display Buffer
  localparam RB         = 20;  // Refresh Bit

  reg  [47:0] cnt;             // counter register
  reg  [3:0]  select;
  wire [7:0]  db[DB : D0];

  hexdisp hd3(.clk(clk),
              .hex(cnt[BD + 4*N - 1:BD + 3*N]),
              .segout(db[H3]));
  hexdisp hd2(.clk(clk),
              .hex(cnt[BD + 3*N - 1:BD + 2*N]),
              .segout(db[H2]));
  hexdisp hd1(.clk(clk),
              .hex(cnt[BD + 2*N - 1:BD + N]),
              .segout(db[H1]));
  hexdisp hd0(.clk(clk),
              .hex(cnt[BD + N - 1:BD]),
              .segout(db[H0]));

  // Presacaler and Counter

  always @(posedge clk) begin
    if (!notreset)
      cnt <= 0;
    else
      cnt <= cnt + 1;
  end

  // Display Refress
  
  always @(posedge clk) begin
    case(cnt[RB:RB-1])
      2'h0: begin
        select <= 4'b1110;
        db[DB] <= db[H0];
      end
      2'h1: begin
        select <= 4'b1101;
        db[DB] <= db[H1];
      end
      2'h2: begin
        select <= 4'b1011;
        db[DB] <= db[H2];
      end
      default: begin
        select <= 4'b0111;
        db[DB] <= db[H3];
      end
    endcase
  end

  // outputs to the ioboard

  assign an =  select;
  assign ioled = cnt[BD + 4*N - 1:BD];
  assign seg = db[DB];
endmodule
