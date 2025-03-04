//NOT gate logic modeling
module NotGL(a,na);
input a;
output na;
not(na,a);
endmodule

module NotGL8(in,out);
input [7:0] in;
output [7:0] out;

NotGL not0(.a(in[0]), .na(out[0]));
NotGL not1(.a(in[1]), .na(out[1]));
NotGL not2(.a(in[2]), .na(out[2]));
NotGL not3(.a(in[3]), .na(out[3]));
NotGL not4(.a(in[4]), .na(out[4]));
NotGL not5(.a(in[5]), .na(out[5]));
NotGL not6(.a(in[6]), .na(out[6]));
NotGL not7(.a(in[7]), .na(out[7]));

endmodule