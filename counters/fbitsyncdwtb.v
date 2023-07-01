`include "fbitsyncdw.v"
`timescale 1ns/1ns
module fbitsyncdwtb;
reg clk,rst;
wire[3:0]q;
fbitsyncdw DUT(.clk(clk),.rst(rst),.count(q));
always #5 clk=~clk;
initial begin
    clk=1'b0;
    rst=1'b1;
    #2 rst=1'b0;
end
initial begin
    $dumpfile("fbitsyncdwtb.vcd");
    $dumpvars(0,fbitsyncdwtb);
    $monitor($time," Clk=%b, Reset=%b Count=%b",clk,rst,q);
    #300 $finish;
end
endmodule