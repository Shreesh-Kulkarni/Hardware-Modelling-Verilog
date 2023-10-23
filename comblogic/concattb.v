`include "concat.v"
`timescale 1ns/1ns
module tb;
  reg[1:0] a, b, c, d, e;
  wire[9:0] out1, out2, out3, out5;
  wire[29:0] out4;

  concatgates dut(a, b, c, d, e, out1, out2, out3, out4, out5);
  integer i;
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,tb);
    a = 0; b = 0; c = 0; d = 0; e = 0;
    for(i=0; i < 10; i = i+1) begin
      #10 a = $random;
      b = $random;
      c = $random;
      d = $random;
      e = $random;
    end
  end
  initial
    #100 $finish;
endmodule