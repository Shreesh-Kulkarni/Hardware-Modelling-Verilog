module jkff(j,k,q,qbar,clk,rst);
input j,k,clk,rst;
output reg q;
output qbar;
assign qbar=~q;
always @(posedge clk) begin
    if(rst)
    q<=1'b0;
    else if(j==1'b0 && k==1'b0)
    q<=q;
    else if(j==1'b1 && k==1'b0)
    q<=1;
    else if(j==1'b0 && k==1'b1)
    q<=0;
    else if(j==1'b1 && k==1'b1)
    q<=~q;
end
endmodule
