`include "mux2to1.v"
`timescale 1ns/1ns
module tb;
wire out1,out2;
reg in1,in2,sel0,sel1,in3,in4;
mux_switch dut(out1,sel0,in1,in2);
mux_ifelse dut1(out2,sel1,in3,in4);
integer i;
initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
    sel0=1'b0;sel1=1'b1;in1=1'b0;in2=1'b0;in3=1'b0;in4=1'b0;
    forever begin
        #5 in1=in1+1'b1;
        #5 in2=in2+1'b1;
        #5 in3=in3+1'b1;
        #5 in4=in4+1'b1;
        #5 sel0=sel0+1'b1;
        sel1=sel1+1'b1;
    end
end
initial begin
    #300 $finish;
end
endmodule



