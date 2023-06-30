`include "fbitripstr.v"
`timescale 1ns/1ns
module fbitripstrtb;
reg clk,reset;
wire[3:0]q;
fbitrip DUT(q,clk,reset);
initial begin
    clk=1'b0;
    forever
    #5 clk=~clk;
end
initial begin
    reset=1'b1;
    #2 reset=1'b0;
end
initial begin
    $dumpfile("fbitripstrtb.vcd");
    $dumpvars(0,fbitripstrtb);
    $monitor($time, " Q=%h",q);
    #320 $finish;
end
endmodule
