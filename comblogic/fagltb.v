`include "fagl.v"
`timescale 1ps/1ps
module fagltb;
reg a,b,c;
wire s,cout;
fagl DUT(.a(a),.b(b),.cin(c),.sum(s),.cout(cout));
initial
begin
    $dumpfile("fagltb.vcd");
    $dumpvars(0,fagltb);
    $monitor($time," A=%b,B=%b,Cin=%b,Sum=%b,Carryout=%b",a,b,c,s,cout);
    #5 a=1'b0;b=1'b0;c=1'b0;
    #5 a=1'b0;b=1'b0;c=1'b1;
    #5 a=1'b0;b=1'b1;c=1'b0;
    #5 a=1'b1;b=1'b1;c=1'b1;
    #5 $finish;
end
endmodule