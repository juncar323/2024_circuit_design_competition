`timescale 1ns / 1ps
module stack_warning #(
SLEEPTIME = 120
)(
input clk,
input valid_in,
input data_in,
input rst_n,
output reg warning
);

reg [4:0] k = 0;
reg data_1;
reg data_2;
reg prevalid;
reg [10:0] stack;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        prevalid <= 0;
    end
    else begin
        if(valid_in && !prevalid) begin
            if(data_in == 0) begin
                if(k==0)begin
                    data_1 <= data_in;
                    k <= k+1;
                end
                else if(k==1)begin
                    data_2 <= data_in;
                    k <= k+1;
                end
            end
        end
        if(data_in&&valid_in) begin
            if(k==0)begin
                data_1 <= data_in;
                k <= k+1;
            end
            else if(k==1)begin
                data_2 <= data_in;
                k <= k+1;
            end
        end
        if(k ==2) begin         
            if(!data_1 && !data_2)begin
                stack <= stack + 1;
                k <= 0;
            end
            else begin
                warning <= 0;
                stack <= 0;
                k <= 0;
            end
        end
        else if(stack >= SLEEPTIME) begin
            warning <= 1;
        end
        
        prevalid <= valid_in;
    end
end

endmodule
