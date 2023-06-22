`include "dff.v"
`timescale 1ns/1ns
module dfftb;
reg d,clk,rst;
wire q,qbar;
dff dut(d,q,qbar,clk,rst);
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
    $dumpfile("dfftb.vcd");
    $dumpvars(0,dfftb);
    $monitor($time," D=%b, Reset=%b ,Q=%b , Qbar=%b",d,rst,q,qbar);
    #5  d=1'b0;
    #10 d=1'b1;
    #15 d=1'b0;
    #20 d=1'b0;
    #25 d=1'b0;
    #30 d=1'b1;
    #35 d=1'b0;
    $finish;
end
endmodule