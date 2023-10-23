`include "hadf.v"
module fadd(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire s1,c1,c2;
hadf g1(a,b,s1,c1);
hadf g2(s1,cin,sum,c2);
assign cout=c1|c2;
endmodule


