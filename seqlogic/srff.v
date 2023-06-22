module srff(s,r,q,qbar,clk);
input s,r;
output q,qbar;
input clk;
assign qbar=~q;
reg q;
always @(posedge clk ) 
begin
    if(s==1'b0 && r==1'b0)
    q<=q;
    else if(s==1'b0 && r==1'b1)
    q<=1'b0;
    else if(s==1'b1 && r==1'b0)
    q<=1'b1;
    else if(s==1'b1 && r==1'b1)
    q<=1'bx;
end
endmodule

