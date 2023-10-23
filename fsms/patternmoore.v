module patternmoore(reset,clk,in,out);
input in,clk,reset;
output reg out;
reg[3:0]current,next;

parameter A=4'd0,B=4'd1,C=4'd2,D=4'd3,E=4'd4;
always@(*)begin
    case(current)
    A: next<=in?B:A;
    B: next<=in?B:C;
    C: next<=in?D:A;
    D: next<=in?B:E;
    E: next<=in?B:A;
    endcase
end
always@(posedge clk)begin
    current<=next;
end
always @(posedge clk ) begin
    out<=(current==E)? 1'b1:1'b0;
end
endmodule