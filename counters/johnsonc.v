module johnsonc(clk,rst,out);
input clk,rst;
output reg[3:0] out;
always @(posedge clk or posedge rst ) begin
    if(rst)
    out<=4'b0000;
    else
    out<={(~out[0]),out[3],out[2],out[1]};
end
endmodule