module fbitsyncup(clk,rst,count);
input clk,rst;
output reg[3:0]count;
always @(posedge clk or posedge rst ) begin
    if(rst)
    count<=4'b0000;
    else
    count<=count+1'b1;
end
endmodule