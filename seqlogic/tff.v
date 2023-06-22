module tff(t,q,qbar,clk,rst);
input t,clk,rst;
output reg q;
output qbar;
assign qbar=~q;
always @(posedge clk or negedge rst ) begin
    if(rst)
    q<=1'b0;
    else
    begin
        if(t==1'b0)
        q<=q;
        else if(t==1'b1)
        q<=~q;
    end
end
endmodule