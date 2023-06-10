`include "demux.v"
`timescale 1ps/1ps
module demuxtb;
reg[1:0] sel;
reg in;
wire[3:0] out;
demux dut(in,sel,out);
initial
begin
    $dumpfile("demuxtb.vcd");
    $dumpvars(0,demuxtb);
    $monitor($time, "sel =%b,in=%b,out=%b");
    in=1'b1;
    #5 sel=2'b00;
    #5 sel=2'b01;
    #5 sel=2'b10;
    #5 sel=2'b11;
end
endmodule
