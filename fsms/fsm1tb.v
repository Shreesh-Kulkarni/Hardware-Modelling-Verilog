`timescale 1ns/1ns
`include "fsm1.v"
module fsm1tb;
reg clk;
reg in,areset;
reg out;
fsm1 dut(in,clk,areset,out);
initial begin
    clk=1'b0;
    areset=1'b1;
    in=1'b1;
    #20 areset=1'b0;
    forever
    #55 clk=~clk;
end
initial begin
    $dumpfile("fsm1tb.vcd");
    $dumpvars(0,fsm1tb);
    $monitor($time," Input=%b,areset=%b,output=%b",in,areset,out);
    #55 in=1'b0;
    #110 in=1'b1;
    #165 in=1'b0;
    #220 in=1'b1;
    #275 in=1'b0;
    #330 $finish;
end
endmodule
