module fsm1(in,clk,areset,out);
input in,areset,clk;
reg current,next;
output out;
parameter A=0,B=1;
always@(*)begin
    case(current)
    A: next<=in?A:B;
    B: next<=in?B:A;
    endcase
end

always@(posedge clk, posedge areset)begin
    if(areset)
    current<=B;
    else
    current<=next;
end
assign out=(current==B);
endmodule
