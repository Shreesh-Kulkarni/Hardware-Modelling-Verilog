`include "fbitsyncup.v"
`timescale 1ns/1ns
module fbitsyncuptb;
reg clk,rst;
wire[3:0]q;
fbitsyncup DUT(.clk(clk),.rst(rst),.count(q));
always #5 clk=~clk;
initial begin
    clk=1'b0;
    rst=1'b1;
    #2 rst=1'b0;
end
initial begin
    $dumpfile("fbitsyncuptb.vcd");
    $dumpvars(0,fbitsyncuptb);
    $monitor($time," Clk=%b, Reset=%b Count=%b",clk,rst,q);
    #300 $finish;
end
endmodule