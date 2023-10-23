`include "multibitgates.v"
`timescale 1ns/1ns
module mbgatestb;
reg[2:0] a,b;
wire[2:0] oand,oor,oxor,onor,onand,oxnor,onot;
mbgates dut(a,b,oand,oor,oxor,onot,onand,onor,oxnor);
initial begin
    $dumpfile("mbgatestb.vcd");
    $dumpvars(0,mbgatestb);
    a=3'b0;b=3'b0;
    #155 a=3'd0;b=3'd1;
    #155 a=3'd2;b=3'd3;
    #155 a=3'd4;b=3'd5;
    #155 a=3'd6;b=3'd7;
    #155 a=3'd7;b=3'd1;
    $finish;
end
endmodule
