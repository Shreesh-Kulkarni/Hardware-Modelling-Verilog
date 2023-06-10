`include "hadf.v"
`timescale 1ps/1ps
module hadftb;
reg a,b;
wire s,c;
hadf DUT(a,b,s,c);
initial
begin
    $dumpfile("hadftb.vcd");
    $dumpvars(0,hadftb);
    $monitor($time,"  A=%b,B=%b,Sum = %b,Carry=%b",a,b,s,c);
    #5 a=1'b0;b=1'b0;
    #5 a=1'b0;b=1'b1;
    #5 a=1'b1;b=1'b0;
    #5 a=1'b1;b=1'b1;
    #5 $finish;
end
endmodule