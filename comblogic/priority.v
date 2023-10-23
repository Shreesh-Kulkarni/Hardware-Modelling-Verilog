module priority_encoder_4X2 (
    input wire [3:0] inputs, // 4 input lines
    output wire [1:0] out // 2-bit binary output
);

reg [1:0] encoded_output;

always @* begin
    casex(inputs)
        4'b0000: encoded_output = 2'bxx; 
        4'b1xxx: encoded_output = 2'b11; 
        4'b01xx: encoded_output = 2'b10; 
        4'b001x: encoded_output = 2'b01; 
        4'b0001: encoded_output = 2'b00; 
    endcase
end

assign out = encoded_output;

endmodule