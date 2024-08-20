`timescale 1ns / 1ps

module normalize(
    input [7:0] data_in,
    input reg valid_in,
    input clk,
    output reg [15:0] data_out,
    output reg valid_out,
    input rst_n
);

    always @(posedge clk) begin  
        valid_out <= valid_in;
    end
    
    always @(posedge clk) begin
        if (!rst_n) begin
            valid_out <= 0;
        end else begin
            if (valid_in) begin        
                // data_in을 0~1 사이의 고정소수점 값으로 변환
                data_out = (data_in * 16'sd128);
            end         
        end  
    end

endmodule
