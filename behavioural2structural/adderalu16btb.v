`include "adderalu16b.v"
`timescale 1ps/1ps
module adderalu16btb;
reg[15:0] X,Y;
wire[15:0]Z;
wire Sign,carry,overflow,zero,par;
adderalu16b DUT(.X(X),.Y(Y),.sum(Z),.S(sign),.C(carry),.O(overflow),.Zero(zero),.P(par));
initial
begin
    $dumpfile("adderalu16btb.vcd");
    $dumpvars(0,adderalu16btb);
    $monitor($time,"X=%h,Y=%h,Sum=%h,Sign=%b,Carry=%b,Overflow=%b,Zero=%b,Parity=%b",X,Y,Z,Sign,carry,overflow,zero,par);
    #5 X=16'h0000;Y=16'h0000;
    #5 X=16'h8FFF;Y=16'h8000;
    #5 X=16'hFFFE;Y=16'h0002;
    #5 X=16'hAAAA;Y=16'h5555;
    #5 $finish;
end
endmodule

