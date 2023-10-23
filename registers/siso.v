module siso(si,q,rst,clk);
input si;
input rst;
input clk;
reg[3:0]temp;
output q;
always@(posedge clk)begin
    if(rst)
    temp<=4'b0;
    else
    temp<={temp[2:0],si};
end
assign q=temp[3];
endmodule
