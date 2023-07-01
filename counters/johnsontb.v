`include "johnsonc.v"
`timescale 1ns/1ns
module johnsonctb;
reg clk,rst;
wire[3:0]out;
johnsonc DUT(clk,rst,out);
always #5 clk=~clk;
initial begin
    clk=1'b0;
    rst=1'b1;
    #2 rst=1'b0;
end
initial begin
    $dumpfile("johnsonctb.vcd");
    $dumpvars(0,johnsonctb);
    $monitor($time," Clk=%b Reset = %b Output = %b ",clk,rst,out);
    #200  $finish;
end
endmodule