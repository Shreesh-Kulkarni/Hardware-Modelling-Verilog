`include "priority.v"
`timescale 1ps/1ps
module tb();

  // Declare signals for the testbench
  reg [3:0] inputs;
  wire [1:0] out;

  priority_encoder_4X2 uut (
    .inputs(inputs),
    .out(out)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    inputs = 4'b0000; 
    #10;
    inputs = 4'b1000; 
    #10;
    inputs = 4'b0100; 
    #10;
    inputs = 4'b0010; 
    #10;
    inputs = 4'b0001; 
    #10;
    inputs = 4'b1100; 
    #10
    inputs = 4'b0110; 
    #10
    inputs = 4'b1111; 
    #10
    $finish;
  end
endmodule