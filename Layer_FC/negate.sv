`timescale 1ns / 1ps
module negate(
input clk,
input rst_n,
input valid_in,
    input wire [31:0] in,   
    output reg [31:0] out,
    output reg valid_out 
);

wire [31:0] sum;
reg [31:0] fa_a = in;
reg [31:0] fa_b;

fa add_inst_l (
    .a(fa_a),
    .b(fa_b),
    .clk(clk),
    .sum(sum),
    .valid(fa_valid_d),
    .v(fa_valid)
);
    
    always@(posedge clk or rst_n) begin
        if(valid_in) begin
            fa_a <= in;
            fa_b <= 32'h3f8ccccd;
        end
        if(fa_valid_d) begin
            out <= {~sum[31], sum[30:0]};
            valid_out <= 1;
        end
        if(valid_out)begin
            valid_out <= 0;
        end
    end
endmodule
