`timescale 1ps/1ps
`include "onehot.v"
module tb_one_hot_encoder();

  reg [3:0] data_in;
  wire [15:0] one_hot_out;

  onehot uut (
    .in(data_in),
    .out(one_hot_out)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    data_in = 1;
    #10;

    data_in = 4;
    #10;

    data_in = 5;
    #10;

    data_in = 7;
    #10;
    
    $finish;
  end

endmodule