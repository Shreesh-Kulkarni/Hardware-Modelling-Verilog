`timescale 1ns/1ns
`include "siso.v"
module sisotb;
reg clk,rst;
reg si;
wire q;
siso dut(si,q,rst,clk);
initial begin
    clk=1'b0;
    forever
    #5 clk=~clk;
end
initial begin
    rst=1'b1;
    #5 rst=1'b0;

end
initial begin
    $dumpfile("sisotb.vcd");
    $dumpvars(0,sisotb);
    #5 si=1'b1;
    #10 si=1'b0;
    #15 si=1'b1;
    #20 si=1'b0;
    #25 si=1'b1;

    #100 $finish;
end
endmodule