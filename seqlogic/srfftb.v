`include "srff.v"
`timescale 1ns/1ns
module srfftb;
reg s,r,clk;
wire qbar;
wire q;
srff DUT(s,r,q,qbar,clk);
initial begin
    clk=1'b0;
    forever
    #5 clk=~clk;
end
initial begin
    $dumpfile("srfftb.vcd");
    $dumpvars(0,srfftb);
    $monitor($time,"  S= %b, R=%b,Q = %b, Qbar = %b",s,r,q,qbar);
    #5 s=1'b0;r=1'b0;
    #10 s=1'b0;r=1'b1;
    #15 s=1'b0;r=1'b0;
    #20 s=1'b1;r=1'b0;
    #25 s=1'b0;r=1'b0;
    #30 s=1'b1;r=1'b1;
    $finish;
end
endmodule
