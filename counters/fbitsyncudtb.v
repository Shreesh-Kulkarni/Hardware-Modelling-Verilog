`include "fbitsyncud.v"
`timescale 1ns/1ns
module fbitsyncudtb;
reg clk,rst,ud;
wire[3:0]q;
fbitsyncud DUT(.clk(clk),.rst(rst),.count(q),.ud(ud));
always #5 clk=~clk;
initial begin
    clk=1'b0;
    rst=1'b1;
    #2 rst=1'b0;
end
initial begin
    $dumpfile("fbitsyncudtb.vcd");
    $dumpvars(0,fbitsyncudtb);
    $monitor($time," Clk=%b, Reset=%b Updown = %b Count=%b",clk,rst,ud,q);
    #5 ud=1'b0;
    #10 ud=1'b0;
    #20 ud=1'b1;
    #25 ud=1'b1;
    #30 ud=1'b1;
    #45 ud=1'b0;
    #50 ud=1'b1;
    #300 $finish;
end
endmodule