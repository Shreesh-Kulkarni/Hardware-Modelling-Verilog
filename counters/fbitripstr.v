module tflipflop(q,clk,reset);
input clk,reset;
output reg q;
always @(negedge clk) begin
    if(reset)
    q<=1'b0;
    else
    q<=(~q);
end
endmodule

module fbitrip(q,clk,reset);
input clk,reset;
output [3:0]q;
tflipflop t0(q[0],clk,reset);
tflipflop t1(q[1],q[0],reset);
tflipflop t2(q[2],q[1],reset);
tflipflop t3(q[3],q[2],reset);
endmodule
