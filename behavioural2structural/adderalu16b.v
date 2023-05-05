module adderalu16b(X,Y,sum,C,S,O,P,Zero);
input[15:0] X,Y;
output[15:0]sum;
output C,S,O,P,Zero;
assign {C,sum}=X+Y;
assign S=sum[15];
assign P=~^sum;
assign Zero=~|sum;
assign O=((X[15]&Y[15]&~sum[15])|(~X[15]&~Y[15]&sum[15]));
endmodule

