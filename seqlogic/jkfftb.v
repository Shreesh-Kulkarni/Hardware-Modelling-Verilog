`include "jkff.v"
`timescale 1ns/1ns
module jkfftb;
reg j,k,clk,rst;
wire q,qbar;
jkff DUT(.j(j),.k(k),.clk(clk),.q(q),.qbar(qbar),.rst(rst));
initial begin
    clk=1'b0;
    forever
    #5 clk=~clk;
end
initial begin
    rst=1'b0;
    forever
    #15 rst=~rst;

end
initial begin
    $dumpfile("jkfftb.vcd");
    $dumpvars(0,jkfftb);
    $monitor($time," J=%b, K=%b ,Q=%b , Qbar=%b",j,k,q,qbar);
    #5  j=1'b0;k=1'b0;
    #10 j=1'b1;k=1'b0;
    #15 j=1'b0;k=1'b0;
    #20 j=1'b0;k=1'b1;
    #25 j=1'b0;k=1'b0;
    #30 j=1'b1;k=1'b1;
    #35 j=1'b0;k=1'b0;
    #200 $finish;
end
endmodule