`include "fadderstr.v"
`timescale 1ns/1ns
module fadderstrtb;
reg a,b;
reg cin;
wire sum;
wire cout;
fadd DUT(a,b,cin,sum,cout);
initial
begin
    $dumpfile("fadderstrtb.vcd");
    $dumpvars(0,fadderstrtb);
    $monitor($time," A=%b B=%b Cin=%b Sum=%b Cout=%b",a,b,cin,sum,cout);
    a=1'b0;b=1'b0;cin=1'b0;
    forever begin
        #5 a=a+1'b1;
        #2 b=b+1'b1;
        cin=~cin;
    end
    end
initial begin
    #100;
    $finish;
end
endmodule
