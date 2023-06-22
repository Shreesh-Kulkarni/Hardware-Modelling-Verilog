module dff(d,q,qbar,clk,rst);
input d,clk,rst;
output q,qbar;
reg q;
assign qbar=~q;
always @(posedge clk or negedge rst) begin
    if(rst)
    q<=1'b0;
    else
    begin
        q<=d;
    end
end
endmodule