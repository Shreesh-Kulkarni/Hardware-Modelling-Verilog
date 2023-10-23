module mux_switch(out,sel,in1,in2);
input sel,in1,in2;
output reg out;
always@(*)begin
    case(sel)
    1'b0:out=in1;
    1'b1:out=in2;
    default:out=1'b0;
    endcase
end
endmodule
module mux_ifelse(out,sel,in1,in2);
input sel,in1,in2;
output reg out;
always@(*)begin
    if(sel==1'b0)
    out=in1;
    else
    out=in2;
end
endmodule
