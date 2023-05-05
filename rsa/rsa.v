`timescale 1ns / 1ps

module RSA_decryption (
  input clk,
  input reset,
  input [7:0] c_in,
  output reg [7:0] m_out
);

  reg [7:0] d;
  reg [7:0] phi = 120;
  reg [7:0] i;
  reg [11:0] x;
  reg [7:0] f;
  reg [7:0] n = 143;
  reg [127:0] temp;

always @(posedge clk)
begin
if (reset)
     begin
      d <= 0;
     end 
else 
   begin
      for (i=0; i<phi; i=i+1)
       begin
         x = 1 + (i * phi);  
         if (x % 11 == 0)    
               begin
                   f = x / 11;
                        if (f != 11) 
                            begin
                              d = f; 
                              i = 121;
                            end 
               end //end of if condition
       end //end of for loop
      m_out <= 8'h00;
      temp <= c_in**d;  
     m_out <= (temp)%n;             
   end
end
  
endmodule