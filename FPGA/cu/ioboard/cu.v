module cu(
    input clk,              // 100MHz clock
    input rst_n,            // reset button (active low)
    input [7:0] dsw0,       // dip switch bank 1
    input [7:0] dsw1,       // dip switch bank 2
    input [7:0] dsw2,       // dip switch bank 3
    output [7:0] led,       // 8 user controllable LEDs
    output [7:0] lb0,       // LED bank 0
    output [7:0] lb1,       // LED bank 1
    output [7:0] lb2,       // LED bank 2
    );
    
    reg [31:0] lreg;

    assign lb0 = lreg[31:23] & dsw0;
    assign lb1 = lreg[31:23] & dsw1;
    assign lb2 = lreg[31:23] & dsw2;

    always @(posedge clk)
        begin
            lreg = lreg + 1;
        end

endmodule
