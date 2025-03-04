//NOT gate data flow modeling
module NotDF(a,na);
input a;
output na;

assign na = ~a;
                
endmodule