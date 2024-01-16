`include "fbitsyncud.v"
`timescale 1ns/1ns
module fbitsyncudtb;
reg clk,rst,enable,upordown,load;
reg[3:0]data_in;
wire[3:0]q;
updown DUT(.clk(clk),.rst(rst),.count(q),.upordown(upordown),.enable(enable),.data_in(data_in),.load(load));
always #5 clk=~clk;
initial begin//initializeing values
    clk=1'b0;
    rst=1'b1;
    enable=1'b0;
    load=1'b0;
    data_in=4'b000;
end
initial begin
    $dumpfile("fbitsyncudtb.vcd");
    $dumpvars(0,fbitsyncudtb);
    $monitor($time," Clk=%b, Reset=%b, Enable=%b,Load=%b Updown = %b Data_in=%b Count=%b",clk,rst,enable,load,upordown,data_in,q);
    #5 rst=1'b0; //reset removed
    #5 enable=1'b1;//enabling the counter 
    upordown=1'b1;//upcounting

    #50 enable=1'b0;// disabling the counter

    #5 rst=1'b1;//resetting the counter to zero and removing it to show asynchronous operation
    #25 rst=1'b0;

    #10 enable=1'b1;//enabling the counter back and loading it with 1010 and enabling downcount
    #5 load=1'b1;
    upordown=1'b0;
    data_in=4'b1010;

    #5 load=1'b0;//removing load and enable downcount
    #20 upordown=1'b1;
    #50 enable=1'b0;//disable the counter finally

    #50 $finish;
end
endmodule