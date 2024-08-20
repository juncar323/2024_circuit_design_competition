`timescale 1ns / 1ps

module tb_cnn_accelerator();
reg clk;
reg rst_n;
reg [7:0] data_in;
reg valid_in;
reg [31:0] data_out_fc2;
reg valid_out_fc2;
reg warning;
reg data_out_relu2;

cnn_accelerator uut(
.clk(clk),
.valid_in(valid_in),
.rst_n(rst_n),
.data_in(data_in),
.data_out_fc2(data_out_fc2),
.valid_out_fc2(valid_out_fc2),
.warning(warning),
.data_out_relu2(data_out_relu2)
);

integer delay, i,k,m;
integer k_2;
integer k_3;
integer k_4;
integer k_5;
integer k_6;

reg [7:0] data_mem_1 [0 : 883];
reg [7:0] data_mem_2 [0 : 883];
reg [7:0] data_mem_3 [0 : 883];
reg [7:0] data_mem_4 [0 : 883];
reg [7:0] data_mem_5 [0 : 883];
reg [7:0] data_mem_6 [0 : 883];

initial begin 
   $readmemh("/Xilinx/close_1.txt", data_mem_1);
end

initial begin 
   $readmemh("/Xilinx/close_2.txt", data_mem_2);
end

initial begin 
   $readmemh("/Xilinx/close_3.txt", data_mem_3);
end

initial begin 
   $readmemh("/Xilinx/open_1.txt", data_mem_4);
end

initial begin 
   $readmemh("/Xilinx/close_4.txt", data_mem_5);
end

initial begin 
   $readmemh("/Xilinx/close_5.txt", data_mem_6);
end

initial begin
    clk = 0;
    i = 0;
    delay = 0;
    forever #5 clk = ~clk;
    
    
end

initial begin
    rst_n = 0;
    #25
    rst_n = 1;
    #10
    k = 1;
   
   #3000000
    
    rst_n = 0;
    #25
    rst_n = 1;
    #10
    k_2 = 1;
    
    #3000000
    
    rst_n = 0;
    #25
    rst_n = 1;
    #10
    k_3 = 1;
    
    #3000000
    
    rst_n = 0;
    #25
    rst_n = 1;
    #10
    k_4 = 1;
    
    #3000000
    
    rst_n = 0;
    #25
    rst_n = 1;
    #10
    k_5 = 1;
    
    #3000000
    
    rst_n = 0;
    #25
    rst_n = 1;
    #10
    k_6 = 1; 
    
    #3000000;
    
end

always @(posedge clk) begin
    if(k) begin
        data_in <= data_mem_1[i];
        i <= i+1;
        valid_in <= 1;
    end
    
    if(i == 883) begin
        delay <= 1;
        k <= 0;
        i <= 0;
    end
    if(delay)begin
        valid_in <= 0;
        delay <= 0;
    end
end

always @(posedge clk) begin
    if(k_2) begin
        data_in <= data_mem_2[i];
        i <= i+1;
        valid_in <= 1;
    end
    
    if(i == 883) begin
        delay <= 1;
        k_2 <= 0;
        i <= 0;
    end
    if(delay)begin
        valid_in <= 0;
        delay <= 0;
    end
end

always @(posedge clk) begin
    if(k_3) begin
        data_in <= data_mem_3[i];
        i <= i+1;
        valid_in <= 1;
    end
    
    if(i == 883) begin
        delay <= 1;
        k_3 <= 0;
        i <= 0;
    end
    if(delay)begin
        valid_in <= 0;
        delay <= 0;
    end
end

always @(posedge clk) begin
    if(k_4) begin
        data_in <= data_mem_4[i];
        i <= i+1;
        valid_in <= 1;
    end
    
    if(i == 883) begin
        delay <= 1;
        k_4 <= 0;
        i <= 0;
    end
    if(delay)begin
        valid_in <= 0;
        delay <= 0;
    end
end

always @(posedge clk) begin
    if(k_5) begin
        data_in <= data_mem_5[i];
        i <= i+1;
        valid_in <= 1;
    end
    
    if(i == 883) begin
        delay <= 1;
        k_5 <= 0;
        i <= 0;
    end
    if(delay)begin
        valid_in <= 0;
        delay <= 0;
    end
end

always @(posedge clk) begin
    if(k_6) begin
        data_in <= data_mem_6[i];
        i <= i+1;
        valid_in <= 1;
    end
    
    if(i == 883) begin
        delay <= 1;
        k_6 <= 0;
        i <= 0;
    end
    if(delay)begin
        valid_in <= 0;
        delay <= 0;
    end
end


endmodule
