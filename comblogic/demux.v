module demux(in,sel,out);
input in;
input[1:0] sel;
output[3:0] out;
assign out[sel]=in;
endmodule
