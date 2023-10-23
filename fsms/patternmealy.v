module patternmealy(reset,clk,in,out);
input in,clk,reset;
output reg out=1'b0;
reg[1:0]current,next;
parameter A=2'd0,B=2'd1,C=2'd2,D=2'd3;
always@(*)begin
    case(current)
    A: next<=in?B:A;
    B: next<=in?B:C;
    C: next<=in?D:A;
    D: next<=in?B:A;
    endcase
end
always@(posedge clk)begin
    if(reset)
    current<=A;
    else
    current<=next;
end
always@(posedge clk)begin
    out<=((current==D)&&(in==1'b0));
end
endmodule