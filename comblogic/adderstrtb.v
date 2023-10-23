`include "adderstr.v"
`timescale 1ps/1ps
module adderstrtb;
reg[2:0]a,b;
reg cin;
wire[2:0]sum;
wire cout;
adderstr DUT(a,b,cin,sum,cout);
integer i;
initial
begin
    $dumpfile("adderstrtb.vcd");
    $dumpvars(0,adderstrtb);
    a=3'd0;b=3'd0;cin=1'b0;
    $monitor($time," A=%b B=%b Cin=%b Sum=%b Cout=%b",a,b,cin,sum,cout);
    forever begin
        #5 a=a+1'b1;
        b=b+1'b1;
        cin=~cin;
    end
end
initial begin
    #50;
    $finish;
end
endmodule
