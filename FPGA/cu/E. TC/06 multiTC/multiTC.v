// One module prescaler and multiple counters
// Max prescaler parameter M
// Counter range parameter R
// Counter starter bit S0, S1, S2
module multiTC
#(
    parameter M = 35,
    parameter R = 7,
    parameter S0 = 19,
    parameter S1 = 23,
    parameter S2 = 27
)
(
    input clk,                 // 100MHz clock
    input notrst,              // reset button (active low)
    input [R:0] dipsw0,        // dip switch bus 1
    input [R:0] dipsw1,        // dip switch bus 2
    input [R:0] dipsw2,        // dip switch bus 3
    output [R:0] led,          // led bus
    output [R:0] ioled0,       // io led bus 0
    output [R:0] ioled1,       // io led bus 1
    output [R:0] ioled2        // io led bus 2
);
    
    reg [M:0] ps;             // prescaler register

    assign ioled0 = ps[S0+R:S0] & dipsw0; // counter0
    assign ioled1 = ps[S1+R:S1] & dipsw1; // counter1
    assign ioled2 = ps[S2+R:S2] & dipsw2; // counter2
    assign led = ioled1;                // 4th counter that follows counter1

    // prescaler
    always @(posedge clk)
        begin
            ps = ps + 1;
        end

endmodule
