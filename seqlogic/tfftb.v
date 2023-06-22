`include "tff.v"
`timescale 1ns/1ns
module tfftb;
reg t,clk,rst;
wire q,qbar;
tff DUT(t,q,qbar,clk,rst);
initial begin
    clk=1'b0;
    forever
    #5 clk=~clk;
end
initial begin
    rst=1'b1;
    #10 rst=1'b0;
end
initial begin
    $dumpfile("tfftb.vcd");
    $dumpvars(0,tfftb);
    $monitor($time," T=%b, Q=%b ,Qbar=%b",t,q,qbar);
    #5  t=1'b0;
    #10 t=1'b1;
    #15 t=1'b0;
    #20 t=1'b1;
    #25 t=1'b0;
    #30 t=1'b1;
    #35 t=1'b0;
    $finish;
end
endmodule