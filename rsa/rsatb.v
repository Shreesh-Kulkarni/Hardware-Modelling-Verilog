`include "rsa.v"
module RSA_tb();

reg clk = 0;
reg reset;
reg [7:0] c_in;
  wire [7:0] m_out;

  RSA_decryption DUT (.clk(clk), .reset(reset), .c_in(c_in), .m_out(m_out));

initial begin
  clk=0;
     forever #2 clk = ~clk;  
end 
  
initial
begin
  
  #5 c_in = 88;
  #9 c_in = 41;

  $display ("T=%2d, c_in=%2d, m_out=%2d", $time, c_in, m_out);


#50 $finish;
end

endmodule