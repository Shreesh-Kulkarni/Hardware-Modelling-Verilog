module fbitsyncud(clk,rst,ud,count);
input clk,rst,ud;
output reg[3:0]count;
always @(posedge clk or posedge rst ) begin
    if(rst)
    count<=4'h0;
    else if(ud)
    count<=count+1'b1;
    else
    count<=count-1'b1;
end
endmodule