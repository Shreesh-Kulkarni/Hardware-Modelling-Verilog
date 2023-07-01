module grayc(clk,rst,out);
input clk,rst;
reg[3:0] count;
output reg[3:0] out;
always @(posedge clk or posedge rst ) begin
    if(rst)
    begin
    out<=4'h0;
    count<=4'h0;
    end
    else
    begin
    count<=count+1'b1;
    out<={(count[3]),(count[3]^count[2]),(count[2]^count[1]),(count[1]^count[0])};
    end

end
endmodule