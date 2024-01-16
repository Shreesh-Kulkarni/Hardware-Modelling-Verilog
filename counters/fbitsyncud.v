module updown(clk,rst,enable,load,upordown,data_in,count);
input clk,rst,load,enable,upordown;
input[3:0] data_in;
output reg[3:0]count;
always @(posedge clk or posedge rst ) begin
    if(rst)
    count<=4'h0;
    else if(enable)begin
        if(load)
        count<=data_in;
        else begin
            if(upordown)
            count<=count+1'b1;
            else
            count<=count-1'b1;
        end
    end
end
endmodule