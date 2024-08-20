`timescale 1ns / 1ps

module threebythree_3 #(
    parameter DATA_WIDTH = 32,
    parameter PAD_WIDTH = 8,
    parameter PAD_HEIGHT = 10
)(
    input logic clk,
    input logic rst_n,
    input logic valid_padding,
    input logic [DATA_WIDTH-1:0] padded0  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded1  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded2  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded3  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded4  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded5  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded6  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded7  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded8  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded9  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded10 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded11 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded12 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded13 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded14 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded15 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded16 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded17 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded18 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded19 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded20 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded21 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded22 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded23 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded24 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded25 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded26 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded27 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded28 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded29 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded30 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded31 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded32 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded33 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded34 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded35 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded36 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded37 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded38 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded39 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded40 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded41 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded42 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded43 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded44 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded45 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded46 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded47 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded48 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded49 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded50 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded51 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded52 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded53 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded54 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded55 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded56 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded57 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded58 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded59 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded60 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded61 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded62 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded63 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    
    output logic [DATA_WIDTH-1:0] patch [0:2][0:2],
    output logic valid_patch,
    output logic valid_out

);

    // 내부 변수
    reg [10:0] i, j, delay;
    reg [10:0] row, col;
    reg patch0_done;
    reg patch1_start;
    reg patch1_done;
    reg patch2_start;
    reg patch2_done;
    reg patch3_start;
    reg patch3_done;
    reg patch4_start;
    reg patch4_done;
    reg patch5_start;
    reg patch5_done;
    reg patch6_start;
    reg patch6_done;
    reg patch7_start;
    reg patch7_done;
    reg patch8_start;
    reg patch8_done;
    reg patch9_start;
    reg patch9_done;
    reg patch10_start;
    reg patch10_done;
    reg patch11_start;
    reg patch11_done;
    reg patch12_start;
    reg patch12_done;
    reg patch13_start;
    reg patch13_done;
    reg patch14_start;
    reg patch14_done;
    reg patch15_start;
    reg patch15_done;
    reg patch16_start;
    reg patch16_done;
    reg patch17_start;
    reg patch17_done;
    reg patch18_start;
    reg patch18_done;
    reg patch19_start;
    reg patch19_done;
    reg patch20_start;
    reg patch20_done;
    reg patch21_start;
    reg patch21_done;
    reg patch22_start;
    reg patch22_done;
    reg patch23_start;
    reg patch23_done;
    reg patch24_start;
    reg patch24_done;
    reg patch25_start;
    reg patch25_done;
    reg patch26_start;
    reg patch26_done;
    reg patch27_start;
    reg patch27_done;
    reg patch28_start;
    reg patch28_done;
    reg patch29_start;
    reg patch29_done;
    reg patch30_start;
    reg patch30_done;
    reg patch31_start;
    reg patch31_done;   
    reg patch32_start;
    reg patch32_done;
    reg patch33_start;
    reg patch33_done;
    reg patch34_start;
    reg patch34_done;
    reg patch35_start;
    reg patch35_done;
    reg patch36_start;
    reg patch36_done;
    reg patch37_start;
    reg patch37_done;
    reg patch38_start;
    reg patch38_done;
    reg patch39_start;
    reg patch39_done;
    reg patch40_start;
    reg patch40_done;
    reg patch41_start;
    reg patch41_done;
    reg patch42_start;
    reg patch42_done;
    reg patch43_start;
    reg patch43_done;
    reg patch44_start;
    reg patch44_done;
    reg patch45_start;
    reg patch45_done;
    reg patch46_start;
    reg patch46_done;
    reg patch47_start;
    reg patch47_done;
    reg patch48_start;
    reg patch48_done;
    reg patch49_start;
    reg patch49_done;
    reg patch50_start;
    reg patch50_done;
    reg patch51_start;
    reg patch51_done;
    reg patch52_start;
    reg patch52_done;
    reg patch53_start;
    reg patch53_done;
    reg patch54_start;
    reg patch54_done;
    reg patch55_start;
    reg patch55_done;
    reg patch56_start;
    reg patch56_done;
    reg patch57_start;
    reg patch57_done;
    reg patch58_start;
    reg patch58_done;
    reg patch59_start;
    reg patch59_done;
    reg patch60_start;
    reg patch60_done;
    reg patch61_start;
    reg patch61_done;
    reg patch62_start;
    reg patch62_done;
    reg patch63_start;
    reg patch63_done;
    reg state;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= 0;
            patch0_done <= 0;
            patch1_start <= 0;
            patch1_done <= 0;
            patch2_start <= 0;
            patch2_done <= 0;
            patch3_start <= 0;
            patch3_done <= 0;
            patch4_start <= 0;
            patch4_done <= 0;
            patch5_start <= 0;
            patch5_done <= 0;
            patch6_start <= 0;
            patch6_done <= 0;
            patch7_start <= 0;
            patch7_done <= 0;
            patch8_start <= 0;
            patch8_done <= 0;
            patch9_start <= 0;
            patch9_done <= 0;
            patch10_start <= 0;
            patch10_done <= 0;
            patch11_start <= 0;
            patch11_done <= 0;
            patch12_start <= 0;
            patch12_done <= 0;
            patch13_start <= 0;
            patch13_done <= 0;
            patch14_start <= 0;
            patch14_done <= 0;
            patch15_start <= 0;
            patch15_done <= 0;
            patch16_start <= 0;
            patch16_done <= 0;
            patch17_start <= 0;
            patch17_done <= 0;
            patch18_start <= 0;
            patch18_done <= 0;
            patch19_start <= 0;
            patch19_done <= 0;
            patch20_start <= 0;
            patch20_done <= 0;
            patch21_start <= 0;
            patch21_done <= 0;
            patch22_start <= 0;
            patch22_done <= 0;
            patch23_start <= 0;
            patch23_done <= 0;
            patch24_start <= 0;
            patch24_done <= 0;
            patch25_start <= 0;
            patch25_done <= 0;
            patch26_start <= 0;
            patch26_done <= 0;
            patch27_start <= 0;
            patch27_done <= 0;
            patch28_start <= 0;
            patch28_done <= 0;
            patch29_start <= 0;
            patch29_done <= 0;
            patch30_start <= 0;
            patch30_done <= 0;
            patch31_start <= 0;
            patch31_done <= 0;
            patch32_start <= 0;
            patch32_done <= 0;
            patch33_start <= 0;
            patch33_done <= 0;
            patch34_start <= 0;
            patch34_done <= 0;
            patch35_start <= 0;
            patch35_done <= 0;
            patch36_start <= 0;
            patch36_done <= 0;
            patch37_start <= 0;
            patch37_done <= 0;
            patch38_start <= 0;
            patch38_done <= 0;
            patch39_start <= 0;
            patch39_done <= 0;
            patch40_start <= 0;
            patch40_done <= 0;
            patch41_start <= 0;
            patch41_done <= 0;
            patch42_start <= 0;
            patch42_done <= 0;
            patch43_start <= 0;
            patch43_done <= 0;
            patch44_start <= 0;
            patch44_done <= 0;
            patch45_start <= 0;
            patch45_done <= 0;
            patch46_start <= 0;
            patch46_done <= 0;
            patch47_start <= 0;
            patch47_done <= 0;
            patch48_start <= 0;
            patch48_done <= 0;
            patch49_start <= 0;
            patch49_done <= 0;
            patch50_start <= 0;
            patch50_done <= 0;
            patch51_start <= 0;
            patch51_done <= 0;
            patch52_start <= 0;
            patch52_done <= 0;
            patch53_start <= 0;
            patch53_done <= 0;
            patch54_start <= 0;
            patch54_done <= 0;
            patch55_start <= 0;
            patch55_done <= 0;
            patch56_start <= 0;
            patch56_done <= 0;
            patch57_start <= 0;
            patch57_done <= 0;
            patch58_start <= 0;
            patch58_done <= 0;
            patch59_start <= 0;
            patch59_done <= 0;
            patch60_start <= 0;
            patch60_done <= 0;
            patch61_start <= 0;
            patch61_done <= 0;
            patch62_start <= 0;
            patch62_done <= 0;
            patch63_start <= 0;
            patch63_done <= 0;
            
            valid_out <= 0;
            i<=0;
            j<=0;
            row <= 0;
            col <= 0;
            delay <= 0;
    ///////////patch0///////////////////////////////////////////////////        
        end
        else begin
        if(valid_padding)begin
            state <= 1;
        end
        if (state && !patch0_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded0[row+i][col+j];
                    end
                end
                col <= col + 1;
                valid_out <= 1;
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                     
                     if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch0_done <= 1;
                        patch1_start <= 1;
                     end
                 end
             end

            
 //////////////patch1////////////////////////////////////////////////
        end else if (patch1_start && !patch1_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded1[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch1_done <= 1;
                        patch2_start <= 1;
                    end
                end 
            end

 ///////////patch2//////////////////////////////////////////////////////////
        end else if (patch2_start && !patch2_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded2[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch2_done <= 1;
                        patch3_start <= 1;
                    end
                end 
            end

  ///////////patch3////////////////////////////////////////////////////////////////   
        end else if (patch3_start && !patch3_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded3[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch3_done <= 1;
                        patch4_start <= 1;
                    end
                end 
            end
             
  ///////////patch4////////////////////////////////////////////////////////////////   
        end else if (patch4_start && !patch4_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded4[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch4_done <= 1;
                        patch5_start <= 1;
                    end
                end 
            end
                         
  ///////////patch5////////////////////////////////////////////////////////////////   
        end else if (patch5_start && !patch5_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded5[row+i][col+j];
                    end
                end

               col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch5_done <= 1;
                        patch6_start <= 1;
                    end
                end 
            end 
                    
  ///////////patch6////////////////////////////////////////////////////////////////   
        end else if (patch6_start && !patch6_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded6[row+i][col+j];
                    end
                end
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch6_done <= 1;
                        patch7_start <= 1;
                    end
                end 
            end
         
  ///////////patch7////////////////////////////////////////////////////////////////   
        end else if (patch7_start && !patch7_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded7[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch7_done <= 1;
                        patch8_start <= 1;
                    end
                end 
            end
                     
  ///////////patch8////////////////////////////////////////////////////////////////   
        end else if (patch8_start && !patch8_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded8[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch8_done <= 1;
                        patch9_start <= 1;
                    end
                end 
            end
                          
  ///////////patch9////////////////////////////////////////////////////////////////   
        end else if (patch9_start && !patch9_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded9[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch9_done <= 1;
                        patch10_start <= 1;
                    end
                end 
            end
                  
  ///////////patch10////////////////////////////////////////////////////////////////   
        end else if (patch10_start && !patch10_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded10[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch10_done <= 1;
                        patch11_start <= 1;
                    end
                end 
            end
                      
  ///////////patch11////////////////////////////////////////////////////////////////   
        end else if (patch11_start && !patch11_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded11[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch11_done <= 1;
                        patch12_start <= 1;
                    end
                end 
            end
  ///////////patch12////////////////////////////////////////////////////////////////   
        end else if (patch12_start && !patch12_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded12[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5)begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch12_done <= 1;
                        patch13_start <= 1;
                    end
                end 
            end
  ///////////patch13////////////////////////////////////////////////////////////////   
        end else if (patch13_start && !patch13_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded13[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch13_done <= 1;
                        patch14_start <= 1;
                    end
                end 
            end

  ///////////patch11////////////////////////////////////////////////////////////////   
        end else if (patch14_start && !patch14_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded14[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch14_done <= 1;
                        patch15_start <= 1;
                    end
                end 
            end
            
  ///////////patch15////////////////////////////////////////////////////////////////   
        end else if (patch15_start && !patch15_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded15[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch15_done <= 1;
                        patch16_start <= 1;
                    end
                end 
            end
            
  ///////////patch16////////////////////////////////////////////////////////////////   
        end else if (patch16_start && !patch16_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded16[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch16_done <= 1;
                        patch17_start <= 1;
                    end
                end 
            end
  ///////////patch17////////////////////////////////////////////////////////////////   
        end else if (patch17_start && !patch17_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded17[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch17_done <= 1;
                        patch18_start <= 1;
                    end
                end 
            end
       
  ///////////patch18////////////////////////////////////////////////////////////////   
        end else if (patch18_start && !patch18_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded18[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch18_done <= 1;
                        patch19_start <= 1;
                    end
                end 
            end
                                     
  ///////////patch19////////////////////////////////////////////////////////////////   
        end else if (patch19_start && !patch19_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded19[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                     if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch19_done <= 1;
                        patch20_start <= 1;
                    end
                end 
            end
      
  ///////////patch20///////////////////////////////////////////////////////////////   
        end else if (patch20_start && !patch20_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded20[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch20_done <= 1;
                        patch21_start <= 1;
                    end
                end 
            end
               
  ///////////patch21///////////////////////////////////////////////////////////////   
        end else if (patch21_start && !patch21_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded21[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch21_done <= 1;
                        patch22_start <= 1;
                     end
                end 
            end   
  ///////////patch22///////////////////////////////////////////////////////////////   
        end else if (patch22_start && !patch22_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded22[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch22_done <= 1;
                        patch23_start <= 1;
                    end
                end 
            end
                 
  ///////////patch23///////////////////////////////////////////////////////////////   
        end else if (patch23_start && !patch23_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded23[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch23_done <= 1;
                        patch24_start <= 1;
                    end
                end 
            end
                 
  ///////////patch24///////////////////////////////////////////////////////////////   
        end else if (patch24_start && !patch24_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded24[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch24_done <= 1;
                        patch25_start <= 1;
                    end
                end 
            end
                          
  ///////////patch25///////////////////////////////////////////////////////////////   
        end else if (patch25_start && !patch25_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded25[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch25_done <= 1;
                        patch26_start <= 1;
                    end
                end 
            end

  ///////////patch26///////////////////////////////////////////////////////////////   
        end else if (patch26_start && !patch26_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded26[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch26_done <= 1;
                        patch27_start <= 1;
                    end
                end 
            end
                   
  ///////////patch27///////////////////////////////////////////////////////////////   
        end else if (patch27_start && !patch27_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded27[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch27_done <= 1;
                        patch28_start <= 1;
                    end
                end 
            end
                  
   ///////////patch28///////////////////////////////////////////////////////////////   
        end else if (patch28_start && !patch28_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded28[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch28_done <= 1;
                        patch29_start <= 1;
                    end
                end 
            end
                  
   ///////////patch29///////////////////////////////////////////////////////////////   
        end else if (patch29_start && !patch29_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded29[row+i][col+j];
                    end
                end

                // 슬라이딩
               col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch29_done <= 1;
                        patch30_start <= 1;
                    end
                end 
            end
               
  ///////////patch30///////////////////////////////////////////////////////////////   
        end else if (patch30_start && !patch30_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded30[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch30_done <= 1;
                        patch31_start <= 1;
                    end
                end 
            end
                       
  ///////////patch31///////////////////////////////////////////////////////////////   
        end else if (patch31_start && !patch31_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded31[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch31_done <= 1;
                        patch32_start <= 1;
                    end
                end 
            end
  ///////////patch32///////////////////////////////////////////////////////////////   
        end else if (patch32_start && !patch32_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded32[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch32_done <= 1;
                        patch33_start <= 1;
                    end
                end 
            end
   ///////////patch33///////////////////////////////////////////////////////////////   
        end else if (patch33_start && !patch33_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded33[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch33_done <= 1;
                        patch34_start <= 1;
                    end
                end 
            end                                       
   ///////////patch34///////////////////////////////////////////////////////////////   
        end else if (patch34_start && !patch34_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded34[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch34_done <= 1;
                        patch35_start <= 1;
                    end
                end 
            end                                      
   ///////////patch35///////////////////////////////////////////////////////////////   
        end else if (patch35_start && !patch35_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded35[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch35_done <= 1;
                        patch36_start <= 1;
                    end
                end 
            end                                        
   ///////////patch36//////////////////////////////////////////////////////////////   
        end else if (patch36_start && !patch36_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded36[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch36_done <= 1;
                        patch37_start <= 1;
                    end
                end 
            end                                          
   ///////////patch37//////////////////////////////////////////////////////////////   
        end else if (patch37_start && !patch37_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded37[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch37_done <= 1;
                        patch38_start <= 1;
                    end
                end 
            end                                                                     
   ///////////patch38//////////////////////////////////////////////////////////////   
        end else if (patch38_start && !patch38_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded38[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch38_done <= 1;
                        patch39_start <= 1;
                    end
                end 
            end                                       
  ///////////patch39///////////////////////////////////////////////////////////////   
        end else if (patch39_start && !patch39_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded39[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch39_done <= 1;
                        patch40_start <= 1;
                    end
                end 
            end
                 
  ///////////patch40///////////////////////////////////////////////////////////////   
        end else if (patch40_start && !patch40_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded40[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch40_done <= 1;
                        patch41_start <= 1;
                    end
                end 
            end
                          
  ///////////patch41///////////////////////////////////////////////////////////////   
        end else if (patch41_start && !patch41_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded41[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch41_done <= 1;
                        patch42_start <= 1;
                    end
                end 
            end

  ///////////patch42///////////////////////////////////////////////////////////////   
        end else if (patch42_start && !patch42_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded42[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch42_done <= 1;
                        patch43_start <= 1;
                    end
                end 
            end
                   
  ///////////patch43///////////////////////////////////////////////////////////////   
        end else if (patch43_start && !patch43_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded43[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch43_done <= 1;
                        patch44_start <= 1;
                    end
                end 
            end
                  
   ///////////patch44//////////////////////////////////////////////////////////////   
        end else if (patch44_start && !patch44_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded44[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch44_done <= 1;
                        patch45_start <= 1;
                    end
                end 
            end
                  
   ///////////patch45///////////////////////////////////////////////////////////////   
        end else if (patch45_start && !patch45_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded45[row+i][col+j];
                    end
                end

                // 슬라이딩
               col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch45_done <= 1;
                        patch46_start <= 1;
                    end
                end 
            end
               
  ///////////patch46///////////////////////////////////////////////////////////////   
        end else if (patch46_start && !patch46_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded46[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch46_done <= 1;
                        patch47_start <= 1;
                    end
                end 
            end
                       
  ///////////patch47//////////////////////////////////////////////////////////////   
        end else if (patch47_start && !patch47_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded47[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch47_done <= 1;
                        patch48_start <= 1;
                    end
                end 
            end
  ///////////patch48///////////////////////////////////////////////////////////////   
        end else if (patch48_start && !patch48_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded48[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch48_done <= 1;
                        patch49_start <= 1;
                    end
                end 
            end
   ///////////patch49///////////////////////////////////////////////////////////////   
        end else if (patch49_start && !patch49_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded49[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch49_done <= 1;
                        patch50_start <= 1;
                    end
                end 
            end                   
                   
   ///////////patch50///////////////////////////////////////////////////////////////   
        end else if (patch50_start && !patch50_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded50[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch50_done <= 1;
                        patch51_start <= 1;
                    end
                end 
            end                                       
   ///////////patch51///////////////////////////////////////////////////////////////   
        end else if (patch51_start && !patch51_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded51[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch51_done <= 1;
                        patch52_start <= 1;
                    end
                end 
            end                                      
   ///////////patch52///////////////////////////////////////////////////////////////   
        end else if (patch52_start && !patch52_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded52[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch52_done <= 1;
                        patch53_start <= 1;
                    end
                end 
            end                                        
   ///////////patch53//////////////////////////////////////////////////////////////   
        end else if (patch53_start && !patch53_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded53[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch53_done <= 1;
                        patch54_start <= 1;
                    end
                end 
            end                                          
   ///////////patch54//////////////////////////////////////////////////////////////   
        end else if (patch54_start && !patch54_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded54[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch54_done <= 1;
                        patch55_start <= 1;
                    end
                end 
            end                                                                     
   ///////////patch55//////////////////////////////////////////////////////////////   
        end else if (patch55_start && !patch55_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded55[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch55_done <= 1;
                        patch56_start <= 1;
                    end
                end 
            end                                                   
   ///////////patch56///////////////////////////////////////////////////////////////   
        end else if (patch56_start && !patch56_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded56[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch56_done <= 1;
                        patch57_start <= 1;
                    end
                end 
            end                   
                   
   ///////////patch57///////////////////////////////////////////////////////////////   
        end else if (patch57_start && !patch57_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded57[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch57_done <= 1;
                        patch58_start <= 1;
                    end
                end 
            end                                       
   ///////////patch58///////////////////////////////////////////////////////////////   
        end else if (patch58_start && !patch58_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded58[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch58_done <= 1;
                        patch59_start <= 1;
                    end
                end 
            end                                      
   ///////////patch59///////////////////////////////////////////////////////////////   
        end else if (patch59_start && !patch59_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded59[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch59_done <= 1;
                        patch60_start <= 1;
                    end
                end 
            end                                        
   ///////////patch60//////////////////////////////////////////////////////////////   
        end else if (patch60_start && !patch60_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded60[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch60_done <= 1;
                        patch61_start <= 1;
                    end
                end 
            end                                          
   ///////////patch61//////////////////////////////////////////////////////////////   
        end else if (patch61_start && !patch61_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded61[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch61_done <= 1;
                        patch62_start <= 1;
                    end
                end 
            end                                                                     
   ///////////patch62//////////////////////////////////////////////////////////////   
        end else if (patch62_start && !patch62_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded62[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch62_done <= 1;
                        patch63_start <= 1;
                    end
                end 
            end                
   ///////////patch63//////////////////////////////////////////////////////////////   
        end else if (patch63_start && !patch63_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded63[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 5) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 7) begin
                        row <= 0;
                        col <= 0;
                        patch63_done <= 1;

                    end
                end 
            end                             
        end 
        if (patch63_done) begin
            state <= 0;
            valid_out <= 0;
        end
        
    end
end
endmodule