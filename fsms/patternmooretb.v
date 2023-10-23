`timescale 1ns/1ns
`include "patternmoore.v"
module patternmooretb;
reg clk;
reg in,reset;
wire out;
patternmoore dut(reset,clk,in,out);
initial begin
    clk=1'b0;
    reset=1'b1;
    #60 reset=1'b0;
    forever
    #55 clk=~clk;
end
initial begin
    $dumpfile("patternmooretb.vcd");
    $dumpvars(0,patternmooretb);
    $monitor($time," Input=%b,reset=%b,output=%b",in,reset,out);
    #80 in=1'b1;
    #100 in=1'b0;
    #120 in=1'b1;
    #100 in=1'b0;
    #75 in=1'b1;
    #75 $finish;
end
endmodule