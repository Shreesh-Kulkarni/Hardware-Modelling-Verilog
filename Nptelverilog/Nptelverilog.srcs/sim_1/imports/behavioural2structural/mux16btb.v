`include "mux16b.v"
module mux16btb;
reg[15:0] A;
reg[3:0] B;
wire O;
s16bitmux M(A,B,O);
initial
begin
    $dumpfile("mux16btb.vcd");
    $dumpvars(0,mux16btb);
    #5 A=16'hC200;
    B=4'h0;
    #5 B=4'h9;
    #5 B=4'hE;
    #5 B=4'hF;
    #5 B=4'hA;
    #5 $finish;
end
endmodule
