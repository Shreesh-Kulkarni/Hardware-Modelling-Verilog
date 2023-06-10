module fagl(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire t1,t2,t3;
xor G1(t1,a,b);
xor G2(sum,t1,cin);
and G3(t2,t1,cin);
and G4(t3,a,b);
or G5(cout,t2,t3);
endmodule
