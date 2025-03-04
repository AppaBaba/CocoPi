//NOT gate behavioural modeling
module NotBh(a,na);
input a;
output reg na;

always @ (a)
na = ~a;
                
endmodule