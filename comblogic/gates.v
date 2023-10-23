module gates(in1,in2,outand,outor,outxor,outnot,outnand,outnor,outxnor);
input in1,in2;
output outand,outor,outxor,outnotD,outnand,outnor,outxnor;
assign outand=in1&in2;
assign outor=in1|in2;
assign outxor=in1^in2;
assign outnot=~in1;
assign outnand=~outand;
assign outnor=~outor;
assign outxnor=~outxor;
endmodule