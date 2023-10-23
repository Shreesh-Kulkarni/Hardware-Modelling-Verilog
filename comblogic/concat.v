module concatgates(a, b, c, d, e, out1, out2, out3, out4, out5);
    input[1:0] a, b, c, d, e;
    output[9:0] out1, out2, out3, out5;
    output[29:0] out4;
    
    assign out1 = {a, b, c, d, e};
    assign out2 = {5{a}};
    assign out3 = {{3{b}}, {4{1'b0}}};
    assign out4 = {out1, {e, d, c, b, a}, ~out1};
    assign out5 = {10{1'b1}} ^ out1;
endmoduleS