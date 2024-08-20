`timescale 1ns / 1ps

module conv2_calc (
      input [31:0] data_out [0:8],
      input clk,
      input rst_n,
      input valid_in,
      output reg [31:0] conv2_out [0 : filter_num -1],
      output valid_conv2
      );
localparam filter_num = 64;
localparam channel_num = 32; /////

initial begin // These are not Synthesizable!!!
  $readmemh("/Xilinx/conv2_weight.txt", weight_org); ////////////////
  $readmemh("/Xilinx/conv2_bias.txt", bias);
end

reg [31:0] bias [0 : filter_num -1];
reg [31:0] weight_org [0 : filter_num * channel_num * 9 - 1]; ///////////////////
reg [31:0] data_in_0 [0:8];
reg [31:0] data_in_1 [0:8];
reg [31:0] data_in_2 [0:8];
reg [31:0] data_in_3 [0:8];
reg [31:0] data_in_4 [0:8];
reg [31:0] data_in_5 [0:8];
reg [31:0] data_in_6 [0:8];
reg [31:0] data_in_7 [0:8];
reg [31:0] data_in_8 [0:8];

wire [31:0] filters_out_0 [0 : filter_num - 1];
wire [31:0] filters_out_1 [0 : filter_num - 1];
wire [31:0] filters_out_2 [0 : filter_num - 1];
wire [31:0] filters_out_3 [0 : filter_num - 1];
wire [31:0] filters_out_4 [0 : filter_num - 1];
wire [31:0] filters_out_5 [0 : filter_num - 1];
wire [31:0] filters_out_6 [0 : filter_num - 1];
wire [31:0] filters_out_7 [0 : filter_num - 1];
wire [31:0] filters_out_8 [0 : filter_num - 1];

reg valid_delay[0:9];
reg valid_to_mul[0:8]; 
reg [3:0] mux_cnt;

reg [31:0] weight [0 : filter_num * 9 - 1]; /////////////////////
reg [7:0] channel_cnt; /////////////
reg [8:0] input_cnt; ///////////////

always @(negedge clk) begin
   if(input_cnt == 15*19) begin
      input_cnt <= 0;
      channel_cnt <= channel_cnt + 1;
      if(channel_cnt == channel_num - 1) begin
         channel_cnt <= 0;
      end else begin
          channel_cnt <= channel_cnt +1;
      end
   end
   case(channel_cnt)
        8'd0  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 0  : (filter_num * 9) * 1  - 1];
        8'd1  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 1  : (filter_num * 9) * 2  - 1];
        8'd2  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 2  : (filter_num * 9) * 3  - 1];
        8'd3  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 3  : (filter_num * 9) * 4  - 1];
        8'd4  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 4  : (filter_num * 9) * 5  - 1];
        8'd5  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 5  : (filter_num * 9) * 6  - 1];
        8'd6  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 6  : (filter_num * 9) * 7  - 1];
        8'd7  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 7  : (filter_num * 9) * 8  - 1];
        8'd8  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 8  : (filter_num * 9) * 9  - 1];
        8'd9  : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 9  : (filter_num * 9) * 10 - 1];
        8'd10 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 10 : (filter_num * 9) * 11 - 1];
        8'd11 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 11 : (filter_num * 9) * 12 - 1];
        8'd12 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 12 : (filter_num * 9) * 13 - 1];
        8'd13 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 13 : (filter_num * 9) * 14 - 1];
        8'd14 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 14 : (filter_num * 9) * 15 - 1];
        8'd15 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 15 : (filter_num * 9) * 16 - 1];
        8'd16 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 16 : (filter_num * 9) * 17 - 1];
        8'd17 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 17 : (filter_num * 9) * 18 - 1];
        8'd18 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 18 : (filter_num * 9) * 19 - 1];
        8'd19 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 19 : (filter_num * 9) * 20 - 1];
        8'd20 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 20 : (filter_num * 9) * 21 - 1];
        8'd21 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 21 : (filter_num * 9) * 22 - 1];
        8'd22 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 22 : (filter_num * 9) * 23 - 1];
        8'd23 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 23 : (filter_num * 9) * 24 - 1];
        8'd24 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 24 : (filter_num * 9) * 25 - 1];
        8'd25 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 25 : (filter_num * 9) * 26 - 1];
        8'd26 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 26 : (filter_num * 9) * 27 - 1];
        8'd27 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 27 : (filter_num * 9) * 28 - 1];
        8'd28 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 28 : (filter_num * 9) * 29 - 1];
        8'd29 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 29 : (filter_num * 9) * 30 - 1];
        8'd30 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 30 : (filter_num * 9) * 31 - 1];
        8'd31 : weight [0 : filter_num * 9 - 1] <= weight_org[(filter_num * 9) * 31 : (filter_num * 9) * 32 - 1];
    endcase
end
      


 always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
       mux_cnt <= -1;
       valid_delay[0] <= 0;
       valid_delay[1] <= 0;
       valid_delay[2] <= 0;
       valid_delay[3] <= 0;
       valid_delay[4] <= 0;
       valid_delay[5] <= 0;
       valid_delay[6] <= 0;
       valid_delay[7] <= 0;
       valid_delay[8] <= 0;
       valid_delay[9] <= 0;
       channel_cnt <= 0; /////////////////
       input_cnt <= 0; ///////////////////
       valid_to_mul[0] <= 1'b0;
       valid_to_mul[1] <= 1'b0;
       valid_to_mul[2] <= 1'b0;
       valid_to_mul[3] <= 1'b0;
       valid_to_mul[4] <= 1'b0;
       valid_to_mul[5] <= 1'b0;
       valid_to_mul[6] <= 1'b0;
       valid_to_mul[7] <= 1'b0;
       valid_to_mul[8] <= 1'b0;
    end else if (valid_in == 1) begin
       if (mux_cnt == 4'b1000) begin
          mux_cnt <= 0;
          input_cnt <= input_cnt + 1; /////////////////
          data_in_8 <= data_out;
          conv2_out <= filters_out_8;
          valid_to_mul[8] <= 1'b1; 
       end else begin
          mux_cnt <= mux_cnt + 1;
          input_cnt <= input_cnt + 1; //////////////////
          case(mux_cnt)
          4'b0000 : data_in_0 <= data_out;
          4'b0001 : data_in_1 <= data_out;
          4'b0010 : data_in_2 <= data_out;
          4'b0011 : data_in_3 <= data_out;
          4'b0100 : data_in_4 <= data_out;
          4'b0101 : data_in_5 <= data_out;
          4'b0110 : data_in_6 <= data_out;
          4'b0111 : data_in_7 <= data_out;
          endcase
          case(mux_cnt)
          4'b0000 : conv2_out <= filters_out_0;
          4'b0001 : conv2_out <= filters_out_1;
          4'b0010 : conv2_out <= filters_out_2;
          4'b0011 : conv2_out <= filters_out_3;
          4'b0100 : conv2_out <= filters_out_4;
          4'b0101 : conv2_out <= filters_out_5;
          4'b0110 : conv2_out <= filters_out_6;
          4'b0111 : conv2_out <= filters_out_7;
          endcase
          case(mux_cnt)
          4'b0000 : valid_to_mul[0] <= 1'b1;
          4'b0001 : valid_to_mul[1] <= 1'b1;
          4'b0010 : valid_to_mul[2] <= 1'b1;
          4'b0011 : valid_to_mul[3] <= 1'b1;
          4'b0100 : valid_to_mul[4] <= 1'b1;
          4'b0101 : valid_to_mul[5] <= 1'b1;
          4'b0110 : valid_to_mul[6] <= 1'b1;
          4'b0111 : valid_to_mul[7] <= 1'b1;
          endcase
          end
       end else if (valid_in == 0) begin
         if (mux_cnt == 4'b1000) begin
          mux_cnt <= 0;
          conv2_out <= filters_out_8;
          valid_to_mul[8] <= 1'b0; 
       end else begin
          mux_cnt <= mux_cnt + 1;
          case(mux_cnt)
          4'b0000 : conv2_out <= filters_out_0;
          4'b0001 : conv2_out <= filters_out_1;
          4'b0010 : conv2_out <= filters_out_2;
          4'b0011 : conv2_out <= filters_out_3;
          4'b0100 : conv2_out <= filters_out_4;
          4'b0101 : conv2_out <= filters_out_5;
          4'b0110 : conv2_out <= filters_out_6;
          4'b0111 : conv2_out <= filters_out_7;
          endcase
          case(mux_cnt)
          4'b0000 : valid_to_mul[0] <= 1'b0;
          4'b0001 : valid_to_mul[1] <= 1'b0;
          4'b0010 : valid_to_mul[2] <= 1'b0;
          4'b0011 : valid_to_mul[3] <= 1'b0;
          4'b0100 : valid_to_mul[4] <= 1'b0;
          4'b0101 : valid_to_mul[5] <= 1'b0;
          4'b0110 : valid_to_mul[6] <= 1'b0;
          4'b0111 : valid_to_mul[7] <= 1'b0;
          endcase
          end
   end
 end

always @(posedge clk) begin
 valid_delay[0] <= valid_in;
 valid_delay[1] <= valid_delay[0];
 valid_delay[2] <= valid_delay[1];
 valid_delay[3] <= valid_delay[2];
 valid_delay[4] <= valid_delay[3];
 valid_delay[5] <= valid_delay[4];
 valid_delay[6] <= valid_delay[5];
 valid_delay[7] <= valid_delay[6];
 valid_delay[8] <= valid_delay[7];
 valid_delay[9] <= valid_delay[8];
 end
 
 assign valid_conv2 = valid_delay[9];

/*--- Filter Instantiation ---*/
// --- Filter Instantiation ---
genvar a;
generate
  for (a = 0; a < 64; a = a + 1) begin : filters_0
        conv2_filter filter_a (
            .clk(clk),
            .rst_n(rst_n),
            .valid_in(valid_to_mul[0]),
            .data_out(data_in_0),
            .bias(bias[a]),
            .weight(weight[(9*a) : (9*a) + 8]), // weight[9*a:9*a+8]
            .filter_out(filters_out_0[a])
        );
    end
endgenerate

genvar b;
generate
  for (b = 0; b < 64; b = b + 1) begin : filters_1
        conv2_filter filter_b (
            .clk(clk),
            .rst_n(rst_n),
            .valid_in(valid_to_mul[1]),
            .data_out(data_in_1),
            .bias(bias[b]),
            .weight(weight[(9*b) : (9*b) + 8]), // weight[9*b:9*b+8]
            .filter_out(filters_out_1[b])
        );
    end
endgenerate

genvar c;
generate
  for (c = 0; c < 64; c = c + 1) begin : filters_2
        conv2_filter filter_c (
            .clk(clk),
            .rst_n(rst_n),
            .valid_in(valid_to_mul[2]),
            .data_out(data_in_2),
            .bias(bias[c]),
            .weight(weight[(9*c) : (9*c) + 8]), // weight[9*c:9*c+8]
            .filter_out(filters_out_2[c])
        );
    end
endgenerate

genvar d;
generate
  for (d = 0; d < 64; d = d + 1) begin : filters_3
        conv2_filter filter_d (
            .clk(clk),
            .rst_n(rst_n),
            .valid_in(valid_to_mul[3]),
            .data_out(data_in_3),
            .bias(bias[d]),
            .weight(weight[(9*d) : (9*d) + 8]), // weight[9*d:9*d+8]
            .filter_out(filters_out_3[d])
        );
    end
endgenerate

genvar e;
generate
  for (e = 0; e < 64; e = e + 1) begin : filters_4
        conv2_filter filter_e (
            .clk(clk),
            .rst_n(rst_n),
            .valid_in(valid_to_mul[4]),
            .data_out(data_in_4),
            .bias(bias[e]),
            .weight(weight[(9*e) : (9*e) + 8]), // weight[9*e:9*e+8]
            .filter_out(filters_out_4[e])
        );
    end
endgenerate

genvar f;
generate
  for (f = 0; f < 64; f = f + 1) begin : filters_5
        conv2_filter filter_f (
            .clk(clk),
            .rst_n(rst_n),
            .valid_in(valid_to_mul[5]),
            .data_out(data_in_5),
            .bias(bias[f]),
            .weight(weight[(9*f) : (9*f) + 8]), // weight[9*f:9*f+8]
            .filter_out(filters_out_5[f])
        );
    end
endgenerate

genvar g;
generate
  for (g = 0; g < 64; g = g + 1) begin : filters_6
        conv2_filter filter_g (
            .clk(clk),
            .rst_n(rst_n),
            .valid_in(valid_to_mul[6]),
            .data_out(data_in_6),
            .bias(bias[g]),
            .weight(weight[(9*g) : (9*g) + 8]), // weight[9*g:9*g+8]
            .filter_out(filters_out_6[g])
        );
    end
endgenerate

genvar h;
generate
  for (h = 0; h < 64; h = h + 1) begin : filters_7
        conv2_filter filter_h (
            .clk(clk),
            .rst_n(rst_n),
            .valid_in(valid_to_mul[7]),
            .data_out(data_in_7),
            .bias(bias[h]),
            .weight(weight[(9*h) : (9*h) + 8]), // weight[9*h:9*h+8]
            .filter_out(filters_out_7[h])
        );
    end
endgenerate

genvar i;
generate
  for (i = 0; i < 64; i = i + 1) begin : filters_8
        conv2_filter filter_i (
            .clk(clk),
            .rst_n(rst_n),
            .valid_in(valid_to_mul[8]),
            .data_out(data_in_8),
            .bias(bias[i]),
            .weight(weight[(9*i) : (9*i) + 8]), // weight[9*h:9*h+8]
            .filter_out(filters_out_8[i])
        );
    end
endgenerate
endmodule