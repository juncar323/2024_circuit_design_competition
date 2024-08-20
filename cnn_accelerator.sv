`timescale 1ns / 1ps

module cnn_accelerator(
input clk,
input [7:0] data_in,
input valid_in,
input rst_n,
output [31:0] data_out_fc2,
output valid_out_fc2,
output warning,
output data_out_relu2
);

reg valid_out_layer1;
reg [31:0] data_out_1;
reg [31:0] data_out_2;
reg [31:0] data_out_3;
reg [31:0] data_out_4;
reg [31:0] data_out_5;
reg [31:0] data_out_6;
reg [31:0] data_out_7;
reg [31:0] data_out_8;
reg [31:0] data_out_9;
reg [31:0] data_out_10;
reg [31:0] data_out_11;
reg [31:0] data_out_12;
reg [31:0] data_out_13;
reg [31:0] data_out_14;
reg [31:0] data_out_15;
reg [31:0] data_out_16;
reg [31:0] data_out_17;
reg [31:0] data_out_18;
reg [31:0] data_out_19;
reg [31:0] data_out_20;
reg [31:0] data_out_21;
reg [31:0] data_out_22;
reg [31:0] data_out_23;
reg [31:0] data_out_24;
reg [31:0] data_out_25;
reg [31:0] data_out_26;
reg [31:0] data_out_27;
reg [31:0] data_out_28;
reg [31:0] data_out_29;
reg [31:0] data_out_30;
reg [31:0] data_out_31;
reg [31:0] data_out_32;


reg valid_out_layer2;
reg [31:0] data_out_1_2;
reg [31:0] data_out_2_2;
reg [31:0] data_out_3_2;
reg [31:0] data_out_4_2;
reg [31:0] data_out_5_2;
reg [31:0] data_out_6_2;
reg [31:0] data_out_7_2;
reg [31:0] data_out_8_2;
reg [31:0] data_out_9_2;
reg [31:0] data_out_10_2;
reg [31:0] data_out_11_2;
reg [31:0] data_out_12_2;
reg [31:0] data_out_13_2;
reg [31:0] data_out_14_2;
reg [31:0] data_out_15_2;
reg [31:0] data_out_16_2;
reg [31:0] data_out_17_2;
reg [31:0] data_out_18_2;
reg [31:0] data_out_19_2;
reg [31:0] data_out_20_2;
reg [31:0] data_out_21_2;
reg [31:0] data_out_22_2;
reg [31:0] data_out_23_2;
reg [31:0] data_out_24_2;
reg [31:0] data_out_25_2;
reg [31:0] data_out_26_2;
reg [31:0] data_out_27_2;
reg [31:0] data_out_28_2;
reg [31:0] data_out_29_2;
reg [31:0] data_out_30_2;
reg [31:0] data_out_31_2;
reg [31:0] data_out_32_2;
reg [31:0] data_out_33_2;
reg [31:0] data_out_34_2;
reg [31:0] data_out_35_2;
reg [31:0] data_out_36_2;
reg [31:0] data_out_37_2;
reg [31:0] data_out_38_2;
reg [31:0] data_out_39_2;
reg [31:0] data_out_40_2;
reg [31:0] data_out_41_2;
reg [31:0] data_out_42_2;
reg [31:0] data_out_43_2;
reg [31:0] data_out_44_2;
reg [31:0] data_out_45_2;
reg [31:0] data_out_46_2;
reg [31:0] data_out_47_2;
reg [31:0] data_out_48_2;
reg [31:0] data_out_49_2;
reg [31:0] data_out_50_2;
reg [31:0] data_out_51_2;
reg [31:0] data_out_52_2;
reg [31:0] data_out_53_2;
reg [31:0] data_out_54_2;
reg [31:0] data_out_55_2;
reg [31:0] data_out_56_2;
reg [31:0] data_out_57_2;
reg [31:0] data_out_58_2;
reg [31:0] data_out_59_2;
reg [31:0] data_out_60_2;
reg [31:0] data_out_61_2;
reg [31:0] data_out_62_2;
reg [31:0] data_out_63_2;
reg [31:0] data_out_64_2;

reg [31:0] data_out_1_3;
reg [31:0] data_out_2_3;
reg [31:0] data_out_3_3;
reg [31:0] data_out_4_3;
reg [31:0] data_out_5_3;
reg [31:0] data_out_6_3;
reg [31:0] data_out_7_3;
reg [31:0] data_out_8_3;
reg [31:0] data_out_9_3;
reg [31:0] data_out_10_3;
reg [31:0] data_out_11_3;
reg [31:0] data_out_12_3;
reg [31:0] data_out_13_3;
reg [31:0] data_out_14_3;
reg [31:0] data_out_15_3;
reg [31:0] data_out_16_3;
reg [31:0] data_out_17_3;
reg [31:0] data_out_18_3;
reg [31:0] data_out_19_3;
reg [31:0] data_out_20_3;
reg [31:0] data_out_21_3;
reg [31:0] data_out_22_3;
reg [31:0] data_out_23_3;
reg [31:0] data_out_24_3;
reg [31:0] data_out_25_3;
reg [31:0] data_out_26_3;
reg [31:0] data_out_27_3;
reg [31:0] data_out_28_3;
reg [31:0] data_out_29_3;
reg [31:0] data_out_30_3;
reg [31:0] data_out_31_3;
reg [31:0] data_out_32_3;
reg [31:0] data_out_33_3;
reg [31:0] data_out_34_3;
reg [31:0] data_out_35_3;
reg [31:0] data_out_36_3;
reg [31:0] data_out_37_3;
reg [31:0] data_out_38_3;
reg [31:0] data_out_39_3;
reg [31:0] data_out_40_3;
reg [31:0] data_out_41_3;
reg [31:0] data_out_42_3;
reg [31:0] data_out_43_3;
reg [31:0] data_out_44_3;
reg [31:0] data_out_45_3;
reg [31:0] data_out_46_3;
reg [31:0] data_out_47_3;
reg [31:0] data_out_48_3;
reg [31:0] data_out_49_3;
reg [31:0] data_out_50_3;
reg [31:0] data_out_51_3;
reg [31:0] data_out_52_3;
reg [31:0] data_out_53_3;
reg [31:0] data_out_54_3;
reg [31:0] data_out_55_3;
reg [31:0] data_out_56_3;
reg [31:0] data_out_57_3;
reg [31:0] data_out_58_3;
reg [31:0] data_out_59_3;
reg [31:0] data_out_60_3;
reg [31:0] data_out_61_3;
reg [31:0] data_out_62_3;
reg [31:0] data_out_63_3;
reg [31:0] data_out_64_3;
reg [31:0] data_out_65_3;
reg [31:0] data_out_66_3;
reg [31:0] data_out_67_3;
reg [31:0] data_out_68_3;
reg [31:0] data_out_69_3;
reg [31:0] data_out_70_3;
reg [31:0] data_out_71_3;
reg [31:0] data_out_72_3;
reg [31:0] data_out_73_3;
reg [31:0] data_out_74_3;
reg [31:0] data_out_75_3;
reg [31:0] data_out_76_3;
reg [31:0] data_out_77_3;
reg [31:0] data_out_78_3;
reg [31:0] data_out_79_3;
reg [31:0] data_out_80_3;
reg [31:0] data_out_81_3;
reg [31:0] data_out_82_3;
reg [31:0] data_out_83_3;
reg [31:0] data_out_84_3;
reg [31:0] data_out_85_3;
reg [31:0] data_out_86_3;
reg [31:0] data_out_87_3;
reg [31:0] data_out_88_3;
reg [31:0] data_out_89_3;
reg [31:0] data_out_90_3;
reg [31:0] data_out_91_3;
reg [31:0] data_out_92_3;
reg [31:0] data_out_93_3;
reg [31:0] data_out_94_3;
reg [31:0] data_out_95_3;
reg [31:0] data_out_96_3;
reg [31:0] data_out_97_3;
reg [31:0] data_out_98_3;
reg [31:0] data_out_99_3;
reg [31:0] data_out_100_3;
reg [31:0] data_out_101_3;
reg [31:0] data_out_102_3;
reg [31:0] data_out_103_3;
reg [31:0] data_out_104_3;
reg [31:0] data_out_105_3;
reg [31:0] data_out_106_3;
reg [31:0] data_out_107_3;
reg [31:0] data_out_108_3;
reg [31:0] data_out_109_3;
reg [31:0] data_out_110_3;
reg [31:0] data_out_111_3;
reg [31:0] data_out_112_3;
reg [31:0] data_out_113_3;
reg [31:0] data_out_114_3;
reg [31:0] data_out_115_3;
reg [31:0] data_out_116_3;
reg [31:0] data_out_117_3;
reg [31:0] data_out_118_3;
reg [31:0] data_out_119_3;
reg [31:0] data_out_120_3;
reg [31:0] data_out_121_3;
reg [31:0] data_out_122_3;
reg [31:0] data_out_123_3;
reg [31:0] data_out_124_3;
reg [31:0] data_out_125_3;
reg [31:0] data_out_126_3;
reg [31:0] data_out_127_3;
reg [31:0] data_out_128_3;
reg valid_out_layer3;


layer_1 layer_1(
.data_in(data_in),
.valid_in(valid_in),
.rst_n(rst_n),
.valid_out_layer1(valid_out_layer1),
.data_out_1(data_out_1),
.data_out_2(data_out_2),
.data_out_3(data_out_3),
.data_out_4(data_out_4),
.data_out_5(data_out_5),
.data_out_6(data_out_6),
.data_out_7(data_out_7),
.data_out_8(data_out_8),
.data_out_9(data_out_9),
.data_out_10(data_out_10),
.data_out_11(data_out_11),
.data_out_12(data_out_12),
.data_out_13(data_out_13),
.data_out_14(data_out_14),
.data_out_15(data_out_15),
.data_out_16(data_out_16),
.data_out_17(data_out_17),
.data_out_18(data_out_18),
.data_out_19(data_out_19),
.data_out_20(data_out_20),
.data_out_21(data_out_21),
.data_out_22(data_out_22),
.data_out_23(data_out_23),
.data_out_24(data_out_24),
.data_out_25(data_out_25),
.data_out_26(data_out_26),
.data_out_27(data_out_27),
.data_out_28(data_out_28),
.data_out_29(data_out_29),
.data_out_30(data_out_30),
.data_out_31(data_out_31),
.data_out_32(data_out_32),
.clk(clk)
);





layer_2 #(
.DATA_WIDTH(32)
)layer_2(
.data0(data_out_1),
.data1(data_out_2),
.data2(data_out_3),
.data3(data_out_4),
.data4(data_out_5),
.data5(data_out_6),
.data6(data_out_7),
.data7(data_out_8),
.data8(data_out_9),
.data9(data_out_10),
.data10(data_out_11),
.data11(data_out_12),
.data12(data_out_13),
.data13(data_out_14),
.data14(data_out_15),
.data15(data_out_16),
.data16(data_out_17),
.data17(data_out_18),
.data18(data_out_19),
.data19(data_out_20),
.data20(data_out_21),
.data21(data_out_22),
.data22(data_out_23),
.data23(data_out_24),
.data24(data_out_25),
.data25(data_out_26),
.data26(data_out_27),
.data27(data_out_28),
.data28(data_out_29),
.data29(data_out_30),
.data30(data_out_31),
.data31(data_out_32),
.clk(clk),
.valid_in(valid_out_layer1),
.rst_n(rst_n),
.data_out_1(data_out_1_2),
.data_out_2(data_out_2_2),
.data_out_3(data_out_3_2),
.data_out_4(data_out_4_2),
.data_out_5(data_out_5_2),
.data_out_6(data_out_6_2),
.data_out_7(data_out_7_2),
.data_out_8(data_out_8_2),
.data_out_9(data_out_9_2),
.data_out_10(data_out_10_2),
.data_out_11(data_out_11_2),
.data_out_12(data_out_12_2),
.data_out_13(data_out_13_2),
.data_out_14(data_out_14_2),
.data_out_15(data_out_15_2),
.data_out_16(data_out_16_2),
.data_out_17(data_out_17_2),
.data_out_18(data_out_18_2),
.data_out_19(data_out_19_2),
.data_out_20(data_out_20_2),
.data_out_21(data_out_21_2),
.data_out_22(data_out_22_2),
.data_out_23(data_out_23_2),
.data_out_24(data_out_24_2),
.data_out_25(data_out_25_2),
.data_out_26(data_out_26_2),
.data_out_27(data_out_27_2),
.data_out_28(data_out_28_2),
.data_out_29(data_out_29_2),
.data_out_30(data_out_30_2),
.data_out_31(data_out_31_2),
.data_out_32(data_out_32_2),
.data_out_33(data_out_33_2),
.data_out_34(data_out_34_2),
.data_out_35(data_out_35_2),
.data_out_36(data_out_36_2),
.data_out_37(data_out_37_2),
.data_out_38(data_out_38_2),
.data_out_39(data_out_39_2),
.data_out_40(data_out_40_2),
.data_out_41(data_out_41_2),
.data_out_42(data_out_42_2),
.data_out_43(data_out_43_2),
.data_out_44(data_out_44_2),
.data_out_45(data_out_45_2),
.data_out_46(data_out_46_2),
.data_out_47(data_out_47_2),
.data_out_48(data_out_48_2),
.data_out_49(data_out_49_2),
.data_out_50(data_out_50_2),
.data_out_51(data_out_51_2),
.data_out_52(data_out_52_2),
.data_out_53(data_out_53_2),
.data_out_54(data_out_54_2),
.data_out_55(data_out_55_2),
.data_out_56(data_out_56_2),
.data_out_57(data_out_57_2),
.data_out_58(data_out_58_2),
.data_out_59(data_out_59_2),
.data_out_60(data_out_60_2),
.data_out_61(data_out_61_2),
.data_out_62(data_out_62_2),
.data_out_63(data_out_63_2),
.data_out_64(data_out_64_2),
.valid_out_layer2(valid_out_layer2)
);

layer_3 #(
.DATA_WIDTH(32)
)layer_3(
.valid_in(valid_out_layer2),
.clk(clk),
.rst_n(rst_n),
.data0(data_out_1_2),
.data1(data_out_2_2),
.data2(data_out_3_2),
.data3(data_out_4_2),
.data4(data_out_5_2),
.data5(data_out_6_2),
.data6(data_out_7_2),
.data7(data_out_8_2),
.data8(data_out_9_2),
.data9(data_out_10_2),
.data10(data_out_11_2),
.data11(data_out_12_2),
.data12(data_out_13_2),
.data13(data_out_14_2),
.data14(data_out_15_2),
.data15(data_out_16_2),
.data16(data_out_17_2),
.data17(data_out_18_2),
.data18(data_out_19_2),
.data19(data_out_20_2),
.data20(data_out_21_2),
.data21(data_out_22_2),
.data22(data_out_23_2),
.data23(data_out_24_2),
.data24(data_out_25_2),
.data25(data_out_26_2),
.data26(data_out_27_2),
.data27(data_out_28_2),
.data28(data_out_29_2),
.data29(data_out_30_2),
.data30(data_out_31_2),
.data31(data_out_32_2),
.data32(data_out_33_2),
.data33(data_out_34_2),
.data34(data_out_35_2),
.data35(data_out_36_2),
.data36(data_out_37_2),
.data37(data_out_38_2),
.data38(data_out_39_2),
.data39(data_out_40_2),
.data40(data_out_41_2),
.data41(data_out_42_2),
.data42(data_out_43_2),
.data43(data_out_44_2),
.data44(data_out_45_2),
.data45(data_out_46_2),
.data46(data_out_47_2),
.data47(data_out_48_2),
.data48(data_out_49_2),
.data49(data_out_50_2),
.data50(data_out_51_2),
.data51(data_out_52_2),
.data52(data_out_53_2),
.data53(data_out_54_2),
.data54(data_out_55_2),
.data55(data_out_56_2),
.data56(data_out_57_2),
.data57(data_out_58_2),
.data58(data_out_59_2),
.data59(data_out_60_2),
.data60(data_out_61_2),
.data61(data_out_62_2),
.data62(data_out_63_2),
.data63(data_out_64_2),
.valid_out_layer3(valid_out_layer3),
.data_out_1(data_out_1_3),
.data_out_2(data_out_2_3),
.data_out_3(data_out_3_3),
.data_out_4(data_out_4_3),
.data_out_5(data_out_5_3),
.data_out_6(data_out_6_3),
.data_out_7(data_out_7_3),
.data_out_8(data_out_8_3),
.data_out_9(data_out_9_3),
.data_out_10(data_out_10_3),
.data_out_11(data_out_11_3),
.data_out_12(data_out_12_3),
.data_out_13(data_out_13_3),
.data_out_14(data_out_14_3),
.data_out_15(data_out_15_3),
.data_out_16(data_out_16_3),
.data_out_17(data_out_17_3),
.data_out_18(data_out_18_3),
.data_out_19(data_out_19_3),
.data_out_20(data_out_20_3),
.data_out_21(data_out_21_3),
.data_out_22(data_out_22_3),
.data_out_23(data_out_23_3),
.data_out_24(data_out_24_3),
.data_out_25(data_out_25_3),
.data_out_26(data_out_26_3),
.data_out_27(data_out_27_3),
.data_out_28(data_out_28_3),
.data_out_29(data_out_29_3),
.data_out_30(data_out_30_3),
.data_out_31(data_out_31_3),
.data_out_32(data_out_32_3),
.data_out_33(data_out_33_3),
.data_out_34(data_out_34_3),
.data_out_35(data_out_35_3),
.data_out_36(data_out_36_3),
.data_out_37(data_out_37_3),
.data_out_38(data_out_38_3),
.data_out_39(data_out_39_3),
.data_out_40(data_out_40_3),
.data_out_41(data_out_41_3),
.data_out_42(data_out_42_3),
.data_out_43(data_out_43_3),
.data_out_44(data_out_44_3),
.data_out_45(data_out_45_3),
.data_out_46(data_out_46_3),
.data_out_47(data_out_47_3),
.data_out_48(data_out_48_3),
.data_out_49(data_out_49_3),
.data_out_50(data_out_50_3),
.data_out_51(data_out_51_3),
.data_out_52(data_out_52_3),
.data_out_53(data_out_53_3),
.data_out_54(data_out_54_3),
.data_out_55(data_out_55_3),
.data_out_56(data_out_56_3),
.data_out_57(data_out_57_3),
.data_out_58(data_out_58_3),
.data_out_59(data_out_59_3),
.data_out_60(data_out_60_3),
.data_out_61(data_out_61_3),
.data_out_62(data_out_62_3),
.data_out_63(data_out_63_3),
.data_out_64(data_out_64_3),
.data_out_65(data_out_65_3),
.data_out_66(data_out_66_3),
.data_out_67(data_out_67_3),
.data_out_68(data_out_68_3),
.data_out_69(data_out_69_3),
.data_out_70(data_out_70_3),
.data_out_71(data_out_71_3),
.data_out_72(data_out_72_3),
.data_out_73(data_out_73_3),
.data_out_74(data_out_74_3),
.data_out_75(data_out_75_3),
.data_out_76(data_out_76_3),
.data_out_77(data_out_77_3),
.data_out_78(data_out_78_3),
.data_out_79(data_out_79_3),
.data_out_80(data_out_80_3),
.data_out_81(data_out_81_3),
.data_out_82(data_out_82_3),
.data_out_83(data_out_83_3),
.data_out_84(data_out_84_3),
.data_out_85(data_out_85_3),
.data_out_86(data_out_86_3),
.data_out_87(data_out_87_3),
.data_out_88(data_out_88_3),
.data_out_89(data_out_89_3),
.data_out_90(data_out_90_3),
.data_out_91(data_out_91_3),
.data_out_92(data_out_92_3),
.data_out_93(data_out_93_3),
.data_out_94(data_out_94_3),
.data_out_95(data_out_95_3),
.data_out_96(data_out_96_3),
.data_out_97(data_out_97_3),
.data_out_98(data_out_98_3),
.data_out_99(data_out_99_3),
.data_out_100(data_out_100_3),
.data_out_101(data_out_101_3),
.data_out_102(data_out_102_3),
.data_out_103(data_out_103_3),
.data_out_104(data_out_104_3),
.data_out_105(data_out_105_3),
.data_out_106(data_out_106_3),
.data_out_107(data_out_107_3),
.data_out_108(data_out_108_3),
.data_out_109(data_out_109_3),
.data_out_110(data_out_110_3),
.data_out_111(data_out_111_3),
.data_out_112(data_out_112_3),
.data_out_113(data_out_113_3),
.data_out_114(data_out_114_3),
.data_out_115(data_out_115_3),
.data_out_116(data_out_116_3),
.data_out_117(data_out_117_3),
.data_out_118(data_out_118_3),
.data_out_119(data_out_119_3),
.data_out_120(data_out_120_3),
.data_out_121(data_out_121_3),
.data_out_122(data_out_122_3),
.data_out_123(data_out_123_3),
.data_out_124(data_out_124_3),
.data_out_125(data_out_125_3),
.data_out_126(data_out_126_3),
.data_out_127(data_out_127_3),
.data_out_128(data_out_128_3)
);

fc_layer_connected#(
.DATA_BITS(32)
)fc_layer_connected(
.clk(clk),
.rst_n(rst_n),
.valid_in(valid_out_layer3),
.data_in_1(data_out_1_3),
.data_in_2(data_out_2_3),
.data_in_3(data_out_3_3),
.data_in_4(data_out_4_3),
.data_in_5(data_out_5_3),
.data_in_6(data_out_6_3),
.data_in_7(data_out_7_3),
.data_in_8(data_out_8_3),
.data_in_9(data_out_9_3),
.data_in_10(data_out_10_3),
.data_in_11(data_out_11_3),
.data_in_12(data_out_12_3),
.data_in_13(data_out_13_3),
.data_in_14(data_out_14_3),
.data_in_15(data_out_15_3),
.data_in_16(data_out_16_3),
.data_in_17(data_out_17_3),
.data_in_18(data_out_18_3),
.data_in_19(data_out_19_3),
.data_in_20(data_out_20_3),
.data_in_21(data_out_21_3),
.data_in_22(data_out_22_3),
.data_in_23(data_out_23_3),
.data_in_24(data_out_24_3),
.data_in_25(data_out_25_3),
.data_in_26(data_out_26_3),
.data_in_27(data_out_27_3),
.data_in_28(data_out_28_3),
.data_in_29(data_out_29_3),
.data_in_30(data_out_30_3),
.data_in_31(data_out_31_3),
.data_in_32(data_out_32_3),
.data_in_33(data_out_33_3),
.data_in_34(data_out_34_3),
.data_in_35(data_out_35_3),
.data_in_36(data_out_36_3),
.data_in_37(data_out_37_3),
.data_in_38(data_out_38_3),
.data_in_39(data_out_39_3),
.data_in_40(data_out_40_3),
.data_in_41(data_out_41_3),
.data_in_42(data_out_42_3),
.data_in_43(data_out_43_3),
.data_in_44(data_out_44_3),
.data_in_45(data_out_45_3),
.data_in_46(data_out_46_3),
.data_in_47(data_out_47_3),
.data_in_48(data_out_48_3),
.data_in_49(data_out_49_3),
.data_in_50(data_out_50_3),
.data_in_51(data_out_51_3),
.data_in_52(data_out_52_3),
.data_in_53(data_out_53_3),
.data_in_54(data_out_54_3),
.data_in_55(data_out_55_3),
.data_in_56(data_out_56_3),
.data_in_57(data_out_57_3),
.data_in_58(data_out_58_3),
.data_in_59(data_out_59_3),
.data_in_60(data_out_60_3),
.data_in_61(data_out_61_3),
.data_in_62(data_out_62_3),
.data_in_63(data_out_63_3),
.data_in_64(data_out_64_3),
.data_in_65(data_out_65_3),
.data_in_66(data_out_66_3),
.data_in_67(data_out_67_3),
.data_in_68(data_out_68_3),
.data_in_69(data_out_69_3),
.data_in_70(data_out_70_3),
.data_in_71(data_out_71_3),
.data_in_72(data_out_72_3),
.data_in_73(data_out_73_3),
.data_in_74(data_out_74_3),
.data_in_75(data_out_75_3),
.data_in_76(data_out_76_3),
.data_in_77(data_out_77_3),
.data_in_78(data_out_78_3),
.data_in_79(data_out_79_3),
.data_in_80(data_out_80_3),
.data_in_81(data_out_81_3),
.data_in_82(data_out_82_3),
.data_in_83(data_out_83_3),
.data_in_84(data_out_84_3),
.data_in_85(data_out_85_3),
.data_in_86(data_out_86_3),
.data_in_87(data_out_87_3),
.data_in_88(data_out_88_3),
.data_in_89(data_out_89_3),
.data_in_90(data_out_90_3),
.data_in_91(data_out_91_3),
.data_in_92(data_out_92_3),
.data_in_93(data_out_93_3),
.data_in_94(data_out_94_3),
.data_in_95(data_out_95_3),
.data_in_96(data_out_96_3),
.data_in_97(data_out_97_3),
.data_in_98(data_out_98_3),
.data_in_99(data_out_99_3),
.data_in_100(data_out_100_3),
.data_in_101(data_out_101_3),
.data_in_102(data_out_102_3),
.data_in_103(data_out_103_3),
.data_in_104(data_out_104_3),
.data_in_105(data_out_105_3),
.data_in_106(data_out_106_3),
.data_in_107(data_out_107_3),
.data_in_108(data_out_108_3),
.data_in_109(data_out_109_3),
.data_in_110(data_out_110_3),
.data_in_111(data_out_111_3),
.data_in_112(data_out_112_3),
.data_in_113(data_out_113_3),
.data_in_114(data_out_114_3),
.data_in_115(data_out_115_3),
.data_in_116(data_out_116_3),
.data_in_117(data_out_117_3),
.data_in_118(data_out_118_3),
.data_in_119(data_out_119_3),
.data_in_120(data_out_120_3),
.data_in_121(data_out_121_3),
.data_in_122(data_out_122_3),
.data_in_123(data_out_123_3),
.data_in_124(data_out_124_3),
.data_in_125(data_out_125_3),
.data_in_126(data_out_126_3),
.data_in_127(data_out_127_3),
.data_in_128(data_out_128_3),
.data_out_fc2(data_out_fc2),
.valid_out_fc2(valid_out_fc2),
.warning(warning),
.data_out_relu2(data_out_relu2)
);
endmodule
