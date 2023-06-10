`include "adderstr.v"
`timescale 1ps/1ps
module adderstrtb;
reg[3:0]a,b;
reg cin;
wire[3:0]sum;
wire cout;
adderstr DUT(a,b,cin,sum,cout);
initial
begin
    $dumpfile("adderstrtb.vcd");
    $dumpvars(0,adderstrtb);
    $monitor($time," A=%b B=%b Cin=%b Sum=%b Cout=%b",a,b,cin,sum,cout);
    #5 a=4'b1010;b=4'b1100;cin=1'b0;
    #5 a=4'b0010;b=4'b1110;cin=1'b1;
    #5 a=4'b1111;b=4'b1111;cin=1'b0;
    #5 a=4'b1001;b=4'b1101;cin=1'b1;
    #5 $finish;
end
endmodule
