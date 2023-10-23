`include "gates.v"
`timescale 1ns/1ns
module gatestb;
reg a,b;
wire oand,oor,oxor,onor,onand,oxnor,onot;
gates dut(a,b,oand,oor,oxor,onot,onand,onor,oxnor);
initial begin
    $dumpfile("gatestb.vcd");
    $dumpvars(0,gatestb);
    a=0;b=0;
    #155 a=0;b=1;
    #155 a=1;b=0;
    #155 a=1;b=1;
    $finish;
end
endmodule
