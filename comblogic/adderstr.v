`include "fagl.v"
module adderstr(a,b,cin,sum,cout);
input[2:0] a,b;
input cin;
output[2:0] sum;
output cout;
wire t1,t2;
fagl fa1(a[0],b[0],cin,sum[0],t1);
fagl fa2(a[1],b[1],t1,sum[1],t2);
fagl fa3(a[2],b[2],t2,sum[2],cout);
endmodule


