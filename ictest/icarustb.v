`timescale 1ns/1ns
`include "icarustest.v"
module icarustb;
reg A;
wire B;
ictest test(A,B);
initial
begin
    $dumpfile("icarustb.vcd");
    $dumpvars(0,icarustb);
    A=0;
    #20;
    A=1;
    #20;
    A=0;
    #20;
    $display("Test complete. its working nigga");
end
endmodule