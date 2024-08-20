`timescale 1ns / 1ps
module negate(
input clk,
input rst_n,
input valid_in,
    input wire [31:0] in,   
    output reg [31:0] out,
    output reg valid_out 
);

    always @(*) begin
        valid_out = valid_in;
    end
    
    always@(*) begin
        assign out = {~in[31], in[30:0]};
    end
endmodule
