/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Tue Jan  2 18:42:21 2024
/////////////////////////////////////////////////////////////


module geofence_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_inc_2 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  XOR2X1 U1 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW_cmp_0 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, EQ_NE );
  input [23:0] A;
  input [23:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211;

  CLKINVX1 U64 ( .A(A[17]), .Y(n142) );
  CLKINVX1 U65 ( .A(A[19]), .Y(n141) );
  CLKINVX1 U66 ( .A(A[21]), .Y(n140) );
  CLKINVX1 U67 ( .A(A[12]), .Y(n144) );
  CLKINVX1 U68 ( .A(A[14]), .Y(n143) );
  CLKINVX1 U69 ( .A(n189), .Y(n146) );
  CLKINVX1 U70 ( .A(A[8]), .Y(n147) );
  CLKINVX1 U71 ( .A(A[10]), .Y(n145) );
  CLKINVX1 U72 ( .A(A[5]), .Y(n148) );
  CLKINVX1 U73 ( .A(n203), .Y(n150) );
  CLKINVX1 U74 ( .A(A[3]), .Y(n149) );
  CLKINVX1 U75 ( .A(B[18]), .Y(n153) );
  CLKINVX1 U76 ( .A(B[11]), .Y(n156) );
  CLKINVX1 U77 ( .A(B[13]), .Y(n155) );
  CLKINVX1 U78 ( .A(B[20]), .Y(n152) );
  CLKINVX1 U79 ( .A(B[15]), .Y(n154) );
  CLKINVX1 U80 ( .A(B[9]), .Y(n157) );
  CLKINVX1 U81 ( .A(B[23]), .Y(n151) );
  CLKINVX1 U82 ( .A(B[4]), .Y(n159) );
  CLKINVX1 U83 ( .A(B[6]), .Y(n158) );
  CLKINVX1 U84 ( .A(B[1]), .Y(n160) );
  OAI221XL U85 ( .A0(A[23]), .A1(n161), .B0(A[23]), .B1(n151), .C0(n162), .Y(
        GE_LT_GT_LE) );
  AOI2BB2X1 U86 ( .B0(n163), .B1(n164), .A0N(n161), .A1N(n151), .Y(n162) );
  OAI22XL U87 ( .A0(n165), .A1(n151), .B0(A[23]), .B1(n165), .Y(n164) );
  NOR2BX1 U88 ( .AN(B[22]), .B(A[22]), .Y(n165) );
  OAI221XL U89 ( .A0(B[21]), .A1(n166), .B0(B[21]), .B1(n140), .C0(n167), .Y(
        n163) );
  AOI2BB2X1 U90 ( .B0(n168), .B1(n169), .A0N(n166), .A1N(n140), .Y(n167) );
  OAI22XL U91 ( .A0(n140), .A1(n170), .B0(B[21]), .B1(n170), .Y(n169) );
  OAI21XL U92 ( .A0(A[20]), .A1(n152), .B0(n171), .Y(n170) );
  OAI22XL U93 ( .A0(n141), .A1(n172), .B0(B[19]), .B1(n172), .Y(n171) );
  OAI21XL U94 ( .A0(A[18]), .A1(n153), .B0(n173), .Y(n172) );
  OAI22XL U95 ( .A0(n174), .A1(n142), .B0(B[17]), .B1(n174), .Y(n173) );
  NOR2BX1 U96 ( .AN(B[16]), .B(A[16]), .Y(n174) );
  OAI21XL U97 ( .A0(n175), .A1(n176), .B0(n177), .Y(n168) );
  OAI222XL U98 ( .A0(A[15]), .A1(n178), .B0(n154), .B1(n178), .C0(A[15]), .C1(
        n154), .Y(n177) );
  OAI222XL U99 ( .A0(B[14]), .A1(n143), .B0(B[14]), .B1(n179), .C0(n143), .C1(
        n179), .Y(n178) );
  OAI222XL U100 ( .A0(A[13]), .A1(n180), .B0(n155), .B1(n180), .C0(A[13]), 
        .C1(n155), .Y(n179) );
  OAI222XL U101 ( .A0(B[12]), .A1(n144), .B0(B[12]), .B1(n181), .C0(n144), 
        .C1(n181), .Y(n180) );
  NAND2X1 U102 ( .A(A[11]), .B(n156), .Y(n181) );
  OAI21XL U103 ( .A0(A[15]), .A1(n154), .B0(n182), .Y(n176) );
  OAI22XL U104 ( .A0(n183), .A1(n143), .B0(B[14]), .B1(n183), .Y(n182) );
  OAI21XL U105 ( .A0(A[13]), .A1(n155), .B0(n184), .Y(n183) );
  OAI22XL U106 ( .A0(n185), .A1(n144), .B0(B[12]), .B1(n185), .Y(n184) );
  NOR2X1 U107 ( .A(n156), .B(A[11]), .Y(n185) );
  AOI221XL U108 ( .A0(A[10]), .A1(n146), .B0(n186), .B1(n187), .C0(n188), .Y(
        n175) );
  OAI22XL U109 ( .A0(B[10]), .A1(n145), .B0(B[10]), .B1(n189), .Y(n188) );
  OAI22XL U110 ( .A0(n145), .A1(n190), .B0(B[10]), .B1(n190), .Y(n187) );
  OAI21XL U111 ( .A0(A[9]), .A1(n157), .B0(n191), .Y(n190) );
  OAI22XL U112 ( .A0(n192), .A1(n147), .B0(B[8]), .B1(n192), .Y(n191) );
  NOR2BX1 U113 ( .AN(B[7]), .B(A[7]), .Y(n192) );
  OAI21XL U114 ( .A0(n193), .A1(n194), .B0(n195), .Y(n186) );
  OAI222XL U115 ( .A0(A[6]), .A1(n196), .B0(n158), .B1(n196), .C0(A[6]), .C1(
        n158), .Y(n195) );
  OAI222XL U116 ( .A0(B[5]), .A1(n148), .B0(B[5]), .B1(n197), .C0(n148), .C1(
        n197), .Y(n196) );
  NAND2X1 U117 ( .A(A[4]), .B(n159), .Y(n197) );
  OAI21XL U118 ( .A0(A[6]), .A1(n158), .B0(n198), .Y(n194) );
  OAI22XL U119 ( .A0(n199), .A1(n148), .B0(B[5]), .B1(n199), .Y(n198) );
  NOR2X1 U120 ( .A(n159), .B(A[4]), .Y(n199) );
  AOI221XL U121 ( .A0(A[3]), .A1(n150), .B0(n200), .B1(n201), .C0(n202), .Y(
        n193) );
  OAI22XL U122 ( .A0(B[3]), .A1(n149), .B0(B[3]), .B1(n203), .Y(n202) );
  OAI22XL U123 ( .A0(n204), .A1(n149), .B0(B[3]), .B1(n204), .Y(n201) );
  NOR2BX1 U124 ( .AN(B[2]), .B(A[2]), .Y(n204) );
  AO22X1 U125 ( .A0(n205), .A1(A[0]), .B0(A[1]), .B1(n160), .Y(n200) );
  AOI2BB1X1 U126 ( .A0N(n160), .A1N(A[1]), .B0(B[0]), .Y(n205) );
  NAND2BX1 U127 ( .AN(B[2]), .B(A[2]), .Y(n203) );
  OAI222XL U128 ( .A0(A[9]), .A1(n206), .B0(n206), .B1(n157), .C0(A[9]), .C1(
        n157), .Y(n189) );
  OAI222XL U129 ( .A0(B[8]), .A1(n147), .B0(B[8]), .B1(n207), .C0(n207), .C1(
        n147), .Y(n206) );
  NAND2BX1 U130 ( .AN(B[7]), .B(A[7]), .Y(n207) );
  OAI222XL U131 ( .A0(A[20]), .A1(n208), .B0(n208), .B1(n152), .C0(A[20]), 
        .C1(n152), .Y(n166) );
  OAI222XL U132 ( .A0(B[19]), .A1(n141), .B0(B[19]), .B1(n209), .C0(n209), 
        .C1(n141), .Y(n208) );
  OAI222XL U133 ( .A0(A[18]), .A1(n210), .B0(n210), .B1(n153), .C0(A[18]), 
        .C1(n153), .Y(n209) );
  OAI222XL U134 ( .A0(B[17]), .A1(n142), .B0(B[17]), .B1(n211), .C0(n211), 
        .C1(n142), .Y(n210) );
  NAND2BX1 U135 ( .AN(B[16]), .B(A[16]), .Y(n211) );
  NAND2BX1 U136 ( .AN(B[22]), .B(A[22]), .Y(n161) );
endmodule


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XNOR2X1 U1 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n3) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n12) );
  CLKINVX1 U14 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XNOR2X1 U1 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n3) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n12) );
  CLKINVX1 U14 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U15 ( .A(carry[11]), .Y(DIFF[11]) );
endmodule


module geofence_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;

  wire   [12:0] carry;
  wire   [11:0] B_not;

  ADDFXL U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(carry[2]), .S(
        DIFF[1]) );
  ADDFXL U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  ADDFXL U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  ADDFXL U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(carry[5]), .S(
        DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(carry[6]), .S(
        DIFF[5]) );
  ADDFXL U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(carry[7]), .S(
        DIFF[6]) );
  ADDFXL U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .CO(carry[8]), .S(
        DIFF[7]) );
  ADDFXL U2_8 ( .A(A[8]), .B(B_not[8]), .CI(carry[8]), .CO(carry[9]), .S(
        DIFF[8]) );
  ADDFXL U2_9 ( .A(A[9]), .B(B_not[9]), .CI(carry[9]), .CO(carry[10]), .S(
        DIFF[9]) );
  ADDFXL U2_10 ( .A(A[10]), .B(B_not[10]), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_0 ( .A(A[0]), .B(B_not[0]), .CI(1'b1), .CO(carry[1]), .S(DIFF[0])
         );
  XOR3X1 U2_11 ( .A(1'b0), .B(B_not[11]), .C(carry[11]), .Y(DIFF[11]) );
  CLKINVX1 U2 ( .A(B[9]), .Y(B_not[9]) );
  CLKINVX1 U3 ( .A(B[8]), .Y(B_not[8]) );
  CLKINVX1 U4 ( .A(B[7]), .Y(B_not[7]) );
  CLKINVX1 U5 ( .A(B[6]), .Y(B_not[6]) );
  CLKINVX1 U6 ( .A(B[5]), .Y(B_not[5]) );
  CLKINVX1 U7 ( .A(B[4]), .Y(B_not[4]) );
  CLKINVX1 U8 ( .A(B[3]), .Y(B_not[3]) );
  CLKINVX1 U9 ( .A(B[2]), .Y(B_not[2]) );
  CLKINVX1 U10 ( .A(B[1]), .Y(B_not[1]) );
  CLKINVX1 U11 ( .A(B[11]), .Y(B_not[11]) );
  CLKINVX1 U12 ( .A(B[10]), .Y(B_not[10]) );
  CLKINVX1 U13 ( .A(B[0]), .Y(B_not[0]) );
endmodule


module geofence_DW01_add_0 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  AND2X2 U1 ( .A(B[22]), .B(n23), .Y(n1) );
  XOR2X1 U2 ( .A(B[17]), .B(n18), .Y(SUM[17]) );
  XOR2X1 U3 ( .A(B[16]), .B(n5), .Y(SUM[16]) );
  AND2X2 U4 ( .A(B[3]), .B(n8), .Y(n2) );
  AND2X2 U5 ( .A(B[7]), .B(n11), .Y(n3) );
  AND2X2 U6 ( .A(B[11]), .B(n14), .Y(n4) );
  AND2X2 U7 ( .A(B[15]), .B(n17), .Y(n5) );
  AND2X2 U8 ( .A(B[0]), .B(A[0]), .Y(n6) );
  AND2X2 U9 ( .A(B[1]), .B(n6), .Y(n7) );
  AND2X2 U10 ( .A(B[2]), .B(n7), .Y(n8) );
  AND2X2 U11 ( .A(B[4]), .B(n2), .Y(n9) );
  AND2X2 U12 ( .A(B[5]), .B(n9), .Y(n10) );
  AND2X2 U13 ( .A(B[6]), .B(n10), .Y(n11) );
  AND2X2 U14 ( .A(B[8]), .B(n3), .Y(n12) );
  AND2X2 U15 ( .A(B[9]), .B(n12), .Y(n13) );
  AND2X2 U16 ( .A(B[10]), .B(n13), .Y(n14) );
  AND2X2 U17 ( .A(B[12]), .B(n4), .Y(n15) );
  AND2X2 U18 ( .A(B[13]), .B(n15), .Y(n16) );
  AND2X2 U19 ( .A(B[14]), .B(n16), .Y(n17) );
  AND2X2 U20 ( .A(B[16]), .B(n5), .Y(n18) );
  XOR2X1 U21 ( .A(B[12]), .B(n4), .Y(SUM[12]) );
  XOR2X1 U22 ( .A(B[18]), .B(n19), .Y(SUM[18]) );
  AND2X2 U23 ( .A(B[17]), .B(n18), .Y(n19) );
  XOR2X1 U24 ( .A(B[11]), .B(n14), .Y(SUM[11]) );
  XOR2X1 U25 ( .A(B[8]), .B(n3), .Y(SUM[8]) );
  XOR2X1 U26 ( .A(B[19]), .B(n21), .Y(SUM[19]) );
  XOR2X1 U27 ( .A(B[21]), .B(n22), .Y(SUM[21]) );
  XOR2X1 U28 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U29 ( .A(B[7]), .B(n11), .Y(SUM[7]) );
  XOR2X1 U30 ( .A(B[22]), .B(n23), .Y(SUM[22]) );
  XOR2X1 U31 ( .A(B[13]), .B(n15), .Y(SUM[13]) );
  XOR2X1 U32 ( .A(B[20]), .B(n20), .Y(SUM[20]) );
  AND2X2 U33 ( .A(B[19]), .B(n21), .Y(n20) );
  AND2X2 U34 ( .A(B[18]), .B(n19), .Y(n21) );
  AND2X2 U35 ( .A(B[20]), .B(n20), .Y(n22) );
  AND2X2 U36 ( .A(B[21]), .B(n22), .Y(n23) );
  XOR2X1 U37 ( .A(B[5]), .B(n9), .Y(SUM[5]) );
  XOR2X1 U38 ( .A(B[14]), .B(n16), .Y(SUM[14]) );
  XOR2X1 U39 ( .A(B[15]), .B(n17), .Y(SUM[15]) );
  XOR2X1 U40 ( .A(B[9]), .B(n12), .Y(SUM[9]) );
  XOR2X1 U41 ( .A(B[23]), .B(n1), .Y(SUM[23]) );
  XOR2X1 U42 ( .A(B[4]), .B(n2), .Y(SUM[4]) );
  XOR2X1 U43 ( .A(B[3]), .B(n8), .Y(SUM[3]) );
  XOR2X1 U44 ( .A(B[10]), .B(n13), .Y(SUM[10]) );
  XOR2X1 U45 ( .A(B[2]), .B(n7), .Y(SUM[2]) );
  XOR2X1 U46 ( .A(B[6]), .B(n10), .Y(SUM[6]) );
  XOR2X1 U47 ( .A(B[1]), .B(n6), .Y(SUM[1]) );
endmodule


module geofence_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [24:0] carry;

  ADDFXL U2_2 ( .A(A[2]), .B(n23), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n22), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n19), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n15), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n16), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n17), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n18), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_12 ( .A(A[12]), .B(n13), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n12), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n9), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n10), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n11), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n7), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n8), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  XOR3X1 U2_23 ( .A(A[23]), .B(n2), .C(carry[23]), .Y(DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n3), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n4), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n5), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n25) );
  CLKINVX1 U2 ( .A(B[20]), .Y(n5) );
  CLKINVX1 U3 ( .A(B[21]), .Y(n4) );
  CLKINVX1 U4 ( .A(B[22]), .Y(n3) );
  CLKINVX1 U5 ( .A(B[23]), .Y(n2) );
  CLKINVX1 U6 ( .A(B[17]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[18]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[19]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[14]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[15]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[16]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[11]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[13]), .Y(n12) );
  CLKINVX1 U14 ( .A(B[12]), .Y(n13) );
  CLKINVX1 U15 ( .A(B[7]), .Y(n18) );
  CLKINVX1 U16 ( .A(B[8]), .Y(n17) );
  CLKINVX1 U17 ( .A(B[9]), .Y(n16) );
  CLKINVX1 U18 ( .A(B[10]), .Y(n15) );
  CLKINVX1 U19 ( .A(B[4]), .Y(n21) );
  CLKINVX1 U20 ( .A(B[5]), .Y(n20) );
  CLKINVX1 U21 ( .A(B[6]), .Y(n19) );
  CLKINVX1 U22 ( .A(B[3]), .Y(n22) );
  NAND2X1 U23 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U24 ( .A(B[1]), .Y(n24) );
  CLKINVX1 U25 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U26 ( .A(B[2]), .Y(n23) );
  XNOR2X1 U27 ( .A(n25), .B(A[0]), .Y(DIFF[0]) );
endmodule


module geofence_DW01_add_1 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3X1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  NAND2BX1 U1 ( .AN(n2), .B(n1), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  INVXL U3 ( .A(B[0]), .Y(n2) );
  INVXL U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n3) );
  CLKINVX1 U11 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_8 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  NAND2BX1 U1 ( .AN(n2), .B(n1), .Y(carry[1]) );
  XNOR2X1 U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  INVXL U3 ( .A(B[0]), .Y(n2) );
  INVXL U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U7 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[1]), .Y(n3) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_add_3 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;

  wire   [11:1] carry;

  ADDFXL U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_11 ( .A(A[11]), .B(1'b0), .C(carry[11]), .Y(SUM[11]) );
endmodule


module geofence_DW01_add_2 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;

  wire   [11:1] carry;

  ADDFX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR2X1 U1 ( .A(B[11]), .B(carry[11]), .Y(SUM[11]) );
  AND2X1 U2 ( .A(B[0]), .B(A[0]), .Y(carry[1]) );
endmodule


module geofence_DW01_sub_13 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  NAND2BX1 U1 ( .AN(n11), .B(n1), .Y(carry[1]) );
  INVXL U2 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U3 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U4 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[1]), .Y(n10) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[8]), .Y(n3) );
  XNOR2XL U11 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U12 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_12 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  NAND2BX1 U1 ( .AN(n11), .B(n1), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n10) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[8]), .Y(n3) );
  XNOR2XL U11 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U12 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_11 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n10) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n7) );
  XNOR2X1 U8 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U9 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U11 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_10 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  INVXL U1 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U2 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n10) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n7) );
  XNOR2X1 U8 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U9 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW_mult_uns_3 ( a, b, product );
  input [23:0] a;
  input [23:0] b;
  output [47:0] product;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n33, n34, n35,
         n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, n118,
         n119, n120, n121, n122, n123, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463;

  ADDFXL U7 ( .A(n27), .B(n26), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U8 ( .A(n29), .B(n28), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFXL U9 ( .A(n30), .B(n34), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFXL U10 ( .A(n37), .B(n35), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U11 ( .A(n38), .B(n42), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U12 ( .A(n43), .B(n47), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFXL U13 ( .A(n48), .B(n54), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U14 ( .A(n55), .B(n60), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U15 ( .A(n61), .B(n68), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U16 ( .A(n69), .B(n76), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U17 ( .A(n77), .B(n82), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U18 ( .A(n83), .B(n89), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFXL U19 ( .A(n90), .B(n94), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U20 ( .A(n95), .B(n99), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U21 ( .A(n101), .B(n100), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U22 ( .A(n102), .B(n105), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U23 ( .A(n106), .B(n107), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U24 ( .A(n108), .B(n113), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U25 ( .A(n179), .B(n169), .CI(n24), .CO(n23), .S(product[2]) );
  ADDHXL U26 ( .A(n114), .B(n180), .CO(n24), .S(product[1]) );
  ADDFXL U28 ( .A(n31), .B(n126), .CI(n116), .CO(n27), .S(n28) );
  ADDFXL U29 ( .A(n374), .B(n117), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n39), .D(n118), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U32 ( .A(n128), .B(n119), .C(n373), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U34 ( .A(n138), .B(n129), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U35 ( .A(n51), .B(n147), .CI(n120), .CO(n44), .S(n45) );
  CMPR42X1 U36 ( .A(n372), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U37 ( .A(n130), .B(n121), .CI(n139), .CO(n49), .S(n50) );
  CMPR42X1 U39 ( .A(n140), .B(n131), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U40 ( .A(n158), .B(n122), .C(n65), .D(n148), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U41 ( .A(n375), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U42 ( .A(n132), .B(n159), .C(n149), .D(n123), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U44 ( .A(n141), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), 
        .ICO(n67), .CO(n68) );
  CMPR42X1 U45 ( .A(n160), .B(n109), .C(n150), .D(n133), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U48 ( .A(n151), .B(n86), .C(n80), .D(n84), .ICI(n81), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U49 ( .A(n125), .B(n142), .C(n171), .D(n161), .ICI(n134), .S(n80), 
        .ICO(n78), .CO(n79) );
  CMPR42X1 U50 ( .A(n172), .B(n87), .C(n88), .D(n91), .ICI(n85), .S(n83), 
        .ICO(n81), .CO(n82) );
  ADDFXL U51 ( .A(n143), .B(n152), .CI(n162), .CO(n84), .S(n85) );
  ADDHXL U52 ( .A(n135), .B(n110), .CO(n86), .S(n87) );
  CMPR42X1 U53 ( .A(n163), .B(n144), .C(n96), .D(n93), .ICI(n92), .S(n90), 
        .ICO(n88), .CO(n89) );
  ADDFXL U54 ( .A(n153), .B(n136), .CI(n173), .CO(n91), .S(n92) );
  CMPR42X1 U55 ( .A(n174), .B(n154), .C(n164), .D(n98), .ICI(n97), .S(n95), 
        .ICO(n93), .CO(n94) );
  ADDHXL U56 ( .A(n145), .B(n111), .CO(n96), .S(n97) );
  CMPR42X1 U57 ( .A(n146), .B(n175), .C(n165), .D(n155), .ICI(n103), .S(n100), 
        .ICO(n98), .CO(n99) );
  ADDFXL U58 ( .A(n166), .B(n176), .CI(n104), .CO(n101), .S(n102) );
  ADDHXL U59 ( .A(n156), .B(n112), .CO(n103), .S(n104) );
  ADDFXL U60 ( .A(n177), .B(n157), .CI(n167), .CO(n105), .S(n106) );
  ADDHXL U61 ( .A(n178), .B(n168), .CO(n107), .S(n108) );
  CLKBUFX3 U266 ( .A(product[23]), .Y(product[22]) );
  CLKINVX1 U267 ( .A(n5), .Y(product[21]) );
  CLKINVX1 U268 ( .A(n65), .Y(n375) );
  CLKINVX1 U269 ( .A(n450), .Y(n377) );
  CLKINVX1 U270 ( .A(n51), .Y(n372) );
  CLKINVX1 U271 ( .A(n366), .Y(n381) );
  CLKINVX1 U272 ( .A(n367), .Y(n380) );
  CLKINVX1 U273 ( .A(n365), .Y(n382) );
  NAND2X2 U274 ( .A(n365), .B(n383), .Y(n387) );
  CLKINVX1 U275 ( .A(n369), .Y(n378) );
  CLKINVX1 U276 ( .A(n368), .Y(n379) );
  CLKXOR2X2 U277 ( .A(n370), .B(n378), .Y(n450) );
  CLKINVX1 U278 ( .A(n39), .Y(n373) );
  CLKBUFX3 U279 ( .A(n412), .Y(n357) );
  XOR2X1 U280 ( .A(a[2]), .B(n382), .Y(n412) );
  CLKBUFX3 U281 ( .A(n396), .Y(n358) );
  NAND2X1 U282 ( .A(n359), .B(n461), .Y(n396) );
  CLKBUFX3 U283 ( .A(n393), .Y(n359) );
  XOR2X1 U284 ( .A(a[4]), .B(n381), .Y(n393) );
  CLKBUFX3 U285 ( .A(a[1]), .Y(n365) );
  CLKBUFX3 U286 ( .A(a[3]), .Y(n366) );
  CLKBUFX3 U287 ( .A(a[5]), .Y(n367) );
  CLKBUFX3 U288 ( .A(n414), .Y(n356) );
  NAND2X1 U289 ( .A(n357), .B(n460), .Y(n414) );
  CLKBUFX3 U290 ( .A(n391), .Y(n361) );
  XOR2X1 U291 ( .A(a[6]), .B(n380), .Y(n391) );
  CLKBUFX3 U292 ( .A(n399), .Y(n363) );
  XOR2X1 U293 ( .A(a[8]), .B(n379), .Y(n399) );
  INVX3 U294 ( .A(n364), .Y(n376) );
  INVX3 U295 ( .A(a[0]), .Y(n383) );
  CLKBUFX3 U296 ( .A(n402), .Y(n362) );
  NAND2X1 U297 ( .A(n363), .B(n463), .Y(n402) );
  CLKBUFX3 U298 ( .A(a[7]), .Y(n368) );
  CLKBUFX3 U299 ( .A(a[9]), .Y(n369) );
  CLKBUFX3 U300 ( .A(n390), .Y(n360) );
  NAND2X1 U301 ( .A(n361), .B(n462), .Y(n390) );
  CLKBUFX3 U302 ( .A(a[10]), .Y(n370) );
  CLKINVX1 U303 ( .A(n31), .Y(n374) );
  CLKBUFX3 U304 ( .A(b[0]), .Y(n364) );
  CLKINVX1 U305 ( .A(n5), .Y(product[23]) );
  NOR2X1 U306 ( .A(n383), .B(n376), .Y(product[0]) );
  XOR2X1 U307 ( .A(n384), .B(n385), .Y(n74) );
  NAND2BX1 U308 ( .AN(n385), .B(n384), .Y(n73) );
  NAND2X1 U309 ( .A(n386), .B(n377), .Y(n384) );
  XOR2X1 U310 ( .A(b[1]), .B(n370), .Y(n386) );
  OAI2BB1X1 U311 ( .A0N(n383), .A1N(n387), .B0(n388), .Y(n385) );
  OAI22XL U312 ( .A0(n389), .A1(n360), .B0(n361), .B1(n392), .Y(n65) );
  OAI22XL U313 ( .A0(n359), .A1(n394), .B0(n395), .B1(n358), .Y(n51) );
  OAI22XL U314 ( .A0(n361), .A1(n397), .B0(n398), .B1(n360), .Y(n39) );
  OAI22XL U315 ( .A0(n363), .A1(n400), .B0(n401), .B1(n362), .Y(n31) );
  OAI22XL U316 ( .A0(n364), .A1(n387), .B0(n403), .B1(n383), .Y(n180) );
  OAI22XL U317 ( .A0(n403), .A1(n387), .B0(n404), .B1(n383), .Y(n179) );
  XNOR2X1 U318 ( .A(b[1]), .B(n365), .Y(n403) );
  OAI22XL U319 ( .A0(n404), .A1(n387), .B0(n405), .B1(n383), .Y(n178) );
  XNOR2X1 U320 ( .A(b[2]), .B(n365), .Y(n404) );
  OAI22XL U321 ( .A0(n405), .A1(n387), .B0(n406), .B1(n383), .Y(n177) );
  XNOR2X1 U322 ( .A(b[3]), .B(n365), .Y(n405) );
  OAI22XL U323 ( .A0(n406), .A1(n387), .B0(n407), .B1(n383), .Y(n176) );
  XNOR2X1 U324 ( .A(b[4]), .B(n365), .Y(n406) );
  OAI22XL U325 ( .A0(n407), .A1(n387), .B0(n408), .B1(n383), .Y(n175) );
  XNOR2X1 U326 ( .A(b[5]), .B(n365), .Y(n407) );
  OAI22XL U327 ( .A0(n408), .A1(n387), .B0(n409), .B1(n383), .Y(n174) );
  XNOR2X1 U328 ( .A(b[6]), .B(n365), .Y(n408) );
  OAI22XL U329 ( .A0(n409), .A1(n387), .B0(n410), .B1(n383), .Y(n173) );
  XNOR2X1 U330 ( .A(b[7]), .B(n365), .Y(n409) );
  OAI22XL U331 ( .A0(n410), .A1(n387), .B0(n411), .B1(n383), .Y(n172) );
  XNOR2X1 U332 ( .A(b[8]), .B(n365), .Y(n410) );
  OAI2BB2XL U333 ( .B0(n411), .B1(n387), .A0N(n388), .A1N(a[0]), .Y(n171) );
  XNOR2X1 U334 ( .A(b[10]), .B(n382), .Y(n388) );
  XNOR2X1 U335 ( .A(b[9]), .B(n365), .Y(n411) );
  NOR2X1 U336 ( .A(n357), .B(n376), .Y(n169) );
  OAI22XL U337 ( .A0(n413), .A1(n356), .B0(n357), .B1(n415), .Y(n168) );
  XNOR2X1 U338 ( .A(n366), .B(n364), .Y(n413) );
  OAI22XL U339 ( .A0(n415), .A1(n356), .B0(n357), .B1(n416), .Y(n167) );
  XNOR2X1 U340 ( .A(b[1]), .B(n366), .Y(n415) );
  OAI22XL U341 ( .A0(n416), .A1(n356), .B0(n357), .B1(n417), .Y(n166) );
  XNOR2X1 U342 ( .A(b[2]), .B(n366), .Y(n416) );
  OAI22XL U343 ( .A0(n417), .A1(n356), .B0(n357), .B1(n418), .Y(n165) );
  XNOR2X1 U344 ( .A(b[3]), .B(n366), .Y(n417) );
  OAI22XL U345 ( .A0(n418), .A1(n356), .B0(n357), .B1(n419), .Y(n164) );
  XNOR2X1 U346 ( .A(b[4]), .B(n366), .Y(n418) );
  OAI22XL U347 ( .A0(n419), .A1(n356), .B0(n357), .B1(n420), .Y(n163) );
  XNOR2X1 U348 ( .A(b[5]), .B(n366), .Y(n419) );
  OAI22XL U349 ( .A0(n420), .A1(n356), .B0(n357), .B1(n421), .Y(n162) );
  XNOR2X1 U350 ( .A(b[6]), .B(n366), .Y(n420) );
  OAI22XL U351 ( .A0(n421), .A1(n356), .B0(n357), .B1(n422), .Y(n161) );
  XNOR2X1 U352 ( .A(b[7]), .B(n366), .Y(n421) );
  OAI22XL U353 ( .A0(n422), .A1(n356), .B0(n357), .B1(n423), .Y(n160) );
  XNOR2X1 U354 ( .A(b[8]), .B(n366), .Y(n422) );
  OAI22XL U355 ( .A0(n423), .A1(n356), .B0(n357), .B1(n424), .Y(n159) );
  XNOR2X1 U356 ( .A(b[9]), .B(n366), .Y(n423) );
  AO21X1 U357 ( .A0(n356), .A1(n357), .B0(n424), .Y(n158) );
  XNOR2X1 U358 ( .A(b[10]), .B(n366), .Y(n424) );
  NOR2X1 U359 ( .A(n359), .B(n376), .Y(n157) );
  OAI22XL U360 ( .A0(n425), .A1(n358), .B0(n359), .B1(n426), .Y(n156) );
  XNOR2X1 U361 ( .A(n367), .B(n364), .Y(n425) );
  OAI22XL U362 ( .A0(n426), .A1(n358), .B0(n359), .B1(n427), .Y(n155) );
  XNOR2X1 U363 ( .A(b[1]), .B(n367), .Y(n426) );
  OAI22XL U364 ( .A0(n427), .A1(n358), .B0(n359), .B1(n428), .Y(n154) );
  XNOR2X1 U365 ( .A(b[2]), .B(n367), .Y(n427) );
  OAI22XL U366 ( .A0(n428), .A1(n358), .B0(n359), .B1(n429), .Y(n153) );
  XNOR2X1 U367 ( .A(b[3]), .B(n367), .Y(n428) );
  OAI22XL U368 ( .A0(n429), .A1(n358), .B0(n359), .B1(n430), .Y(n152) );
  XNOR2X1 U369 ( .A(b[4]), .B(n367), .Y(n429) );
  OAI22XL U370 ( .A0(n430), .A1(n358), .B0(n359), .B1(n431), .Y(n151) );
  XNOR2X1 U371 ( .A(b[5]), .B(n367), .Y(n430) );
  OAI22XL U372 ( .A0(n431), .A1(n358), .B0(n359), .B1(n432), .Y(n150) );
  XNOR2X1 U373 ( .A(b[6]), .B(n367), .Y(n431) );
  OAI22XL U374 ( .A0(n432), .A1(n358), .B0(n359), .B1(n433), .Y(n149) );
  XNOR2X1 U375 ( .A(b[7]), .B(n367), .Y(n432) );
  OAI22XL U376 ( .A0(n433), .A1(n358), .B0(n359), .B1(n395), .Y(n148) );
  XNOR2X1 U377 ( .A(b[9]), .B(n367), .Y(n395) );
  XNOR2X1 U378 ( .A(b[8]), .B(n367), .Y(n433) );
  AO21X1 U379 ( .A0(n358), .A1(n359), .B0(n394), .Y(n147) );
  XNOR2X1 U380 ( .A(b[10]), .B(n367), .Y(n394) );
  NOR2X1 U381 ( .A(n361), .B(n376), .Y(n146) );
  OAI22XL U382 ( .A0(n434), .A1(n360), .B0(n361), .B1(n435), .Y(n145) );
  XNOR2X1 U383 ( .A(n368), .B(n364), .Y(n434) );
  OAI22XL U384 ( .A0(n435), .A1(n360), .B0(n361), .B1(n436), .Y(n144) );
  XNOR2X1 U385 ( .A(b[1]), .B(n368), .Y(n435) );
  OAI22XL U386 ( .A0(n436), .A1(n360), .B0(n361), .B1(n437), .Y(n143) );
  XNOR2X1 U387 ( .A(b[2]), .B(n368), .Y(n436) );
  OAI22XL U388 ( .A0(n437), .A1(n360), .B0(n361), .B1(n438), .Y(n142) );
  XNOR2X1 U389 ( .A(b[3]), .B(n368), .Y(n437) );
  OAI22XL U390 ( .A0(n438), .A1(n360), .B0(n361), .B1(n389), .Y(n141) );
  XNOR2X1 U391 ( .A(b[5]), .B(n368), .Y(n389) );
  XNOR2X1 U392 ( .A(b[4]), .B(n368), .Y(n438) );
  OAI22XL U393 ( .A0(n392), .A1(n360), .B0(n361), .B1(n439), .Y(n140) );
  XNOR2X1 U394 ( .A(b[6]), .B(n368), .Y(n392) );
  OAI22XL U395 ( .A0(n439), .A1(n360), .B0(n361), .B1(n440), .Y(n139) );
  XNOR2X1 U396 ( .A(b[7]), .B(n368), .Y(n439) );
  OAI22XL U397 ( .A0(n440), .A1(n360), .B0(n361), .B1(n398), .Y(n138) );
  XNOR2X1 U398 ( .A(b[9]), .B(n368), .Y(n398) );
  XNOR2X1 U399 ( .A(b[8]), .B(n368), .Y(n440) );
  AO21X1 U400 ( .A0(n360), .A1(n361), .B0(n397), .Y(n137) );
  XNOR2X1 U401 ( .A(b[10]), .B(n368), .Y(n397) );
  NOR2X1 U402 ( .A(n363), .B(n376), .Y(n136) );
  OAI22XL U403 ( .A0(n441), .A1(n362), .B0(n363), .B1(n442), .Y(n135) );
  XNOR2X1 U404 ( .A(n369), .B(n364), .Y(n441) );
  OAI22XL U405 ( .A0(n442), .A1(n362), .B0(n363), .B1(n443), .Y(n134) );
  XNOR2X1 U406 ( .A(b[1]), .B(n369), .Y(n442) );
  OAI22XL U407 ( .A0(n443), .A1(n362), .B0(n363), .B1(n444), .Y(n133) );
  XNOR2X1 U408 ( .A(b[2]), .B(n369), .Y(n443) );
  OAI22XL U409 ( .A0(n444), .A1(n362), .B0(n363), .B1(n445), .Y(n132) );
  XNOR2X1 U410 ( .A(b[3]), .B(n369), .Y(n444) );
  OAI22XL U411 ( .A0(n445), .A1(n362), .B0(n363), .B1(n446), .Y(n131) );
  XNOR2X1 U412 ( .A(b[4]), .B(n369), .Y(n445) );
  OAI22XL U413 ( .A0(n446), .A1(n362), .B0(n363), .B1(n447), .Y(n130) );
  XNOR2X1 U414 ( .A(b[5]), .B(n369), .Y(n446) );
  OAI22XL U415 ( .A0(n447), .A1(n362), .B0(n363), .B1(n448), .Y(n129) );
  XNOR2X1 U416 ( .A(b[6]), .B(n369), .Y(n447) );
  OAI22XL U417 ( .A0(n448), .A1(n362), .B0(n363), .B1(n449), .Y(n128) );
  XNOR2X1 U418 ( .A(b[7]), .B(n369), .Y(n448) );
  OAI22XL U419 ( .A0(n449), .A1(n362), .B0(n363), .B1(n401), .Y(n127) );
  XNOR2X1 U420 ( .A(b[9]), .B(n369), .Y(n401) );
  XNOR2X1 U421 ( .A(b[8]), .B(n369), .Y(n449) );
  AO21X1 U422 ( .A0(n362), .A1(n363), .B0(n400), .Y(n126) );
  XNOR2X1 U423 ( .A(b[10]), .B(n369), .Y(n400) );
  NOR2X1 U424 ( .A(n450), .B(n376), .Y(n125) );
  NOR2X1 U425 ( .A(n450), .B(n451), .Y(n123) );
  XNOR2X1 U426 ( .A(b[2]), .B(n370), .Y(n451) );
  NOR2X1 U427 ( .A(n450), .B(n452), .Y(n122) );
  XNOR2X1 U428 ( .A(b[3]), .B(n370), .Y(n452) );
  NOR2X1 U429 ( .A(n450), .B(n453), .Y(n121) );
  XNOR2X1 U430 ( .A(b[4]), .B(n370), .Y(n453) );
  NOR2X1 U431 ( .A(n450), .B(n454), .Y(n120) );
  XNOR2X1 U432 ( .A(b[5]), .B(n370), .Y(n454) );
  NOR2X1 U433 ( .A(n450), .B(n455), .Y(n119) );
  XNOR2X1 U434 ( .A(b[6]), .B(n370), .Y(n455) );
  NOR2X1 U435 ( .A(n450), .B(n456), .Y(n118) );
  XNOR2X1 U436 ( .A(b[7]), .B(n370), .Y(n456) );
  NOR2X1 U437 ( .A(n450), .B(n457), .Y(n117) );
  XNOR2X1 U438 ( .A(b[8]), .B(n370), .Y(n457) );
  NOR2X1 U439 ( .A(n450), .B(n458), .Y(n116) );
  XNOR2X1 U440 ( .A(b[9]), .B(n370), .Y(n458) );
  NAND2X1 U441 ( .A(n459), .B(n377), .Y(n26) );
  XOR2X1 U442 ( .A(b[10]), .B(n370), .Y(n459) );
  OAI21XL U443 ( .A0(n364), .A1(n382), .B0(n387), .Y(n114) );
  OAI32X1 U444 ( .A0(n381), .A1(n364), .A2(n357), .B0(n381), .B1(n356), .Y(
        n113) );
  XNOR2X1 U445 ( .A(n381), .B(a[2]), .Y(n460) );
  OAI32X1 U446 ( .A0(n380), .A1(n364), .A2(n359), .B0(n380), .B1(n358), .Y(
        n112) );
  XNOR2X1 U447 ( .A(n380), .B(a[4]), .Y(n461) );
  OAI32X1 U448 ( .A0(n379), .A1(n364), .A2(n361), .B0(n379), .B1(n360), .Y(
        n111) );
  XNOR2X1 U449 ( .A(n379), .B(a[6]), .Y(n462) );
  OAI32X1 U450 ( .A0(n378), .A1(n364), .A2(n363), .B0(n378), .B1(n362), .Y(
        n110) );
  XNOR2X1 U451 ( .A(n378), .B(a[8]), .Y(n463) );
  AND3X1 U452 ( .A(n370), .B(n376), .C(n377), .Y(n109) );
endmodule


module geofence_DW_mult_uns_2 ( a, b, product );
  input [23:0] a;
  input [23:0] b;
  output [47:0] product;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n26, n27, n28, n29, n30, n31, n33, n34, n35,
         n36, n37, n38, n39, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n116, n117, n118,
         n119, n120, n121, n122, n123, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463;

  ADDFXL U7 ( .A(n27), .B(n26), .CI(n6), .CO(n5), .S(product[20]) );
  ADDFXL U8 ( .A(n29), .B(n28), .CI(n7), .CO(n6), .S(product[19]) );
  ADDFXL U9 ( .A(n30), .B(n34), .CI(n8), .CO(n7), .S(product[18]) );
  ADDFXL U10 ( .A(n37), .B(n35), .CI(n9), .CO(n8), .S(product[17]) );
  ADDFXL U11 ( .A(n38), .B(n42), .CI(n10), .CO(n9), .S(product[16]) );
  ADDFXL U12 ( .A(n43), .B(n47), .CI(n11), .CO(n10), .S(product[15]) );
  ADDFXL U13 ( .A(n48), .B(n54), .CI(n12), .CO(n11), .S(product[14]) );
  ADDFXL U14 ( .A(n55), .B(n60), .CI(n13), .CO(n12), .S(product[13]) );
  ADDFXL U15 ( .A(n61), .B(n68), .CI(n14), .CO(n13), .S(product[12]) );
  ADDFXL U16 ( .A(n69), .B(n76), .CI(n15), .CO(n14), .S(product[11]) );
  ADDFXL U17 ( .A(n77), .B(n82), .CI(n16), .CO(n15), .S(product[10]) );
  ADDFXL U18 ( .A(n83), .B(n89), .CI(n17), .CO(n16), .S(product[9]) );
  ADDFXL U19 ( .A(n90), .B(n94), .CI(n18), .CO(n17), .S(product[8]) );
  ADDFXL U20 ( .A(n95), .B(n99), .CI(n19), .CO(n18), .S(product[7]) );
  ADDFXL U21 ( .A(n101), .B(n100), .CI(n20), .CO(n19), .S(product[6]) );
  ADDFXL U22 ( .A(n102), .B(n105), .CI(n21), .CO(n20), .S(product[5]) );
  ADDFXL U23 ( .A(n106), .B(n107), .CI(n22), .CO(n21), .S(product[4]) );
  ADDFXL U24 ( .A(n108), .B(n113), .CI(n23), .CO(n22), .S(product[3]) );
  ADDFXL U25 ( .A(n179), .B(n169), .CI(n24), .CO(n23), .S(product[2]) );
  ADDHXL U26 ( .A(n114), .B(n180), .CO(n24), .S(product[1]) );
  ADDFXL U28 ( .A(n31), .B(n126), .CI(n116), .CO(n27), .S(n28) );
  ADDFXL U29 ( .A(n374), .B(n117), .CI(n33), .CO(n29), .S(n30) );
  CMPR42X1 U31 ( .A(n137), .B(n127), .C(n39), .D(n118), .ICI(n36), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U32 ( .A(n128), .B(n119), .C(n373), .D(n44), .ICI(n41), .S(n38), 
        .ICO(n36), .CO(n37) );
  CMPR42X1 U34 ( .A(n138), .B(n129), .C(n45), .D(n49), .ICI(n46), .S(n43), 
        .ICO(n41), .CO(n42) );
  ADDFXL U35 ( .A(n51), .B(n147), .CI(n120), .CO(n44), .S(n45) );
  CMPR42X1 U36 ( .A(n372), .B(n56), .C(n57), .D(n50), .ICI(n53), .S(n48), 
        .ICO(n46), .CO(n47) );
  ADDFXL U37 ( .A(n130), .B(n121), .CI(n139), .CO(n49), .S(n50) );
  CMPR42X1 U39 ( .A(n140), .B(n131), .C(n58), .D(n63), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U40 ( .A(n158), .B(n122), .C(n65), .D(n148), .ICI(n62), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U41 ( .A(n375), .B(n70), .C(n71), .D(n64), .ICI(n67), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U42 ( .A(n132), .B(n159), .C(n149), .D(n123), .ICI(n73), .S(n64), 
        .ICO(n62), .CO(n63) );
  CMPR42X1 U44 ( .A(n141), .B(n74), .C(n79), .D(n72), .ICI(n75), .S(n69), 
        .ICO(n67), .CO(n68) );
  CMPR42X1 U45 ( .A(n160), .B(n109), .C(n150), .D(n133), .ICI(n78), .S(n72), 
        .ICO(n70), .CO(n71) );
  CMPR42X1 U48 ( .A(n151), .B(n86), .C(n80), .D(n84), .ICI(n81), .S(n77), 
        .ICO(n75), .CO(n76) );
  CMPR42X1 U49 ( .A(n125), .B(n142), .C(n171), .D(n161), .ICI(n134), .S(n80), 
        .ICO(n78), .CO(n79) );
  CMPR42X1 U50 ( .A(n172), .B(n87), .C(n88), .D(n91), .ICI(n85), .S(n83), 
        .ICO(n81), .CO(n82) );
  ADDFXL U51 ( .A(n143), .B(n152), .CI(n162), .CO(n84), .S(n85) );
  ADDHXL U52 ( .A(n135), .B(n110), .CO(n86), .S(n87) );
  CMPR42X1 U53 ( .A(n163), .B(n144), .C(n96), .D(n93), .ICI(n92), .S(n90), 
        .ICO(n88), .CO(n89) );
  ADDFXL U54 ( .A(n153), .B(n136), .CI(n173), .CO(n91), .S(n92) );
  CMPR42X1 U55 ( .A(n174), .B(n154), .C(n164), .D(n98), .ICI(n97), .S(n95), 
        .ICO(n93), .CO(n94) );
  ADDHXL U56 ( .A(n145), .B(n111), .CO(n96), .S(n97) );
  CMPR42X1 U57 ( .A(n146), .B(n175), .C(n165), .D(n155), .ICI(n103), .S(n100), 
        .ICO(n98), .CO(n99) );
  ADDFXL U58 ( .A(n166), .B(n176), .CI(n104), .CO(n101), .S(n102) );
  ADDHXL U59 ( .A(n156), .B(n112), .CO(n103), .S(n104) );
  ADDFXL U60 ( .A(n177), .B(n157), .CI(n167), .CO(n105), .S(n106) );
  ADDHXL U61 ( .A(n178), .B(n168), .CO(n107), .S(n108) );
  CLKINVX1 U266 ( .A(n5), .Y(product[21]) );
  CLKINVX1 U267 ( .A(n65), .Y(n375) );
  CLKINVX1 U268 ( .A(n450), .Y(n377) );
  CLKINVX1 U269 ( .A(n51), .Y(n372) );
  CLKINVX1 U270 ( .A(n366), .Y(n381) );
  CLKINVX1 U271 ( .A(n367), .Y(n380) );
  CLKINVX1 U272 ( .A(n365), .Y(n382) );
  NAND2X2 U273 ( .A(n365), .B(n383), .Y(n387) );
  CLKINVX1 U274 ( .A(n369), .Y(n378) );
  CLKINVX1 U275 ( .A(n368), .Y(n379) );
  CLKXOR2X2 U276 ( .A(n370), .B(n378), .Y(n450) );
  CLKINVX1 U277 ( .A(n39), .Y(n373) );
  CLKBUFX3 U278 ( .A(n412), .Y(n357) );
  XOR2X1 U279 ( .A(a[2]), .B(n382), .Y(n412) );
  CLKBUFX3 U280 ( .A(n393), .Y(n359) );
  XOR2X1 U281 ( .A(a[4]), .B(n381), .Y(n393) );
  CLKBUFX3 U282 ( .A(a[1]), .Y(n365) );
  CLKBUFX3 U283 ( .A(a[5]), .Y(n367) );
  CLKBUFX3 U284 ( .A(a[3]), .Y(n366) );
  CLKBUFX3 U285 ( .A(n414), .Y(n356) );
  NAND2X1 U286 ( .A(n357), .B(n460), .Y(n414) );
  CLKBUFX3 U287 ( .A(n396), .Y(n358) );
  NAND2X1 U288 ( .A(n359), .B(n461), .Y(n396) );
  INVX3 U289 ( .A(n364), .Y(n376) );
  INVX3 U290 ( .A(a[0]), .Y(n383) );
  CLKBUFX3 U291 ( .A(n391), .Y(n361) );
  XOR2X1 U292 ( .A(a[6]), .B(n380), .Y(n391) );
  CLKBUFX3 U293 ( .A(n399), .Y(n363) );
  XOR2X1 U294 ( .A(a[8]), .B(n379), .Y(n399) );
  CLKBUFX3 U295 ( .A(a[7]), .Y(n368) );
  CLKBUFX3 U296 ( .A(a[9]), .Y(n369) );
  CLKBUFX3 U297 ( .A(n390), .Y(n360) );
  NAND2X1 U298 ( .A(n361), .B(n462), .Y(n390) );
  CLKBUFX3 U299 ( .A(n402), .Y(n362) );
  NAND2X1 U300 ( .A(n363), .B(n463), .Y(n402) );
  CLKBUFX3 U301 ( .A(a[10]), .Y(n370) );
  CLKINVX1 U302 ( .A(n31), .Y(n374) );
  CLKBUFX3 U303 ( .A(b[0]), .Y(n364) );
  CLKBUFX3 U304 ( .A(product[22]), .Y(product[23]) );
  CLKINVX1 U305 ( .A(n5), .Y(product[22]) );
  NOR2X1 U306 ( .A(n383), .B(n376), .Y(product[0]) );
  XOR2X1 U307 ( .A(n384), .B(n385), .Y(n74) );
  NAND2BX1 U308 ( .AN(n385), .B(n384), .Y(n73) );
  NAND2X1 U309 ( .A(n386), .B(n377), .Y(n384) );
  XOR2X1 U310 ( .A(b[1]), .B(n370), .Y(n386) );
  OAI2BB1X1 U311 ( .A0N(n383), .A1N(n387), .B0(n388), .Y(n385) );
  OAI22XL U312 ( .A0(n389), .A1(n360), .B0(n361), .B1(n392), .Y(n65) );
  OAI22XL U313 ( .A0(n359), .A1(n394), .B0(n395), .B1(n358), .Y(n51) );
  OAI22XL U314 ( .A0(n361), .A1(n397), .B0(n398), .B1(n360), .Y(n39) );
  OAI22XL U315 ( .A0(n363), .A1(n400), .B0(n401), .B1(n362), .Y(n31) );
  OAI22XL U316 ( .A0(n364), .A1(n387), .B0(n403), .B1(n383), .Y(n180) );
  OAI22XL U317 ( .A0(n403), .A1(n387), .B0(n404), .B1(n383), .Y(n179) );
  XNOR2X1 U318 ( .A(b[1]), .B(n365), .Y(n403) );
  OAI22XL U319 ( .A0(n404), .A1(n387), .B0(n405), .B1(n383), .Y(n178) );
  XNOR2X1 U320 ( .A(b[2]), .B(n365), .Y(n404) );
  OAI22XL U321 ( .A0(n405), .A1(n387), .B0(n406), .B1(n383), .Y(n177) );
  XNOR2X1 U322 ( .A(b[3]), .B(n365), .Y(n405) );
  OAI22XL U323 ( .A0(n406), .A1(n387), .B0(n407), .B1(n383), .Y(n176) );
  XNOR2X1 U324 ( .A(b[4]), .B(n365), .Y(n406) );
  OAI22XL U325 ( .A0(n407), .A1(n387), .B0(n408), .B1(n383), .Y(n175) );
  XNOR2X1 U326 ( .A(b[5]), .B(n365), .Y(n407) );
  OAI22XL U327 ( .A0(n408), .A1(n387), .B0(n409), .B1(n383), .Y(n174) );
  XNOR2X1 U328 ( .A(b[6]), .B(n365), .Y(n408) );
  OAI22XL U329 ( .A0(n409), .A1(n387), .B0(n410), .B1(n383), .Y(n173) );
  XNOR2X1 U330 ( .A(b[7]), .B(n365), .Y(n409) );
  OAI22XL U331 ( .A0(n410), .A1(n387), .B0(n411), .B1(n383), .Y(n172) );
  XNOR2X1 U332 ( .A(b[8]), .B(n365), .Y(n410) );
  OAI2BB2XL U333 ( .B0(n411), .B1(n387), .A0N(n388), .A1N(a[0]), .Y(n171) );
  XNOR2X1 U334 ( .A(b[10]), .B(n382), .Y(n388) );
  XNOR2X1 U335 ( .A(b[9]), .B(n365), .Y(n411) );
  NOR2X1 U336 ( .A(n357), .B(n376), .Y(n169) );
  OAI22XL U337 ( .A0(n413), .A1(n356), .B0(n357), .B1(n415), .Y(n168) );
  XNOR2X1 U338 ( .A(n366), .B(n364), .Y(n413) );
  OAI22XL U339 ( .A0(n415), .A1(n356), .B0(n357), .B1(n416), .Y(n167) );
  XNOR2X1 U340 ( .A(b[1]), .B(n366), .Y(n415) );
  OAI22XL U341 ( .A0(n416), .A1(n356), .B0(n357), .B1(n417), .Y(n166) );
  XNOR2X1 U342 ( .A(b[2]), .B(n366), .Y(n416) );
  OAI22XL U343 ( .A0(n417), .A1(n356), .B0(n357), .B1(n418), .Y(n165) );
  XNOR2X1 U344 ( .A(b[3]), .B(n366), .Y(n417) );
  OAI22XL U345 ( .A0(n418), .A1(n356), .B0(n357), .B1(n419), .Y(n164) );
  XNOR2X1 U346 ( .A(b[4]), .B(n366), .Y(n418) );
  OAI22XL U347 ( .A0(n419), .A1(n356), .B0(n357), .B1(n420), .Y(n163) );
  XNOR2X1 U348 ( .A(b[5]), .B(n366), .Y(n419) );
  OAI22XL U349 ( .A0(n420), .A1(n356), .B0(n357), .B1(n421), .Y(n162) );
  XNOR2X1 U350 ( .A(b[6]), .B(n366), .Y(n420) );
  OAI22XL U351 ( .A0(n421), .A1(n356), .B0(n357), .B1(n422), .Y(n161) );
  XNOR2X1 U352 ( .A(b[7]), .B(n366), .Y(n421) );
  OAI22XL U353 ( .A0(n422), .A1(n356), .B0(n357), .B1(n423), .Y(n160) );
  XNOR2X1 U354 ( .A(b[8]), .B(n366), .Y(n422) );
  OAI22XL U355 ( .A0(n423), .A1(n356), .B0(n357), .B1(n424), .Y(n159) );
  XNOR2X1 U356 ( .A(b[9]), .B(n366), .Y(n423) );
  AO21X1 U357 ( .A0(n356), .A1(n357), .B0(n424), .Y(n158) );
  XNOR2X1 U358 ( .A(b[10]), .B(n366), .Y(n424) );
  NOR2X1 U359 ( .A(n359), .B(n376), .Y(n157) );
  OAI22XL U360 ( .A0(n425), .A1(n358), .B0(n359), .B1(n426), .Y(n156) );
  XNOR2X1 U361 ( .A(n367), .B(n364), .Y(n425) );
  OAI22XL U362 ( .A0(n426), .A1(n358), .B0(n359), .B1(n427), .Y(n155) );
  XNOR2X1 U363 ( .A(b[1]), .B(n367), .Y(n426) );
  OAI22XL U364 ( .A0(n427), .A1(n358), .B0(n359), .B1(n428), .Y(n154) );
  XNOR2X1 U365 ( .A(b[2]), .B(n367), .Y(n427) );
  OAI22XL U366 ( .A0(n428), .A1(n358), .B0(n359), .B1(n429), .Y(n153) );
  XNOR2X1 U367 ( .A(b[3]), .B(n367), .Y(n428) );
  OAI22XL U368 ( .A0(n429), .A1(n358), .B0(n359), .B1(n430), .Y(n152) );
  XNOR2X1 U369 ( .A(b[4]), .B(n367), .Y(n429) );
  OAI22XL U370 ( .A0(n430), .A1(n358), .B0(n359), .B1(n431), .Y(n151) );
  XNOR2X1 U371 ( .A(b[5]), .B(n367), .Y(n430) );
  OAI22XL U372 ( .A0(n431), .A1(n358), .B0(n359), .B1(n432), .Y(n150) );
  XNOR2X1 U373 ( .A(b[6]), .B(n367), .Y(n431) );
  OAI22XL U374 ( .A0(n432), .A1(n358), .B0(n359), .B1(n433), .Y(n149) );
  XNOR2X1 U375 ( .A(b[7]), .B(n367), .Y(n432) );
  OAI22XL U376 ( .A0(n433), .A1(n358), .B0(n359), .B1(n395), .Y(n148) );
  XNOR2X1 U377 ( .A(b[9]), .B(n367), .Y(n395) );
  XNOR2X1 U378 ( .A(b[8]), .B(n367), .Y(n433) );
  AO21X1 U379 ( .A0(n358), .A1(n359), .B0(n394), .Y(n147) );
  XNOR2X1 U380 ( .A(b[10]), .B(n367), .Y(n394) );
  NOR2X1 U381 ( .A(n361), .B(n376), .Y(n146) );
  OAI22XL U382 ( .A0(n434), .A1(n360), .B0(n361), .B1(n435), .Y(n145) );
  XNOR2X1 U383 ( .A(n368), .B(n364), .Y(n434) );
  OAI22XL U384 ( .A0(n435), .A1(n360), .B0(n361), .B1(n436), .Y(n144) );
  XNOR2X1 U385 ( .A(b[1]), .B(n368), .Y(n435) );
  OAI22XL U386 ( .A0(n436), .A1(n360), .B0(n361), .B1(n437), .Y(n143) );
  XNOR2X1 U387 ( .A(b[2]), .B(n368), .Y(n436) );
  OAI22XL U388 ( .A0(n437), .A1(n360), .B0(n361), .B1(n438), .Y(n142) );
  XNOR2X1 U389 ( .A(b[3]), .B(n368), .Y(n437) );
  OAI22XL U390 ( .A0(n438), .A1(n360), .B0(n361), .B1(n389), .Y(n141) );
  XNOR2X1 U391 ( .A(b[5]), .B(n368), .Y(n389) );
  XNOR2X1 U392 ( .A(b[4]), .B(n368), .Y(n438) );
  OAI22XL U393 ( .A0(n392), .A1(n360), .B0(n361), .B1(n439), .Y(n140) );
  XNOR2X1 U394 ( .A(b[6]), .B(n368), .Y(n392) );
  OAI22XL U395 ( .A0(n439), .A1(n360), .B0(n361), .B1(n440), .Y(n139) );
  XNOR2X1 U396 ( .A(b[7]), .B(n368), .Y(n439) );
  OAI22XL U397 ( .A0(n440), .A1(n360), .B0(n361), .B1(n398), .Y(n138) );
  XNOR2X1 U398 ( .A(b[9]), .B(n368), .Y(n398) );
  XNOR2X1 U399 ( .A(b[8]), .B(n368), .Y(n440) );
  AO21X1 U400 ( .A0(n360), .A1(n361), .B0(n397), .Y(n137) );
  XNOR2X1 U401 ( .A(b[10]), .B(n368), .Y(n397) );
  NOR2X1 U402 ( .A(n363), .B(n376), .Y(n136) );
  OAI22XL U403 ( .A0(n441), .A1(n362), .B0(n363), .B1(n442), .Y(n135) );
  XNOR2X1 U404 ( .A(n369), .B(n364), .Y(n441) );
  OAI22XL U405 ( .A0(n442), .A1(n362), .B0(n363), .B1(n443), .Y(n134) );
  XNOR2X1 U406 ( .A(b[1]), .B(n369), .Y(n442) );
  OAI22XL U407 ( .A0(n443), .A1(n362), .B0(n363), .B1(n444), .Y(n133) );
  XNOR2X1 U408 ( .A(b[2]), .B(n369), .Y(n443) );
  OAI22XL U409 ( .A0(n444), .A1(n362), .B0(n363), .B1(n445), .Y(n132) );
  XNOR2X1 U410 ( .A(b[3]), .B(n369), .Y(n444) );
  OAI22XL U411 ( .A0(n445), .A1(n362), .B0(n363), .B1(n446), .Y(n131) );
  XNOR2X1 U412 ( .A(b[4]), .B(n369), .Y(n445) );
  OAI22XL U413 ( .A0(n446), .A1(n362), .B0(n363), .B1(n447), .Y(n130) );
  XNOR2X1 U414 ( .A(b[5]), .B(n369), .Y(n446) );
  OAI22XL U415 ( .A0(n447), .A1(n362), .B0(n363), .B1(n448), .Y(n129) );
  XNOR2X1 U416 ( .A(b[6]), .B(n369), .Y(n447) );
  OAI22XL U417 ( .A0(n448), .A1(n362), .B0(n363), .B1(n449), .Y(n128) );
  XNOR2X1 U418 ( .A(b[7]), .B(n369), .Y(n448) );
  OAI22XL U419 ( .A0(n449), .A1(n362), .B0(n363), .B1(n401), .Y(n127) );
  XNOR2X1 U420 ( .A(b[9]), .B(n369), .Y(n401) );
  XNOR2X1 U421 ( .A(b[8]), .B(n369), .Y(n449) );
  AO21X1 U422 ( .A0(n362), .A1(n363), .B0(n400), .Y(n126) );
  XNOR2X1 U423 ( .A(b[10]), .B(n369), .Y(n400) );
  NOR2X1 U424 ( .A(n450), .B(n376), .Y(n125) );
  NOR2X1 U425 ( .A(n450), .B(n451), .Y(n123) );
  XNOR2X1 U426 ( .A(b[2]), .B(n370), .Y(n451) );
  NOR2X1 U427 ( .A(n450), .B(n452), .Y(n122) );
  XNOR2X1 U428 ( .A(b[3]), .B(n370), .Y(n452) );
  NOR2X1 U429 ( .A(n450), .B(n453), .Y(n121) );
  XNOR2X1 U430 ( .A(b[4]), .B(n370), .Y(n453) );
  NOR2X1 U431 ( .A(n450), .B(n454), .Y(n120) );
  XNOR2X1 U432 ( .A(b[5]), .B(n370), .Y(n454) );
  NOR2X1 U433 ( .A(n450), .B(n455), .Y(n119) );
  XNOR2X1 U434 ( .A(b[6]), .B(n370), .Y(n455) );
  NOR2X1 U435 ( .A(n450), .B(n456), .Y(n118) );
  XNOR2X1 U436 ( .A(b[7]), .B(n370), .Y(n456) );
  NOR2X1 U437 ( .A(n450), .B(n457), .Y(n117) );
  XNOR2X1 U438 ( .A(b[8]), .B(n370), .Y(n457) );
  NOR2X1 U439 ( .A(n450), .B(n458), .Y(n116) );
  XNOR2X1 U440 ( .A(b[9]), .B(n370), .Y(n458) );
  NAND2X1 U441 ( .A(n459), .B(n377), .Y(n26) );
  XOR2X1 U442 ( .A(b[10]), .B(n370), .Y(n459) );
  OAI21XL U443 ( .A0(n364), .A1(n382), .B0(n387), .Y(n114) );
  OAI32X1 U444 ( .A0(n381), .A1(n364), .A2(n357), .B0(n381), .B1(n356), .Y(
        n113) );
  XNOR2X1 U445 ( .A(n381), .B(a[2]), .Y(n460) );
  OAI32X1 U446 ( .A0(n380), .A1(n364), .A2(n359), .B0(n380), .B1(n358), .Y(
        n112) );
  XNOR2X1 U447 ( .A(n380), .B(a[4]), .Y(n461) );
  OAI32X1 U448 ( .A0(n379), .A1(n364), .A2(n361), .B0(n379), .B1(n360), .Y(
        n111) );
  XNOR2X1 U449 ( .A(n379), .B(a[6]), .Y(n462) );
  OAI32X1 U450 ( .A0(n378), .A1(n364), .A2(n363), .B0(n378), .B1(n362), .Y(
        n110) );
  XNOR2X1 U451 ( .A(n378), .B(a[8]), .Y(n463) );
  AND3X1 U452 ( .A(n370), .B(n376), .C(n377), .Y(n109) );
endmodule


module geofence_DW01_sub_9 ( A, B, CI, DIFF, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [24:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n22), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n20), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n21), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n19), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_20 ( .A(A[20]), .B(n3), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n4), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n5), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n15), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n16), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n18), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_11 ( .A(A[11]), .B(n12), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n14), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_14 ( .A(A[14]), .B(n9), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n10), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n11), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n7), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n8), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  XOR3X1 U2_23 ( .A(A[23]), .B(n2), .C(carry[23]), .Y(DIFF[23]) );
  CLKINVX1 U1 ( .A(B[21]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[15]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[16]), .Y(n7) );
  CLKINVX1 U4 ( .A(B[17]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[12]), .Y(n11) );
  CLKINVX1 U6 ( .A(B[13]), .Y(n10) );
  CLKINVX1 U7 ( .A(B[14]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[9]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[10]), .Y(n13) );
  CLKINVX1 U10 ( .A(B[11]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n18) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n17) );
  CLKINVX1 U13 ( .A(B[7]), .Y(n16) );
  CLKINVX1 U14 ( .A(B[8]), .Y(n15) );
  CLKINVX1 U15 ( .A(B[18]), .Y(n5) );
  CLKINVX1 U16 ( .A(B[19]), .Y(n4) );
  CLKINVX1 U17 ( .A(B[20]), .Y(n3) );
  CLKINVX1 U18 ( .A(B[4]), .Y(n19) );
  CLKINVX1 U19 ( .A(B[2]), .Y(n21) );
  XNOR2X1 U20 ( .A(n23), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U21 ( .A(B[3]), .Y(n20) );
  NAND2X1 U22 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U23 ( .A(B[1]), .Y(n22) );
  CLKINVX1 U24 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n23) );
endmodule


module geofence_DW_mult_tc_1 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n113, n114, n115, n116, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206;

  ADDFXL U2 ( .A(n82), .B(a[10]), .CI(n2), .CO(n1), .S(product[20]) );
  ADDFXL U3 ( .A(n20), .B(n83), .CI(n3), .CO(n2), .S(product[19]) );
  ADDFXL U4 ( .A(n22), .B(n21), .CI(n4), .CO(n3), .S(product[18]) );
  ADDFXL U5 ( .A(n23), .B(n25), .CI(n5), .CO(n4), .S(product[17]) );
  ADDFXL U6 ( .A(n28), .B(n26), .CI(n6), .CO(n5), .S(product[16]) );
  ADDFXL U7 ( .A(n29), .B(n31), .CI(n7), .CO(n6), .S(product[15]) );
  ADDFXL U8 ( .A(n32), .B(n36), .CI(n8), .CO(n7), .S(product[14]) );
  ADDFXL U9 ( .A(n37), .B(n41), .CI(n9), .CO(n8), .S(product[13]) );
  ADDFXL U10 ( .A(n42), .B(n47), .CI(n10), .CO(n9), .S(product[12]) );
  ADDFXL U11 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[11]) );
  ADDFXL U12 ( .A(n55), .B(n61), .CI(n12), .CO(n11), .S(product[10]) );
  ADDFXL U13 ( .A(n62), .B(n66), .CI(n13), .CO(n12), .S(product[9]) );
  ADDFXL U14 ( .A(n70), .B(n67), .CI(n14), .CO(n13), .S(product[8]) );
  ADDFXL U15 ( .A(n71), .B(n74), .CI(n15), .CO(n14), .S(product[7]) );
  ADDFXL U16 ( .A(n75), .B(n77), .CI(n16), .CO(n15), .S(product[6]) );
  ADDFXL U17 ( .A(n79), .B(n80), .CI(n17), .CO(n16), .S(product[5]) );
  ADDFXL U18 ( .A(n81), .B(n133), .CI(n18), .CO(n17), .S(product[4]) );
  ADDHXL U19 ( .A(n135), .B(n19), .CO(n18), .S(product[3]) );
  ADDHXL U20 ( .A(a[1]), .B(n136), .CO(n19), .S(product[2]) );
  ADDFXL U21 ( .A(n92), .B(a[9]), .CI(n84), .CO(n20), .S(n21) );
  ADDFXL U22 ( .A(n85), .B(n93), .CI(n24), .CO(n22), .S(n23) );
  CMPR42X1 U23 ( .A(a[8]), .B(n101), .C(n94), .D(n86), .ICI(n27), .S(n26), 
        .ICO(n24), .CO(n25) );
  CMPR42X1 U24 ( .A(n102), .B(n95), .C(n87), .D(n33), .ICI(n30), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n103), .B(n88), .C(n34), .D(n38), .ICI(n35), .S(n32), 
        .ICO(n30), .CO(n31) );
  ADDFXL U26 ( .A(n109), .B(a[7]), .CI(n96), .CO(n33), .S(n34) );
  CMPR42X1 U27 ( .A(n104), .B(n43), .C(n44), .D(n39), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  ADDFXL U28 ( .A(n97), .B(n110), .CI(n89), .CO(n38), .S(n39) );
  CMPR42X1 U29 ( .A(n98), .B(n51), .C(n45), .D(n49), .ICI(n46), .S(n42), .ICO(
        n40), .CO(n41) );
  CMPR42X1 U30 ( .A(a[6]), .B(n116), .C(n111), .D(n105), .ICI(n90), .S(n45), 
        .ICO(n43), .CO(n44) );
  CMPR42X1 U31 ( .A(n58), .B(n52), .C(n56), .D(n53), .ICI(n50), .S(n48), .ICO(
        n46), .CO(n47) );
  ADDFXL U32 ( .A(n99), .B(n106), .CI(n91), .CO(n49), .S(n50) );
  CMPR42X1 U35 ( .A(n118), .B(n63), .C(n59), .D(n60), .ICI(n57), .S(n55), 
        .ICO(n53), .CO(n54) );
  ADDFXL U36 ( .A(n100), .B(n122), .CI(n113), .CO(n56), .S(n57) );
  ADDHXL U37 ( .A(a[5]), .B(n107), .CO(n58), .S(n59) );
  CMPR42X1 U38 ( .A(n123), .B(n119), .C(n68), .D(n65), .ICI(n64), .S(n62), 
        .ICO(n60), .CO(n61) );
  ADDHXL U39 ( .A(n114), .B(n108), .CO(n63), .S(n64) );
  CMPR42X1 U40 ( .A(n127), .B(n115), .C(n124), .D(n72), .ICI(n69), .S(n67), 
        .ICO(n65), .CO(n66) );
  ADDHXL U41 ( .A(a[4]), .B(n120), .CO(n68), .S(n69) );
  ADDFXL U42 ( .A(n76), .B(n125), .CI(n73), .CO(n70), .S(n71) );
  ADDHXL U43 ( .A(n128), .B(n121), .CO(n72), .S(n73) );
  ADDFXL U44 ( .A(n126), .B(n129), .CI(n78), .CO(n74), .S(n75) );
  ADDHXL U45 ( .A(a[3]), .B(n131), .CO(n76), .S(n77) );
  ADDHXL U46 ( .A(n132), .B(n130), .CO(n78), .S(n79) );
  ADDHXL U47 ( .A(a[2]), .B(n134), .CO(n80), .S(n81) );
  CLKBUFX3 U126 ( .A(b[10]), .Y(n194) );
  INVX3 U127 ( .A(b[3]), .Y(n201) );
  INVX3 U128 ( .A(b[4]), .Y(n200) );
  INVX3 U129 ( .A(b[6]), .Y(n198) );
  INVX3 U130 ( .A(b[7]), .Y(n197) );
  INVX3 U131 ( .A(b[0]), .Y(n204) );
  INVX3 U132 ( .A(b[1]), .Y(n203) );
  INVX3 U133 ( .A(b[2]), .Y(n202) );
  INVX3 U134 ( .A(b[5]), .Y(n199) );
  INVX3 U135 ( .A(b[9]), .Y(n195) );
  INVX3 U136 ( .A(b[8]), .Y(n196) );
  CLKBUFX3 U137 ( .A(b[0]), .Y(product[0]) );
  CLKINVX1 U138 ( .A(n1), .Y(product[21]) );
  NOR2X1 U139 ( .A(n203), .B(n195), .Y(n99) );
  NOR2X1 U140 ( .A(n195), .B(n202), .Y(n98) );
  NOR2X1 U141 ( .A(n195), .B(n201), .Y(n97) );
  NOR2X1 U142 ( .A(n195), .B(n200), .Y(n96) );
  NOR2X1 U143 ( .A(n195), .B(n199), .Y(n95) );
  NOR2X1 U144 ( .A(n195), .B(n198), .Y(n94) );
  NOR2X1 U145 ( .A(n195), .B(n197), .Y(n93) );
  NOR2X1 U146 ( .A(n195), .B(n196), .Y(n92) );
  NAND2X1 U147 ( .A(n194), .B(b[0]), .Y(n91) );
  NAND2X1 U148 ( .A(n194), .B(b[1]), .Y(n90) );
  NAND2X1 U149 ( .A(n194), .B(b[2]), .Y(n89) );
  NAND2X1 U150 ( .A(n194), .B(b[3]), .Y(n88) );
  NAND2X1 U151 ( .A(n194), .B(b[4]), .Y(n87) );
  NAND2X1 U152 ( .A(n194), .B(b[5]), .Y(n86) );
  NAND2X1 U153 ( .A(n194), .B(b[6]), .Y(n85) );
  NAND2X1 U154 ( .A(n194), .B(b[7]), .Y(n84) );
  NAND2X1 U155 ( .A(n194), .B(b[8]), .Y(n83) );
  NAND2X1 U156 ( .A(n194), .B(b[9]), .Y(n82) );
  XNOR2X1 U157 ( .A(n205), .B(n206), .Y(n52) );
  NAND2X1 U158 ( .A(n206), .B(n205), .Y(n51) );
  NAND2X1 U159 ( .A(b[6]), .B(b[4]), .Y(n205) );
  NAND2X1 U160 ( .A(b[7]), .B(b[3]), .Y(n206) );
  NOR2X1 U161 ( .A(n203), .B(n204), .Y(n136) );
  NOR2X1 U162 ( .A(n202), .B(n204), .Y(n135) );
  NOR2X1 U163 ( .A(n203), .B(n202), .Y(n134) );
  NOR2X1 U164 ( .A(n201), .B(n204), .Y(n133) );
  NOR2X1 U165 ( .A(n203), .B(n201), .Y(n132) );
  NOR2X1 U166 ( .A(n202), .B(n201), .Y(n131) );
  NOR2X1 U167 ( .A(n200), .B(n204), .Y(n130) );
  NOR2X1 U168 ( .A(n203), .B(n200), .Y(n129) );
  NOR2X1 U169 ( .A(n202), .B(n200), .Y(n128) );
  NOR2X1 U170 ( .A(n201), .B(n200), .Y(n127) );
  NOR2X1 U171 ( .A(n199), .B(n204), .Y(n126) );
  NOR2X1 U172 ( .A(n203), .B(n199), .Y(n125) );
  NOR2X1 U173 ( .A(n202), .B(n199), .Y(n124) );
  NOR2X1 U174 ( .A(n201), .B(n199), .Y(n123) );
  NOR2X1 U175 ( .A(n200), .B(n199), .Y(n122) );
  NOR2X1 U176 ( .A(n198), .B(n204), .Y(n121) );
  NOR2X1 U177 ( .A(n203), .B(n198), .Y(n120) );
  NOR2X1 U178 ( .A(n202), .B(n198), .Y(n119) );
  NOR2X1 U179 ( .A(n201), .B(n198), .Y(n118) );
  NOR2X1 U180 ( .A(n199), .B(n198), .Y(n116) );
  NOR2X1 U181 ( .A(n197), .B(n204), .Y(n115) );
  NOR2X1 U182 ( .A(n203), .B(n197), .Y(n114) );
  NOR2X1 U183 ( .A(n202), .B(n197), .Y(n113) );
  NOR2X1 U184 ( .A(n200), .B(n197), .Y(n111) );
  NOR2X1 U185 ( .A(n199), .B(n197), .Y(n110) );
  NOR2X1 U186 ( .A(n198), .B(n197), .Y(n109) );
  NOR2X1 U187 ( .A(n196), .B(n204), .Y(n108) );
  NOR2X1 U188 ( .A(n203), .B(n196), .Y(n107) );
  NOR2X1 U189 ( .A(n202), .B(n196), .Y(n106) );
  NOR2X1 U190 ( .A(n201), .B(n196), .Y(n105) );
  NOR2X1 U191 ( .A(n200), .B(n196), .Y(n104) );
  NOR2X1 U192 ( .A(n199), .B(n196), .Y(n103) );
  NOR2X1 U193 ( .A(n198), .B(n196), .Y(n102) );
  NOR2X1 U194 ( .A(n197), .B(n196), .Y(n101) );
  NOR2X1 U195 ( .A(n195), .B(n204), .Y(n100) );
endmodule


module geofence_DW_mult_tc_0 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n113, n114, n115, n116, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206;

  ADDFXL U2 ( .A(n82), .B(a[10]), .CI(n2), .CO(n1), .S(product[20]) );
  ADDFXL U3 ( .A(n20), .B(n83), .CI(n3), .CO(n2), .S(product[19]) );
  ADDFXL U4 ( .A(n22), .B(n21), .CI(n4), .CO(n3), .S(product[18]) );
  ADDFXL U5 ( .A(n23), .B(n25), .CI(n5), .CO(n4), .S(product[17]) );
  ADDFXL U6 ( .A(n28), .B(n26), .CI(n6), .CO(n5), .S(product[16]) );
  ADDFXL U7 ( .A(n29), .B(n31), .CI(n7), .CO(n6), .S(product[15]) );
  ADDFXL U8 ( .A(n32), .B(n36), .CI(n8), .CO(n7), .S(product[14]) );
  ADDFXL U9 ( .A(n37), .B(n41), .CI(n9), .CO(n8), .S(product[13]) );
  ADDFXL U10 ( .A(n42), .B(n47), .CI(n10), .CO(n9), .S(product[12]) );
  ADDFXL U11 ( .A(n48), .B(n54), .CI(n11), .CO(n10), .S(product[11]) );
  ADDFXL U12 ( .A(n55), .B(n61), .CI(n12), .CO(n11), .S(product[10]) );
  ADDFXL U13 ( .A(n62), .B(n66), .CI(n13), .CO(n12), .S(product[9]) );
  ADDFXL U14 ( .A(n70), .B(n67), .CI(n14), .CO(n13), .S(product[8]) );
  ADDFXL U15 ( .A(n71), .B(n74), .CI(n15), .CO(n14), .S(product[7]) );
  ADDFXL U16 ( .A(n75), .B(n77), .CI(n16), .CO(n15), .S(product[6]) );
  ADDFXL U17 ( .A(n79), .B(n80), .CI(n17), .CO(n16), .S(product[5]) );
  ADDFXL U18 ( .A(n81), .B(n133), .CI(n18), .CO(n17), .S(product[4]) );
  ADDHXL U19 ( .A(n135), .B(n19), .CO(n18), .S(product[3]) );
  ADDHXL U20 ( .A(a[1]), .B(n136), .CO(n19), .S(product[2]) );
  ADDFXL U21 ( .A(n92), .B(a[9]), .CI(n84), .CO(n20), .S(n21) );
  ADDFXL U22 ( .A(n85), .B(n93), .CI(n24), .CO(n22), .S(n23) );
  CMPR42X1 U23 ( .A(a[8]), .B(n101), .C(n94), .D(n86), .ICI(n27), .S(n26), 
        .ICO(n24), .CO(n25) );
  CMPR42X1 U24 ( .A(n102), .B(n95), .C(n87), .D(n33), .ICI(n30), .S(n29), 
        .ICO(n27), .CO(n28) );
  CMPR42X1 U25 ( .A(n103), .B(n88), .C(n34), .D(n38), .ICI(n35), .S(n32), 
        .ICO(n30), .CO(n31) );
  ADDFXL U26 ( .A(n109), .B(a[7]), .CI(n96), .CO(n33), .S(n34) );
  CMPR42X1 U27 ( .A(n104), .B(n43), .C(n44), .D(n39), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  ADDFXL U28 ( .A(n97), .B(n110), .CI(n89), .CO(n38), .S(n39) );
  CMPR42X1 U29 ( .A(n98), .B(n51), .C(n45), .D(n49), .ICI(n46), .S(n42), .ICO(
        n40), .CO(n41) );
  CMPR42X1 U30 ( .A(a[6]), .B(n116), .C(n111), .D(n105), .ICI(n90), .S(n45), 
        .ICO(n43), .CO(n44) );
  CMPR42X1 U31 ( .A(n58), .B(n52), .C(n56), .D(n53), .ICI(n50), .S(n48), .ICO(
        n46), .CO(n47) );
  ADDFXL U32 ( .A(n99), .B(n106), .CI(n91), .CO(n49), .S(n50) );
  CMPR42X1 U35 ( .A(n118), .B(n63), .C(n59), .D(n60), .ICI(n57), .S(n55), 
        .ICO(n53), .CO(n54) );
  ADDFXL U36 ( .A(n100), .B(n122), .CI(n113), .CO(n56), .S(n57) );
  ADDHXL U37 ( .A(a[5]), .B(n107), .CO(n58), .S(n59) );
  CMPR42X1 U38 ( .A(n123), .B(n119), .C(n68), .D(n65), .ICI(n64), .S(n62), 
        .ICO(n60), .CO(n61) );
  ADDHXL U39 ( .A(n114), .B(n108), .CO(n63), .S(n64) );
  CMPR42X1 U40 ( .A(n127), .B(n115), .C(n124), .D(n72), .ICI(n69), .S(n67), 
        .ICO(n65), .CO(n66) );
  ADDHXL U41 ( .A(a[4]), .B(n120), .CO(n68), .S(n69) );
  ADDFXL U42 ( .A(n76), .B(n125), .CI(n73), .CO(n70), .S(n71) );
  ADDHXL U43 ( .A(n128), .B(n121), .CO(n72), .S(n73) );
  ADDFXL U44 ( .A(n126), .B(n129), .CI(n78), .CO(n74), .S(n75) );
  ADDHXL U45 ( .A(a[3]), .B(n131), .CO(n76), .S(n77) );
  ADDHXL U46 ( .A(n132), .B(n130), .CO(n78), .S(n79) );
  ADDHXL U47 ( .A(a[2]), .B(n134), .CO(n80), .S(n81) );
  CLKBUFX3 U126 ( .A(b[10]), .Y(n194) );
  INVX3 U127 ( .A(b[3]), .Y(n201) );
  INVX3 U128 ( .A(b[4]), .Y(n200) );
  INVX3 U129 ( .A(b[6]), .Y(n198) );
  INVX3 U130 ( .A(b[0]), .Y(n204) );
  INVX3 U131 ( .A(b[1]), .Y(n203) );
  INVX3 U132 ( .A(b[2]), .Y(n202) );
  INVX3 U133 ( .A(b[5]), .Y(n199) );
  INVX3 U134 ( .A(b[7]), .Y(n197) );
  INVX3 U135 ( .A(b[9]), .Y(n195) );
  INVX3 U136 ( .A(b[8]), .Y(n196) );
  CLKBUFX3 U137 ( .A(b[0]), .Y(product[0]) );
  CLKINVX1 U138 ( .A(n1), .Y(product[21]) );
  NOR2X1 U139 ( .A(n203), .B(n195), .Y(n99) );
  NOR2X1 U140 ( .A(n195), .B(n202), .Y(n98) );
  NOR2X1 U141 ( .A(n195), .B(n201), .Y(n97) );
  NOR2X1 U142 ( .A(n195), .B(n200), .Y(n96) );
  NOR2X1 U143 ( .A(n195), .B(n199), .Y(n95) );
  NOR2X1 U144 ( .A(n195), .B(n198), .Y(n94) );
  NOR2X1 U145 ( .A(n195), .B(n197), .Y(n93) );
  NOR2X1 U146 ( .A(n195), .B(n196), .Y(n92) );
  NAND2X1 U147 ( .A(n194), .B(b[0]), .Y(n91) );
  NAND2X1 U148 ( .A(n194), .B(b[1]), .Y(n90) );
  NAND2X1 U149 ( .A(n194), .B(b[2]), .Y(n89) );
  NAND2X1 U150 ( .A(n194), .B(b[3]), .Y(n88) );
  NAND2X1 U151 ( .A(n194), .B(b[4]), .Y(n87) );
  NAND2X1 U152 ( .A(n194), .B(b[5]), .Y(n86) );
  NAND2X1 U153 ( .A(n194), .B(b[6]), .Y(n85) );
  NAND2X1 U154 ( .A(n194), .B(b[7]), .Y(n84) );
  NAND2X1 U155 ( .A(n194), .B(b[8]), .Y(n83) );
  NAND2X1 U156 ( .A(n194), .B(b[9]), .Y(n82) );
  XNOR2X1 U157 ( .A(n205), .B(n206), .Y(n52) );
  NAND2X1 U158 ( .A(n206), .B(n205), .Y(n51) );
  NAND2X1 U159 ( .A(b[6]), .B(b[4]), .Y(n205) );
  NAND2X1 U160 ( .A(b[7]), .B(b[3]), .Y(n206) );
  NOR2X1 U161 ( .A(n203), .B(n204), .Y(n136) );
  NOR2X1 U162 ( .A(n202), .B(n204), .Y(n135) );
  NOR2X1 U163 ( .A(n203), .B(n202), .Y(n134) );
  NOR2X1 U164 ( .A(n201), .B(n204), .Y(n133) );
  NOR2X1 U165 ( .A(n203), .B(n201), .Y(n132) );
  NOR2X1 U166 ( .A(n202), .B(n201), .Y(n131) );
  NOR2X1 U167 ( .A(n200), .B(n204), .Y(n130) );
  NOR2X1 U168 ( .A(n203), .B(n200), .Y(n129) );
  NOR2X1 U169 ( .A(n202), .B(n200), .Y(n128) );
  NOR2X1 U170 ( .A(n201), .B(n200), .Y(n127) );
  NOR2X1 U171 ( .A(n199), .B(n204), .Y(n126) );
  NOR2X1 U172 ( .A(n203), .B(n199), .Y(n125) );
  NOR2X1 U173 ( .A(n202), .B(n199), .Y(n124) );
  NOR2X1 U174 ( .A(n201), .B(n199), .Y(n123) );
  NOR2X1 U175 ( .A(n200), .B(n199), .Y(n122) );
  NOR2X1 U176 ( .A(n198), .B(n204), .Y(n121) );
  NOR2X1 U177 ( .A(n203), .B(n198), .Y(n120) );
  NOR2X1 U178 ( .A(n202), .B(n198), .Y(n119) );
  NOR2X1 U179 ( .A(n201), .B(n198), .Y(n118) );
  NOR2X1 U180 ( .A(n199), .B(n198), .Y(n116) );
  NOR2X1 U181 ( .A(n197), .B(n204), .Y(n115) );
  NOR2X1 U182 ( .A(n203), .B(n197), .Y(n114) );
  NOR2X1 U183 ( .A(n202), .B(n197), .Y(n113) );
  NOR2X1 U184 ( .A(n200), .B(n197), .Y(n111) );
  NOR2X1 U185 ( .A(n199), .B(n197), .Y(n110) );
  NOR2X1 U186 ( .A(n198), .B(n197), .Y(n109) );
  NOR2X1 U187 ( .A(n196), .B(n204), .Y(n108) );
  NOR2X1 U188 ( .A(n203), .B(n196), .Y(n107) );
  NOR2X1 U189 ( .A(n202), .B(n196), .Y(n106) );
  NOR2X1 U190 ( .A(n201), .B(n196), .Y(n105) );
  NOR2X1 U191 ( .A(n200), .B(n196), .Y(n104) );
  NOR2X1 U192 ( .A(n199), .B(n196), .Y(n103) );
  NOR2X1 U193 ( .A(n198), .B(n196), .Y(n102) );
  NOR2X1 U194 ( .A(n197), .B(n196), .Y(n101) );
  NOR2X1 U195 ( .A(n195), .B(n204), .Y(n100) );
endmodule


module geofence_DW01_add_4 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [22:1] carry;

  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  AND2X2 U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XOR2XL U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
  XOR2X1 U3 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  AND2X2 U4 ( .A(B[0]), .B(A[0]), .Y(SUM[1]) );
endmodule


module geofence_DW_mult_uns_1 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n27, n28, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n149, n150, n151, n152,
         n153, n154, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547;

  ADDFXL U5 ( .A(n28), .B(n32), .CI(n5), .CO(n4), .S(product[22]) );
  ADDFXL U6 ( .A(n35), .B(n33), .CI(n6), .CO(n5), .S(product[21]) );
  ADDFXL U7 ( .A(n40), .B(n36), .CI(n7), .CO(n6), .S(product[20]) );
  ADDFXL U8 ( .A(n41), .B(n45), .CI(n8), .CO(n7), .S(product[19]) );
  ADDFXL U9 ( .A(n52), .B(n46), .CI(n9), .CO(n8), .S(product[18]) );
  ADDFXL U10 ( .A(n53), .B(n58), .CI(n10), .CO(n9), .S(product[17]) );
  ADDFXL U11 ( .A(n59), .B(n66), .CI(n11), .CO(n10), .S(product[16]) );
  ADDFXL U12 ( .A(n67), .B(n74), .CI(n12), .CO(n11), .S(product[15]) );
  ADDFXL U13 ( .A(n75), .B(n84), .CI(n13), .CO(n12), .S(product[14]) );
  ADDFXL U14 ( .A(n85), .B(n93), .CI(n14), .CO(n13), .S(product[13]) );
  ADDFXL U15 ( .A(n94), .B(n101), .CI(n15), .CO(n14), .S(product[12]) );
  ADDFXL U16 ( .A(n102), .B(n109), .CI(n16), .CO(n15), .S(product[11]) );
  ADDFXL U17 ( .A(n110), .B(n115), .CI(n17), .CO(n16), .S(product[10]) );
  ADDFXL U18 ( .A(n116), .B(n122), .CI(n18), .CO(n17), .S(product[9]) );
  ADDFXL U19 ( .A(n123), .B(n127), .CI(n19), .CO(n18), .S(product[8]) );
  ADDFXL U20 ( .A(n128), .B(n132), .CI(n20), .CO(n19), .S(product[7]) );
  ADDFXL U21 ( .A(n134), .B(n133), .CI(n21), .CO(n20), .S(product[6]) );
  ADDFXL U22 ( .A(n135), .B(n138), .CI(n22), .CO(n21), .S(product[5]) );
  ADDFXL U23 ( .A(n139), .B(n140), .CI(n23), .CO(n22), .S(product[4]) );
  ADDFXL U24 ( .A(n141), .B(n146), .CI(n24), .CO(n23), .S(product[3]) );
  ADDFXL U25 ( .A(n236), .B(n224), .CI(n25), .CO(n24), .S(product[2]) );
  ADDHXL U26 ( .A(n147), .B(n237), .CO(n25), .S(product[1]) );
  ADDFXL U28 ( .A(n156), .B(n30), .CI(n31), .CO(n27), .S(n28) );
  CMPR42X1 U30 ( .A(n452), .B(n149), .C(n169), .D(n157), .ICI(n34), .S(n33), 
        .ICO(n31), .CO(n32) );
  CMPR42X1 U31 ( .A(n38), .B(n170), .C(n158), .D(n42), .ICI(n39), .S(n36), 
        .ICO(n34), .CO(n35) );
  CMPR42X1 U33 ( .A(n171), .B(n159), .C(n43), .D(n47), .ICI(n44), .S(n41), 
        .ICO(n39), .CO(n40) );
  ADDFXL U34 ( .A(n150), .B(n451), .CI(n183), .CO(n42), .S(n43) );
  CMPR42X1 U35 ( .A(n184), .B(n54), .C(n55), .D(n48), .ICI(n51), .S(n46), 
        .ICO(n44), .CO(n45) );
  ADDFXL U36 ( .A(n172), .B(n50), .CI(n160), .CO(n47), .S(n48) );
  CMPR42X1 U38 ( .A(n161), .B(n60), .C(n56), .D(n61), .ICI(n57), .S(n53), 
        .ICO(n51), .CO(n52) );
  CMPR42X1 U39 ( .A(n450), .B(n151), .C(n197), .D(n173), .ICI(n185), .S(n56), 
        .ICO(n54), .CO(n55) );
  CMPR42X1 U40 ( .A(n68), .B(n71), .C(n62), .D(n69), .ICI(n65), .S(n59), .ICO(
        n57), .CO(n58) );
  CMPR42X1 U41 ( .A(n64), .B(n174), .C(n186), .D(n162), .ICI(n198), .S(n62), 
        .ICO(n60), .CO(n61) );
  CMPR42X1 U43 ( .A(n79), .B(n72), .C(n77), .D(n70), .ICI(n73), .S(n67), .ICO(
        n65), .CO(n66) );
  CMPR42X1 U44 ( .A(n175), .B(n199), .C(n187), .D(n163), .ICI(n76), .S(n70), 
        .ICO(n68), .CO(n69) );
  ADDFXL U45 ( .A(n152), .B(n449), .CI(n211), .CO(n71), .S(n72) );
  CMPR42X1 U46 ( .A(n80), .B(n89), .C(n87), .D(n78), .ICI(n83), .S(n75), .ICO(
        n73), .CO(n74) );
  CMPR42X1 U47 ( .A(n176), .B(n212), .C(n200), .D(n164), .ICI(n86), .S(n78), 
        .ICO(n76), .CO(n77) );
  ADDFXL U48 ( .A(n91), .B(n153), .CI(n188), .CO(n79), .S(n80) );
  CMPR42X1 U50 ( .A(n90), .B(n98), .C(n96), .D(n88), .ICI(n92), .S(n85), .ICO(
        n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n177), .B(n201), .C(n189), .D(n165), .ICI(n95), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U52 ( .A(n444), .B(n91), .CI(n213), .CO(n89), .S(n90) );
  CMPR42X1 U54 ( .A(n106), .B(n99), .C(n104), .D(n97), .ICI(n100), .S(n94), 
        .ICO(n92), .CO(n93) );
  CMPR42X1 U55 ( .A(n214), .B(n166), .C(n202), .D(n190), .ICI(n103), .S(n97), 
        .ICO(n95), .CO(n96) );
  ADDFXL U56 ( .A(n178), .B(n154), .CI(n226), .CO(n98), .S(n99) );
  CMPR42X1 U57 ( .A(n203), .B(n107), .C(n112), .D(n105), .ICI(n108), .S(n102), 
        .ICO(n100), .CO(n101) );
  CMPR42X1 U58 ( .A(n227), .B(n179), .C(n215), .D(n191), .ICI(n111), .S(n105), 
        .ICO(n103), .CO(n104) );
  ADDHXL U59 ( .A(n167), .B(n142), .CO(n106), .S(n107) );
  CMPR42X1 U60 ( .A(n204), .B(n119), .C(n113), .D(n117), .ICI(n114), .S(n110), 
        .ICO(n108), .CO(n109) );
  CMPR42X1 U61 ( .A(n168), .B(n192), .C(n228), .D(n216), .ICI(n180), .S(n113), 
        .ICO(n111), .CO(n112) );
  CMPR42X1 U62 ( .A(n229), .B(n120), .C(n121), .D(n124), .ICI(n118), .S(n116), 
        .ICO(n114), .CO(n115) );
  ADDFXL U63 ( .A(n193), .B(n205), .CI(n217), .CO(n117), .S(n118) );
  ADDHXL U64 ( .A(n181), .B(n143), .CO(n119), .S(n120) );
  CMPR42X1 U65 ( .A(n218), .B(n194), .C(n129), .D(n126), .ICI(n125), .S(n123), 
        .ICO(n121), .CO(n122) );
  ADDFXL U66 ( .A(n206), .B(n182), .CI(n230), .CO(n124), .S(n125) );
  CMPR42X1 U67 ( .A(n231), .B(n207), .C(n219), .D(n131), .ICI(n130), .S(n128), 
        .ICO(n126), .CO(n127) );
  ADDHXL U68 ( .A(n195), .B(n144), .CO(n129), .S(n130) );
  CMPR42X1 U69 ( .A(n196), .B(n232), .C(n220), .D(n208), .ICI(n136), .S(n133), 
        .ICO(n131), .CO(n132) );
  ADDFXL U70 ( .A(n221), .B(n233), .CI(n137), .CO(n134), .S(n135) );
  ADDHXL U71 ( .A(n209), .B(n145), .CO(n136), .S(n137) );
  ADDFXL U72 ( .A(n234), .B(n210), .CI(n222), .CO(n138), .S(n139) );
  ADDHXL U73 ( .A(n235), .B(n223), .CO(n140), .S(n141) );
  NAND2XL U322 ( .A(b[1]), .B(a[11]), .Y(n91) );
  NAND2XL U323 ( .A(b[4]), .B(a[11]), .Y(n64) );
  NAND2XL U324 ( .A(b[6]), .B(a[11]), .Y(n50) );
  CLKBUFX3 U325 ( .A(n475), .Y(n435) );
  XOR2X1 U326 ( .A(a[2]), .B(n444), .Y(n475) );
  INVX3 U327 ( .A(a[1]), .Y(n444) );
  CLKBUFX3 U328 ( .A(n477), .Y(n434) );
  NAND2X1 U329 ( .A(n435), .B(n543), .Y(n477) );
  INVX3 U330 ( .A(b[0]), .Y(n454) );
  NAND2X2 U331 ( .A(a[1]), .B(n455), .Y(n463) );
  INVX3 U332 ( .A(a[3]), .Y(n445) );
  INVX3 U333 ( .A(a[5]), .Y(n446) );
  INVX3 U334 ( .A(a[0]), .Y(n455) );
  CLKBUFX3 U335 ( .A(n489), .Y(n437) );
  XOR2X1 U336 ( .A(a[4]), .B(n445), .Y(n489) );
  CLKBUFX3 U337 ( .A(n491), .Y(n436) );
  NAND2X1 U338 ( .A(n437), .B(n544), .Y(n491) );
  INVX3 U339 ( .A(a[7]), .Y(n447) );
  CLKBUFX3 U340 ( .A(n503), .Y(n439) );
  XOR2X1 U341 ( .A(a[6]), .B(n446), .Y(n503) );
  CLKBUFX3 U342 ( .A(n505), .Y(n438) );
  NAND2X1 U343 ( .A(n439), .B(n545), .Y(n505) );
  CLKBUFX3 U344 ( .A(n462), .Y(n443) );
  XOR2X1 U345 ( .A(a[10]), .B(n448), .Y(n462) );
  INVX3 U346 ( .A(a[9]), .Y(n448) );
  CLKBUFX3 U347 ( .A(n517), .Y(n441) );
  XOR2X1 U348 ( .A(a[8]), .B(n447), .Y(n517) );
  CLKBUFX3 U349 ( .A(n519), .Y(n440) );
  NAND2X1 U350 ( .A(n441), .B(n546), .Y(n519) );
  INVX4 U351 ( .A(a[11]), .Y(n453) );
  CLKBUFX3 U352 ( .A(n461), .Y(n442) );
  NAND2X1 U353 ( .A(n443), .B(n547), .Y(n461) );
  CLKINVX1 U354 ( .A(n91), .Y(n449) );
  CLKINVX1 U355 ( .A(n64), .Y(n450) );
  CLKINVX1 U356 ( .A(n50), .Y(n451) );
  CLKINVX1 U357 ( .A(n38), .Y(n452) );
  XOR2X1 U358 ( .A(n456), .B(n457), .Y(product[23]) );
  XOR2X1 U359 ( .A(n30), .B(n458), .Y(n457) );
  XNOR2X1 U360 ( .A(n4), .B(n27), .Y(n458) );
  XOR2X1 U361 ( .A(n459), .B(n460), .Y(n456) );
  AND2X1 U362 ( .A(b[11]), .B(a[11]), .Y(n460) );
  AO21X1 U363 ( .A0(n442), .A1(n443), .B0(n453), .Y(n459) );
  NOR2X1 U364 ( .A(n455), .B(n454), .Y(product[0]) );
  NAND2X1 U365 ( .A(b[8]), .B(a[11]), .Y(n38) );
  NAND2X1 U366 ( .A(b[10]), .B(a[11]), .Y(n30) );
  OAI22XL U367 ( .A0(b[0]), .A1(n463), .B0(n464), .B1(n455), .Y(n237) );
  OAI22XL U368 ( .A0(n464), .A1(n463), .B0(n465), .B1(n455), .Y(n236) );
  XOR2X1 U369 ( .A(b[1]), .B(n444), .Y(n464) );
  OAI22XL U370 ( .A0(n465), .A1(n463), .B0(n466), .B1(n455), .Y(n235) );
  XOR2X1 U371 ( .A(b[2]), .B(n444), .Y(n465) );
  OAI22XL U372 ( .A0(n466), .A1(n463), .B0(n467), .B1(n455), .Y(n234) );
  XOR2X1 U373 ( .A(b[3]), .B(n444), .Y(n466) );
  OAI22XL U374 ( .A0(n467), .A1(n463), .B0(n468), .B1(n455), .Y(n233) );
  XOR2X1 U375 ( .A(b[4]), .B(n444), .Y(n467) );
  OAI22XL U376 ( .A0(n468), .A1(n463), .B0(n469), .B1(n455), .Y(n232) );
  XOR2X1 U377 ( .A(b[5]), .B(n444), .Y(n468) );
  OAI22XL U378 ( .A0(n469), .A1(n463), .B0(n470), .B1(n455), .Y(n231) );
  XOR2X1 U379 ( .A(b[6]), .B(n444), .Y(n469) );
  OAI22XL U380 ( .A0(n470), .A1(n463), .B0(n471), .B1(n455), .Y(n230) );
  XOR2X1 U381 ( .A(b[7]), .B(n444), .Y(n470) );
  OAI22XL U382 ( .A0(n471), .A1(n463), .B0(n472), .B1(n455), .Y(n229) );
  XOR2X1 U383 ( .A(b[8]), .B(n444), .Y(n471) );
  OAI22XL U384 ( .A0(n472), .A1(n463), .B0(n473), .B1(n455), .Y(n228) );
  XOR2X1 U385 ( .A(b[9]), .B(n444), .Y(n472) );
  OAI22XL U386 ( .A0(n473), .A1(n463), .B0(n474), .B1(n455), .Y(n227) );
  XOR2X1 U387 ( .A(b[10]), .B(n444), .Y(n473) );
  OAI22XL U388 ( .A0(n474), .A1(n463), .B0(n444), .B1(n455), .Y(n226) );
  XOR2X1 U389 ( .A(b[11]), .B(n444), .Y(n474) );
  NOR2X1 U390 ( .A(n435), .B(n454), .Y(n224) );
  OAI22XL U391 ( .A0(n476), .A1(n434), .B0(n435), .B1(n478), .Y(n223) );
  XOR2X1 U392 ( .A(n445), .B(b[0]), .Y(n476) );
  OAI22XL U393 ( .A0(n478), .A1(n434), .B0(n435), .B1(n479), .Y(n222) );
  XOR2X1 U394 ( .A(b[1]), .B(n445), .Y(n478) );
  OAI22XL U395 ( .A0(n479), .A1(n434), .B0(n435), .B1(n480), .Y(n221) );
  XOR2X1 U396 ( .A(b[2]), .B(n445), .Y(n479) );
  OAI22XL U397 ( .A0(n480), .A1(n434), .B0(n435), .B1(n481), .Y(n220) );
  XOR2X1 U398 ( .A(b[3]), .B(n445), .Y(n480) );
  OAI22XL U399 ( .A0(n481), .A1(n434), .B0(n435), .B1(n482), .Y(n219) );
  XOR2X1 U400 ( .A(b[4]), .B(n445), .Y(n481) );
  OAI22XL U401 ( .A0(n482), .A1(n434), .B0(n435), .B1(n483), .Y(n218) );
  XOR2X1 U402 ( .A(b[5]), .B(n445), .Y(n482) );
  OAI22XL U403 ( .A0(n483), .A1(n434), .B0(n435), .B1(n484), .Y(n217) );
  XOR2X1 U404 ( .A(b[6]), .B(n445), .Y(n483) );
  OAI22XL U405 ( .A0(n484), .A1(n434), .B0(n435), .B1(n485), .Y(n216) );
  XOR2X1 U406 ( .A(b[7]), .B(n445), .Y(n484) );
  OAI22XL U407 ( .A0(n485), .A1(n434), .B0(n435), .B1(n486), .Y(n215) );
  XOR2X1 U408 ( .A(b[8]), .B(n445), .Y(n485) );
  OAI22XL U409 ( .A0(n486), .A1(n434), .B0(n435), .B1(n487), .Y(n214) );
  XOR2X1 U410 ( .A(b[9]), .B(n445), .Y(n486) );
  OAI22XL U411 ( .A0(n487), .A1(n434), .B0(n435), .B1(n488), .Y(n213) );
  XOR2X1 U412 ( .A(b[10]), .B(n445), .Y(n487) );
  OAI22XL U413 ( .A0(n488), .A1(n434), .B0(n435), .B1(n445), .Y(n212) );
  XOR2X1 U414 ( .A(b[11]), .B(n445), .Y(n488) );
  AO21X1 U415 ( .A0(n434), .A1(n435), .B0(n445), .Y(n211) );
  NOR2X1 U416 ( .A(n437), .B(n454), .Y(n210) );
  OAI22XL U417 ( .A0(n490), .A1(n436), .B0(n437), .B1(n492), .Y(n209) );
  XOR2X1 U418 ( .A(n446), .B(b[0]), .Y(n490) );
  OAI22XL U419 ( .A0(n492), .A1(n436), .B0(n437), .B1(n493), .Y(n208) );
  XOR2X1 U420 ( .A(b[1]), .B(n446), .Y(n492) );
  OAI22XL U421 ( .A0(n493), .A1(n436), .B0(n437), .B1(n494), .Y(n207) );
  XOR2X1 U422 ( .A(b[2]), .B(n446), .Y(n493) );
  OAI22XL U423 ( .A0(n494), .A1(n436), .B0(n437), .B1(n495), .Y(n206) );
  XOR2X1 U424 ( .A(b[3]), .B(n446), .Y(n494) );
  OAI22XL U425 ( .A0(n495), .A1(n436), .B0(n437), .B1(n496), .Y(n205) );
  XOR2X1 U426 ( .A(b[4]), .B(n446), .Y(n495) );
  OAI22XL U427 ( .A0(n496), .A1(n436), .B0(n437), .B1(n497), .Y(n204) );
  XOR2X1 U428 ( .A(b[5]), .B(n446), .Y(n496) );
  OAI22XL U429 ( .A0(n497), .A1(n436), .B0(n437), .B1(n498), .Y(n203) );
  XOR2X1 U430 ( .A(b[6]), .B(n446), .Y(n497) );
  OAI22XL U431 ( .A0(n498), .A1(n436), .B0(n437), .B1(n499), .Y(n202) );
  XOR2X1 U432 ( .A(b[7]), .B(n446), .Y(n498) );
  OAI22XL U433 ( .A0(n499), .A1(n436), .B0(n437), .B1(n500), .Y(n201) );
  XOR2X1 U434 ( .A(b[8]), .B(n446), .Y(n499) );
  OAI22XL U435 ( .A0(n500), .A1(n436), .B0(n437), .B1(n501), .Y(n200) );
  XOR2X1 U436 ( .A(b[9]), .B(n446), .Y(n500) );
  OAI22XL U437 ( .A0(n501), .A1(n436), .B0(n437), .B1(n502), .Y(n199) );
  XOR2X1 U438 ( .A(b[10]), .B(n446), .Y(n501) );
  OAI22XL U439 ( .A0(n502), .A1(n436), .B0(n437), .B1(n446), .Y(n198) );
  XOR2X1 U440 ( .A(b[11]), .B(n446), .Y(n502) );
  AO21X1 U441 ( .A0(n436), .A1(n437), .B0(n446), .Y(n197) );
  NOR2X1 U442 ( .A(n439), .B(n454), .Y(n196) );
  OAI22XL U443 ( .A0(n504), .A1(n438), .B0(n439), .B1(n506), .Y(n195) );
  XOR2X1 U444 ( .A(n447), .B(b[0]), .Y(n504) );
  OAI22XL U445 ( .A0(n506), .A1(n438), .B0(n439), .B1(n507), .Y(n194) );
  XOR2X1 U446 ( .A(b[1]), .B(n447), .Y(n506) );
  OAI22XL U447 ( .A0(n507), .A1(n438), .B0(n439), .B1(n508), .Y(n193) );
  XOR2X1 U448 ( .A(b[2]), .B(n447), .Y(n507) );
  OAI22XL U449 ( .A0(n508), .A1(n438), .B0(n439), .B1(n509), .Y(n192) );
  XOR2X1 U450 ( .A(b[3]), .B(n447), .Y(n508) );
  OAI22XL U451 ( .A0(n509), .A1(n438), .B0(n439), .B1(n510), .Y(n191) );
  XOR2X1 U452 ( .A(b[4]), .B(n447), .Y(n509) );
  OAI22XL U453 ( .A0(n510), .A1(n438), .B0(n439), .B1(n511), .Y(n190) );
  XOR2X1 U454 ( .A(b[5]), .B(n447), .Y(n510) );
  OAI22XL U455 ( .A0(n511), .A1(n438), .B0(n439), .B1(n512), .Y(n189) );
  XOR2X1 U456 ( .A(b[6]), .B(n447), .Y(n511) );
  OAI22XL U457 ( .A0(n512), .A1(n438), .B0(n439), .B1(n513), .Y(n188) );
  XOR2X1 U458 ( .A(b[7]), .B(n447), .Y(n512) );
  OAI22XL U459 ( .A0(n513), .A1(n438), .B0(n439), .B1(n514), .Y(n187) );
  XOR2X1 U460 ( .A(b[8]), .B(n447), .Y(n513) );
  OAI22XL U461 ( .A0(n514), .A1(n438), .B0(n439), .B1(n515), .Y(n186) );
  XOR2X1 U462 ( .A(b[9]), .B(n447), .Y(n514) );
  OAI22XL U463 ( .A0(n515), .A1(n438), .B0(n439), .B1(n516), .Y(n185) );
  XOR2X1 U464 ( .A(b[10]), .B(n447), .Y(n515) );
  OAI22XL U465 ( .A0(n516), .A1(n438), .B0(n439), .B1(n447), .Y(n184) );
  XOR2X1 U466 ( .A(b[11]), .B(n447), .Y(n516) );
  AO21X1 U467 ( .A0(n438), .A1(n439), .B0(n447), .Y(n183) );
  NOR2X1 U468 ( .A(n441), .B(n454), .Y(n182) );
  OAI22XL U469 ( .A0(n518), .A1(n440), .B0(n441), .B1(n520), .Y(n181) );
  XOR2X1 U470 ( .A(n448), .B(b[0]), .Y(n518) );
  OAI22XL U471 ( .A0(n520), .A1(n440), .B0(n441), .B1(n521), .Y(n180) );
  XOR2X1 U472 ( .A(b[1]), .B(n448), .Y(n520) );
  OAI22XL U473 ( .A0(n521), .A1(n440), .B0(n441), .B1(n522), .Y(n179) );
  XOR2X1 U474 ( .A(b[2]), .B(n448), .Y(n521) );
  OAI22XL U475 ( .A0(n522), .A1(n440), .B0(n441), .B1(n523), .Y(n178) );
  XOR2X1 U476 ( .A(b[3]), .B(n448), .Y(n522) );
  OAI22XL U477 ( .A0(n523), .A1(n440), .B0(n441), .B1(n524), .Y(n177) );
  XOR2X1 U478 ( .A(b[4]), .B(n448), .Y(n523) );
  OAI22XL U479 ( .A0(n524), .A1(n440), .B0(n441), .B1(n525), .Y(n176) );
  XOR2X1 U480 ( .A(b[5]), .B(n448), .Y(n524) );
  OAI22XL U481 ( .A0(n525), .A1(n440), .B0(n441), .B1(n526), .Y(n175) );
  XOR2X1 U482 ( .A(b[6]), .B(n448), .Y(n525) );
  OAI22XL U483 ( .A0(n526), .A1(n440), .B0(n441), .B1(n527), .Y(n174) );
  XOR2X1 U484 ( .A(b[7]), .B(n448), .Y(n526) );
  OAI22XL U485 ( .A0(n527), .A1(n440), .B0(n441), .B1(n528), .Y(n173) );
  XOR2X1 U486 ( .A(b[8]), .B(n448), .Y(n527) );
  OAI22XL U487 ( .A0(n528), .A1(n440), .B0(n441), .B1(n529), .Y(n172) );
  XOR2X1 U488 ( .A(b[9]), .B(n448), .Y(n528) );
  OAI22XL U489 ( .A0(n529), .A1(n440), .B0(n441), .B1(n530), .Y(n171) );
  XOR2X1 U490 ( .A(b[10]), .B(n448), .Y(n529) );
  OAI22XL U491 ( .A0(n530), .A1(n440), .B0(n441), .B1(n448), .Y(n170) );
  XOR2X1 U492 ( .A(b[11]), .B(n448), .Y(n530) );
  AO21X1 U493 ( .A0(n440), .A1(n441), .B0(n448), .Y(n169) );
  NOR2X1 U494 ( .A(n443), .B(n454), .Y(n168) );
  OAI22XL U495 ( .A0(n531), .A1(n442), .B0(n443), .B1(n532), .Y(n167) );
  XOR2X1 U496 ( .A(n454), .B(a[11]), .Y(n531) );
  OAI22XL U497 ( .A0(n532), .A1(n442), .B0(n443), .B1(n533), .Y(n166) );
  XOR2X1 U498 ( .A(b[1]), .B(n453), .Y(n532) );
  OAI22XL U499 ( .A0(n533), .A1(n442), .B0(n443), .B1(n534), .Y(n165) );
  XOR2X1 U500 ( .A(b[2]), .B(n453), .Y(n533) );
  OAI22XL U501 ( .A0(n534), .A1(n442), .B0(n443), .B1(n535), .Y(n164) );
  XOR2X1 U502 ( .A(b[3]), .B(n453), .Y(n534) );
  OAI22XL U503 ( .A0(n535), .A1(n442), .B0(n443), .B1(n536), .Y(n163) );
  XOR2X1 U504 ( .A(b[4]), .B(n453), .Y(n535) );
  OAI22XL U505 ( .A0(n536), .A1(n442), .B0(n443), .B1(n537), .Y(n162) );
  XOR2X1 U506 ( .A(b[5]), .B(n453), .Y(n536) );
  OAI22XL U507 ( .A0(n537), .A1(n442), .B0(n443), .B1(n538), .Y(n161) );
  XOR2X1 U508 ( .A(b[6]), .B(n453), .Y(n537) );
  OAI22XL U509 ( .A0(n538), .A1(n442), .B0(n443), .B1(n539), .Y(n160) );
  XOR2X1 U510 ( .A(b[7]), .B(n453), .Y(n538) );
  OAI22XL U511 ( .A0(n539), .A1(n442), .B0(n443), .B1(n540), .Y(n159) );
  XOR2X1 U512 ( .A(b[8]), .B(n453), .Y(n539) );
  OAI22XL U513 ( .A0(n540), .A1(n442), .B0(n443), .B1(n541), .Y(n158) );
  XOR2X1 U514 ( .A(b[9]), .B(n453), .Y(n540) );
  OAI22XL U515 ( .A0(n541), .A1(n442), .B0(n443), .B1(n542), .Y(n157) );
  XOR2X1 U516 ( .A(b[10]), .B(n453), .Y(n541) );
  OAI22XL U517 ( .A0(n542), .A1(n442), .B0(n443), .B1(n453), .Y(n156) );
  XOR2X1 U518 ( .A(b[11]), .B(n453), .Y(n542) );
  NOR2X1 U519 ( .A(n453), .B(n454), .Y(n154) );
  NOR2BX1 U520 ( .AN(b[2]), .B(n453), .Y(n153) );
  NOR2BX1 U521 ( .AN(b[3]), .B(n453), .Y(n152) );
  NOR2BX1 U522 ( .AN(b[5]), .B(n453), .Y(n151) );
  NOR2BX1 U523 ( .AN(b[7]), .B(n453), .Y(n150) );
  NOR2BX1 U524 ( .AN(b[9]), .B(n453), .Y(n149) );
  OAI21XL U525 ( .A0(b[0]), .A1(n444), .B0(n463), .Y(n147) );
  OAI32X1 U526 ( .A0(n445), .A1(b[0]), .A2(n435), .B0(n445), .B1(n434), .Y(
        n146) );
  XOR2X1 U527 ( .A(a[3]), .B(a[2]), .Y(n543) );
  OAI32X1 U528 ( .A0(n446), .A1(b[0]), .A2(n437), .B0(n446), .B1(n436), .Y(
        n145) );
  XOR2X1 U529 ( .A(a[5]), .B(a[4]), .Y(n544) );
  OAI32X1 U530 ( .A0(n447), .A1(b[0]), .A2(n439), .B0(n447), .B1(n438), .Y(
        n144) );
  XOR2X1 U531 ( .A(a[7]), .B(a[6]), .Y(n545) );
  OAI32X1 U532 ( .A0(n448), .A1(b[0]), .A2(n441), .B0(n448), .B1(n440), .Y(
        n143) );
  XOR2X1 U533 ( .A(a[9]), .B(a[8]), .Y(n546) );
  OAI32X1 U534 ( .A0(n453), .A1(b[0]), .A2(n443), .B0(n453), .B1(n442), .Y(
        n142) );
  XOR2X1 U535 ( .A(a[11]), .B(a[10]), .Y(n547) );
endmodule


module geofence_DW_mult_uns_0 ( a, b, product );
  input [11:0] a;
  input [11:0] b;
  output [23:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n27, n28, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n149, n150, n151, n152,
         n153, n154, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547;

  ADDFXL U5 ( .A(n28), .B(n32), .CI(n5), .CO(n4), .S(product[22]) );
  ADDFXL U6 ( .A(n35), .B(n33), .CI(n6), .CO(n5), .S(product[21]) );
  ADDFXL U7 ( .A(n40), .B(n36), .CI(n7), .CO(n6), .S(product[20]) );
  ADDFXL U8 ( .A(n41), .B(n45), .CI(n8), .CO(n7), .S(product[19]) );
  ADDFXL U9 ( .A(n52), .B(n46), .CI(n9), .CO(n8), .S(product[18]) );
  ADDFXL U10 ( .A(n53), .B(n58), .CI(n10), .CO(n9), .S(product[17]) );
  ADDFXL U11 ( .A(n59), .B(n66), .CI(n11), .CO(n10), .S(product[16]) );
  ADDFXL U12 ( .A(n67), .B(n74), .CI(n12), .CO(n11), .S(product[15]) );
  ADDFXL U13 ( .A(n75), .B(n84), .CI(n13), .CO(n12), .S(product[14]) );
  ADDFXL U14 ( .A(n85), .B(n93), .CI(n14), .CO(n13), .S(product[13]) );
  ADDFXL U15 ( .A(n94), .B(n101), .CI(n15), .CO(n14), .S(product[12]) );
  ADDFXL U16 ( .A(n102), .B(n109), .CI(n16), .CO(n15), .S(product[11]) );
  ADDFXL U17 ( .A(n110), .B(n115), .CI(n17), .CO(n16), .S(product[10]) );
  ADDFXL U18 ( .A(n116), .B(n122), .CI(n18), .CO(n17), .S(product[9]) );
  ADDFXL U19 ( .A(n123), .B(n127), .CI(n19), .CO(n18), .S(product[8]) );
  ADDFXL U20 ( .A(n128), .B(n132), .CI(n20), .CO(n19), .S(product[7]) );
  ADDFXL U21 ( .A(n134), .B(n133), .CI(n21), .CO(n20), .S(product[6]) );
  ADDFXL U22 ( .A(n135), .B(n138), .CI(n22), .CO(n21), .S(product[5]) );
  ADDFXL U23 ( .A(n139), .B(n140), .CI(n23), .CO(n22), .S(product[4]) );
  ADDFXL U24 ( .A(n141), .B(n146), .CI(n24), .CO(n23), .S(product[3]) );
  ADDFXL U25 ( .A(n236), .B(n224), .CI(n25), .CO(n24), .S(product[2]) );
  ADDHXL U26 ( .A(n147), .B(n237), .CO(n25), .S(product[1]) );
  ADDFXL U28 ( .A(n156), .B(n30), .CI(n31), .CO(n27), .S(n28) );
  CMPR42X1 U30 ( .A(n447), .B(n149), .C(n169), .D(n157), .ICI(n34), .S(n33), 
        .ICO(n31), .CO(n32) );
  CMPR42X1 U31 ( .A(n38), .B(n170), .C(n158), .D(n42), .ICI(n39), .S(n36), 
        .ICO(n34), .CO(n35) );
  CMPR42X1 U33 ( .A(n171), .B(n159), .C(n43), .D(n47), .ICI(n44), .S(n41), 
        .ICO(n39), .CO(n40) );
  ADDFXL U34 ( .A(n150), .B(n446), .CI(n183), .CO(n42), .S(n43) );
  CMPR42X1 U35 ( .A(n184), .B(n54), .C(n55), .D(n48), .ICI(n51), .S(n46), 
        .ICO(n44), .CO(n45) );
  ADDFXL U36 ( .A(n172), .B(n50), .CI(n160), .CO(n47), .S(n48) );
  CMPR42X1 U38 ( .A(n161), .B(n60), .C(n56), .D(n61), .ICI(n57), .S(n53), 
        .ICO(n51), .CO(n52) );
  CMPR42X1 U39 ( .A(n445), .B(n151), .C(n197), .D(n173), .ICI(n185), .S(n56), 
        .ICO(n54), .CO(n55) );
  CMPR42X1 U40 ( .A(n68), .B(n71), .C(n62), .D(n69), .ICI(n65), .S(n59), .ICO(
        n57), .CO(n58) );
  CMPR42X1 U41 ( .A(n64), .B(n174), .C(n186), .D(n162), .ICI(n198), .S(n62), 
        .ICO(n60), .CO(n61) );
  CMPR42X1 U43 ( .A(n79), .B(n72), .C(n77), .D(n70), .ICI(n73), .S(n67), .ICO(
        n65), .CO(n66) );
  CMPR42X1 U44 ( .A(n175), .B(n199), .C(n187), .D(n163), .ICI(n76), .S(n70), 
        .ICO(n68), .CO(n69) );
  ADDFXL U45 ( .A(n152), .B(n444), .CI(n211), .CO(n71), .S(n72) );
  CMPR42X1 U46 ( .A(n80), .B(n89), .C(n87), .D(n78), .ICI(n83), .S(n75), .ICO(
        n73), .CO(n74) );
  CMPR42X1 U47 ( .A(n176), .B(n212), .C(n200), .D(n164), .ICI(n86), .S(n78), 
        .ICO(n76), .CO(n77) );
  ADDFXL U48 ( .A(n91), .B(n153), .CI(n188), .CO(n79), .S(n80) );
  CMPR42X1 U50 ( .A(n90), .B(n98), .C(n96), .D(n88), .ICI(n92), .S(n85), .ICO(
        n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n177), .B(n201), .C(n189), .D(n165), .ICI(n95), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U52 ( .A(n454), .B(n91), .CI(n213), .CO(n89), .S(n90) );
  CMPR42X1 U54 ( .A(n106), .B(n99), .C(n104), .D(n97), .ICI(n100), .S(n94), 
        .ICO(n92), .CO(n93) );
  CMPR42X1 U55 ( .A(n214), .B(n166), .C(n202), .D(n190), .ICI(n103), .S(n97), 
        .ICO(n95), .CO(n96) );
  ADDFXL U56 ( .A(n178), .B(n154), .CI(n226), .CO(n98), .S(n99) );
  CMPR42X1 U57 ( .A(n203), .B(n107), .C(n112), .D(n105), .ICI(n108), .S(n102), 
        .ICO(n100), .CO(n101) );
  CMPR42X1 U58 ( .A(n227), .B(n179), .C(n215), .D(n191), .ICI(n111), .S(n105), 
        .ICO(n103), .CO(n104) );
  ADDHXL U59 ( .A(n167), .B(n142), .CO(n106), .S(n107) );
  CMPR42X1 U60 ( .A(n204), .B(n119), .C(n113), .D(n117), .ICI(n114), .S(n110), 
        .ICO(n108), .CO(n109) );
  CMPR42X1 U61 ( .A(n168), .B(n192), .C(n228), .D(n216), .ICI(n180), .S(n113), 
        .ICO(n111), .CO(n112) );
  CMPR42X1 U62 ( .A(n229), .B(n120), .C(n121), .D(n124), .ICI(n118), .S(n116), 
        .ICO(n114), .CO(n115) );
  ADDFXL U63 ( .A(n193), .B(n205), .CI(n217), .CO(n117), .S(n118) );
  ADDHXL U64 ( .A(n181), .B(n143), .CO(n119), .S(n120) );
  CMPR42X1 U65 ( .A(n218), .B(n194), .C(n129), .D(n126), .ICI(n125), .S(n123), 
        .ICO(n121), .CO(n122) );
  ADDFXL U66 ( .A(n206), .B(n182), .CI(n230), .CO(n124), .S(n125) );
  CMPR42X1 U67 ( .A(n231), .B(n207), .C(n219), .D(n131), .ICI(n130), .S(n128), 
        .ICO(n126), .CO(n127) );
  ADDHXL U68 ( .A(n195), .B(n144), .CO(n129), .S(n130) );
  CMPR42X1 U69 ( .A(n196), .B(n232), .C(n220), .D(n208), .ICI(n136), .S(n133), 
        .ICO(n131), .CO(n132) );
  ADDFXL U70 ( .A(n221), .B(n233), .CI(n137), .CO(n134), .S(n135) );
  ADDHXL U71 ( .A(n209), .B(n145), .CO(n136), .S(n137) );
  ADDFXL U72 ( .A(n234), .B(n210), .CI(n222), .CO(n138), .S(n139) );
  ADDHXL U73 ( .A(n235), .B(n223), .CO(n140), .S(n141) );
  NAND2XL U322 ( .A(b[1]), .B(a[11]), .Y(n91) );
  NAND2XL U323 ( .A(b[4]), .B(a[11]), .Y(n64) );
  NAND2XL U324 ( .A(b[6]), .B(a[11]), .Y(n50) );
  CLKBUFX3 U325 ( .A(n475), .Y(n435) );
  XOR2X1 U326 ( .A(a[2]), .B(n454), .Y(n475) );
  INVX3 U327 ( .A(a[1]), .Y(n454) );
  CLKBUFX3 U328 ( .A(n477), .Y(n434) );
  NAND2X1 U329 ( .A(n435), .B(n543), .Y(n477) );
  INVX3 U330 ( .A(b[0]), .Y(n448) );
  NAND2X2 U331 ( .A(a[1]), .B(n455), .Y(n463) );
  INVX3 U332 ( .A(a[3]), .Y(n453) );
  INVX3 U333 ( .A(a[5]), .Y(n452) );
  INVX3 U334 ( .A(a[0]), .Y(n455) );
  CLKBUFX3 U335 ( .A(n489), .Y(n437) );
  XOR2X1 U336 ( .A(a[4]), .B(n453), .Y(n489) );
  CLKBUFX3 U337 ( .A(n491), .Y(n436) );
  NAND2X1 U338 ( .A(n437), .B(n544), .Y(n491) );
  INVX3 U339 ( .A(a[7]), .Y(n451) );
  CLKBUFX3 U340 ( .A(n503), .Y(n439) );
  XOR2X1 U341 ( .A(a[6]), .B(n452), .Y(n503) );
  CLKBUFX3 U342 ( .A(n505), .Y(n438) );
  NAND2X1 U343 ( .A(n439), .B(n545), .Y(n505) );
  CLKBUFX3 U344 ( .A(n462), .Y(n443) );
  XOR2X1 U345 ( .A(a[10]), .B(n450), .Y(n462) );
  INVX3 U346 ( .A(a[9]), .Y(n450) );
  CLKBUFX3 U347 ( .A(n517), .Y(n441) );
  XOR2X1 U348 ( .A(a[8]), .B(n451), .Y(n517) );
  CLKBUFX3 U349 ( .A(n519), .Y(n440) );
  NAND2X1 U350 ( .A(n441), .B(n546), .Y(n519) );
  INVX4 U351 ( .A(a[11]), .Y(n449) );
  CLKBUFX3 U352 ( .A(n461), .Y(n442) );
  NAND2X1 U353 ( .A(n443), .B(n547), .Y(n461) );
  CLKINVX1 U354 ( .A(n91), .Y(n444) );
  CLKINVX1 U355 ( .A(n64), .Y(n445) );
  CLKINVX1 U356 ( .A(n50), .Y(n446) );
  CLKINVX1 U357 ( .A(n38), .Y(n447) );
  XOR2X1 U358 ( .A(n456), .B(n457), .Y(product[23]) );
  XOR2X1 U359 ( .A(n30), .B(n458), .Y(n457) );
  XNOR2X1 U360 ( .A(n4), .B(n27), .Y(n458) );
  XOR2X1 U361 ( .A(n459), .B(n460), .Y(n456) );
  AND2X1 U362 ( .A(b[11]), .B(a[11]), .Y(n460) );
  AO21X1 U363 ( .A0(n442), .A1(n443), .B0(n449), .Y(n459) );
  NOR2X1 U364 ( .A(n455), .B(n448), .Y(product[0]) );
  NAND2X1 U365 ( .A(b[8]), .B(a[11]), .Y(n38) );
  NAND2X1 U366 ( .A(b[10]), .B(a[11]), .Y(n30) );
  OAI22XL U367 ( .A0(b[0]), .A1(n463), .B0(n464), .B1(n455), .Y(n237) );
  OAI22XL U368 ( .A0(n464), .A1(n463), .B0(n465), .B1(n455), .Y(n236) );
  XOR2X1 U369 ( .A(b[1]), .B(n454), .Y(n464) );
  OAI22XL U370 ( .A0(n465), .A1(n463), .B0(n466), .B1(n455), .Y(n235) );
  XOR2X1 U371 ( .A(b[2]), .B(n454), .Y(n465) );
  OAI22XL U372 ( .A0(n466), .A1(n463), .B0(n467), .B1(n455), .Y(n234) );
  XOR2X1 U373 ( .A(b[3]), .B(n454), .Y(n466) );
  OAI22XL U374 ( .A0(n467), .A1(n463), .B0(n468), .B1(n455), .Y(n233) );
  XOR2X1 U375 ( .A(b[4]), .B(n454), .Y(n467) );
  OAI22XL U376 ( .A0(n468), .A1(n463), .B0(n469), .B1(n455), .Y(n232) );
  XOR2X1 U377 ( .A(b[5]), .B(n454), .Y(n468) );
  OAI22XL U378 ( .A0(n469), .A1(n463), .B0(n470), .B1(n455), .Y(n231) );
  XOR2X1 U379 ( .A(b[6]), .B(n454), .Y(n469) );
  OAI22XL U380 ( .A0(n470), .A1(n463), .B0(n471), .B1(n455), .Y(n230) );
  XOR2X1 U381 ( .A(b[7]), .B(n454), .Y(n470) );
  OAI22XL U382 ( .A0(n471), .A1(n463), .B0(n472), .B1(n455), .Y(n229) );
  XOR2X1 U383 ( .A(b[8]), .B(n454), .Y(n471) );
  OAI22XL U384 ( .A0(n472), .A1(n463), .B0(n473), .B1(n455), .Y(n228) );
  XOR2X1 U385 ( .A(b[9]), .B(n454), .Y(n472) );
  OAI22XL U386 ( .A0(n473), .A1(n463), .B0(n474), .B1(n455), .Y(n227) );
  XOR2X1 U387 ( .A(b[10]), .B(n454), .Y(n473) );
  OAI22XL U388 ( .A0(n474), .A1(n463), .B0(n454), .B1(n455), .Y(n226) );
  XOR2X1 U389 ( .A(b[11]), .B(n454), .Y(n474) );
  NOR2X1 U390 ( .A(n435), .B(n448), .Y(n224) );
  OAI22XL U391 ( .A0(n476), .A1(n434), .B0(n435), .B1(n478), .Y(n223) );
  XOR2X1 U392 ( .A(n453), .B(b[0]), .Y(n476) );
  OAI22XL U393 ( .A0(n478), .A1(n434), .B0(n435), .B1(n479), .Y(n222) );
  XOR2X1 U394 ( .A(b[1]), .B(n453), .Y(n478) );
  OAI22XL U395 ( .A0(n479), .A1(n434), .B0(n435), .B1(n480), .Y(n221) );
  XOR2X1 U396 ( .A(b[2]), .B(n453), .Y(n479) );
  OAI22XL U397 ( .A0(n480), .A1(n434), .B0(n435), .B1(n481), .Y(n220) );
  XOR2X1 U398 ( .A(b[3]), .B(n453), .Y(n480) );
  OAI22XL U399 ( .A0(n481), .A1(n434), .B0(n435), .B1(n482), .Y(n219) );
  XOR2X1 U400 ( .A(b[4]), .B(n453), .Y(n481) );
  OAI22XL U401 ( .A0(n482), .A1(n434), .B0(n435), .B1(n483), .Y(n218) );
  XOR2X1 U402 ( .A(b[5]), .B(n453), .Y(n482) );
  OAI22XL U403 ( .A0(n483), .A1(n434), .B0(n435), .B1(n484), .Y(n217) );
  XOR2X1 U404 ( .A(b[6]), .B(n453), .Y(n483) );
  OAI22XL U405 ( .A0(n484), .A1(n434), .B0(n435), .B1(n485), .Y(n216) );
  XOR2X1 U406 ( .A(b[7]), .B(n453), .Y(n484) );
  OAI22XL U407 ( .A0(n485), .A1(n434), .B0(n435), .B1(n486), .Y(n215) );
  XOR2X1 U408 ( .A(b[8]), .B(n453), .Y(n485) );
  OAI22XL U409 ( .A0(n486), .A1(n434), .B0(n435), .B1(n487), .Y(n214) );
  XOR2X1 U410 ( .A(b[9]), .B(n453), .Y(n486) );
  OAI22XL U411 ( .A0(n487), .A1(n434), .B0(n435), .B1(n488), .Y(n213) );
  XOR2X1 U412 ( .A(b[10]), .B(n453), .Y(n487) );
  OAI22XL U413 ( .A0(n488), .A1(n434), .B0(n435), .B1(n453), .Y(n212) );
  XOR2X1 U414 ( .A(b[11]), .B(n453), .Y(n488) );
  AO21X1 U415 ( .A0(n434), .A1(n435), .B0(n453), .Y(n211) );
  NOR2X1 U416 ( .A(n437), .B(n448), .Y(n210) );
  OAI22XL U417 ( .A0(n490), .A1(n436), .B0(n437), .B1(n492), .Y(n209) );
  XOR2X1 U418 ( .A(n452), .B(b[0]), .Y(n490) );
  OAI22XL U419 ( .A0(n492), .A1(n436), .B0(n437), .B1(n493), .Y(n208) );
  XOR2X1 U420 ( .A(b[1]), .B(n452), .Y(n492) );
  OAI22XL U421 ( .A0(n493), .A1(n436), .B0(n437), .B1(n494), .Y(n207) );
  XOR2X1 U422 ( .A(b[2]), .B(n452), .Y(n493) );
  OAI22XL U423 ( .A0(n494), .A1(n436), .B0(n437), .B1(n495), .Y(n206) );
  XOR2X1 U424 ( .A(b[3]), .B(n452), .Y(n494) );
  OAI22XL U425 ( .A0(n495), .A1(n436), .B0(n437), .B1(n496), .Y(n205) );
  XOR2X1 U426 ( .A(b[4]), .B(n452), .Y(n495) );
  OAI22XL U427 ( .A0(n496), .A1(n436), .B0(n437), .B1(n497), .Y(n204) );
  XOR2X1 U428 ( .A(b[5]), .B(n452), .Y(n496) );
  OAI22XL U429 ( .A0(n497), .A1(n436), .B0(n437), .B1(n498), .Y(n203) );
  XOR2X1 U430 ( .A(b[6]), .B(n452), .Y(n497) );
  OAI22XL U431 ( .A0(n498), .A1(n436), .B0(n437), .B1(n499), .Y(n202) );
  XOR2X1 U432 ( .A(b[7]), .B(n452), .Y(n498) );
  OAI22XL U433 ( .A0(n499), .A1(n436), .B0(n437), .B1(n500), .Y(n201) );
  XOR2X1 U434 ( .A(b[8]), .B(n452), .Y(n499) );
  OAI22XL U435 ( .A0(n500), .A1(n436), .B0(n437), .B1(n501), .Y(n200) );
  XOR2X1 U436 ( .A(b[9]), .B(n452), .Y(n500) );
  OAI22XL U437 ( .A0(n501), .A1(n436), .B0(n437), .B1(n502), .Y(n199) );
  XOR2X1 U438 ( .A(b[10]), .B(n452), .Y(n501) );
  OAI22XL U439 ( .A0(n502), .A1(n436), .B0(n437), .B1(n452), .Y(n198) );
  XOR2X1 U440 ( .A(b[11]), .B(n452), .Y(n502) );
  AO21X1 U441 ( .A0(n436), .A1(n437), .B0(n452), .Y(n197) );
  NOR2X1 U442 ( .A(n439), .B(n448), .Y(n196) );
  OAI22XL U443 ( .A0(n504), .A1(n438), .B0(n439), .B1(n506), .Y(n195) );
  XOR2X1 U444 ( .A(n451), .B(b[0]), .Y(n504) );
  OAI22XL U445 ( .A0(n506), .A1(n438), .B0(n439), .B1(n507), .Y(n194) );
  XOR2X1 U446 ( .A(b[1]), .B(n451), .Y(n506) );
  OAI22XL U447 ( .A0(n507), .A1(n438), .B0(n439), .B1(n508), .Y(n193) );
  XOR2X1 U448 ( .A(b[2]), .B(n451), .Y(n507) );
  OAI22XL U449 ( .A0(n508), .A1(n438), .B0(n439), .B1(n509), .Y(n192) );
  XOR2X1 U450 ( .A(b[3]), .B(n451), .Y(n508) );
  OAI22XL U451 ( .A0(n509), .A1(n438), .B0(n439), .B1(n510), .Y(n191) );
  XOR2X1 U452 ( .A(b[4]), .B(n451), .Y(n509) );
  OAI22XL U453 ( .A0(n510), .A1(n438), .B0(n439), .B1(n511), .Y(n190) );
  XOR2X1 U454 ( .A(b[5]), .B(n451), .Y(n510) );
  OAI22XL U455 ( .A0(n511), .A1(n438), .B0(n439), .B1(n512), .Y(n189) );
  XOR2X1 U456 ( .A(b[6]), .B(n451), .Y(n511) );
  OAI22XL U457 ( .A0(n512), .A1(n438), .B0(n439), .B1(n513), .Y(n188) );
  XOR2X1 U458 ( .A(b[7]), .B(n451), .Y(n512) );
  OAI22XL U459 ( .A0(n513), .A1(n438), .B0(n439), .B1(n514), .Y(n187) );
  XOR2X1 U460 ( .A(b[8]), .B(n451), .Y(n513) );
  OAI22XL U461 ( .A0(n514), .A1(n438), .B0(n439), .B1(n515), .Y(n186) );
  XOR2X1 U462 ( .A(b[9]), .B(n451), .Y(n514) );
  OAI22XL U463 ( .A0(n515), .A1(n438), .B0(n439), .B1(n516), .Y(n185) );
  XOR2X1 U464 ( .A(b[10]), .B(n451), .Y(n515) );
  OAI22XL U465 ( .A0(n516), .A1(n438), .B0(n439), .B1(n451), .Y(n184) );
  XOR2X1 U466 ( .A(b[11]), .B(n451), .Y(n516) );
  AO21X1 U467 ( .A0(n438), .A1(n439), .B0(n451), .Y(n183) );
  NOR2X1 U468 ( .A(n441), .B(n448), .Y(n182) );
  OAI22XL U469 ( .A0(n518), .A1(n440), .B0(n441), .B1(n520), .Y(n181) );
  XOR2X1 U470 ( .A(n450), .B(b[0]), .Y(n518) );
  OAI22XL U471 ( .A0(n520), .A1(n440), .B0(n441), .B1(n521), .Y(n180) );
  XOR2X1 U472 ( .A(b[1]), .B(n450), .Y(n520) );
  OAI22XL U473 ( .A0(n521), .A1(n440), .B0(n441), .B1(n522), .Y(n179) );
  XOR2X1 U474 ( .A(b[2]), .B(n450), .Y(n521) );
  OAI22XL U475 ( .A0(n522), .A1(n440), .B0(n441), .B1(n523), .Y(n178) );
  XOR2X1 U476 ( .A(b[3]), .B(n450), .Y(n522) );
  OAI22XL U477 ( .A0(n523), .A1(n440), .B0(n441), .B1(n524), .Y(n177) );
  XOR2X1 U478 ( .A(b[4]), .B(n450), .Y(n523) );
  OAI22XL U479 ( .A0(n524), .A1(n440), .B0(n441), .B1(n525), .Y(n176) );
  XOR2X1 U480 ( .A(b[5]), .B(n450), .Y(n524) );
  OAI22XL U481 ( .A0(n525), .A1(n440), .B0(n441), .B1(n526), .Y(n175) );
  XOR2X1 U482 ( .A(b[6]), .B(n450), .Y(n525) );
  OAI22XL U483 ( .A0(n526), .A1(n440), .B0(n441), .B1(n527), .Y(n174) );
  XOR2X1 U484 ( .A(b[7]), .B(n450), .Y(n526) );
  OAI22XL U485 ( .A0(n527), .A1(n440), .B0(n441), .B1(n528), .Y(n173) );
  XOR2X1 U486 ( .A(b[8]), .B(n450), .Y(n527) );
  OAI22XL U487 ( .A0(n528), .A1(n440), .B0(n441), .B1(n529), .Y(n172) );
  XOR2X1 U488 ( .A(b[9]), .B(n450), .Y(n528) );
  OAI22XL U489 ( .A0(n529), .A1(n440), .B0(n441), .B1(n530), .Y(n171) );
  XOR2X1 U490 ( .A(b[10]), .B(n450), .Y(n529) );
  OAI22XL U491 ( .A0(n530), .A1(n440), .B0(n441), .B1(n450), .Y(n170) );
  XOR2X1 U492 ( .A(b[11]), .B(n450), .Y(n530) );
  AO21X1 U493 ( .A0(n440), .A1(n441), .B0(n450), .Y(n169) );
  NOR2X1 U494 ( .A(n443), .B(n448), .Y(n168) );
  OAI22XL U495 ( .A0(n531), .A1(n442), .B0(n443), .B1(n532), .Y(n167) );
  XOR2X1 U496 ( .A(n448), .B(a[11]), .Y(n531) );
  OAI22XL U497 ( .A0(n532), .A1(n442), .B0(n443), .B1(n533), .Y(n166) );
  XOR2X1 U498 ( .A(b[1]), .B(n449), .Y(n532) );
  OAI22XL U499 ( .A0(n533), .A1(n442), .B0(n443), .B1(n534), .Y(n165) );
  XOR2X1 U500 ( .A(b[2]), .B(n449), .Y(n533) );
  OAI22XL U501 ( .A0(n534), .A1(n442), .B0(n443), .B1(n535), .Y(n164) );
  XOR2X1 U502 ( .A(b[3]), .B(n449), .Y(n534) );
  OAI22XL U503 ( .A0(n535), .A1(n442), .B0(n443), .B1(n536), .Y(n163) );
  XOR2X1 U504 ( .A(b[4]), .B(n449), .Y(n535) );
  OAI22XL U505 ( .A0(n536), .A1(n442), .B0(n443), .B1(n537), .Y(n162) );
  XOR2X1 U506 ( .A(b[5]), .B(n449), .Y(n536) );
  OAI22XL U507 ( .A0(n537), .A1(n442), .B0(n443), .B1(n538), .Y(n161) );
  XOR2X1 U508 ( .A(b[6]), .B(n449), .Y(n537) );
  OAI22XL U509 ( .A0(n538), .A1(n442), .B0(n443), .B1(n539), .Y(n160) );
  XOR2X1 U510 ( .A(b[7]), .B(n449), .Y(n538) );
  OAI22XL U511 ( .A0(n539), .A1(n442), .B0(n443), .B1(n540), .Y(n159) );
  XOR2X1 U512 ( .A(b[8]), .B(n449), .Y(n539) );
  OAI22XL U513 ( .A0(n540), .A1(n442), .B0(n443), .B1(n541), .Y(n158) );
  XOR2X1 U514 ( .A(b[9]), .B(n449), .Y(n540) );
  OAI22XL U515 ( .A0(n541), .A1(n442), .B0(n443), .B1(n542), .Y(n157) );
  XOR2X1 U516 ( .A(b[10]), .B(n449), .Y(n541) );
  OAI22XL U517 ( .A0(n542), .A1(n442), .B0(n443), .B1(n449), .Y(n156) );
  XOR2X1 U518 ( .A(b[11]), .B(n449), .Y(n542) );
  NOR2X1 U519 ( .A(n449), .B(n448), .Y(n154) );
  NOR2BX1 U520 ( .AN(b[2]), .B(n449), .Y(n153) );
  NOR2BX1 U521 ( .AN(b[3]), .B(n449), .Y(n152) );
  NOR2BX1 U522 ( .AN(b[5]), .B(n449), .Y(n151) );
  NOR2BX1 U523 ( .AN(b[7]), .B(n449), .Y(n150) );
  NOR2BX1 U524 ( .AN(b[9]), .B(n449), .Y(n149) );
  OAI21XL U525 ( .A0(b[0]), .A1(n454), .B0(n463), .Y(n147) );
  OAI32X1 U526 ( .A0(n453), .A1(b[0]), .A2(n435), .B0(n453), .B1(n434), .Y(
        n146) );
  XOR2X1 U527 ( .A(a[3]), .B(a[2]), .Y(n543) );
  OAI32X1 U528 ( .A0(n452), .A1(b[0]), .A2(n437), .B0(n452), .B1(n436), .Y(
        n145) );
  XOR2X1 U529 ( .A(a[5]), .B(a[4]), .Y(n544) );
  OAI32X1 U530 ( .A0(n451), .A1(b[0]), .A2(n439), .B0(n451), .B1(n438), .Y(
        n144) );
  XOR2X1 U531 ( .A(a[7]), .B(a[6]), .Y(n545) );
  OAI32X1 U532 ( .A0(n450), .A1(b[0]), .A2(n441), .B0(n450), .B1(n440), .Y(
        n143) );
  XOR2X1 U533 ( .A(a[9]), .B(a[8]), .Y(n546) );
  OAI32X1 U534 ( .A0(n449), .A1(b[0]), .A2(n443), .B0(n449), .B1(n442), .Y(
        n142) );
  XOR2X1 U535 ( .A(a[11]), .B(a[10]), .Y(n547) );
endmodule


module geofence ( clk, reset, X, Y, R, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input [10:0] R;
  input clk, reset;
  output valid, is_inside;
  wire   \loc_x[0][9] , \loc_x[0][8] , \loc_x[0][7] , \loc_x[0][6] ,
         \loc_x[0][5] , \loc_x[0][4] , \loc_x[0][3] , \loc_x[0][2] ,
         \loc_x[0][1] , \loc_x[0][0] , \loc_x[1][9] , \loc_x[1][8] ,
         \loc_x[1][7] , \loc_x[1][6] , \loc_x[1][5] , \loc_x[1][4] ,
         \loc_x[1][3] , \loc_x[1][2] , \loc_x[1][1] , \loc_x[1][0] ,
         \loc_x[2][9] , \loc_x[2][8] , \loc_x[2][7] , \loc_x[2][6] ,
         \loc_x[2][5] , \loc_x[2][4] , \loc_x[2][3] , \loc_x[2][2] ,
         \loc_x[2][1] , \loc_x[2][0] , \loc_x[3][9] , \loc_x[3][8] ,
         \loc_x[3][7] , \loc_x[3][6] , \loc_x[3][5] , \loc_x[3][4] ,
         \loc_x[3][3] , \loc_x[3][2] , \loc_x[3][1] , \loc_x[3][0] ,
         \loc_x[4][9] , \loc_x[4][8] , \loc_x[4][7] , \loc_x[4][6] ,
         \loc_x[4][5] , \loc_x[4][4] , \loc_x[4][3] , \loc_x[4][2] ,
         \loc_x[4][1] , \loc_x[4][0] , \loc_x[5][9] , \loc_x[5][8] ,
         \loc_x[5][7] , \loc_x[5][6] , \loc_x[5][5] , \loc_x[5][4] ,
         \loc_x[5][3] , \loc_x[5][2] , \loc_x[5][1] , \loc_x[5][0] ,
         \loc_y[0][9] , \loc_y[0][8] , \loc_y[0][7] , \loc_y[0][6] ,
         \loc_y[0][5] , \loc_y[0][4] , \loc_y[0][3] , \loc_y[0][2] ,
         \loc_y[0][1] , \loc_y[0][0] , \loc_y[1][9] , \loc_y[1][8] ,
         \loc_y[1][7] , \loc_y[1][6] , \loc_y[1][5] , \loc_y[1][4] ,
         \loc_y[1][3] , \loc_y[1][2] , \loc_y[1][1] , \loc_y[1][0] ,
         \loc_y[2][9] , \loc_y[2][8] , \loc_y[2][7] , \loc_y[2][6] ,
         \loc_y[2][5] , \loc_y[2][4] , \loc_y[2][3] , \loc_y[2][2] ,
         \loc_y[2][1] , \loc_y[2][0] , \loc_y[3][9] , \loc_y[3][8] ,
         \loc_y[3][7] , \loc_y[3][6] , \loc_y[3][5] , \loc_y[3][4] ,
         \loc_y[3][3] , \loc_y[3][2] , \loc_y[3][1] , \loc_y[3][0] ,
         \loc_y[4][9] , \loc_y[4][8] , \loc_y[4][7] , \loc_y[4][6] ,
         \loc_y[4][5] , \loc_y[4][4] , \loc_y[4][3] , \loc_y[4][2] ,
         \loc_y[4][1] , \loc_y[4][0] , \loc_y[5][9] , \loc_y[5][8] ,
         \loc_y[5][7] , \loc_y[5][6] , \loc_y[5][5] , \loc_y[5][4] ,
         \loc_y[5][3] , \loc_y[5][2] , \loc_y[5][1] , \loc_y[5][0] ,
         loc_a_dis_x_11, loc_a_dis_y_11, dis_a_square_23, \loc_r[0][10] ,
         \loc_r[0][9] , \loc_r[0][8] , \loc_r[0][7] , \loc_r[0][6] ,
         \loc_r[0][5] , \loc_r[0][4] , \loc_r[0][3] , \loc_r[0][2] ,
         \loc_r[0][1] , \loc_r[0][0] , \loc_r[1][10] , \loc_r[1][9] ,
         \loc_r[1][8] , \loc_r[1][7] , \loc_r[1][6] , \loc_r[1][5] ,
         \loc_r[1][4] , \loc_r[1][3] , \loc_r[1][2] , \loc_r[1][1] ,
         \loc_r[1][0] , \loc_r[2][10] , \loc_r[2][9] , \loc_r[2][8] ,
         \loc_r[2][7] , \loc_r[2][6] , \loc_r[2][5] , \loc_r[2][4] ,
         \loc_r[2][3] , \loc_r[2][2] , \loc_r[2][1] , \loc_r[2][0] ,
         \loc_r[3][10] , \loc_r[3][9] , \loc_r[3][8] , \loc_r[3][7] ,
         \loc_r[3][6] , \loc_r[3][5] , \loc_r[3][4] , \loc_r[3][3] ,
         \loc_r[3][2] , \loc_r[3][1] , \loc_r[3][0] , \loc_r[4][10] ,
         \loc_r[4][9] , \loc_r[4][8] , \loc_r[4][7] , \loc_r[4][6] ,
         \loc_r[4][5] , \loc_r[4][4] , \loc_r[4][3] , \loc_r[4][2] ,
         \loc_r[4][1] , \loc_r[4][0] , \loc_r[5][10] , \loc_r[5][9] ,
         \loc_r[5][8] , \loc_r[5][7] , \loc_r[5][6] , \loc_r[5][5] ,
         \loc_r[5][4] , \loc_r[5][3] , \loc_r[5][2] , \loc_r[5][1] ,
         \loc_r[5][0] , N538, N539, N540, N541, N542, N543, N544, N545, N546,
         N547, N548, N549, N550, N551, N552, N553, N554, N555, N556, N557,
         N558, N559, N560, N561, N562, N563, N564, N565, N566, N567, N568,
         N569, N570, N571, N572, N573, N574, N575, N576, N577, N578, N579,
         N580, N581, N582, N583, N584, N585, N586, N602, N604, N660, N661,
         N662, N663, N664, N665, N666, N667, N668, N669, N670, N671, N672,
         N673, N674, N675, N676, N677, N678, N679, N680, N681, N682, N683,
         N697, N698, N699, N700, N701, N702, N703, N704, N705, N706, N707,
         N708, N709, N710, N711, N712, N713, N714, N715, N716, N717, N718,
         N719, N720, N734, N735, N736, N737, N738, N739, N740, N741, N742,
         N743, N744, N745, N746, N747, N748, N749, N750, N751, N752, N753,
         N754, N755, N756, N757, N879, N880, N881, N882, N883, N884, N885,
         N886, N887, N888, N889, N890, N891, N892, N893, N894, N895, N896,
         N897, N898, N899, N900, N901, N902, N903, N904, N905, N906, N907,
         N908, N909, N916, N917, N918, N919, N920, N921, N922, N923, N924,
         N925, N926, N927, N928, N929, N930, N931, N932, N933, N934, N935,
         N936, N937, N938, N939, N940, N941, N942, N943, N944, N945, N946,
         N1518, n107, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n132, n133, n138, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
         n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
         n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619,
         n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630,
         n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641,
         n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652,
         n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, N598, N597, N596, N595, N594,
         N593, N592, N591, N590, N589, N588, N587, N417, N416, N415, N414,
         N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403,
         N402, N401, N400, N399, N398, N397, N396, N395, N394, N393, N392,
         N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381,
         N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370,
         N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N359,
         N358, N357, N356, N355, N354, N353, N352, N351, N350, N349, N348,
         N347, N346, N345, N344, N343, N342, N341, N340, N339, N338, N337,
         N336, N335, N334, N333, N332, N331, N330, N329, N328, N327, N326,
         N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515,
         N514, N513, N512, N511, N510, N509, N508, N507, N506, N504, N503,
         N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492,
         N491, N490, N489, N488, N487, N486, N485, N484, N482, n1797, n1798,
         n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806, n1807, n1810,
         n1811, n1812, n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820,
         n1821, n1822, n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830,
         n1831, n1832, n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840,
         n1841, n1842, n1843, n1844, n1845, n1846, n1847, n1848, n1849, n1850,
         n1851, n1852, n1853, n1854, n1855, n1856, n1857, n1858, n1859, n1860,
         n1861, n1862, n1863, n1864, n1865, n1866, n1867, n1868, n1869, n1870,
         n1871, n1872, n1873, n1874, n1875, n1876, n1877, n1878, n1879, n1880,
         n1881, n1882, n1883, n1884, n1885, n1886, n1887, n1888, n1889, n1890,
         n1891, n1892, n1893, n1894, n1895, n1896, n1897, n1898, n1899, n1900,
         n1901, n1902, n1903, n1904, n1905, n1906, n1907, n1908, n1909, n1910,
         n1911, n1912, n1913, n1914, n1915, n1916, n1917, n1918, n1919, n1920,
         n1921, n1922, n1923, n1924, n1925, n1926, n1927, n1928, n1929, n1930,
         n1931, n1932, n1933, n1934, n1935, n1936, n1937, n1938, n1939, n1940,
         n1941, n1942, n1943, n1944, n1945, n1946, n1947, n1948, n1949, n1950,
         n1951, n1952, n1953, n1954, n1955, n1956, n1957, n1958, n1959, n1960,
         n1961, n1962, n1963, n1964, n1965, n1966, n1967, n1968, n1969, n1970,
         n1971, n1972, n1973, n1974, n1975, n1976, n1977, n1978, n1979, n1980,
         n1981, n1982, n1983, n1984, n1985, n1986, n1987, n1988, n1989, n1990,
         n1991, n1992, n1993, n1994, n1995, n1996, n1997, n1998, n1999, n2000,
         n2001, n2002, n2003, n2004, n2005, n2006, n2007, n2008, n2009, n2010,
         n2011, n2012, n2013, n2014, n2015, n2016, n2017, n2018, n2019, n2020,
         n2021, n2022, n2023, n2024, n2025, n2026, n2027, n2028, n2029, n2030,
         n2031, n2032, n2033, n2034, n2035, n2036, n2037, n2038, n2039, n2040,
         n2041, n2042, n2043, n2044, n2045, n2046, n2047, n2048, n2049, n2050,
         n2051, n2052, n2053, n2054, n2055, n2056, n2057, n2058, n2059, n2060,
         n2061, n2062, n2063, n2064, n2065, n2066, n2067, n2068, n2069, n2070,
         n2071, n2072, n2073, n2074, n2075, n2076, n2077, n2078, n2079, n2080,
         n2081, n2082, n2083, n2084, n2085, n2086, n2087, n2088, n2089, n2090,
         n2091, n2092, n2093, n2094, n2095, n2096, n2097, n2098, n2099, n2100,
         n2101, n2102, n2103, n2104, n2105, n2106, n2107, n2108, n2109, n2110,
         n2111, n2112, n2113, n2114, n2115, n2116, n2117, n2118, n2119, n2120,
         n2121, n2122, n2123, n2124, n2125, n2126, n2127, n2128, n2129, n2130,
         n2131, n2132, n2133, n2134, n2135, n2136, n2137, n2138, n2139, n2140,
         n2141, n2142, n2143, n2144, n2145, n2146, n2147, n2148, n2149, n2150,
         n2151, n2152, n2153, n2154, n2155, n2156, n2157, n2158, n2159, n2160,
         n2161, n2162, n2163, n2164, n2165, n2166, n2167, n2168, n2169, n2170,
         n2171, n2172, n2173, n2174, n2175, n2176, n2177;
  wire   [2:0] curr_state;
  wire   [9:0] ref_x;
  wire   [9:0] ref_y;
  wire   [2:0] loc_ff_pt;
  wire   [2:0] loc_ff_cnt;
  wire   [23:0] cross_result;
  wire   [9:0] loc_a_dis_x;
  wire   [9:0] loc_a_dis_y;
  wire   [21:0] dis_a_square;
  wire   [11:0] dis_a;
  wire   [11:0] s1_ff;
  wire   [11:0] s2_ff;
  wire   [23:0] s_mul_out;
  wire   [11:0] s_ff;
  wire   [11:0] s0_ff;
  wire   [23:0] hero_area;
  wire   [23:0] hero_area_temp;
  wire   [23:0] polygon_area;
  wire   [23:0] polygon_area_temp;
  wire   [23:0] polygon_area_actual;
  wire   [10:0] s;
  wire   [11:0] s0;
  wire   [11:0] s1;
  wire   [11:0] s2;
  wire   [23:0] radicand_in;
  wire   [2:0] next_state;
  wire   [23:0] dis_a_square_ff;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50;

  DW_sqrt_inst sqrt ( .radicand(radicand_in), .square_root(dis_a) );
  geofence_DW01_inc_0 add_0_root_add_196_ni ( .A({N734, N735, N736, N737, N738, 
        N739, N740, N741, N742, N743, N744, N745}), .SUM({N757, N756, N755, 
        N754, N753, N752, N751, N750, N749, N748, N747, N746}) );
  geofence_DW01_inc_1 add_0_root_add_195_ni ( .A({N697, N698, N699, N700, N701, 
        N702, N703, N704, N705, N706, N707, N708}), .SUM({N720, N719, N718, 
        N717, N716, N715, N714, N713, N712, N711, N710, N709}) );
  geofence_DW01_inc_2 add_0_root_add_194_ni ( .A({N660, N661, N662, N663, N664, 
        N665, N666, N667, N668, N669, N670, N671}), .SUM({N683, N682, N681, 
        N680, N679, N678, N677, N676, N675, N674, N673, N672}) );
  geofence_DW_cmp_0 gt_126 ( .A(hero_area_temp), .B(polygon_area_actual), .TC(
        1'b1), .GE_LT(1'b0), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(N602) );
  geofence_DW01_sub_3 sub_103 ( .A({1'b0, s}), .B({1'b0, N899, N900, N901, 
        N902, N903, N904, N905, N906, N907, N908, N909}), .CI(1'b0), .DIFF(s2)
         );
  geofence_DW01_sub_4 sub_102 ( .A({1'b0, s}), .B({1'b0, N936, N937, N938, 
        N939, N940, N941, N942, N943, N944, N945, N946}), .CI(1'b0), .DIFF(s1)
         );
  geofence_DW01_sub_5 sub_101 ( .A({1'b0, s}), .B(dis_a), .CI(1'b0), .DIFF(s0)
         );
  geofence_DW01_add_0 add_div_94 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N586}), .B({polygon_area[23], 
        polygon_area[23:1]}), .CI(1'b0), .SUM(polygon_area_actual) );
  geofence_DW01_sub_6 sub_93 ( .A(polygon_area), .B({n2083, cross_result[22:0]}), .CI(1'b0), .DIFF(polygon_area_temp) );
  geofence_DW01_add_1 add_92 ( .A(hero_area), .B(s_mul_out), .CI(1'b0), .SUM(
        hero_area_temp) );
  geofence_DW01_sub_7 sub_74 ( .A({1'b0, N926, N927, N928, N929, N930, N931, 
        N932, N933, N934, N935}), .B({1'b0, N889, N890, N891, N892, N893, N894, 
        N895, N896, N897, N898}), .CI(1'b0), .DIFF({loc_a_dis_y_11, 
        loc_a_dis_y}) );
  geofence_DW01_sub_8 sub_73 ( .A({1'b0, N916, N917, N918, N919, N920, N921, 
        N922, N923, N924, N925}), .B({1'b0, N879, N880, N881, N882, N883, N884, 
        N885, N886, N887, N888}), .CI(1'b0), .DIFF({loc_a_dis_x_11, 
        loc_a_dis_x}) );
  geofence_DW01_add_3 add_1_root_add_0_root_add_100_2 ( .A(dis_a), .B({1'b0, 
        N936, N937, N938, N939, N940, N941, N942, N943, N944, N945, N946}), 
        .CI(1'b0), .SUM({N598, N597, N596, N595, N594, N593, N592, N591, N590, 
        N589, N588, N587}) );
  geofence_DW01_add_2 add_0_root_add_0_root_add_100_2 ( .A({1'b0, N899, N900, 
        N901, N902, N903, N904, N905, N906, N907, N908, N909}), .B({N598, N597, 
        N596, N595, N594, N593, N592, N591, N590, N589, N588, N587}), .CI(1'b0), .SUM({s, SYNOPSYS_UNCONNECTED__0}) );
  geofence_DW01_sub_13 sub_67_4 ( .A({1'b0, N926, N927, N928, N929, N930, N931, 
        N932, N933, N934, N935}), .B({1'b0, ref_y}), .CI(1'b0), .DIFF({N393, 
        N392, N391, N390, N389, N388, N387, N386, N385, N384, N383}) );
  geofence_DW01_sub_12 sub_67_2 ( .A({1'b0, N889, N890, N891, N892, N893, N894, 
        N895, N896, N897, N898}), .B({1'b0, ref_y}), .CI(1'b0), .DIFF({N347, 
        N346, N345, N344, N343, N342, N341, N340, N339, N338, N337}) );
  geofence_DW01_sub_11 sub_67_3 ( .A({1'b0, N879, N880, N881, N882, N883, N884, 
        N885, N886, N887, N888}), .B({1'b0, ref_x}), .CI(1'b0), .DIFF({N382, 
        N381, N380, N379, N378, N377, N376, N375, N374, N373, N372}) );
  geofence_DW01_sub_10 sub_67 ( .A({1'b0, N916, N917, N918, N919, N920, N921, 
        N922, N923, N924, N925}), .B({1'b0, ref_x}), .CI(1'b0), .DIFF({N336, 
        N335, N334, N333, N332, N331, N330, N329, N328, N327, N326}) );
  geofence_DW_mult_uns_3 mult_67_2 ( .a({N382, N382, N382, N382, N382, N382, 
        N382, N382, N382, N382, N382, N382, N382, N382, N381, N380, N379, N378, 
        N377, N376, N375, N374, N373, N372}), .b({n1966, n1966, n1966, n1966, 
        n1966, n1966, n1966, n1966, n1966, n1966, n1966, n1966, n1966, n1966, 
        N392, N391, N390, N389, N388, N387, N386, N385, N384, N383}), 
        .product({SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, N417, N416, N415, 
        N414, N413, N412, N411, N410, N409, N408, N407, N406, N405, N404, N403, 
        N402, N401, N400, N399, N398, N397, N396, N395, N394}) );
  geofence_DW_mult_uns_2 mult_67 ( .a({N336, N336, N336, N336, N336, N336, 
        N336, N336, N336, N336, N336, N336, N336, N336, N335, N334, N333, N332, 
        N331, N330, N329, N328, N327, N326}), .b({n1967, n1967, n1967, n1967, 
        n1967, n1967, n1967, n1967, n1967, n1967, n1967, n1967, n1967, n1967, 
        N346, N345, N344, N343, N342, N341, N340, N339, N338, N337}), 
        .product({SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, N371, N370, N369, 
        N368, N367, N366, N365, N364, N363, N362, N361, N360, N359, N358, N357, 
        N356, N355, N354, N353, N352, N351, N350, N349, N348}) );
  geofence_DW01_sub_9 sub_67_5 ( .A({N371, N370, N369, N368, N367, N366, N365, 
        N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, N353, 
        N352, N351, N350, N349, N348}), .B({N417, N416, N415, N414, N413, N412, 
        N411, N410, N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, 
        N399, N398, N397, N396, N395, N394}), .CI(1'b0), .DIFF(cross_result)
         );
  geofence_DW_mult_tc_1 mult_pow_76_2 ( .a({loc_a_dis_y_11, loc_a_dis_y}), .b(
        {loc_a_dis_y_11, loc_a_dis_y}), .product({N525, N524, N523, N522, N521, 
        N520, N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, 
        N508, N507, N506, SYNOPSYS_UNCONNECTED__49, N504}) );
  geofence_DW_mult_tc_0 mult_pow_76 ( .a({loc_a_dis_x_11, loc_a_dis_x}), .b({
        loc_a_dis_x_11, loc_a_dis_x}), .product({N503, N502, N501, N500, N499, 
        N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, 
        N486, N485, N484, SYNOPSYS_UNCONNECTED__50, N482}) );
  geofence_DW01_add_4 add_76 ( .A({N503, N503, N502, N501, N500, N499, N498, 
        N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, 
        N485, N484, 1'b0, N482}), .B({N525, N525, N524, N523, N522, N521, N520, 
        N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, 
        N507, N506, 1'b0, N504}), .CI(1'b0), .SUM({dis_a_square_23, 
        dis_a_square}) );
  geofence_DW_mult_uns_1 mult_89 ( .a(s1_ff), .b(s2_ff), .product({N561, N560, 
        N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549, N548, 
        N547, N546, N545, N544, N543, N542, N541, N540, N539, N538}) );
  geofence_DW_mult_uns_0 mult_89_2 ( .a(s_ff), .b(s0_ff), .product({N585, N584, 
        N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, 
        N571, N570, N569, N568, N567, N566, N565, N564, N563, N562}) );
  DFFRX1 \dis_a_square_ff_reg[23]  ( .D(dis_a_square_23), .CK(clk), .RN(n1980), 
        .Q(dis_a_square_ff[23]) );
  DFFRX1 \dis_a_square_ff_reg[22]  ( .D(dis_a_square_23), .CK(clk), .RN(n1980), 
        .Q(dis_a_square_ff[22]) );
  DFFRX1 \dis_a_square_ff_reg[21]  ( .D(dis_a_square[21]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[21]) );
  DFFRX1 \dis_a_square_ff_reg[20]  ( .D(dis_a_square[20]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[20]) );
  DFFRX1 \dis_a_square_ff_reg[19]  ( .D(dis_a_square[19]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[19]) );
  DFFRX1 \dis_a_square_ff_reg[18]  ( .D(dis_a_square[18]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[18]) );
  DFFRX1 \dis_a_square_ff_reg[17]  ( .D(dis_a_square[17]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[17]) );
  DFFRX1 \dis_a_square_ff_reg[16]  ( .D(dis_a_square[16]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[16]) );
  DFFRX1 \dis_a_square_ff_reg[15]  ( .D(dis_a_square[15]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[15]) );
  DFFRX1 \dis_a_square_ff_reg[14]  ( .D(dis_a_square[14]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[14]) );
  DFFRX1 \dis_a_square_ff_reg[13]  ( .D(dis_a_square[13]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[13]) );
  DFFRX1 \dis_a_square_ff_reg[12]  ( .D(dis_a_square[12]), .CK(clk), .RN(n1980), .Q(dis_a_square_ff[12]) );
  DFFRX1 \dis_a_square_ff_reg[11]  ( .D(dis_a_square[11]), .CK(clk), .RN(n1981), .Q(dis_a_square_ff[11]) );
  DFFRX1 \dis_a_square_ff_reg[10]  ( .D(dis_a_square[10]), .CK(clk), .RN(n1981), .Q(dis_a_square_ff[10]) );
  DFFRX1 \dis_a_square_ff_reg[9]  ( .D(dis_a_square[9]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[9]) );
  DFFRX1 \dis_a_square_ff_reg[8]  ( .D(dis_a_square[8]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[8]) );
  DFFRX1 \dis_a_square_ff_reg[7]  ( .D(dis_a_square[7]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[7]) );
  DFFRX1 \dis_a_square_ff_reg[6]  ( .D(dis_a_square[6]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[6]) );
  DFFRX1 \dis_a_square_ff_reg[5]  ( .D(dis_a_square[5]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[5]) );
  DFFRX1 \dis_a_square_ff_reg[4]  ( .D(dis_a_square[4]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[4]) );
  DFFRX1 \dis_a_square_ff_reg[3]  ( .D(dis_a_square[3]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[3]) );
  DFFRX1 \dis_a_square_ff_reg[2]  ( .D(dis_a_square[2]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[2]) );
  DFFRX1 \dis_a_square_ff_reg[1]  ( .D(dis_a_square[1]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[1]) );
  DFFRX1 \dis_a_square_ff_reg[0]  ( .D(dis_a_square[0]), .CK(clk), .RN(n1981), 
        .Q(dis_a_square_ff[0]) );
  DFFRX1 \hero_area_reg[21]  ( .D(n809), .CK(clk), .RN(n1988), .Q(
        hero_area[21]) );
  DFFRX1 \hero_area_reg[22]  ( .D(n808), .CK(clk), .RN(n1988), .Q(
        hero_area[22]) );
  DFFRX1 \hero_area_reg[23]  ( .D(n807), .CK(clk), .RN(n1988), .Q(
        hero_area[23]) );
  DFFRX1 \polygon_area_reg[22]  ( .D(n832), .CK(clk), .RN(n1984), .Q(
        polygon_area[22]) );
  DFFRX1 \hero_area_reg[20]  ( .D(n810), .CK(clk), .RN(n1988), .Q(
        hero_area[20]) );
  DFFRX1 \polygon_area_reg[20]  ( .D(n834), .CK(clk), .RN(n1984), .Q(
        polygon_area[20]) );
  DFFRX1 \polygon_area_reg[21]  ( .D(n833), .CK(clk), .RN(n1984), .Q(
        polygon_area[21]) );
  DFFRX1 \hero_area_reg[18]  ( .D(n812), .CK(clk), .RN(n1988), .Q(
        hero_area[18]) );
  DFFRX1 \hero_area_reg[19]  ( .D(n811), .CK(clk), .RN(n1988), .Q(
        hero_area[19]) );
  DFFRX1 \loc_ff_reg[4][10]  ( .D(n736), .CK(clk), .RN(n1991), .Q(
        \loc_r[4][10] ) );
  DFFRX1 \loc_ff_reg[1][9]  ( .D(n642), .CK(clk), .RN(n2001), .Q(\loc_r[1][9] ) );
  DFFRX1 \loc_ff_reg[1][10]  ( .D(n643), .CK(clk), .RN(n2001), .Q(
        \loc_r[1][10] ) );
  DFFRX1 \loc_ff_reg[5][9]  ( .D(n766), .CK(clk), .RN(n1999), .Q(\loc_r[5][9] ) );
  DFFRX1 \loc_ff_reg[5][10]  ( .D(n767), .CK(clk), .RN(n1999), .Q(
        \loc_r[5][10] ) );
  DFFRX1 \loc_ff_reg[2][9]  ( .D(n673), .CK(clk), .RN(n2004), .Q(\loc_r[2][9] ) );
  DFFRX1 \loc_ff_reg[2][10]  ( .D(n674), .CK(clk), .RN(n2004), .Q(
        \loc_r[2][10] ) );
  DFFRX1 \loc_ff_reg[0][9]  ( .D(n611), .CK(clk), .RN(n1993), .Q(\loc_r[0][9] ) );
  DFFRX1 \loc_ff_reg[0][10]  ( .D(n612), .CK(clk), .RN(n1994), .Q(
        \loc_r[0][10] ) );
  DFFRX1 \loc_ff_reg[3][9]  ( .D(n704), .CK(clk), .RN(n1996), .Q(\loc_r[3][9] ) );
  DFFRX1 \loc_ff_reg[3][10]  ( .D(n705), .CK(clk), .RN(n1996), .Q(
        \loc_r[3][10] ) );
  DFFRX1 \polygon_area_reg[19]  ( .D(n835), .CK(clk), .RN(n1984), .Q(
        polygon_area[19]) );
  DFFRX1 \hero_area_reg[17]  ( .D(n813), .CK(clk), .RN(n1987), .Q(
        hero_area[17]) );
  DFFRX1 \loc_ff_reg[4][5]  ( .D(n731), .CK(clk), .RN(n1990), .Q(\loc_r[4][5] ) );
  DFFRX1 \loc_ff_reg[4][6]  ( .D(n732), .CK(clk), .RN(n1991), .Q(\loc_r[4][6] ) );
  DFFRX1 \loc_ff_reg[4][7]  ( .D(n733), .CK(clk), .RN(n1991), .Q(\loc_r[4][7] ) );
  DFFRX1 \loc_ff_reg[4][8]  ( .D(n734), .CK(clk), .RN(n1991), .Q(\loc_r[4][8] ) );
  DFFRX1 \loc_ff_reg[4][9]  ( .D(n735), .CK(clk), .RN(n1991), .Q(\loc_r[4][9] ) );
  DFFRX1 \loc_ff_reg[1][4]  ( .D(n637), .CK(clk), .RN(n2001), .Q(\loc_r[1][4] ) );
  DFFRX1 \loc_ff_reg[1][5]  ( .D(n638), .CK(clk), .RN(n2001), .Q(\loc_r[1][5] ) );
  DFFRX1 \loc_ff_reg[1][6]  ( .D(n639), .CK(clk), .RN(n2001), .Q(\loc_r[1][6] ) );
  DFFRX1 \loc_ff_reg[1][7]  ( .D(n640), .CK(clk), .RN(n2001), .Q(\loc_r[1][7] ) );
  DFFRX1 \loc_ff_reg[1][8]  ( .D(n641), .CK(clk), .RN(n2001), .Q(\loc_r[1][8] ) );
  DFFRX1 \loc_ff_reg[5][4]  ( .D(n761), .CK(clk), .RN(n1998), .Q(\loc_r[5][4] ) );
  DFFRX1 \loc_ff_reg[5][5]  ( .D(n762), .CK(clk), .RN(n1998), .Q(\loc_r[5][5] ) );
  DFFRX1 \loc_ff_reg[5][6]  ( .D(n763), .CK(clk), .RN(n1998), .Q(\loc_r[5][6] ) );
  DFFRX1 \loc_ff_reg[5][7]  ( .D(n764), .CK(clk), .RN(n1998), .Q(\loc_r[5][7] ) );
  DFFRX1 \loc_ff_reg[5][8]  ( .D(n765), .CK(clk), .RN(n1999), .Q(\loc_r[5][8] ) );
  DFFRX1 \loc_ff_reg[2][4]  ( .D(n668), .CK(clk), .RN(n2003), .Q(\loc_r[2][4] ) );
  DFFRX1 \loc_ff_reg[2][5]  ( .D(n669), .CK(clk), .RN(n2003), .Q(\loc_r[2][5] ) );
  DFFRX1 \loc_ff_reg[2][6]  ( .D(n670), .CK(clk), .RN(n2004), .Q(\loc_r[2][6] ) );
  DFFRX1 \loc_ff_reg[2][7]  ( .D(n671), .CK(clk), .RN(n2004), .Q(\loc_r[2][7] ) );
  DFFRX1 \loc_ff_reg[2][8]  ( .D(n672), .CK(clk), .RN(n2004), .Q(\loc_r[2][8] ) );
  DFFRX1 \loc_ff_reg[0][4]  ( .D(n606), .CK(clk), .RN(n1993), .Q(\loc_r[0][4] ) );
  DFFRX1 \loc_ff_reg[0][5]  ( .D(n607), .CK(clk), .RN(n1993), .Q(\loc_r[0][5] ) );
  DFFRX1 \loc_ff_reg[0][6]  ( .D(n608), .CK(clk), .RN(n1993), .Q(\loc_r[0][6] ) );
  DFFRX1 \loc_ff_reg[0][7]  ( .D(n609), .CK(clk), .RN(n1993), .Q(\loc_r[0][7] ) );
  DFFRX1 \loc_ff_reg[0][8]  ( .D(n610), .CK(clk), .RN(n1993), .Q(\loc_r[0][8] ) );
  DFFRX1 \loc_ff_reg[3][4]  ( .D(n699), .CK(clk), .RN(n1996), .Q(\loc_r[3][4] ) );
  DFFRX1 \loc_ff_reg[3][5]  ( .D(n700), .CK(clk), .RN(n1996), .Q(\loc_r[3][5] ) );
  DFFRX1 \loc_ff_reg[3][6]  ( .D(n701), .CK(clk), .RN(n1996), .Q(\loc_r[3][6] ) );
  DFFRX1 \loc_ff_reg[3][7]  ( .D(n702), .CK(clk), .RN(n1996), .Q(\loc_r[3][7] ) );
  DFFRX1 \loc_ff_reg[3][8]  ( .D(n703), .CK(clk), .RN(n1996), .Q(\loc_r[3][8] ) );
  DFFRX1 \polygon_area_reg[17]  ( .D(n837), .CK(clk), .RN(n1983), .Q(
        polygon_area[17]) );
  DFFRX1 \polygon_area_reg[18]  ( .D(n836), .CK(clk), .RN(n1984), .Q(
        polygon_area[18]) );
  DFFRX1 \hero_area_reg[12]  ( .D(n818), .CK(clk), .RN(n1987), .Q(
        hero_area[12]) );
  DFFRX1 \hero_area_reg[13]  ( .D(n817), .CK(clk), .RN(n1987), .Q(
        hero_area[13]) );
  DFFRX1 \hero_area_reg[14]  ( .D(n816), .CK(clk), .RN(n1987), .Q(
        hero_area[14]) );
  DFFRX1 \hero_area_reg[15]  ( .D(n815), .CK(clk), .RN(n1987), .Q(
        hero_area[15]) );
  DFFRX1 \hero_area_reg[16]  ( .D(n814), .CK(clk), .RN(n1987), .Q(
        hero_area[16]) );
  DFFRX1 \loc_ff_reg[4][1]  ( .D(n727), .CK(clk), .RN(n1990), .Q(\loc_r[4][1] ) );
  DFFRX1 \loc_ff_reg[4][2]  ( .D(n728), .CK(clk), .RN(n1990), .Q(\loc_r[4][2] ) );
  DFFRX1 \loc_ff_reg[4][3]  ( .D(n729), .CK(clk), .RN(n1990), .Q(\loc_r[4][3] ) );
  DFFRX1 \loc_ff_reg[4][4]  ( .D(n730), .CK(clk), .RN(n1990), .Q(\loc_r[4][4] ) );
  DFFRX1 \loc_ff_reg[4][0]  ( .D(n757), .CK(clk), .RN(n1993), .Q(\loc_r[4][0] ) );
  DFFRX1 \loc_ff_reg[1][1]  ( .D(n634), .CK(clk), .RN(n2001), .Q(\loc_r[1][1] ) );
  DFFRX1 \loc_ff_reg[1][2]  ( .D(n635), .CK(clk), .RN(n2001), .Q(\loc_r[1][2] ) );
  DFFRX1 \loc_ff_reg[1][3]  ( .D(n636), .CK(clk), .RN(n2001), .Q(\loc_r[1][3] ) );
  DFFRX1 \loc_ff_reg[1][0]  ( .D(n664), .CK(clk), .RN(n2003), .Q(\loc_r[1][0] ) );
  DFFRX1 \loc_ff_reg[5][1]  ( .D(n758), .CK(clk), .RN(n1998), .Q(\loc_r[5][1] ) );
  DFFRX1 \loc_ff_reg[5][2]  ( .D(n759), .CK(clk), .RN(n1998), .Q(\loc_r[5][2] ) );
  DFFRX1 \loc_ff_reg[5][3]  ( .D(n760), .CK(clk), .RN(n1998), .Q(\loc_r[5][3] ) );
  DFFRX1 \loc_ff_reg[5][0]  ( .D(n788), .CK(clk), .RN(n2000), .Q(\loc_r[5][0] ) );
  DFFRX1 \loc_ff_reg[2][1]  ( .D(n665), .CK(clk), .RN(n2003), .Q(\loc_r[2][1] ) );
  DFFRX1 \loc_ff_reg[2][2]  ( .D(n666), .CK(clk), .RN(n2003), .Q(\loc_r[2][2] ) );
  DFFRX1 \loc_ff_reg[2][3]  ( .D(n667), .CK(clk), .RN(n2003), .Q(\loc_r[2][3] ) );
  DFFRX1 \loc_ff_reg[2][0]  ( .D(n695), .CK(clk), .RN(n2006), .Q(\loc_r[2][0] ) );
  DFFRX1 \loc_ff_reg[0][1]  ( .D(n603), .CK(clk), .RN(n1993), .Q(\loc_r[0][1] ) );
  DFFRX1 \loc_ff_reg[0][2]  ( .D(n604), .CK(clk), .RN(n1993), .Q(\loc_r[0][2] ) );
  DFFRX1 \loc_ff_reg[0][3]  ( .D(n605), .CK(clk), .RN(n1993), .Q(\loc_r[0][3] ) );
  DFFRX1 \loc_ff_reg[0][0]  ( .D(n633), .CK(clk), .RN(n1995), .Q(\loc_r[0][0] ) );
  DFFRX1 \loc_ff_reg[3][1]  ( .D(n696), .CK(clk), .RN(n1995), .Q(\loc_r[3][1] ) );
  DFFRX1 \loc_ff_reg[3][2]  ( .D(n697), .CK(clk), .RN(n1995), .Q(\loc_r[3][2] ) );
  DFFRX1 \loc_ff_reg[3][3]  ( .D(n698), .CK(clk), .RN(n1996), .Q(\loc_r[3][3] ) );
  DFFRX1 \loc_ff_reg[3][0]  ( .D(n726), .CK(clk), .RN(n1998), .Q(\loc_r[3][0] ) );
  DFFRX1 \polygon_area_reg[12]  ( .D(n842), .CK(clk), .RN(n1983), .Q(
        polygon_area[12]) );
  DFFRX1 \polygon_area_reg[13]  ( .D(n841), .CK(clk), .RN(n1983), .Q(
        polygon_area[13]) );
  DFFRX1 \polygon_area_reg[14]  ( .D(n840), .CK(clk), .RN(n1983), .Q(
        polygon_area[14]) );
  DFFRX1 \polygon_area_reg[15]  ( .D(n839), .CK(clk), .RN(n1983), .Q(
        polygon_area[15]) );
  DFFRX1 \polygon_area_reg[16]  ( .D(n838), .CK(clk), .RN(n1983), .Q(
        polygon_area[16]) );
  DFFRX1 \hero_area_reg[7]  ( .D(n823), .CK(clk), .RN(n1987), .Q(hero_area[7])
         );
  DFFRX1 \hero_area_reg[8]  ( .D(n822), .CK(clk), .RN(n1987), .Q(hero_area[8])
         );
  DFFRX1 \hero_area_reg[9]  ( .D(n821), .CK(clk), .RN(n1987), .Q(hero_area[9])
         );
  DFFRX1 \hero_area_reg[10]  ( .D(n820), .CK(clk), .RN(n1987), .Q(
        hero_area[10]) );
  DFFRX1 \hero_area_reg[11]  ( .D(n819), .CK(clk), .RN(n1987), .Q(
        hero_area[11]) );
  DFFRX1 \polygon_area_reg[7]  ( .D(n847), .CK(clk), .RN(n1983), .Q(
        polygon_area[7]) );
  DFFRX1 \polygon_area_reg[8]  ( .D(n846), .CK(clk), .RN(n1983), .Q(
        polygon_area[8]) );
  DFFRX1 \polygon_area_reg[9]  ( .D(n845), .CK(clk), .RN(n1983), .Q(
        polygon_area[9]) );
  DFFRX1 \polygon_area_reg[10]  ( .D(n844), .CK(clk), .RN(n1983), .Q(
        polygon_area[10]) );
  DFFRX1 \polygon_area_reg[11]  ( .D(n843), .CK(clk), .RN(n1983), .Q(
        polygon_area[11]) );
  DFFRX1 \hero_area_reg[2]  ( .D(n828), .CK(clk), .RN(n1986), .Q(hero_area[2])
         );
  DFFRX1 \hero_area_reg[3]  ( .D(n827), .CK(clk), .RN(n1986), .Q(hero_area[3])
         );
  DFFRX1 \hero_area_reg[4]  ( .D(n826), .CK(clk), .RN(n1986), .Q(hero_area[4])
         );
  DFFRX1 \hero_area_reg[5]  ( .D(n825), .CK(clk), .RN(n1986), .Q(hero_area[5])
         );
  DFFRX1 \hero_area_reg[6]  ( .D(n824), .CK(clk), .RN(n1987), .Q(hero_area[6])
         );
  DFFRX1 \polygon_area_reg[2]  ( .D(n852), .CK(clk), .RN(n1982), .Q(
        polygon_area[2]) );
  DFFRX1 \polygon_area_reg[3]  ( .D(n851), .CK(clk), .RN(n1982), .Q(
        polygon_area[3]) );
  DFFRX1 \polygon_area_reg[4]  ( .D(n850), .CK(clk), .RN(n1982), .Q(
        polygon_area[4]) );
  DFFRX1 \polygon_area_reg[5]  ( .D(n849), .CK(clk), .RN(n1982), .Q(
        polygon_area[5]) );
  DFFRX1 \polygon_area_reg[6]  ( .D(n848), .CK(clk), .RN(n1983), .Q(
        polygon_area[6]) );
  DFFRX1 \hero_area_reg[1]  ( .D(n829), .CK(clk), .RN(n1986), .Q(hero_area[1])
         );
  DFFRX1 \hero_area_reg[0]  ( .D(n830), .CK(clk), .RN(n1986), .Q(hero_area[0])
         );
  DFFRX1 \polygon_area_reg[0]  ( .D(n854), .CK(clk), .RN(n1982), .Q(
        polygon_area[0]) );
  DFFRX1 \polygon_area_reg[1]  ( .D(n853), .CK(clk), .RN(n1982), .Q(
        polygon_area[1]) );
  DFFRX1 \s1_ff_reg[10]  ( .D(n2102), .CK(clk), .RN(n1985), .Q(s1_ff[10]) );
  DFFRX1 \s_ff_reg[10]  ( .D(n2123), .CK(clk), .RN(n1989), .Q(s_ff[10]) );
  DFFRX1 \loc_ff_reg[5][20]  ( .D(n777), .CK(clk), .RN(n2000), .Q(
        \loc_y[5][9] ), .QN(n121) );
  DFFRX1 \loc_ff_reg[4][20]  ( .D(n746), .CK(clk), .RN(n1992), .Q(
        \loc_y[4][9] ) );
  DFFRX1 \loc_ff_reg[1][20]  ( .D(n653), .CK(clk), .RN(n2002), .Q(
        \loc_y[1][9] ) );
  DFFRX1 \loc_ff_reg[2][20]  ( .D(n684), .CK(clk), .RN(n2005), .Q(
        \loc_y[2][9] ) );
  DFFRX1 \loc_ff_reg[0][20]  ( .D(n622), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][9] ) );
  DFFRX1 \loc_ff_reg[3][20]  ( .D(n715), .CK(clk), .RN(n1997), .Q(
        \loc_y[3][9] ) );
  DFFRX1 \s1_ff_reg[8]  ( .D(n2104), .CK(clk), .RN(n1985), .Q(s1_ff[8]) );
  DFFRX1 \s_ff_reg[8]  ( .D(n2125), .CK(clk), .RN(n1989), .Q(s_ff[8]) );
  DFFRX1 \s1_ff_reg[9]  ( .D(n2103), .CK(clk), .RN(n1985), .Q(s1_ff[9]) );
  DFFRX1 \s_ff_reg[9]  ( .D(n2124), .CK(clk), .RN(n1989), .Q(s_ff[9]) );
  DFFRX1 \loc_ff_reg[5][18]  ( .D(n775), .CK(clk), .RN(n1999), .Q(
        \loc_y[5][7] ), .QN(n123) );
  DFFRX1 \loc_ff_reg[5][19]  ( .D(n776), .CK(clk), .RN(n1999), .Q(
        \loc_y[5][8] ), .QN(n122) );
  DFFRX1 \loc_ff_reg[5][29]  ( .D(n786), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][8] ), .QN(n112) );
  DFFRX1 \loc_ff_reg[5][30]  ( .D(n787), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][9] ), .QN(n111) );
  DFFRX1 \loc_ff_reg[4][18]  ( .D(n744), .CK(clk), .RN(n1992), .Q(
        \loc_y[4][7] ) );
  DFFRX1 \loc_ff_reg[4][19]  ( .D(n745), .CK(clk), .RN(n1992), .Q(
        \loc_y[4][8] ) );
  DFFRX1 \loc_ff_reg[4][29]  ( .D(n755), .CK(clk), .RN(n1992), .Q(
        \loc_x[4][8] ) );
  DFFRX1 \loc_ff_reg[4][30]  ( .D(n756), .CK(clk), .RN(n1993), .Q(
        \loc_x[4][9] ) );
  DFFRX1 \loc_ff_reg[1][18]  ( .D(n651), .CK(clk), .RN(n2002), .Q(
        \loc_y[1][7] ) );
  DFFRX1 \loc_ff_reg[1][19]  ( .D(n652), .CK(clk), .RN(n2002), .Q(
        \loc_y[1][8] ) );
  DFFRX1 \loc_ff_reg[1][29]  ( .D(n662), .CK(clk), .RN(n2003), .Q(
        \loc_x[1][8] ) );
  DFFRX1 \loc_ff_reg[1][30]  ( .D(n663), .CK(clk), .RN(n2003), .Q(
        \loc_x[1][9] ) );
  DFFRX1 \loc_ff_reg[2][18]  ( .D(n682), .CK(clk), .RN(n2005), .Q(
        \loc_y[2][7] ) );
  DFFRX1 \loc_ff_reg[2][19]  ( .D(n683), .CK(clk), .RN(n2005), .Q(
        \loc_y[2][8] ) );
  DFFRX1 \loc_ff_reg[2][28]  ( .D(n692), .CK(clk), .RN(n2005), .Q(
        \loc_x[2][7] ) );
  DFFRX1 \loc_ff_reg[2][29]  ( .D(n693), .CK(clk), .RN(n2005), .Q(
        \loc_x[2][8] ) );
  DFFRX1 \loc_ff_reg[2][30]  ( .D(n694), .CK(clk), .RN(n2006), .Q(
        \loc_x[2][9] ) );
  DFFRX1 \loc_ff_reg[0][18]  ( .D(n620), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][7] ) );
  DFFRX1 \loc_ff_reg[0][19]  ( .D(n621), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][8] ) );
  DFFRX1 \loc_ff_reg[0][29]  ( .D(n631), .CK(clk), .RN(n1995), .Q(
        \loc_x[0][8] ) );
  DFFRX1 \loc_ff_reg[0][30]  ( .D(n632), .CK(clk), .RN(n1995), .Q(
        \loc_x[0][9] ) );
  DFFRX1 \loc_ff_reg[3][18]  ( .D(n713), .CK(clk), .RN(n1997), .Q(
        \loc_y[3][7] ) );
  DFFRX1 \loc_ff_reg[3][19]  ( .D(n714), .CK(clk), .RN(n1997), .Q(
        \loc_y[3][8] ) );
  DFFRX1 \loc_ff_reg[3][29]  ( .D(n724), .CK(clk), .RN(n1998), .Q(
        \loc_x[3][8] ) );
  DFFRX1 \loc_ff_reg[3][30]  ( .D(n725), .CK(clk), .RN(n1998), .Q(
        \loc_x[3][9] ) );
  DFFRX1 \s1_ff_reg[6]  ( .D(n2106), .CK(clk), .RN(n1984), .Q(s1_ff[6]) );
  DFFRX1 \s_ff_reg[6]  ( .D(n2127), .CK(clk), .RN(n1990), .Q(s_ff[6]) );
  DFFRX1 \s1_ff_reg[7]  ( .D(n2105), .CK(clk), .RN(n1985), .Q(s1_ff[7]) );
  DFFRX1 \s_ff_reg[7]  ( .D(n2126), .CK(clk), .RN(n1989), .Q(s_ff[7]) );
  DFFRX1 \loc_ff_reg[5][16]  ( .D(n773), .CK(clk), .RN(n1999), .Q(
        \loc_y[5][5] ), .QN(n125) );
  DFFRX1 \loc_ff_reg[5][17]  ( .D(n774), .CK(clk), .RN(n1999), .Q(
        \loc_y[5][6] ), .QN(n124) );
  DFFRX1 \loc_ff_reg[5][27]  ( .D(n784), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][6] ), .QN(n114) );
  DFFRX1 \loc_ff_reg[5][28]  ( .D(n785), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][7] ), .QN(n113) );
  DFFRX1 \loc_ff_reg[4][16]  ( .D(n742), .CK(clk), .RN(n1991), .Q(
        \loc_y[4][5] ) );
  DFFRX1 \loc_ff_reg[4][17]  ( .D(n743), .CK(clk), .RN(n1991), .Q(
        \loc_y[4][6] ) );
  DFFRX1 \loc_ff_reg[4][27]  ( .D(n753), .CK(clk), .RN(n1992), .Q(
        \loc_x[4][6] ) );
  DFFRX1 \loc_ff_reg[4][28]  ( .D(n754), .CK(clk), .RN(n1992), .Q(
        \loc_x[4][7] ) );
  DFFRX1 \loc_ff_reg[1][16]  ( .D(n649), .CK(clk), .RN(n2002), .Q(
        \loc_y[1][5] ) );
  DFFRX1 \loc_ff_reg[1][17]  ( .D(n650), .CK(clk), .RN(n2002), .Q(
        \loc_y[1][6] ) );
  DFFRX1 \loc_ff_reg[1][27]  ( .D(n660), .CK(clk), .RN(n2003), .Q(
        \loc_x[1][6] ) );
  DFFRX1 \loc_ff_reg[1][28]  ( .D(n661), .CK(clk), .RN(n2003), .Q(
        \loc_x[1][7] ) );
  DFFRX1 \loc_ff_reg[2][16]  ( .D(n680), .CK(clk), .RN(n2004), .Q(
        \loc_y[2][5] ) );
  DFFRX1 \loc_ff_reg[2][17]  ( .D(n681), .CK(clk), .RN(n2004), .Q(
        \loc_y[2][6] ) );
  DFFRX1 \loc_ff_reg[2][27]  ( .D(n691), .CK(clk), .RN(n2005), .Q(
        \loc_x[2][6] ) );
  DFFRX1 \loc_ff_reg[0][16]  ( .D(n618), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][5] ) );
  DFFRX1 \loc_ff_reg[0][17]  ( .D(n619), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][6] ) );
  DFFRX1 \loc_ff_reg[0][27]  ( .D(n629), .CK(clk), .RN(n1995), .Q(
        \loc_x[0][6] ) );
  DFFRX1 \loc_ff_reg[0][28]  ( .D(n630), .CK(clk), .RN(n1995), .Q(
        \loc_x[0][7] ) );
  DFFRX1 \loc_ff_reg[3][16]  ( .D(n711), .CK(clk), .RN(n1997), .Q(
        \loc_y[3][5] ) );
  DFFRX1 \loc_ff_reg[3][17]  ( .D(n712), .CK(clk), .RN(n1997), .Q(
        \loc_y[3][6] ) );
  DFFRX1 \loc_ff_reg[3][27]  ( .D(n722), .CK(clk), .RN(n1998), .Q(
        \loc_x[3][6] ) );
  DFFRX1 \loc_ff_reg[3][28]  ( .D(n723), .CK(clk), .RN(n1998), .Q(
        \loc_x[3][7] ) );
  DFFRX1 \s1_ff_reg[2]  ( .D(n2110), .CK(clk), .RN(n1984), .Q(s1_ff[2]) );
  DFFRX1 \s1_ff_reg[4]  ( .D(n2108), .CK(clk), .RN(n1984), .Q(s1_ff[4]) );
  DFFRX1 \s_ff_reg[4]  ( .D(n2129), .CK(clk), .RN(n1990), .Q(s_ff[4]) );
  DFFRX1 \s_ff_reg[2]  ( .D(n2131), .CK(clk), .RN(n1990), .Q(s_ff[2]) );
  DFFRX1 \s1_ff_reg[0]  ( .D(n2101), .CK(clk), .RN(n1986), .Q(s1_ff[0]) );
  DFFRX1 \s_ff_reg[0]  ( .D(n2133), .CK(clk), .RN(n1990), .Q(s_ff[0]) );
  DFFRX1 \s1_ff_reg[3]  ( .D(n2109), .CK(clk), .RN(n1984), .Q(s1_ff[3]) );
  DFFRX1 \s1_ff_reg[5]  ( .D(n2107), .CK(clk), .RN(n1984), .Q(s1_ff[5]) );
  DFFRX1 \s_ff_reg[5]  ( .D(n2128), .CK(clk), .RN(n1990), .Q(s_ff[5]) );
  DFFRX1 \s_ff_reg[3]  ( .D(n2130), .CK(clk), .RN(n1990), .Q(s_ff[3]) );
  DFFRX1 \loc_ff_reg[5][11]  ( .D(n768), .CK(clk), .RN(n1999), .Q(
        \loc_y[5][0] ), .QN(n130) );
  DFFRX1 \loc_ff_reg[5][12]  ( .D(n769), .CK(clk), .RN(n1999), .Q(
        \loc_y[5][1] ), .QN(n129) );
  DFFRX1 \loc_ff_reg[5][13]  ( .D(n770), .CK(clk), .RN(n1999), .Q(
        \loc_y[5][2] ), .QN(n128) );
  DFFRX1 \loc_ff_reg[5][14]  ( .D(n771), .CK(clk), .RN(n1999), .Q(
        \loc_y[5][3] ), .QN(n127) );
  DFFRX1 \loc_ff_reg[5][15]  ( .D(n772), .CK(clk), .RN(n1999), .Q(
        \loc_y[5][4] ), .QN(n126) );
  DFFRX1 \loc_ff_reg[5][23]  ( .D(n780), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][2] ), .QN(n118) );
  DFFRX1 \loc_ff_reg[5][24]  ( .D(n781), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][3] ), .QN(n117) );
  DFFRX1 \loc_ff_reg[5][25]  ( .D(n782), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][4] ), .QN(n116) );
  DFFRX1 \loc_ff_reg[5][26]  ( .D(n783), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][5] ), .QN(n115) );
  DFFRX1 \loc_ff_reg[4][12]  ( .D(n738), .CK(clk), .RN(n1991), .Q(
        \loc_y[4][1] ) );
  DFFRX1 \loc_ff_reg[4][13]  ( .D(n739), .CK(clk), .RN(n1991), .Q(
        \loc_y[4][2] ) );
  DFFRX1 \loc_ff_reg[4][14]  ( .D(n740), .CK(clk), .RN(n1991), .Q(
        \loc_y[4][3] ) );
  DFFRX1 \loc_ff_reg[4][15]  ( .D(n741), .CK(clk), .RN(n1991), .Q(
        \loc_y[4][4] ) );
  DFFRX1 \loc_ff_reg[4][24]  ( .D(n750), .CK(clk), .RN(n1992), .Q(
        \loc_x[4][3] ) );
  DFFRX1 \loc_ff_reg[4][25]  ( .D(n751), .CK(clk), .RN(n1992), .Q(
        \loc_x[4][4] ) );
  DFFRX1 \loc_ff_reg[4][26]  ( .D(n752), .CK(clk), .RN(n1992), .Q(
        \loc_x[4][5] ) );
  DFFRX1 \loc_ff_reg[1][12]  ( .D(n645), .CK(clk), .RN(n2001), .Q(
        \loc_y[1][1] ) );
  DFFRX1 \loc_ff_reg[1][13]  ( .D(n646), .CK(clk), .RN(n2002), .Q(
        \loc_y[1][2] ) );
  DFFRX1 \loc_ff_reg[1][14]  ( .D(n647), .CK(clk), .RN(n2002), .Q(
        \loc_y[1][3] ) );
  DFFRX1 \loc_ff_reg[1][15]  ( .D(n648), .CK(clk), .RN(n2002), .Q(
        \loc_y[1][4] ) );
  DFFRX1 \loc_ff_reg[1][24]  ( .D(n657), .CK(clk), .RN(n2002), .Q(
        \loc_x[1][3] ) );
  DFFRX1 \loc_ff_reg[1][25]  ( .D(n658), .CK(clk), .RN(n2003), .Q(
        \loc_x[1][4] ) );
  DFFRX1 \loc_ff_reg[1][26]  ( .D(n659), .CK(clk), .RN(n2003), .Q(
        \loc_x[1][5] ) );
  DFFRX1 \loc_ff_reg[2][11]  ( .D(n675), .CK(clk), .RN(n2004), .Q(
        \loc_y[2][0] ) );
  DFFRX1 \loc_ff_reg[2][12]  ( .D(n676), .CK(clk), .RN(n2004), .Q(
        \loc_y[2][1] ) );
  DFFRX1 \loc_ff_reg[2][13]  ( .D(n677), .CK(clk), .RN(n2004), .Q(
        \loc_y[2][2] ) );
  DFFRX1 \loc_ff_reg[2][14]  ( .D(n678), .CK(clk), .RN(n2004), .Q(
        \loc_y[2][3] ) );
  DFFRX1 \loc_ff_reg[2][15]  ( .D(n679), .CK(clk), .RN(n2004), .Q(
        \loc_y[2][4] ) );
  DFFRX1 \loc_ff_reg[2][23]  ( .D(n687), .CK(clk), .RN(n2005), .Q(
        \loc_x[2][2] ) );
  DFFRX1 \loc_ff_reg[2][24]  ( .D(n688), .CK(clk), .RN(n2005), .Q(
        \loc_x[2][3] ) );
  DFFRX1 \loc_ff_reg[2][25]  ( .D(n689), .CK(clk), .RN(n2005), .Q(
        \loc_x[2][4] ) );
  DFFRX1 \loc_ff_reg[2][26]  ( .D(n690), .CK(clk), .RN(n2005), .Q(
        \loc_x[2][5] ) );
  DFFRX1 \loc_ff_reg[0][12]  ( .D(n614), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][1] ) );
  DFFRX1 \loc_ff_reg[0][13]  ( .D(n615), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][2] ) );
  DFFRX1 \loc_ff_reg[0][14]  ( .D(n616), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][3] ) );
  DFFRX1 \loc_ff_reg[0][15]  ( .D(n617), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][4] ) );
  DFFRX1 \loc_ff_reg[0][23]  ( .D(n625), .CK(clk), .RN(n1995), .Q(
        \loc_x[0][2] ) );
  DFFRX1 \loc_ff_reg[0][24]  ( .D(n626), .CK(clk), .RN(n1995), .Q(
        \loc_x[0][3] ) );
  DFFRX1 \loc_ff_reg[0][25]  ( .D(n627), .CK(clk), .RN(n1995), .Q(
        \loc_x[0][4] ) );
  DFFRX1 \loc_ff_reg[0][26]  ( .D(n628), .CK(clk), .RN(n1995), .Q(
        \loc_x[0][5] ) );
  DFFRX1 \loc_ff_reg[3][12]  ( .D(n707), .CK(clk), .RN(n1996), .Q(
        \loc_y[3][1] ) );
  DFFRX1 \loc_ff_reg[3][13]  ( .D(n708), .CK(clk), .RN(n1996), .Q(
        \loc_y[3][2] ) );
  DFFRX1 \loc_ff_reg[3][14]  ( .D(n709), .CK(clk), .RN(n1996), .Q(
        \loc_y[3][3] ) );
  DFFRX1 \loc_ff_reg[3][15]  ( .D(n710), .CK(clk), .RN(n1997), .Q(
        \loc_y[3][4] ) );
  DFFRX1 \loc_ff_reg[3][24]  ( .D(n719), .CK(clk), .RN(n1997), .Q(
        \loc_x[3][3] ) );
  DFFRX1 \loc_ff_reg[3][25]  ( .D(n720), .CK(clk), .RN(n1997), .Q(
        \loc_x[3][4] ) );
  DFFRX1 \loc_ff_reg[3][26]  ( .D(n721), .CK(clk), .RN(n1997), .Q(
        \loc_x[3][5] ) );
  DFFSX1 \curr_state_reg[0]  ( .D(next_state[0]), .CK(clk), .SN(n2006), .Q(
        curr_state[0]), .QN(n110) );
  DFFRX1 \loc_ff_reg[5][21]  ( .D(n778), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][0] ), .QN(n120) );
  DFFRX1 \loc_ff_reg[5][22]  ( .D(n779), .CK(clk), .RN(n2000), .Q(
        \loc_x[5][1] ), .QN(n119) );
  DFFRX1 \loc_ff_reg[4][11]  ( .D(n737), .CK(clk), .RN(n1991), .Q(
        \loc_y[4][0] ) );
  DFFRX1 \loc_ff_reg[4][21]  ( .D(n747), .CK(clk), .RN(n1992), .Q(
        \loc_x[4][0] ) );
  DFFRX1 \loc_ff_reg[4][22]  ( .D(n748), .CK(clk), .RN(n1992), .Q(
        \loc_x[4][1] ) );
  DFFRX1 \loc_ff_reg[4][23]  ( .D(n749), .CK(clk), .RN(n1992), .Q(
        \loc_x[4][2] ) );
  DFFRX1 \loc_ff_reg[1][11]  ( .D(n644), .CK(clk), .RN(n2001), .Q(
        \loc_y[1][0] ) );
  DFFRX1 \loc_ff_reg[1][21]  ( .D(n654), .CK(clk), .RN(n2002), .Q(
        \loc_x[1][0] ) );
  DFFRX1 \loc_ff_reg[1][22]  ( .D(n655), .CK(clk), .RN(n2002), .Q(
        \loc_x[1][1] ) );
  DFFRX1 \loc_ff_reg[1][23]  ( .D(n656), .CK(clk), .RN(n2002), .Q(
        \loc_x[1][2] ) );
  DFFRX1 \loc_ff_reg[2][21]  ( .D(n685), .CK(clk), .RN(n2005), .Q(
        \loc_x[2][0] ) );
  DFFRX1 \loc_ff_reg[2][22]  ( .D(n686), .CK(clk), .RN(n2005), .Q(
        \loc_x[2][1] ) );
  DFFRX1 \loc_ff_reg[0][11]  ( .D(n613), .CK(clk), .RN(n1994), .Q(
        \loc_y[0][0] ) );
  DFFRX1 \loc_ff_reg[0][21]  ( .D(n623), .CK(clk), .RN(n1994), .Q(
        \loc_x[0][0] ) );
  DFFRX1 \loc_ff_reg[0][22]  ( .D(n624), .CK(clk), .RN(n1995), .Q(
        \loc_x[0][1] ) );
  DFFRX1 \loc_ff_reg[3][11]  ( .D(n706), .CK(clk), .RN(n1996), .Q(
        \loc_y[3][0] ) );
  DFFRX1 \loc_ff_reg[3][21]  ( .D(n716), .CK(clk), .RN(n1997), .Q(
        \loc_x[3][0] ) );
  DFFRX1 \loc_ff_reg[3][22]  ( .D(n717), .CK(clk), .RN(n1997), .Q(
        \loc_x[3][1] ) );
  DFFRX1 \loc_ff_reg[3][23]  ( .D(n718), .CK(clk), .RN(n1997), .Q(
        \loc_x[3][2] ) );
  DFFRX1 \curr_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n1982), .Q(
        curr_state[2]), .QN(n107) );
  OAI22XL U763 ( .A0(1'b1), .A1(n2098), .B0(n2082), .B1(n588), .Y(
        radicand_in[14]) );
  OAI22XL U764 ( .A0(1'b1), .A1(n2098), .B0(n2082), .B1(n589), .Y(
        radicand_in[13]) );
  OAI22XL U765 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n590), .Y(
        radicand_in[12]) );
  OAI22XL U766 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n591), .Y(
        radicand_in[11]) );
  OAI22XL U767 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n592), .Y(
        radicand_in[10]) );
  OAI22XL U768 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n593), .Y(
        radicand_in[9]) );
  OAI22XL U769 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n594), .Y(
        radicand_in[8]) );
  OAI22XL U770 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n595), .Y(
        radicand_in[7]) );
  OAI22XL U772 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n597), .Y(
        radicand_in[5]) );
  OAI22XL U773 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n598), .Y(
        radicand_in[4]) );
  OAI22XL U774 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n599), .Y(
        radicand_in[3]) );
  OAI22XL U775 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n600), .Y(
        radicand_in[2]) );
  OAI22XL U776 ( .A0(1'b1), .A1(n2099), .B0(n2082), .B1(n601), .Y(
        radicand_in[1]) );
  OAI22XL U777 ( .A0(1'b1), .A1(n2098), .B0(n602), .B1(n2082), .Y(
        radicand_in[0]) );
  OAI22XL U754 ( .A0(1'b1), .A1(n2098), .B0(n2081), .B1(n579), .Y(
        radicand_in[23]) );
  OAI22XL U755 ( .A0(1'b1), .A1(n2098), .B0(n2081), .B1(n580), .Y(
        radicand_in[22]) );
  OAI22XL U756 ( .A0(1'b1), .A1(n2098), .B0(n2081), .B1(n581), .Y(
        radicand_in[21]) );
  OAI22XL U757 ( .A0(1'b1), .A1(n2098), .B0(n2081), .B1(n582), .Y(
        radicand_in[20]) );
  OAI22XL U758 ( .A0(1'b1), .A1(n2098), .B0(n2081), .B1(n583), .Y(
        radicand_in[19]) );
  OAI22XL U759 ( .A0(1'b1), .A1(n2098), .B0(n2081), .B1(n584), .Y(
        radicand_in[18]) );
  OAI22XL U760 ( .A0(1'b1), .A1(n2098), .B0(n2081), .B1(n585), .Y(
        radicand_in[17]) );
  OAI22XL U761 ( .A0(1'b1), .A1(n2098), .B0(n2081), .B1(n586), .Y(
        radicand_in[16]) );
  OAI22XL U762 ( .A0(1'b1), .A1(n2098), .B0(n2081), .B1(n587), .Y(
        radicand_in[15]) );
  OAI22XL U771 ( .A0(1'b1), .A1(n2099), .B0(n2081), .B1(n596), .Y(
        radicand_in[6]) );
  DFFRX1 \polygon_area_reg[23]  ( .D(n831), .CK(clk), .RN(n1984), .Q(
        polygon_area[23]) );
  DFFRX1 \s1_ff_reg[1]  ( .D(n2111), .CK(clk), .RN(n1984), .Q(s1_ff[1]) );
  DFFRX1 \s_ff_reg[1]  ( .D(n2132), .CK(clk), .RN(n1990), .Q(s_ff[1]) );
  DFFRX1 \loc_ff_cnt_reg[2]  ( .D(n804), .CK(clk), .RN(n1982), .Q(
        loc_ff_cnt[2]), .QN(n132) );
  DFFSX1 \loc_ff_pt_reg[1]  ( .D(n803), .CK(clk), .SN(n2006), .Q(loc_ff_pt[1]), 
        .QN(n138) );
  DFFRX1 \curr_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n1982), .Q(
        curr_state[1]), .QN(n109) );
  DFFRX1 is_inside_reg ( .D(N604), .CK(clk), .RN(n1988), .QN(n1806) );
  DFFRX1 valid_reg ( .D(N1518), .CK(clk), .RN(n1982), .QN(n1807) );
  DFFRX1 \loc_ff_pt_reg[2]  ( .D(n855), .CK(clk), .RN(n1982), .Q(loc_ff_pt[2]), 
        .QN(n1955) );
  DFFRX4 \s0_ff_reg[0]  ( .D(n802), .CK(clk), .RN(n1989), .Q(s0_ff[0]) );
  DFFRX4 \s2_ff_reg[0]  ( .D(n2122), .CK(clk), .RN(n1985), .Q(s2_ff[0]) );
  DFFRX2 \s1_ff_reg[11]  ( .D(n790), .CK(clk), .RN(n1985), .Q(s1_ff[11]) );
  DFFRX2 \s_ff_reg[11]  ( .D(n789), .CK(clk), .RN(n1989), .Q(s_ff[11]) );
  DFFSX2 \loc_ff_pt_reg[0]  ( .D(n856), .CK(clk), .SN(n2006), .Q(loc_ff_pt[0]), 
        .QN(n1956) );
  DFFRX2 \s0_ff_reg[10]  ( .D(n801), .CK(clk), .RN(n1989), .Q(s0_ff[10]) );
  DFFRX2 \s0_ff_reg[8]  ( .D(n799), .CK(clk), .RN(n1989), .Q(s0_ff[8]) );
  DFFRX2 \loc_ff_cnt_reg[1]  ( .D(n805), .CK(clk), .RN(n1993), .Q(
        loc_ff_cnt[1]), .QN(n133) );
  DFFRX2 \s2_ff_reg[10]  ( .D(n2112), .CK(clk), .RN(n1986), .Q(s2_ff[10]) );
  DFFRX2 \s2_ff_reg[8]  ( .D(n2114), .CK(clk), .RN(n1986), .Q(s2_ff[8]) );
  DFFRX2 \s0_ff_reg[6]  ( .D(n797), .CK(clk), .RN(n1989), .Q(s0_ff[6]) );
  DFFRX2 \s0_ff_reg[4]  ( .D(n795), .CK(clk), .RN(n1988), .Q(s0_ff[4]) );
  DFFRX2 \s0_ff_reg[1]  ( .D(n792), .CK(clk), .RN(n1988), .Q(s0_ff[1]) );
  DFFRX2 \s0_ff_reg[9]  ( .D(n800), .CK(clk), .RN(n1989), .Q(s0_ff[9]) );
  DFFRX2 \s0_ff_reg[7]  ( .D(n798), .CK(clk), .RN(n1989), .Q(s0_ff[7]) );
  DFFRX2 \s0_ff_reg[5]  ( .D(n796), .CK(clk), .RN(n1988), .Q(s0_ff[5]) );
  DFFRX2 \s0_ff_reg[3]  ( .D(n794), .CK(clk), .RN(n1988), .Q(s0_ff[3]) );
  DFFRX2 \s0_ff_reg[2]  ( .D(n793), .CK(clk), .RN(n1988), .Q(s0_ff[2]) );
  DFFRX2 \s2_ff_reg[6]  ( .D(n2116), .CK(clk), .RN(n1985), .Q(s2_ff[6]) );
  DFFRX2 \s2_ff_reg[4]  ( .D(n2118), .CK(clk), .RN(n1985), .Q(s2_ff[4]) );
  DFFRX2 \s2_ff_reg[1]  ( .D(n2121), .CK(clk), .RN(n1985), .Q(s2_ff[1]) );
  DFFRX2 \s0_ff_reg[11]  ( .D(n2100), .CK(clk), .RN(n1989), .Q(s0_ff[11]) );
  DFFRX2 \s2_ff_reg[9]  ( .D(n2113), .CK(clk), .RN(n1986), .Q(s2_ff[9]) );
  DFFRX2 \s2_ff_reg[7]  ( .D(n2115), .CK(clk), .RN(n1986), .Q(s2_ff[7]) );
  DFFRX2 \s2_ff_reg[5]  ( .D(n2117), .CK(clk), .RN(n1985), .Q(s2_ff[5]) );
  DFFRX2 \s2_ff_reg[3]  ( .D(n2119), .CK(clk), .RN(n1985), .Q(s2_ff[3]) );
  DFFRX2 \s2_ff_reg[2]  ( .D(n2120), .CK(clk), .RN(n1985), .Q(s2_ff[2]) );
  DFFRX2 \s2_ff_reg[11]  ( .D(n791), .CK(clk), .RN(n1986), .Q(s2_ff[11]) );
  DFFRX2 \loc_ff_cnt_reg[0]  ( .D(n806), .CK(clk), .RN(n1982), .Q(
        loc_ff_cnt[0]), .QN(n1880) );
  OAI22XL U1799 ( .A0(n2021), .A1(n2169), .B0(n285), .B1(n175), .Y(n283) );
  OAI21XL U1800 ( .A0(n2021), .A1(n359), .B0(n362), .Y(n361) );
  AND2X2 U1801 ( .A(n1815), .B(loc_ff_cnt[1]), .Y(n1797) );
  AND2X2 U1802 ( .A(n1814), .B(n133), .Y(n1798) );
  AND2X2 U1803 ( .A(n1890), .B(loc_ff_pt[1]), .Y(n1799) );
  AND2X2 U1804 ( .A(n1891), .B(n138), .Y(n1800) );
  AND2X2 U1805 ( .A(n1891), .B(loc_ff_pt[1]), .Y(n1801) );
  AND2X2 U1806 ( .A(n1814), .B(loc_ff_cnt[1]), .Y(n1802) );
  NOR2X1 U1807 ( .A(n1956), .B(n1955), .Y(n1803) );
  NOR2X1 U1808 ( .A(n1880), .B(n132), .Y(n1804) );
  AND2X2 U1809 ( .A(n1890), .B(n138), .Y(n1805) );
  NAND4XL U1810 ( .A(loc_ff_cnt[1]), .B(n2176), .C(n1880), .D(n132), .Y(n362)
         );
  INVX12 U1811 ( .A(n1807), .Y(valid) );
  INVX12 U1812 ( .A(n1806), .Y(is_inside) );
  CLKINVX1 U1813 ( .A(n324), .Y(n2175) );
  NAND2X1 U1814 ( .A(n281), .B(n2169), .Y(n190) );
  CLKINVX1 U1815 ( .A(n283), .Y(n2167) );
  NAND2X1 U1816 ( .A(n1968), .B(n283), .Y(n185) );
  NAND2X1 U1817 ( .A(n398), .B(n399), .Y(n367) );
  NAND2X1 U1818 ( .A(n321), .B(n322), .Y(n290) );
  NAND2X1 U1819 ( .A(n474), .B(n473), .Y(n439) );
  NAND2X1 U1820 ( .A(n360), .B(n359), .Y(n326) );
  NAND2X1 U1821 ( .A(n435), .B(n436), .Y(n404) );
  NAND2BX1 U1822 ( .AN(n359), .B(n360), .Y(n328) );
  CLKINVX1 U1823 ( .A(n361), .Y(n2166) );
  CLKINVX1 U1824 ( .A(n282), .Y(n2169) );
  NAND2X1 U1825 ( .A(n281), .B(n282), .Y(n187) );
  NAND2BX1 U1826 ( .AN(n322), .B(n321), .Y(n287) );
  NAND2BX1 U1827 ( .AN(n399), .B(n398), .Y(n364) );
  NAND2BX1 U1828 ( .AN(n436), .B(n435), .Y(n401) );
  NAND2BX1 U1829 ( .AN(n473), .B(n474), .Y(n441) );
  NAND2X1 U1830 ( .A(n1968), .B(n361), .Y(n325) );
  CLKINVX1 U1831 ( .A(X[9]), .Y(n2135) );
  CLKINVX1 U1832 ( .A(X[8]), .Y(n2136) );
  CLKINVX1 U1833 ( .A(X[7]), .Y(n2137) );
  CLKINVX1 U1834 ( .A(X[6]), .Y(n2138) );
  CLKINVX1 U1835 ( .A(X[5]), .Y(n2139) );
  CLKINVX1 U1836 ( .A(X[4]), .Y(n2140) );
  CLKINVX1 U1837 ( .A(X[3]), .Y(n2141) );
  CLKINVX1 U1838 ( .A(X[2]), .Y(n2142) );
  CLKINVX1 U1839 ( .A(X[1]), .Y(n2143) );
  CLKINVX1 U1840 ( .A(X[0]), .Y(n2144) );
  CLKINVX1 U1841 ( .A(Y[9]), .Y(n2145) );
  CLKINVX1 U1842 ( .A(Y[8]), .Y(n2146) );
  CLKINVX1 U1843 ( .A(Y[7]), .Y(n2147) );
  CLKINVX1 U1844 ( .A(Y[6]), .Y(n2148) );
  CLKINVX1 U1845 ( .A(Y[5]), .Y(n2149) );
  CLKINVX1 U1846 ( .A(Y[4]), .Y(n2150) );
  CLKINVX1 U1847 ( .A(Y[3]), .Y(n2151) );
  CLKINVX1 U1848 ( .A(Y[2]), .Y(n2152) );
  CLKINVX1 U1849 ( .A(Y[1]), .Y(n2153) );
  CLKINVX1 U1850 ( .A(Y[0]), .Y(n2154) );
  CLKINVX1 U1851 ( .A(R[0]), .Y(n2165) );
  CLKINVX1 U1852 ( .A(R[10]), .Y(n2155) );
  CLKINVX1 U1853 ( .A(R[9]), .Y(n2156) );
  CLKINVX1 U1854 ( .A(R[8]), .Y(n2157) );
  CLKINVX1 U1855 ( .A(R[7]), .Y(n2158) );
  CLKINVX1 U1856 ( .A(R[6]), .Y(n2159) );
  CLKINVX1 U1857 ( .A(R[5]), .Y(n2160) );
  CLKINVX1 U1858 ( .A(R[4]), .Y(n2161) );
  CLKINVX1 U1859 ( .A(R[3]), .Y(n2162) );
  CLKINVX1 U1860 ( .A(R[2]), .Y(n2163) );
  CLKINVX1 U1861 ( .A(R[1]), .Y(n2164) );
  NAND2X1 U1862 ( .A(curr_state[0]), .B(n109), .Y(n176) );
  NOR3X1 U1863 ( .A(n2169), .B(loc_ff_cnt[1]), .C(n2172), .Y(n181) );
  NAND2X1 U1864 ( .A(n437), .B(n132), .Y(n175) );
  NAND3X1 U1865 ( .A(loc_ff_cnt[0]), .B(n133), .C(loc_ff_cnt[2]), .Y(n177) );
  NAND2BX1 U1866 ( .AN(curr_state[0]), .B(n109), .Y(n1810) );
  NOR3X1 U1867 ( .A(n109), .B(n2081), .C(n110), .Y(N1518) );
  NOR3X1 U1868 ( .A(n109), .B(n2098), .C(n110), .Y(n174) );
  OAI21XL U1869 ( .A0(n437), .A1(n132), .B0(n175), .Y(n568) );
  CLKBUFX3 U1870 ( .A(n107), .Y(n2082) );
  CLKINVX1 U1871 ( .A(reset), .Y(n2134) );
  INVX6 U1872 ( .A(n2086), .Y(n2083) );
  INVX6 U1873 ( .A(n2086), .Y(n2084) );
  CLKBUFX3 U1874 ( .A(n2095), .Y(n2090) );
  CLKBUFX3 U1875 ( .A(n2095), .Y(n2089) );
  CLKBUFX3 U1876 ( .A(n2095), .Y(n2088) );
  CLKBUFX3 U1877 ( .A(n2095), .Y(n2087) );
  CLKBUFX3 U1878 ( .A(n2095), .Y(n2091) );
  CLKBUFX3 U1879 ( .A(n2095), .Y(n2094) );
  CLKBUFX3 U1880 ( .A(n2095), .Y(n2093) );
  CLKBUFX3 U1881 ( .A(n2095), .Y(n2092) );
  INVX3 U1882 ( .A(n2086), .Y(n2085) );
  CLKBUFX3 U1883 ( .A(n2096), .Y(n2086) );
  CLKBUFX3 U1884 ( .A(n2097), .Y(n2096) );
  CLKBUFX3 U1885 ( .A(n2096), .Y(n2095) );
  CLKINVX1 U1886 ( .A(cross_result[23]), .Y(n2097) );
  INVX3 U1887 ( .A(n2072), .Y(n2069) );
  INVX3 U1888 ( .A(n2071), .Y(n2070) );
  NOR2X1 U1889 ( .A(n2020), .B(n2018), .Y(n281) );
  CLKBUFX3 U1890 ( .A(n438), .Y(n2030) );
  CLKBUFX3 U1891 ( .A(n438), .Y(n2031) );
  CLKBUFX3 U1892 ( .A(n286), .Y(n2060) );
  CLKBUFX3 U1893 ( .A(n286), .Y(n2061) );
  CLKBUFX3 U1894 ( .A(n363), .Y(n2046) );
  CLKBUFX3 U1895 ( .A(n363), .Y(n2047) );
  CLKBUFX3 U1896 ( .A(n400), .Y(n2038) );
  CLKBUFX3 U1897 ( .A(n400), .Y(n2039) );
  NAND2X1 U1898 ( .A(n2070), .B(n2021), .Y(n553) );
  CLKBUFX3 U1899 ( .A(n1804), .Y(n1885) );
  CLKBUFX3 U1900 ( .A(n1803), .Y(n1961) );
  CLKBUFX3 U1901 ( .A(n2175), .Y(n2020) );
  CLKBUFX3 U1902 ( .A(n1803), .Y(n1960) );
  CLKBUFX3 U1903 ( .A(n1804), .Y(n1884) );
  AO22X1 U1904 ( .A0(N579), .A1(n2069), .B0(N555), .B1(n2074), .Y(
        s_mul_out[17]) );
  AO22X1 U1905 ( .A0(N576), .A1(n2069), .B0(N552), .B1(n2073), .Y(
        s_mul_out[14]) );
  AO22X1 U1906 ( .A0(N577), .A1(n2069), .B0(N553), .B1(n2074), .Y(
        s_mul_out[15]) );
  AO22X1 U1907 ( .A0(N578), .A1(n2069), .B0(N554), .B1(n2073), .Y(
        s_mul_out[16]) );
  AO22X1 U1908 ( .A0(N580), .A1(n2069), .B0(N556), .B1(n2073), .Y(
        s_mul_out[18]) );
  AO22X1 U1909 ( .A0(N581), .A1(n2069), .B0(N557), .B1(n2074), .Y(
        s_mul_out[19]) );
  AO22X1 U1910 ( .A0(N582), .A1(n2069), .B0(N558), .B1(n2073), .Y(
        s_mul_out[20]) );
  AO22X1 U1911 ( .A0(N573), .A1(n2069), .B0(N549), .B1(n2073), .Y(
        s_mul_out[11]) );
  AO22X1 U1912 ( .A0(N574), .A1(n2069), .B0(N550), .B1(n2073), .Y(
        s_mul_out[12]) );
  AO22X1 U1913 ( .A0(N575), .A1(n2069), .B0(N551), .B1(n2074), .Y(
        s_mul_out[13]) );
  AO22X1 U1914 ( .A0(N570), .A1(n2070), .B0(N546), .B1(n2073), .Y(s_mul_out[8]) );
  AO22X1 U1915 ( .A0(N571), .A1(n2070), .B0(N547), .B1(n2073), .Y(s_mul_out[9]) );
  AO22X1 U1916 ( .A0(N572), .A1(n2069), .B0(N548), .B1(n2073), .Y(
        s_mul_out[10]) );
  AO22X1 U1917 ( .A0(N567), .A1(n2070), .B0(N543), .B1(n2074), .Y(s_mul_out[5]) );
  AO22X1 U1918 ( .A0(N568), .A1(n2070), .B0(N544), .B1(n2074), .Y(s_mul_out[6]) );
  AO22X1 U1919 ( .A0(N569), .A1(n2070), .B0(N545), .B1(n2073), .Y(s_mul_out[7]) );
  CLKBUFX3 U1920 ( .A(n2068), .Y(n2071) );
  CLKBUFX3 U1921 ( .A(n2068), .Y(n2072) );
  CLKBUFX3 U1922 ( .A(n2068), .Y(n2073) );
  CLKBUFX3 U1923 ( .A(n2068), .Y(n2074) );
  CLKINVX1 U1924 ( .A(n285), .Y(n2176) );
  NOR2X1 U1925 ( .A(n2020), .B(n2016), .Y(n360) );
  NOR2X1 U1926 ( .A(n2020), .B(n2057), .Y(n321) );
  NOR2X1 U1927 ( .A(n2021), .B(n2043), .Y(n398) );
  NOR2X1 U1928 ( .A(n2021), .B(n2035), .Y(n435) );
  NOR2X1 U1929 ( .A(n2021), .B(n2171), .Y(n474) );
  CLKBUFX3 U1930 ( .A(n2167), .Y(n2018) );
  CLKBUFX3 U1931 ( .A(n190), .Y(n2062) );
  CLKBUFX3 U1932 ( .A(n2175), .Y(n2021) );
  CLKBUFX3 U1933 ( .A(n190), .Y(n2063) );
  AND2X2 U1934 ( .A(n2024), .B(n2070), .Y(n520) );
  AND2X2 U1935 ( .A(n2024), .B(n2177), .Y(n476) );
  CLKBUFX3 U1936 ( .A(n2167), .Y(n2019) );
  CLKBUFX3 U1937 ( .A(n185), .Y(n2066) );
  CLKBUFX3 U1938 ( .A(n185), .Y(n2067) );
  NAND2X1 U1939 ( .A(n2070), .B(n2168), .Y(n558) );
  CLKBUFX3 U1940 ( .A(n572), .Y(n2022) );
  CLKBUFX3 U1941 ( .A(n572), .Y(n2023) );
  CLKBUFX3 U1942 ( .A(n2007), .Y(n2005) );
  CLKBUFX3 U1943 ( .A(n2008), .Y(n2004) );
  CLKBUFX3 U1944 ( .A(n2008), .Y(n2003) );
  CLKBUFX3 U1945 ( .A(n2009), .Y(n2002) );
  CLKBUFX3 U1946 ( .A(n2009), .Y(n2001) );
  CLKBUFX3 U1947 ( .A(n2010), .Y(n2000) );
  CLKBUFX3 U1948 ( .A(n2010), .Y(n1999) );
  CLKBUFX3 U1949 ( .A(n2011), .Y(n1998) );
  CLKBUFX3 U1950 ( .A(n2011), .Y(n1997) );
  CLKBUFX3 U1951 ( .A(n2012), .Y(n1996) );
  CLKBUFX3 U1952 ( .A(n2012), .Y(n1995) );
  CLKBUFX3 U1953 ( .A(n2013), .Y(n1994) );
  CLKBUFX3 U1954 ( .A(n2013), .Y(n1993) );
  CLKBUFX3 U1955 ( .A(n1977), .Y(n1992) );
  CLKBUFX3 U1956 ( .A(n2009), .Y(n1991) );
  CLKBUFX3 U1957 ( .A(n2014), .Y(n1990) );
  CLKBUFX3 U1958 ( .A(n2014), .Y(n1989) );
  CLKBUFX3 U1959 ( .A(n1978), .Y(n1988) );
  CLKBUFX3 U1960 ( .A(n2007), .Y(n1987) );
  CLKBUFX3 U1961 ( .A(n2015), .Y(n1986) );
  CLKBUFX3 U1962 ( .A(n2015), .Y(n1985) );
  CLKBUFX3 U1963 ( .A(n1978), .Y(n1984) );
  CLKBUFX3 U1964 ( .A(n2008), .Y(n1983) );
  CLKBUFX3 U1965 ( .A(n1979), .Y(n1982) );
  CLKBUFX3 U1966 ( .A(n1979), .Y(n1981) );
  CLKBUFX3 U1967 ( .A(n2007), .Y(n2006) );
  CLKBUFX3 U1968 ( .A(n1802), .Y(n1889) );
  CLKBUFX3 U1969 ( .A(n1799), .Y(n1965) );
  CLKBUFX3 U1970 ( .A(n1798), .Y(n1888) );
  CLKBUFX3 U1971 ( .A(n1963), .Y(n1964) );
  CLKBUFX3 U1972 ( .A(n1801), .Y(n1959) );
  CLKBUFX3 U1973 ( .A(n1877), .Y(n1886) );
  CLKBUFX3 U1974 ( .A(n1876), .Y(n1881) );
  CLKBUFX3 U1975 ( .A(n1957), .Y(n1958) );
  CLKBUFX3 U1976 ( .A(n1800), .Y(n1962) );
  CLKBUFX3 U1977 ( .A(N347), .Y(n1967) );
  CLKBUFX3 U1978 ( .A(N393), .Y(n1966) );
  AO22X1 U1979 ( .A0(N583), .A1(n2069), .B0(N559), .B1(n2074), .Y(
        s_mul_out[21]) );
  AO22X1 U1980 ( .A0(N584), .A1(n2069), .B0(N560), .B1(n2073), .Y(
        s_mul_out[22]) );
  AO22X1 U1981 ( .A0(N566), .A1(n2070), .B0(N542), .B1(n2074), .Y(s_mul_out[4]) );
  AO22X1 U1982 ( .A0(N564), .A1(n2070), .B0(N540), .B1(n2074), .Y(s_mul_out[2]) );
  CLKBUFX3 U1983 ( .A(n184), .Y(n2068) );
  AND2X2 U1984 ( .A(s1[11]), .B(n1969), .Y(n492) );
  AND2X2 U1985 ( .A(s2[11]), .B(n1969), .Y(n504) );
  CLKBUFX3 U1986 ( .A(n503), .Y(n1972) );
  NOR2BX1 U1987 ( .AN(n1969), .B(s2[11]), .Y(n503) );
  CLKBUFX3 U1988 ( .A(n491), .Y(n1971) );
  NOR2BX1 U1989 ( .AN(n1969), .B(s1[11]), .Y(n491) );
  CLKINVX1 U1990 ( .A(s2[1]), .Y(N744) );
  CLKINVX1 U1991 ( .A(s1[1]), .Y(N707) );
  CLKINVX1 U1992 ( .A(s2[2]), .Y(N743) );
  CLKINVX1 U1993 ( .A(s1[2]), .Y(N706) );
  CLKINVX1 U1994 ( .A(s1[3]), .Y(N705) );
  CLKINVX1 U1995 ( .A(s2[4]), .Y(N741) );
  CLKINVX1 U1996 ( .A(s2[5]), .Y(N740) );
  CLKINVX1 U1997 ( .A(s1[5]), .Y(N703) );
  CLKINVX1 U1998 ( .A(s2[6]), .Y(N739) );
  CLKINVX1 U1999 ( .A(s1[6]), .Y(N702) );
  CLKINVX1 U2000 ( .A(s2[7]), .Y(N738) );
  CLKINVX1 U2001 ( .A(s1[7]), .Y(N701) );
  CLKINVX1 U2002 ( .A(s2[8]), .Y(N737) );
  CLKINVX1 U2003 ( .A(s1[8]), .Y(N700) );
  CLKINVX1 U2004 ( .A(s2[9]), .Y(N736) );
  CLKINVX1 U2005 ( .A(s1[9]), .Y(N699) );
  CLKINVX1 U2006 ( .A(s2[3]), .Y(N742) );
  CLKINVX1 U2007 ( .A(s1[4]), .Y(N704) );
  CLKINVX1 U2008 ( .A(s2[10]), .Y(N735) );
  CLKINVX1 U2009 ( .A(s1[10]), .Y(N698) );
  AOI2BB2X2 U2010 ( .B0(n2169), .B1(n556), .A0N(n1968), .A1N(n553), .Y(n566)
         );
  NOR2X1 U2011 ( .A(n1968), .B(n324), .Y(n285) );
  NAND2X1 U2012 ( .A(n1968), .B(n1974), .Y(n438) );
  CLKBUFX3 U2013 ( .A(n2166), .Y(n2016) );
  CLKBUFX3 U2014 ( .A(n289), .Y(n2057) );
  CLKBUFX3 U2015 ( .A(n366), .Y(n2043) );
  CLKBUFX3 U2016 ( .A(n403), .Y(n2035) );
  INVX3 U2017 ( .A(n1974), .Y(n2171) );
  CLKBUFX3 U2018 ( .A(n187), .Y(n2064) );
  CLKBUFX3 U2019 ( .A(n326), .Y(n2050) );
  CLKBUFX3 U2020 ( .A(n287), .Y(n2058) );
  CLKBUFX3 U2021 ( .A(n364), .Y(n2044) );
  CLKBUFX3 U2022 ( .A(n401), .Y(n2036) );
  CLKBUFX3 U2023 ( .A(n441), .Y(n2027) );
  CLKBUFX3 U2024 ( .A(n439), .Y(n2028) );
  CLKBUFX3 U2025 ( .A(n441), .Y(n2026) );
  CLKBUFX3 U2026 ( .A(n290), .Y(n2054) );
  CLKBUFX3 U2027 ( .A(n290), .Y(n2055) );
  CLKBUFX3 U2028 ( .A(n367), .Y(n2040) );
  CLKBUFX3 U2029 ( .A(n367), .Y(n2041) );
  CLKBUFX3 U2030 ( .A(n404), .Y(n2032) );
  CLKBUFX3 U2031 ( .A(n404), .Y(n2033) );
  CLKBUFX3 U2032 ( .A(n328), .Y(n2048) );
  CLKBUFX3 U2033 ( .A(n328), .Y(n2049) );
  CLKBUFX3 U2034 ( .A(n287), .Y(n2059) );
  CLKBUFX3 U2035 ( .A(n364), .Y(n2045) );
  CLKBUFX3 U2036 ( .A(n401), .Y(n2037) );
  CLKBUFX3 U2037 ( .A(n187), .Y(n2065) );
  CLKBUFX3 U2038 ( .A(n326), .Y(n2051) );
  CLKBUFX3 U2039 ( .A(n439), .Y(n2029) );
  NAND2BX1 U2040 ( .AN(n2056), .B(n1968), .Y(n286) );
  NAND2BX1 U2041 ( .AN(n2042), .B(n1968), .Y(n363) );
  NAND2BX1 U2042 ( .AN(n2034), .B(n1968), .Y(n400) );
  CLKBUFX3 U2043 ( .A(n2166), .Y(n2017) );
  CLKINVX1 U2044 ( .A(n556), .Y(n2168) );
  CLKBUFX3 U2045 ( .A(n489), .Y(n2024) );
  CLKBUFX3 U2046 ( .A(n325), .Y(n2052) );
  CLKBUFX3 U2047 ( .A(n325), .Y(n2053) );
  CLKBUFX3 U2048 ( .A(n489), .Y(n2025) );
  CLKINVX1 U2049 ( .A(n1973), .Y(n2177) );
  CLKBUFX3 U2050 ( .A(n182), .Y(n2077) );
  CLKBUFX3 U2051 ( .A(n1979), .Y(n1980) );
  CLKBUFX3 U2052 ( .A(n1975), .Y(n2007) );
  CLKBUFX3 U2053 ( .A(n1975), .Y(n2008) );
  CLKBUFX3 U2054 ( .A(n1975), .Y(n2009) );
  CLKBUFX3 U2055 ( .A(n1976), .Y(n2010) );
  CLKBUFX3 U2056 ( .A(n1976), .Y(n2011) );
  CLKBUFX3 U2057 ( .A(n1976), .Y(n2012) );
  CLKBUFX3 U2058 ( .A(n1977), .Y(n2013) );
  CLKBUFX3 U2059 ( .A(n1977), .Y(n2014) );
  CLKBUFX3 U2060 ( .A(n1978), .Y(n2015) );
  AOI22X2 U2061 ( .A0(n2089), .A1(N888), .B0(n2084), .B1(N925), .Y(n250) );
  AOI22X2 U2062 ( .A0(n2088), .A1(N898), .B0(n2084), .B1(N935), .Y(n220) );
  AOI22X2 U2063 ( .A0(n2083), .A1(N888), .B0(n2091), .B1(N925), .Y(n248) );
  AOI22X2 U2064 ( .A0(n2083), .A1(N898), .B0(n2093), .B1(N935), .Y(n218) );
  AOI22X2 U2065 ( .A0(N908), .A1(n2091), .B0(n2085), .B1(N945), .Y(n189) );
  AOI22X2 U2066 ( .A0(n2087), .A1(N909), .B0(n2085), .B1(N946), .Y(n280) );
  AOI22X2 U2067 ( .A0(n2088), .A1(N899), .B0(n2084), .B1(N936), .Y(n217) );
  AOI22X2 U2068 ( .A0(n2088), .A1(N900), .B0(n2084), .B1(N937), .Y(n214) );
  AOI22X2 U2069 ( .A0(n2088), .A1(N901), .B0(n2084), .B1(N938), .Y(n211) );
  AOI22X2 U2070 ( .A0(n2087), .A1(N902), .B0(n2084), .B1(N939), .Y(n208) );
  AOI22X2 U2071 ( .A0(n2087), .A1(N903), .B0(n2085), .B1(N940), .Y(n205) );
  AOI22X2 U2072 ( .A0(n2087), .A1(N904), .B0(n2085), .B1(N941), .Y(n202) );
  AOI22X2 U2073 ( .A0(n2087), .A1(N905), .B0(n2085), .B1(N942), .Y(n199) );
  AOI22X2 U2074 ( .A0(n2087), .A1(N906), .B0(n2085), .B1(N943), .Y(n196) );
  AOI22X2 U2075 ( .A0(n2087), .A1(N907), .B0(n2085), .B1(N944), .Y(n193) );
  AOI22X2 U2076 ( .A0(n2091), .A1(N879), .B0(n2085), .B1(N916), .Y(n277) );
  AOI22X2 U2077 ( .A0(n2090), .A1(N880), .B0(n2085), .B1(N917), .Y(n274) );
  AOI22X2 U2078 ( .A0(n2091), .A1(N881), .B0(n2084), .B1(N918), .Y(n271) );
  AOI22X2 U2079 ( .A0(n2090), .A1(N882), .B0(n2084), .B1(N919), .Y(n268) );
  AOI22X2 U2080 ( .A0(n2090), .A1(N883), .B0(n2084), .B1(N920), .Y(n265) );
  AOI22X2 U2081 ( .A0(n2090), .A1(N884), .B0(n2084), .B1(N921), .Y(n262) );
  AOI22X2 U2082 ( .A0(n2090), .A1(N885), .B0(n2084), .B1(N922), .Y(n259) );
  AOI22X2 U2083 ( .A0(n2090), .A1(N886), .B0(n2084), .B1(N923), .Y(n256) );
  AOI22X2 U2084 ( .A0(n2090), .A1(N887), .B0(n2084), .B1(N924), .Y(n253) );
  AOI22X2 U2085 ( .A0(n2089), .A1(N889), .B0(n2084), .B1(N926), .Y(n247) );
  AOI22X2 U2086 ( .A0(n2089), .A1(N890), .B0(n2084), .B1(N927), .Y(n244) );
  AOI22X2 U2087 ( .A0(n2089), .A1(N891), .B0(n2084), .B1(N928), .Y(n241) );
  AOI22X2 U2088 ( .A0(n2089), .A1(N892), .B0(n2084), .B1(N929), .Y(n238) );
  AOI22X2 U2089 ( .A0(n2089), .A1(N893), .B0(n2084), .B1(N930), .Y(n235) );
  AOI22X2 U2090 ( .A0(n2089), .A1(N894), .B0(n2084), .B1(N931), .Y(n232) );
  AOI22X2 U2091 ( .A0(n2088), .A1(N895), .B0(n2084), .B1(N932), .Y(n229) );
  AOI22X2 U2092 ( .A0(n2088), .A1(N896), .B0(n2085), .B1(N933), .Y(n226) );
  AOI22X2 U2093 ( .A0(n2088), .A1(N897), .B0(n2084), .B1(N934), .Y(n223) );
  AOI22X2 U2094 ( .A0(n2084), .A1(N909), .B0(n2094), .B1(N946), .Y(n278) );
  AOI22X2 U2095 ( .A0(n2083), .A1(N899), .B0(n2094), .B1(N936), .Y(n215) );
  AOI22X2 U2096 ( .A0(n2083), .A1(N900), .B0(n2093), .B1(N937), .Y(n212) );
  AOI22X2 U2097 ( .A0(n2083), .A1(N901), .B0(n2094), .B1(N938), .Y(n209) );
  AOI22X2 U2098 ( .A0(n2083), .A1(N902), .B0(n2094), .B1(N939), .Y(n206) );
  AOI22X2 U2099 ( .A0(n2083), .A1(N903), .B0(n2094), .B1(N940), .Y(n203) );
  AOI22X2 U2100 ( .A0(n2083), .A1(N904), .B0(n2093), .B1(N941), .Y(n200) );
  AOI22X2 U2101 ( .A0(n2083), .A1(N905), .B0(n2094), .B1(N942), .Y(n197) );
  AOI22X2 U2102 ( .A0(n2083), .A1(N906), .B0(n2092), .B1(N943), .Y(n194) );
  AOI22X2 U2103 ( .A0(n2083), .A1(N907), .B0(n2087), .B1(N944), .Y(n191) );
  AOI22X2 U2104 ( .A0(n2084), .A1(N879), .B0(n2091), .B1(N916), .Y(n275) );
  AOI22X2 U2105 ( .A0(n2084), .A1(N880), .B0(n2095), .B1(N917), .Y(n272) );
  AOI22X2 U2106 ( .A0(n2084), .A1(N881), .B0(n2094), .B1(N918), .Y(n269) );
  AOI22X2 U2107 ( .A0(n2083), .A1(N882), .B0(n2094), .B1(N919), .Y(n266) );
  AOI22X2 U2108 ( .A0(n2084), .A1(N883), .B0(n2093), .B1(N920), .Y(n263) );
  AOI22X2 U2109 ( .A0(n2084), .A1(N884), .B0(n2093), .B1(N921), .Y(n260) );
  AOI22X2 U2110 ( .A0(n2084), .A1(N885), .B0(n2092), .B1(N922), .Y(n257) );
  AOI22X2 U2111 ( .A0(n2083), .A1(N886), .B0(n2092), .B1(N923), .Y(n254) );
  AOI22X2 U2112 ( .A0(n2083), .A1(N887), .B0(n2091), .B1(N924), .Y(n251) );
  AOI22X2 U2113 ( .A0(n2083), .A1(N889), .B0(n2092), .B1(N926), .Y(n245) );
  AOI22X2 U2114 ( .A0(n2083), .A1(N890), .B0(n2091), .B1(N927), .Y(n242) );
  AOI22X2 U2115 ( .A0(n2083), .A1(N891), .B0(n2091), .B1(N928), .Y(n239) );
  AOI22X2 U2116 ( .A0(n2083), .A1(N892), .B0(n2092), .B1(N929), .Y(n236) );
  AOI22X2 U2117 ( .A0(n2083), .A1(N893), .B0(n2092), .B1(N930), .Y(n233) );
  AOI22X2 U2118 ( .A0(n2083), .A1(N894), .B0(n2092), .B1(N931), .Y(n230) );
  AOI22X2 U2119 ( .A0(n2083), .A1(N895), .B0(n2093), .B1(N932), .Y(n227) );
  AOI22X2 U2120 ( .A0(n2083), .A1(N896), .B0(n2092), .B1(N933), .Y(n224) );
  AOI22X2 U2121 ( .A0(n2083), .A1(N897), .B0(n2093), .B1(N934), .Y(n221) );
  AOI22X2 U2122 ( .A0(n2083), .A1(N908), .B0(N945), .B1(n2093), .Y(n186) );
  CLKBUFX3 U2123 ( .A(n1797), .Y(n1883) );
  CLKBUFX3 U2124 ( .A(n1886), .Y(n1887) );
  CLKBUFX3 U2125 ( .A(n1881), .Y(n1882) );
  CLKBUFX3 U2126 ( .A(n1805), .Y(n1963) );
  CLKBUFX3 U2127 ( .A(n1952), .Y(n1957) );
  NOR2X2 U2128 ( .A(n178), .B(n2098), .Y(n324) );
  AO22X1 U2129 ( .A0(N585), .A1(n2069), .B0(N561), .B1(n2074), .Y(
        s_mul_out[23]) );
  NOR2BX1 U2130 ( .AN(N1518), .B(N602), .Y(N604) );
  AO22X1 U2131 ( .A0(N565), .A1(n2070), .B0(N541), .B1(n2074), .Y(s_mul_out[3]) );
  NOR2X1 U2132 ( .A(n178), .B(n2081), .Y(n184) );
  AO22X1 U2133 ( .A0(N563), .A1(n2070), .B0(N539), .B1(n2074), .Y(s_mul_out[1]) );
  AO22X1 U2134 ( .A0(N562), .A1(n2069), .B0(N538), .B1(n2073), .Y(s_mul_out[0]) );
  AND2X2 U2135 ( .A(s0[11]), .B(n1969), .Y(n519) );
  CLKBUFX3 U2136 ( .A(n521), .Y(n1970) );
  NOR2BX1 U2137 ( .AN(n1969), .B(s0[11]), .Y(n521) );
  CLKINVX1 U2138 ( .A(s0[9]), .Y(N662) );
  CLKINVX1 U2139 ( .A(s0[10]), .Y(N661) );
  CLKINVX1 U2140 ( .A(s0[1]), .Y(N670) );
  CLKINVX1 U2141 ( .A(s0[8]), .Y(N663) );
  CLKINVX1 U2142 ( .A(s0[7]), .Y(N664) );
  CLKINVX1 U2143 ( .A(s0[6]), .Y(N665) );
  CLKINVX1 U2144 ( .A(s0[5]), .Y(N666) );
  CLKINVX1 U2145 ( .A(s0[4]), .Y(N667) );
  CLKINVX1 U2146 ( .A(s0[3]), .Y(N668) );
  CLKINVX1 U2147 ( .A(s0[2]), .Y(N669) );
  NOR2X1 U2148 ( .A(n2021), .B(n181), .Y(n556) );
  BUFX4 U2149 ( .A(n451), .Y(n1974) );
  OAI22XL U2150 ( .A0(n2021), .A1(n473), .B0(n285), .B1(n177), .Y(n451) );
  CLKINVX1 U2151 ( .A(n576), .Y(n2170) );
  CLKBUFX3 U2152 ( .A(n284), .Y(n1968) );
  NOR2X1 U2153 ( .A(n176), .B(n2098), .Y(n284) );
  CLKBUFX3 U2154 ( .A(n289), .Y(n2056) );
  CLKBUFX3 U2155 ( .A(n366), .Y(n2042) );
  CLKBUFX3 U2156 ( .A(n403), .Y(n2034) );
  NOR2X1 U2157 ( .A(N1518), .B(n1969), .Y(n489) );
  NAND2X1 U2158 ( .A(n2071), .B(n175), .Y(n570) );
  NOR2X1 U2159 ( .A(N1518), .B(n2078), .Y(n572) );
  NAND2X1 U2160 ( .A(n181), .B(n324), .Y(n562) );
  NAND2X1 U2161 ( .A(n177), .B(n570), .Y(n567) );
  CLKBUFX3 U2162 ( .A(n478), .Y(n1969) );
  NOR2X1 U2163 ( .A(n1810), .B(n2081), .Y(n478) );
  CLKBUFX3 U2164 ( .A(n174), .Y(n2078) );
  OAI211X1 U2165 ( .A0(n176), .A1(n177), .B0(n2177), .C0(n178), .Y(
        next_state[1]) );
  NAND2X1 U2166 ( .A(n1968), .B(n177), .Y(n564) );
  CLKBUFX3 U2167 ( .A(n174), .Y(n2079) );
  CLKBUFX3 U2168 ( .A(n475), .Y(n1973) );
  NOR2X1 U2169 ( .A(n176), .B(n2081), .Y(n475) );
  CLKBUFX3 U2170 ( .A(n174), .Y(n2080) );
  NAND2X1 U2171 ( .A(n176), .B(n178), .Y(n182) );
  INVX3 U2172 ( .A(n1810), .Y(n2075) );
  INVX3 U2173 ( .A(n1810), .Y(n2076) );
  CLKBUFX3 U2174 ( .A(n2134), .Y(n1975) );
  CLKBUFX3 U2175 ( .A(n2134), .Y(n1976) );
  CLKBUFX3 U2176 ( .A(n2134), .Y(n1977) );
  CLKBUFX3 U2177 ( .A(n2134), .Y(n1978) );
  CLKBUFX3 U2178 ( .A(n2134), .Y(n1979) );
  OAI221XL U2179 ( .A0(n2066), .A1(n2164), .B0(n186), .B1(n2065), .C0(n188), 
        .Y(n603) );
  AOI2BB2X1 U2180 ( .B0(\loc_r[0][1] ), .B1(n2019), .A0N(n189), .A1N(n2063), 
        .Y(n188) );
  OAI221XL U2181 ( .A0(n2144), .A1(n2052), .B0(n250), .B1(n2051), .C0(n348), 
        .Y(n685) );
  AOI2BB2X1 U2182 ( .B0(\loc_x[2][0] ), .B1(n2016), .A0N(n248), .A1N(n2048), 
        .Y(n348) );
  OAI221XL U2183 ( .A0(n2154), .A1(n2053), .B0(n220), .B1(n2050), .C0(n338), 
        .Y(n675) );
  AOI2BB2X1 U2184 ( .B0(\loc_y[2][0] ), .B1(n2017), .A0N(n218), .A1N(n2049), 
        .Y(n338) );
  OAI221XL U2185 ( .A0(n2144), .A1(n2060), .B0(n250), .B1(n2059), .C0(n310), 
        .Y(n654) );
  AOI2BB2X1 U2186 ( .B0(\loc_x[1][0] ), .B1(n2056), .A0N(n248), .A1N(n2054), 
        .Y(n310) );
  OAI221XL U2187 ( .A0(n2154), .A1(n2061), .B0(n220), .B1(n2058), .C0(n300), 
        .Y(n644) );
  AOI2BB2X1 U2188 ( .B0(\loc_y[1][0] ), .B1(n2057), .A0N(n218), .A1N(n2055), 
        .Y(n300) );
  OAI221XL U2189 ( .A0(n2144), .A1(n2046), .B0(n250), .B1(n2045), .C0(n387), 
        .Y(n716) );
  AOI2BB2X1 U2190 ( .B0(\loc_x[3][0] ), .B1(n2042), .A0N(n248), .A1N(n2040), 
        .Y(n387) );
  OAI221XL U2191 ( .A0(n2154), .A1(n2047), .B0(n220), .B1(n2044), .C0(n377), 
        .Y(n706) );
  AOI2BB2X1 U2192 ( .B0(\loc_y[3][0] ), .B1(n2043), .A0N(n218), .A1N(n2041), 
        .Y(n377) );
  OAI221XL U2193 ( .A0(n2144), .A1(n2038), .B0(n250), .B1(n2037), .C0(n424), 
        .Y(n747) );
  AOI2BB2X1 U2194 ( .B0(\loc_x[4][0] ), .B1(n2034), .A0N(n248), .A1N(n2032), 
        .Y(n424) );
  OAI221XL U2195 ( .A0(n2154), .A1(n2039), .B0(n220), .B1(n2036), .C0(n414), 
        .Y(n737) );
  AOI2BB2X1 U2196 ( .B0(\loc_y[4][0] ), .B1(n2035), .A0N(n218), .A1N(n2033), 
        .Y(n414) );
  OAI221XL U2197 ( .A0(n2066), .A1(n2144), .B0(n248), .B1(n2065), .C0(n249), 
        .Y(n623) );
  AOI2BB2X1 U2198 ( .B0(\loc_x[0][0] ), .B1(n2018), .A0N(n250), .A1N(n2062), 
        .Y(n249) );
  OAI221XL U2199 ( .A0(n2067), .A1(n2154), .B0(n218), .B1(n2064), .C0(n219), 
        .Y(n613) );
  AOI2BB2X1 U2200 ( .B0(\loc_y[0][0] ), .B1(n2019), .A0N(n220), .A1N(n2063), 
        .Y(n219) );
  OAI221XL U2201 ( .A0(n2164), .A1(n2052), .B0(n189), .B1(n2051), .C0(n327), 
        .Y(n665) );
  AOI2BB2X1 U2202 ( .B0(\loc_r[2][1] ), .B1(n2017), .A0N(n186), .A1N(n2049), 
        .Y(n327) );
  OAI221XL U2203 ( .A0(n2164), .A1(n286), .B0(n189), .B1(n2059), .C0(n288), 
        .Y(n634) );
  AOI2BB2X1 U2204 ( .B0(\loc_r[1][1] ), .B1(n2056), .A0N(n186), .A1N(n290), 
        .Y(n288) );
  OAI221XL U2205 ( .A0(n2164), .A1(n2030), .B0(n189), .B1(n2029), .C0(n440), 
        .Y(n758) );
  AOI2BB2X1 U2206 ( .B0(\loc_r[5][1] ), .B1(n2171), .A0N(n186), .A1N(n2027), 
        .Y(n440) );
  OAI221XL U2207 ( .A0(n2164), .A1(n363), .B0(n189), .B1(n2045), .C0(n365), 
        .Y(n696) );
  AOI2BB2X1 U2208 ( .B0(\loc_r[3][1] ), .B1(n2042), .A0N(n186), .A1N(n367), 
        .Y(n365) );
  OAI221XL U2209 ( .A0(n2164), .A1(n400), .B0(n189), .B1(n2037), .C0(n402), 
        .Y(n727) );
  AOI2BB2X1 U2210 ( .B0(\loc_r[4][1] ), .B1(n2034), .A0N(n186), .A1N(n404), 
        .Y(n402) );
  OAI221XL U2211 ( .A0(n2165), .A1(n2052), .B0(n280), .B1(n2051), .C0(n358), 
        .Y(n695) );
  AOI2BB2X1 U2212 ( .B0(\loc_r[2][0] ), .B1(n2016), .A0N(n278), .A1N(n2048), 
        .Y(n358) );
  OAI221XL U2213 ( .A0(n2155), .A1(n2053), .B0(n217), .B1(n2050), .C0(n337), 
        .Y(n674) );
  AOI2BB2X1 U2214 ( .B0(\loc_r[2][10] ), .B1(n2017), .A0N(n215), .A1N(n2049), 
        .Y(n337) );
  OAI221XL U2215 ( .A0(n2156), .A1(n2053), .B0(n214), .B1(n2050), .C0(n336), 
        .Y(n673) );
  AOI2BB2X1 U2216 ( .B0(\loc_r[2][9] ), .B1(n2017), .A0N(n212), .A1N(n2049), 
        .Y(n336) );
  OAI221XL U2217 ( .A0(n2157), .A1(n2053), .B0(n211), .B1(n2050), .C0(n335), 
        .Y(n672) );
  AOI2BB2X1 U2218 ( .B0(\loc_r[2][8] ), .B1(n2017), .A0N(n209), .A1N(n2049), 
        .Y(n335) );
  OAI221XL U2219 ( .A0(n2158), .A1(n2052), .B0(n208), .B1(n2050), .C0(n334), 
        .Y(n671) );
  AOI2BB2X1 U2220 ( .B0(\loc_r[2][7] ), .B1(n2017), .A0N(n206), .A1N(n2049), 
        .Y(n334) );
  OAI221XL U2221 ( .A0(n2159), .A1(n2053), .B0(n205), .B1(n2050), .C0(n333), 
        .Y(n670) );
  AOI2BB2X1 U2222 ( .B0(\loc_r[2][6] ), .B1(n2017), .A0N(n203), .A1N(n2049), 
        .Y(n333) );
  OAI221XL U2223 ( .A0(n2160), .A1(n2053), .B0(n202), .B1(n2051), .C0(n332), 
        .Y(n669) );
  AOI2BB2X1 U2224 ( .B0(\loc_r[2][5] ), .B1(n2017), .A0N(n200), .A1N(n2049), 
        .Y(n332) );
  OAI221XL U2225 ( .A0(n2161), .A1(n325), .B0(n199), .B1(n2051), .C0(n331), 
        .Y(n668) );
  AOI2BB2X1 U2226 ( .B0(\loc_r[2][4] ), .B1(n2017), .A0N(n197), .A1N(n2049), 
        .Y(n331) );
  OAI221XL U2227 ( .A0(n2162), .A1(n325), .B0(n196), .B1(n2051), .C0(n330), 
        .Y(n667) );
  AOI2BB2X1 U2228 ( .B0(\loc_r[2][3] ), .B1(n2017), .A0N(n194), .A1N(n2049), 
        .Y(n330) );
  OAI221XL U2229 ( .A0(n2163), .A1(n325), .B0(n193), .B1(n2051), .C0(n329), 
        .Y(n666) );
  AOI2BB2X1 U2230 ( .B0(\loc_r[2][2] ), .B1(n2017), .A0N(n191), .A1N(n2049), 
        .Y(n329) );
  OAI221XL U2231 ( .A0(n2165), .A1(n2060), .B0(n280), .B1(n2059), .C0(n320), 
        .Y(n664) );
  AOI2BB2X1 U2232 ( .B0(\loc_r[1][0] ), .B1(n2056), .A0N(n278), .A1N(n2054), 
        .Y(n320) );
  OAI221XL U2233 ( .A0(n2155), .A1(n2061), .B0(n217), .B1(n2058), .C0(n299), 
        .Y(n643) );
  AOI2BB2X1 U2234 ( .B0(\loc_r[1][10] ), .B1(n2057), .A0N(n215), .A1N(n2055), 
        .Y(n299) );
  OAI221XL U2235 ( .A0(n2156), .A1(n2061), .B0(n214), .B1(n2058), .C0(n298), 
        .Y(n642) );
  AOI2BB2X1 U2236 ( .B0(\loc_r[1][9] ), .B1(n2057), .A0N(n212), .A1N(n2055), 
        .Y(n298) );
  OAI221XL U2237 ( .A0(n2157), .A1(n2061), .B0(n211), .B1(n2058), .C0(n297), 
        .Y(n641) );
  AOI2BB2X1 U2238 ( .B0(\loc_r[1][8] ), .B1(n2057), .A0N(n209), .A1N(n2055), 
        .Y(n297) );
  OAI221XL U2239 ( .A0(n2158), .A1(n2060), .B0(n208), .B1(n2058), .C0(n296), 
        .Y(n640) );
  AOI2BB2X1 U2240 ( .B0(\loc_r[1][7] ), .B1(n2057), .A0N(n206), .A1N(n2055), 
        .Y(n296) );
  OAI221XL U2241 ( .A0(n2159), .A1(n2061), .B0(n205), .B1(n2058), .C0(n295), 
        .Y(n639) );
  AOI2BB2X1 U2242 ( .B0(\loc_r[1][6] ), .B1(n2057), .A0N(n203), .A1N(n2054), 
        .Y(n295) );
  OAI221XL U2243 ( .A0(n2160), .A1(n286), .B0(n202), .B1(n2059), .C0(n294), 
        .Y(n638) );
  AOI2BB2X1 U2244 ( .B0(\loc_r[1][5] ), .B1(n2057), .A0N(n200), .A1N(n2055), 
        .Y(n294) );
  OAI221XL U2245 ( .A0(n2161), .A1(n286), .B0(n199), .B1(n2059), .C0(n293), 
        .Y(n637) );
  AOI2BB2X1 U2246 ( .B0(\loc_r[1][4] ), .B1(n2057), .A0N(n197), .A1N(n2054), 
        .Y(n293) );
  OAI221XL U2247 ( .A0(n2162), .A1(n286), .B0(n196), .B1(n2059), .C0(n292), 
        .Y(n636) );
  AOI2BB2X1 U2248 ( .B0(\loc_r[1][3] ), .B1(n2057), .A0N(n194), .A1N(n290), 
        .Y(n292) );
  OAI221XL U2249 ( .A0(n2163), .A1(n286), .B0(n193), .B1(n2059), .C0(n291), 
        .Y(n635) );
  AOI2BB2X1 U2250 ( .B0(\loc_r[1][2] ), .B1(n2057), .A0N(n191), .A1N(n290), 
        .Y(n291) );
  OAI221XL U2251 ( .A0(n2165), .A1(n2030), .B0(n280), .B1(n2029), .C0(n472), 
        .Y(n788) );
  AOI2BB2X1 U2252 ( .B0(\loc_r[5][0] ), .B1(n2171), .A0N(n278), .A1N(n2026), 
        .Y(n472) );
  OAI221XL U2253 ( .A0(n2155), .A1(n2030), .B0(n217), .B1(n2029), .C0(n450), 
        .Y(n767) );
  AOI2BB2X1 U2254 ( .B0(\loc_r[5][10] ), .B1(n2171), .A0N(n215), .A1N(n2027), 
        .Y(n450) );
  OAI221XL U2255 ( .A0(n2156), .A1(n2030), .B0(n214), .B1(n2029), .C0(n449), 
        .Y(n766) );
  AOI2BB2X1 U2256 ( .B0(\loc_r[5][9] ), .B1(n2171), .A0N(n212), .A1N(n2027), 
        .Y(n449) );
  OAI221XL U2257 ( .A0(n2157), .A1(n2030), .B0(n211), .B1(n2029), .C0(n448), 
        .Y(n765) );
  AOI2BB2X1 U2258 ( .B0(\loc_r[5][8] ), .B1(n2171), .A0N(n209), .A1N(n2027), 
        .Y(n448) );
  OAI221XL U2259 ( .A0(n2158), .A1(n2030), .B0(n208), .B1(n2029), .C0(n447), 
        .Y(n764) );
  AOI2BB2X1 U2260 ( .B0(\loc_r[5][7] ), .B1(n2171), .A0N(n206), .A1N(n2027), 
        .Y(n447) );
  OAI221XL U2261 ( .A0(n2159), .A1(n2030), .B0(n205), .B1(n2029), .C0(n446), 
        .Y(n763) );
  AOI2BB2X1 U2262 ( .B0(\loc_r[5][6] ), .B1(n2171), .A0N(n203), .A1N(n2026), 
        .Y(n446) );
  OAI221XL U2263 ( .A0(n2160), .A1(n2030), .B0(n202), .B1(n2029), .C0(n445), 
        .Y(n762) );
  AOI2BB2X1 U2264 ( .B0(\loc_r[5][5] ), .B1(n2171), .A0N(n200), .A1N(n2026), 
        .Y(n445) );
  OAI221XL U2265 ( .A0(n2161), .A1(n2030), .B0(n199), .B1(n2028), .C0(n444), 
        .Y(n761) );
  AOI2BB2X1 U2266 ( .B0(\loc_r[5][4] ), .B1(n2171), .A0N(n197), .A1N(n2026), 
        .Y(n444) );
  OAI221XL U2267 ( .A0(n2162), .A1(n2030), .B0(n196), .B1(n2029), .C0(n443), 
        .Y(n760) );
  AOI2BB2X1 U2268 ( .B0(\loc_r[5][3] ), .B1(n2171), .A0N(n194), .A1N(n2027), 
        .Y(n443) );
  OAI221XL U2269 ( .A0(n2163), .A1(n2030), .B0(n193), .B1(n2028), .C0(n442), 
        .Y(n759) );
  AOI2BB2X1 U2270 ( .B0(\loc_r[5][2] ), .B1(n2171), .A0N(n191), .A1N(n2026), 
        .Y(n442) );
  OAI221XL U2271 ( .A0(n2165), .A1(n2046), .B0(n280), .B1(n2045), .C0(n397), 
        .Y(n726) );
  AOI2BB2X1 U2272 ( .B0(\loc_r[3][0] ), .B1(n2042), .A0N(n278), .A1N(n2040), 
        .Y(n397) );
  OAI221XL U2273 ( .A0(n2155), .A1(n2047), .B0(n217), .B1(n2044), .C0(n376), 
        .Y(n705) );
  AOI2BB2X1 U2274 ( .B0(\loc_r[3][10] ), .B1(n2043), .A0N(n215), .A1N(n2041), 
        .Y(n376) );
  OAI221XL U2275 ( .A0(n2156), .A1(n2047), .B0(n214), .B1(n2044), .C0(n375), 
        .Y(n704) );
  AOI2BB2X1 U2276 ( .B0(\loc_r[3][9] ), .B1(n2043), .A0N(n212), .A1N(n2041), 
        .Y(n375) );
  OAI221XL U2277 ( .A0(n2157), .A1(n2047), .B0(n211), .B1(n2044), .C0(n374), 
        .Y(n703) );
  AOI2BB2X1 U2278 ( .B0(\loc_r[3][8] ), .B1(n2043), .A0N(n209), .A1N(n2041), 
        .Y(n374) );
  OAI221XL U2279 ( .A0(n2158), .A1(n2046), .B0(n208), .B1(n2044), .C0(n373), 
        .Y(n702) );
  AOI2BB2X1 U2280 ( .B0(\loc_r[3][7] ), .B1(n2043), .A0N(n206), .A1N(n2041), 
        .Y(n373) );
  OAI221XL U2281 ( .A0(n2159), .A1(n2047), .B0(n205), .B1(n2044), .C0(n372), 
        .Y(n701) );
  AOI2BB2X1 U2282 ( .B0(\loc_r[3][6] ), .B1(n2043), .A0N(n203), .A1N(n2040), 
        .Y(n372) );
  OAI221XL U2283 ( .A0(n2160), .A1(n363), .B0(n202), .B1(n2045), .C0(n371), 
        .Y(n700) );
  AOI2BB2X1 U2284 ( .B0(\loc_r[3][5] ), .B1(n2043), .A0N(n200), .A1N(n2041), 
        .Y(n371) );
  OAI221XL U2285 ( .A0(n2161), .A1(n363), .B0(n199), .B1(n2045), .C0(n370), 
        .Y(n699) );
  AOI2BB2X1 U2286 ( .B0(\loc_r[3][4] ), .B1(n2043), .A0N(n197), .A1N(n2040), 
        .Y(n370) );
  OAI221XL U2287 ( .A0(n2162), .A1(n363), .B0(n196), .B1(n2045), .C0(n369), 
        .Y(n698) );
  AOI2BB2X1 U2288 ( .B0(\loc_r[3][3] ), .B1(n2043), .A0N(n194), .A1N(n367), 
        .Y(n369) );
  OAI221XL U2289 ( .A0(n2163), .A1(n363), .B0(n193), .B1(n2045), .C0(n368), 
        .Y(n697) );
  AOI2BB2X1 U2290 ( .B0(\loc_r[3][2] ), .B1(n2043), .A0N(n191), .A1N(n367), 
        .Y(n368) );
  OAI221XL U2291 ( .A0(n2165), .A1(n2038), .B0(n280), .B1(n2037), .C0(n434), 
        .Y(n757) );
  AOI2BB2X1 U2292 ( .B0(\loc_r[4][0] ), .B1(n2034), .A0N(n278), .A1N(n2032), 
        .Y(n434) );
  OAI221XL U2293 ( .A0(n2155), .A1(n2039), .B0(n217), .B1(n2036), .C0(n413), 
        .Y(n736) );
  AOI2BB2X1 U2294 ( .B0(\loc_r[4][10] ), .B1(n2035), .A0N(n215), .A1N(n2033), 
        .Y(n413) );
  OAI221XL U2295 ( .A0(n2156), .A1(n2039), .B0(n214), .B1(n2036), .C0(n412), 
        .Y(n735) );
  AOI2BB2X1 U2296 ( .B0(\loc_r[4][9] ), .B1(n2035), .A0N(n212), .A1N(n2033), 
        .Y(n412) );
  OAI221XL U2297 ( .A0(n2157), .A1(n2039), .B0(n211), .B1(n2036), .C0(n411), 
        .Y(n734) );
  AOI2BB2X1 U2298 ( .B0(\loc_r[4][8] ), .B1(n2035), .A0N(n209), .A1N(n2033), 
        .Y(n411) );
  OAI221XL U2299 ( .A0(n2158), .A1(n2038), .B0(n208), .B1(n2036), .C0(n410), 
        .Y(n733) );
  AOI2BB2X1 U2300 ( .B0(\loc_r[4][7] ), .B1(n2035), .A0N(n206), .A1N(n2033), 
        .Y(n410) );
  OAI221XL U2301 ( .A0(n2159), .A1(n2039), .B0(n205), .B1(n2036), .C0(n409), 
        .Y(n732) );
  AOI2BB2X1 U2302 ( .B0(\loc_r[4][6] ), .B1(n2035), .A0N(n203), .A1N(n2032), 
        .Y(n409) );
  OAI221XL U2303 ( .A0(n2160), .A1(n400), .B0(n202), .B1(n2037), .C0(n408), 
        .Y(n731) );
  AOI2BB2X1 U2304 ( .B0(\loc_r[4][5] ), .B1(n2035), .A0N(n200), .A1N(n2033), 
        .Y(n408) );
  OAI221XL U2305 ( .A0(n2161), .A1(n400), .B0(n199), .B1(n2037), .C0(n407), 
        .Y(n730) );
  AOI2BB2X1 U2306 ( .B0(\loc_r[4][4] ), .B1(n2035), .A0N(n197), .A1N(n2032), 
        .Y(n407) );
  OAI221XL U2307 ( .A0(n2162), .A1(n400), .B0(n196), .B1(n2037), .C0(n406), 
        .Y(n729) );
  AOI2BB2X1 U2308 ( .B0(\loc_r[4][3] ), .B1(n2035), .A0N(n194), .A1N(n404), 
        .Y(n406) );
  OAI221XL U2309 ( .A0(n2163), .A1(n400), .B0(n193), .B1(n2037), .C0(n405), 
        .Y(n728) );
  AOI2BB2X1 U2310 ( .B0(\loc_r[4][2] ), .B1(n2035), .A0N(n191), .A1N(n404), 
        .Y(n405) );
  OAI221XL U2311 ( .A0(n2066), .A1(n2165), .B0(n278), .B1(n2065), .C0(n279), 
        .Y(n633) );
  AOI2BB2X1 U2312 ( .B0(\loc_r[0][0] ), .B1(n2018), .A0N(n280), .A1N(n2062), 
        .Y(n279) );
  OAI221XL U2313 ( .A0(n2067), .A1(n2155), .B0(n215), .B1(n2064), .C0(n216), 
        .Y(n612) );
  AOI2BB2X1 U2314 ( .B0(\loc_r[0][10] ), .B1(n2019), .A0N(n217), .A1N(n2063), 
        .Y(n216) );
  OAI221XL U2315 ( .A0(n2067), .A1(n2156), .B0(n212), .B1(n2064), .C0(n213), 
        .Y(n611) );
  AOI2BB2X1 U2316 ( .B0(\loc_r[0][9] ), .B1(n2019), .A0N(n214), .A1N(n2063), 
        .Y(n213) );
  OAI221XL U2317 ( .A0(n2067), .A1(n2157), .B0(n209), .B1(n2064), .C0(n210), 
        .Y(n610) );
  AOI2BB2X1 U2318 ( .B0(\loc_r[0][8] ), .B1(n2019), .A0N(n211), .A1N(n2063), 
        .Y(n210) );
  OAI221XL U2319 ( .A0(n2066), .A1(n2158), .B0(n206), .B1(n2064), .C0(n207), 
        .Y(n609) );
  AOI2BB2X1 U2320 ( .B0(\loc_r[0][7] ), .B1(n2019), .A0N(n208), .A1N(n2063), 
        .Y(n207) );
  OAI221XL U2321 ( .A0(n2067), .A1(n2159), .B0(n203), .B1(n2064), .C0(n204), 
        .Y(n608) );
  AOI2BB2X1 U2322 ( .B0(\loc_r[0][6] ), .B1(n2019), .A0N(n205), .A1N(n2063), 
        .Y(n204) );
  OAI221XL U2323 ( .A0(n2067), .A1(n2160), .B0(n200), .B1(n2065), .C0(n201), 
        .Y(n607) );
  AOI2BB2X1 U2324 ( .B0(\loc_r[0][5] ), .B1(n2019), .A0N(n202), .A1N(n2063), 
        .Y(n201) );
  OAI221XL U2325 ( .A0(n185), .A1(n2161), .B0(n197), .B1(n2065), .C0(n198), 
        .Y(n606) );
  AOI2BB2X1 U2326 ( .B0(\loc_r[0][4] ), .B1(n2019), .A0N(n199), .A1N(n2063), 
        .Y(n198) );
  OAI221XL U2327 ( .A0(n185), .A1(n2162), .B0(n194), .B1(n2065), .C0(n195), 
        .Y(n605) );
  AOI2BB2X1 U2328 ( .B0(\loc_r[0][3] ), .B1(n2019), .A0N(n196), .A1N(n2063), 
        .Y(n195) );
  OAI221XL U2329 ( .A0(n185), .A1(n2163), .B0(n191), .B1(n2065), .C0(n192), 
        .Y(n604) );
  AOI2BB2X1 U2330 ( .B0(\loc_r[0][2] ), .B1(n2019), .A0N(n193), .A1N(n2063), 
        .Y(n192) );
  OAI221XL U2331 ( .A0(n2135), .A1(n2052), .B0(n277), .B1(n2051), .C0(n357), 
        .Y(n694) );
  AOI2BB2X1 U2332 ( .B0(\loc_x[2][9] ), .B1(n2016), .A0N(n275), .A1N(n2048), 
        .Y(n357) );
  OAI221XL U2333 ( .A0(n2136), .A1(n2052), .B0(n274), .B1(n2051), .C0(n356), 
        .Y(n693) );
  AOI2BB2X1 U2334 ( .B0(\loc_x[2][8] ), .B1(n2016), .A0N(n272), .A1N(n2048), 
        .Y(n356) );
  OAI221XL U2335 ( .A0(n2137), .A1(n2052), .B0(n271), .B1(n2051), .C0(n355), 
        .Y(n692) );
  AOI2BB2X1 U2336 ( .B0(\loc_x[2][7] ), .B1(n2016), .A0N(n269), .A1N(n2048), 
        .Y(n355) );
  OAI221XL U2337 ( .A0(n2138), .A1(n2052), .B0(n268), .B1(n2051), .C0(n354), 
        .Y(n691) );
  AOI2BB2X1 U2338 ( .B0(\loc_x[2][6] ), .B1(n2016), .A0N(n266), .A1N(n2048), 
        .Y(n354) );
  OAI221XL U2339 ( .A0(n2139), .A1(n2052), .B0(n265), .B1(n2051), .C0(n353), 
        .Y(n690) );
  AOI2BB2X1 U2340 ( .B0(\loc_x[2][5] ), .B1(n2016), .A0N(n263), .A1N(n2048), 
        .Y(n353) );
  OAI221XL U2341 ( .A0(n2140), .A1(n2052), .B0(n262), .B1(n2051), .C0(n352), 
        .Y(n689) );
  AOI2BB2X1 U2342 ( .B0(\loc_x[2][4] ), .B1(n2016), .A0N(n260), .A1N(n2048), 
        .Y(n352) );
  OAI221XL U2343 ( .A0(n2141), .A1(n2052), .B0(n259), .B1(n2050), .C0(n351), 
        .Y(n688) );
  AOI2BB2X1 U2344 ( .B0(\loc_x[2][3] ), .B1(n2016), .A0N(n257), .A1N(n2048), 
        .Y(n351) );
  OAI221XL U2345 ( .A0(n2142), .A1(n2052), .B0(n256), .B1(n2051), .C0(n350), 
        .Y(n687) );
  AOI2BB2X1 U2346 ( .B0(\loc_x[2][2] ), .B1(n2016), .A0N(n254), .A1N(n2048), 
        .Y(n350) );
  OAI221XL U2347 ( .A0(n2143), .A1(n2052), .B0(n253), .B1(n2050), .C0(n349), 
        .Y(n686) );
  AOI2BB2X1 U2348 ( .B0(\loc_x[2][1] ), .B1(n2016), .A0N(n251), .A1N(n2048), 
        .Y(n349) );
  OAI221XL U2349 ( .A0(n2145), .A1(n2052), .B0(n247), .B1(n2051), .C0(n347), 
        .Y(n684) );
  AOI2BB2X1 U2350 ( .B0(\loc_y[2][9] ), .B1(n2016), .A0N(n245), .A1N(n2048), 
        .Y(n347) );
  OAI221XL U2351 ( .A0(n2146), .A1(n2053), .B0(n244), .B1(n326), .C0(n346), 
        .Y(n683) );
  AOI2BB2X1 U2352 ( .B0(\loc_y[2][8] ), .B1(n2016), .A0N(n242), .A1N(n328), 
        .Y(n346) );
  OAI221XL U2353 ( .A0(n2147), .A1(n2053), .B0(n241), .B1(n2050), .C0(n345), 
        .Y(n682) );
  AOI2BB2X1 U2354 ( .B0(\loc_y[2][7] ), .B1(n2016), .A0N(n239), .A1N(n328), 
        .Y(n345) );
  OAI221XL U2355 ( .A0(n2148), .A1(n2053), .B0(n238), .B1(n2050), .C0(n344), 
        .Y(n681) );
  AOI2BB2X1 U2356 ( .B0(\loc_y[2][6] ), .B1(n2017), .A0N(n236), .A1N(n2049), 
        .Y(n344) );
  OAI221XL U2357 ( .A0(n2149), .A1(n2053), .B0(n235), .B1(n2050), .C0(n343), 
        .Y(n680) );
  AOI2BB2X1 U2358 ( .B0(\loc_y[2][5] ), .B1(n2017), .A0N(n233), .A1N(n2048), 
        .Y(n343) );
  OAI221XL U2359 ( .A0(n2150), .A1(n2053), .B0(n232), .B1(n2050), .C0(n342), 
        .Y(n679) );
  AOI2BB2X1 U2360 ( .B0(\loc_y[2][4] ), .B1(n2017), .A0N(n230), .A1N(n2049), 
        .Y(n342) );
  OAI221XL U2361 ( .A0(n2151), .A1(n2053), .B0(n229), .B1(n2050), .C0(n341), 
        .Y(n678) );
  AOI2BB2X1 U2362 ( .B0(\loc_y[2][3] ), .B1(n2017), .A0N(n227), .A1N(n2048), 
        .Y(n341) );
  OAI221XL U2363 ( .A0(n2152), .A1(n2053), .B0(n226), .B1(n2050), .C0(n340), 
        .Y(n677) );
  AOI2BB2X1 U2364 ( .B0(\loc_y[2][2] ), .B1(n2017), .A0N(n224), .A1N(n2049), 
        .Y(n340) );
  OAI221XL U2365 ( .A0(n2153), .A1(n2053), .B0(n223), .B1(n2050), .C0(n339), 
        .Y(n676) );
  AOI2BB2X1 U2366 ( .B0(\loc_y[2][1] ), .B1(n2017), .A0N(n221), .A1N(n328), 
        .Y(n339) );
  OAI221XL U2367 ( .A0(n2135), .A1(n2060), .B0(n277), .B1(n2059), .C0(n319), 
        .Y(n663) );
  AOI2BB2X1 U2368 ( .B0(\loc_x[1][9] ), .B1(n2056), .A0N(n275), .A1N(n2054), 
        .Y(n319) );
  OAI221XL U2369 ( .A0(n2136), .A1(n2060), .B0(n274), .B1(n2059), .C0(n318), 
        .Y(n662) );
  AOI2BB2X1 U2370 ( .B0(\loc_x[1][8] ), .B1(n2056), .A0N(n272), .A1N(n2054), 
        .Y(n318) );
  OAI221XL U2371 ( .A0(n2137), .A1(n2060), .B0(n271), .B1(n2059), .C0(n317), 
        .Y(n661) );
  AOI2BB2X1 U2372 ( .B0(\loc_x[1][7] ), .B1(n2056), .A0N(n269), .A1N(n2054), 
        .Y(n317) );
  OAI221XL U2373 ( .A0(n2138), .A1(n2060), .B0(n268), .B1(n2059), .C0(n316), 
        .Y(n660) );
  AOI2BB2X1 U2374 ( .B0(\loc_x[1][6] ), .B1(n2056), .A0N(n266), .A1N(n2054), 
        .Y(n316) );
  OAI221XL U2375 ( .A0(n2139), .A1(n2060), .B0(n265), .B1(n2059), .C0(n315), 
        .Y(n659) );
  AOI2BB2X1 U2376 ( .B0(\loc_x[1][5] ), .B1(n2056), .A0N(n263), .A1N(n2054), 
        .Y(n315) );
  OAI221XL U2377 ( .A0(n2140), .A1(n2060), .B0(n262), .B1(n2059), .C0(n314), 
        .Y(n658) );
  AOI2BB2X1 U2378 ( .B0(\loc_x[1][4] ), .B1(n2056), .A0N(n260), .A1N(n2054), 
        .Y(n314) );
  OAI221XL U2379 ( .A0(n2141), .A1(n2060), .B0(n259), .B1(n2058), .C0(n313), 
        .Y(n657) );
  AOI2BB2X1 U2380 ( .B0(\loc_x[1][3] ), .B1(n2056), .A0N(n257), .A1N(n2054), 
        .Y(n313) );
  OAI221XL U2381 ( .A0(n2142), .A1(n2060), .B0(n256), .B1(n2059), .C0(n312), 
        .Y(n656) );
  AOI2BB2X1 U2382 ( .B0(\loc_x[1][2] ), .B1(n2056), .A0N(n254), .A1N(n2054), 
        .Y(n312) );
  OAI221XL U2383 ( .A0(n2143), .A1(n2060), .B0(n253), .B1(n2058), .C0(n311), 
        .Y(n655) );
  AOI2BB2X1 U2384 ( .B0(\loc_x[1][1] ), .B1(n2056), .A0N(n251), .A1N(n2054), 
        .Y(n311) );
  OAI221XL U2385 ( .A0(n2145), .A1(n2060), .B0(n247), .B1(n2059), .C0(n309), 
        .Y(n653) );
  AOI2BB2X1 U2386 ( .B0(\loc_y[1][9] ), .B1(n2056), .A0N(n245), .A1N(n2054), 
        .Y(n309) );
  OAI221XL U2387 ( .A0(n2146), .A1(n2061), .B0(n244), .B1(n287), .C0(n308), 
        .Y(n652) );
  AOI2BB2X1 U2388 ( .B0(\loc_y[1][8] ), .B1(n2056), .A0N(n242), .A1N(n2055), 
        .Y(n308) );
  OAI221XL U2389 ( .A0(n2147), .A1(n2061), .B0(n241), .B1(n2058), .C0(n307), 
        .Y(n651) );
  AOI2BB2X1 U2390 ( .B0(\loc_y[1][7] ), .B1(n2056), .A0N(n239), .A1N(n2055), 
        .Y(n307) );
  OAI221XL U2391 ( .A0(n2148), .A1(n2061), .B0(n238), .B1(n2058), .C0(n306), 
        .Y(n650) );
  AOI2BB2X1 U2392 ( .B0(\loc_y[1][6] ), .B1(n2056), .A0N(n236), .A1N(n2055), 
        .Y(n306) );
  OAI221XL U2393 ( .A0(n2149), .A1(n2061), .B0(n235), .B1(n2058), .C0(n305), 
        .Y(n649) );
  AOI2BB2X1 U2394 ( .B0(\loc_y[1][5] ), .B1(n2056), .A0N(n233), .A1N(n2055), 
        .Y(n305) );
  OAI221XL U2395 ( .A0(n2150), .A1(n2061), .B0(n232), .B1(n2058), .C0(n304), 
        .Y(n648) );
  AOI2BB2X1 U2396 ( .B0(\loc_y[1][4] ), .B1(n2057), .A0N(n230), .A1N(n2055), 
        .Y(n304) );
  OAI221XL U2397 ( .A0(n2151), .A1(n2061), .B0(n229), .B1(n2058), .C0(n303), 
        .Y(n647) );
  AOI2BB2X1 U2398 ( .B0(\loc_y[1][3] ), .B1(n2057), .A0N(n227), .A1N(n2055), 
        .Y(n303) );
  OAI221XL U2399 ( .A0(n2152), .A1(n2061), .B0(n226), .B1(n2058), .C0(n302), 
        .Y(n646) );
  AOI2BB2X1 U2400 ( .B0(\loc_y[1][2] ), .B1(n2057), .A0N(n224), .A1N(n2055), 
        .Y(n302) );
  OAI221XL U2401 ( .A0(n2153), .A1(n2061), .B0(n223), .B1(n2058), .C0(n301), 
        .Y(n645) );
  AOI2BB2X1 U2402 ( .B0(\loc_y[1][1] ), .B1(n2057), .A0N(n221), .A1N(n2055), 
        .Y(n301) );
  OAI221XL U2403 ( .A0(n2135), .A1(n2046), .B0(n277), .B1(n2045), .C0(n396), 
        .Y(n725) );
  AOI2BB2X1 U2404 ( .B0(\loc_x[3][9] ), .B1(n2042), .A0N(n275), .A1N(n2040), 
        .Y(n396) );
  OAI221XL U2405 ( .A0(n2136), .A1(n2046), .B0(n274), .B1(n2045), .C0(n395), 
        .Y(n724) );
  AOI2BB2X1 U2406 ( .B0(\loc_x[3][8] ), .B1(n2042), .A0N(n272), .A1N(n2040), 
        .Y(n395) );
  OAI221XL U2407 ( .A0(n2137), .A1(n2046), .B0(n271), .B1(n2045), .C0(n394), 
        .Y(n723) );
  AOI2BB2X1 U2408 ( .B0(\loc_x[3][7] ), .B1(n2042), .A0N(n269), .A1N(n2040), 
        .Y(n394) );
  OAI221XL U2409 ( .A0(n2138), .A1(n2046), .B0(n268), .B1(n2045), .C0(n393), 
        .Y(n722) );
  AOI2BB2X1 U2410 ( .B0(\loc_x[3][6] ), .B1(n2042), .A0N(n266), .A1N(n2040), 
        .Y(n393) );
  OAI221XL U2411 ( .A0(n2139), .A1(n2046), .B0(n265), .B1(n2045), .C0(n392), 
        .Y(n721) );
  AOI2BB2X1 U2412 ( .B0(\loc_x[3][5] ), .B1(n2042), .A0N(n263), .A1N(n2040), 
        .Y(n392) );
  OAI221XL U2413 ( .A0(n2140), .A1(n2046), .B0(n262), .B1(n2045), .C0(n391), 
        .Y(n720) );
  AOI2BB2X1 U2414 ( .B0(\loc_x[3][4] ), .B1(n2042), .A0N(n260), .A1N(n2040), 
        .Y(n391) );
  OAI221XL U2415 ( .A0(n2141), .A1(n2046), .B0(n259), .B1(n2044), .C0(n390), 
        .Y(n719) );
  AOI2BB2X1 U2416 ( .B0(\loc_x[3][3] ), .B1(n2042), .A0N(n257), .A1N(n2040), 
        .Y(n390) );
  OAI221XL U2417 ( .A0(n2142), .A1(n2046), .B0(n256), .B1(n2045), .C0(n389), 
        .Y(n718) );
  AOI2BB2X1 U2418 ( .B0(\loc_x[3][2] ), .B1(n2042), .A0N(n254), .A1N(n2040), 
        .Y(n389) );
  OAI221XL U2419 ( .A0(n2143), .A1(n2046), .B0(n253), .B1(n2044), .C0(n388), 
        .Y(n717) );
  AOI2BB2X1 U2420 ( .B0(\loc_x[3][1] ), .B1(n2042), .A0N(n251), .A1N(n2040), 
        .Y(n388) );
  OAI221XL U2421 ( .A0(n2145), .A1(n2046), .B0(n247), .B1(n2045), .C0(n386), 
        .Y(n715) );
  AOI2BB2X1 U2422 ( .B0(\loc_y[3][9] ), .B1(n2042), .A0N(n245), .A1N(n2040), 
        .Y(n386) );
  OAI221XL U2423 ( .A0(n2146), .A1(n2047), .B0(n244), .B1(n364), .C0(n385), 
        .Y(n714) );
  AOI2BB2X1 U2424 ( .B0(\loc_y[3][8] ), .B1(n2042), .A0N(n242), .A1N(n2041), 
        .Y(n385) );
  OAI221XL U2425 ( .A0(n2147), .A1(n2047), .B0(n241), .B1(n2044), .C0(n384), 
        .Y(n713) );
  AOI2BB2X1 U2426 ( .B0(\loc_y[3][7] ), .B1(n2042), .A0N(n239), .A1N(n2041), 
        .Y(n384) );
  OAI221XL U2427 ( .A0(n2148), .A1(n2047), .B0(n238), .B1(n2044), .C0(n383), 
        .Y(n712) );
  AOI2BB2X1 U2428 ( .B0(\loc_y[3][6] ), .B1(n2042), .A0N(n236), .A1N(n2041), 
        .Y(n383) );
  OAI221XL U2429 ( .A0(n2149), .A1(n2047), .B0(n235), .B1(n2044), .C0(n382), 
        .Y(n711) );
  AOI2BB2X1 U2430 ( .B0(\loc_y[3][5] ), .B1(n2042), .A0N(n233), .A1N(n2041), 
        .Y(n382) );
  OAI221XL U2431 ( .A0(n2150), .A1(n2047), .B0(n232), .B1(n2044), .C0(n381), 
        .Y(n710) );
  AOI2BB2X1 U2432 ( .B0(\loc_y[3][4] ), .B1(n2043), .A0N(n230), .A1N(n2041), 
        .Y(n381) );
  OAI221XL U2433 ( .A0(n2151), .A1(n2047), .B0(n229), .B1(n2044), .C0(n380), 
        .Y(n709) );
  AOI2BB2X1 U2434 ( .B0(\loc_y[3][3] ), .B1(n2043), .A0N(n227), .A1N(n2041), 
        .Y(n380) );
  OAI221XL U2435 ( .A0(n2152), .A1(n2047), .B0(n226), .B1(n2044), .C0(n379), 
        .Y(n708) );
  AOI2BB2X1 U2436 ( .B0(\loc_y[3][2] ), .B1(n2043), .A0N(n224), .A1N(n2041), 
        .Y(n379) );
  OAI221XL U2437 ( .A0(n2153), .A1(n2047), .B0(n223), .B1(n2044), .C0(n378), 
        .Y(n707) );
  AOI2BB2X1 U2438 ( .B0(\loc_y[3][1] ), .B1(n2043), .A0N(n221), .A1N(n2041), 
        .Y(n378) );
  OAI221XL U2439 ( .A0(n2135), .A1(n2038), .B0(n277), .B1(n2037), .C0(n433), 
        .Y(n756) );
  AOI2BB2X1 U2440 ( .B0(\loc_x[4][9] ), .B1(n2034), .A0N(n275), .A1N(n2032), 
        .Y(n433) );
  OAI221XL U2441 ( .A0(n2136), .A1(n2038), .B0(n274), .B1(n2037), .C0(n432), 
        .Y(n755) );
  AOI2BB2X1 U2442 ( .B0(\loc_x[4][8] ), .B1(n2034), .A0N(n272), .A1N(n2032), 
        .Y(n432) );
  OAI221XL U2443 ( .A0(n2137), .A1(n2038), .B0(n271), .B1(n2037), .C0(n431), 
        .Y(n754) );
  AOI2BB2X1 U2444 ( .B0(\loc_x[4][7] ), .B1(n2034), .A0N(n269), .A1N(n2032), 
        .Y(n431) );
  OAI221XL U2445 ( .A0(n2138), .A1(n2038), .B0(n268), .B1(n2037), .C0(n430), 
        .Y(n753) );
  AOI2BB2X1 U2446 ( .B0(\loc_x[4][6] ), .B1(n2034), .A0N(n266), .A1N(n2032), 
        .Y(n430) );
  OAI221XL U2447 ( .A0(n2139), .A1(n2038), .B0(n265), .B1(n2037), .C0(n429), 
        .Y(n752) );
  AOI2BB2X1 U2448 ( .B0(\loc_x[4][5] ), .B1(n2034), .A0N(n263), .A1N(n2032), 
        .Y(n429) );
  OAI221XL U2449 ( .A0(n2140), .A1(n2038), .B0(n262), .B1(n2037), .C0(n428), 
        .Y(n751) );
  AOI2BB2X1 U2450 ( .B0(\loc_x[4][4] ), .B1(n2034), .A0N(n260), .A1N(n2032), 
        .Y(n428) );
  OAI221XL U2451 ( .A0(n2141), .A1(n2038), .B0(n259), .B1(n2036), .C0(n427), 
        .Y(n750) );
  AOI2BB2X1 U2452 ( .B0(\loc_x[4][3] ), .B1(n2034), .A0N(n257), .A1N(n2032), 
        .Y(n427) );
  OAI221XL U2453 ( .A0(n2142), .A1(n2038), .B0(n256), .B1(n2037), .C0(n426), 
        .Y(n749) );
  AOI2BB2X1 U2454 ( .B0(\loc_x[4][2] ), .B1(n2034), .A0N(n254), .A1N(n2032), 
        .Y(n426) );
  OAI221XL U2455 ( .A0(n2143), .A1(n2038), .B0(n253), .B1(n2036), .C0(n425), 
        .Y(n748) );
  AOI2BB2X1 U2456 ( .B0(\loc_x[4][1] ), .B1(n2034), .A0N(n251), .A1N(n2032), 
        .Y(n425) );
  OAI221XL U2457 ( .A0(n2145), .A1(n2038), .B0(n247), .B1(n2037), .C0(n423), 
        .Y(n746) );
  AOI2BB2X1 U2458 ( .B0(\loc_y[4][9] ), .B1(n2034), .A0N(n245), .A1N(n2032), 
        .Y(n423) );
  OAI221XL U2459 ( .A0(n2146), .A1(n2039), .B0(n244), .B1(n401), .C0(n422), 
        .Y(n745) );
  AOI2BB2X1 U2460 ( .B0(\loc_y[4][8] ), .B1(n2034), .A0N(n242), .A1N(n2033), 
        .Y(n422) );
  OAI221XL U2461 ( .A0(n2147), .A1(n2039), .B0(n241), .B1(n2036), .C0(n421), 
        .Y(n744) );
  AOI2BB2X1 U2462 ( .B0(\loc_y[4][7] ), .B1(n2034), .A0N(n239), .A1N(n2033), 
        .Y(n421) );
  OAI221XL U2463 ( .A0(n2148), .A1(n2039), .B0(n238), .B1(n2036), .C0(n420), 
        .Y(n743) );
  AOI2BB2X1 U2464 ( .B0(\loc_y[4][6] ), .B1(n2034), .A0N(n236), .A1N(n2033), 
        .Y(n420) );
  OAI221XL U2465 ( .A0(n2149), .A1(n2039), .B0(n235), .B1(n2036), .C0(n419), 
        .Y(n742) );
  AOI2BB2X1 U2466 ( .B0(\loc_y[4][5] ), .B1(n2034), .A0N(n233), .A1N(n2033), 
        .Y(n419) );
  OAI221XL U2467 ( .A0(n2150), .A1(n2039), .B0(n232), .B1(n2036), .C0(n418), 
        .Y(n741) );
  AOI2BB2X1 U2468 ( .B0(\loc_y[4][4] ), .B1(n2035), .A0N(n230), .A1N(n2033), 
        .Y(n418) );
  OAI221XL U2469 ( .A0(n2151), .A1(n2039), .B0(n229), .B1(n2036), .C0(n417), 
        .Y(n740) );
  AOI2BB2X1 U2470 ( .B0(\loc_y[4][3] ), .B1(n2035), .A0N(n227), .A1N(n2033), 
        .Y(n417) );
  OAI221XL U2471 ( .A0(n2152), .A1(n2039), .B0(n226), .B1(n2036), .C0(n416), 
        .Y(n739) );
  AOI2BB2X1 U2472 ( .B0(\loc_y[4][2] ), .B1(n2035), .A0N(n224), .A1N(n2033), 
        .Y(n416) );
  OAI221XL U2473 ( .A0(n2153), .A1(n2039), .B0(n223), .B1(n2036), .C0(n415), 
        .Y(n738) );
  AOI2BB2X1 U2474 ( .B0(\loc_y[4][1] ), .B1(n2035), .A0N(n221), .A1N(n2033), 
        .Y(n415) );
  OAI221XL U2475 ( .A0(n2066), .A1(n2135), .B0(n275), .B1(n2065), .C0(n276), 
        .Y(n632) );
  AOI2BB2X1 U2476 ( .B0(\loc_x[0][9] ), .B1(n2018), .A0N(n277), .A1N(n2062), 
        .Y(n276) );
  OAI221XL U2477 ( .A0(n2066), .A1(n2136), .B0(n272), .B1(n2065), .C0(n273), 
        .Y(n631) );
  AOI2BB2X1 U2478 ( .B0(\loc_x[0][8] ), .B1(n2018), .A0N(n274), .A1N(n2062), 
        .Y(n273) );
  OAI221XL U2479 ( .A0(n2066), .A1(n2137), .B0(n269), .B1(n2065), .C0(n270), 
        .Y(n630) );
  AOI2BB2X1 U2480 ( .B0(\loc_x[0][7] ), .B1(n2018), .A0N(n271), .A1N(n2062), 
        .Y(n270) );
  OAI221XL U2481 ( .A0(n2066), .A1(n2138), .B0(n266), .B1(n2065), .C0(n267), 
        .Y(n629) );
  AOI2BB2X1 U2482 ( .B0(\loc_x[0][6] ), .B1(n2018), .A0N(n268), .A1N(n2062), 
        .Y(n267) );
  OAI221XL U2483 ( .A0(n2066), .A1(n2139), .B0(n263), .B1(n2065), .C0(n264), 
        .Y(n628) );
  AOI2BB2X1 U2484 ( .B0(\loc_x[0][5] ), .B1(n2018), .A0N(n265), .A1N(n2062), 
        .Y(n264) );
  OAI221XL U2485 ( .A0(n2066), .A1(n2140), .B0(n260), .B1(n2065), .C0(n261), 
        .Y(n627) );
  AOI2BB2X1 U2486 ( .B0(\loc_x[0][4] ), .B1(n2018), .A0N(n262), .A1N(n2062), 
        .Y(n261) );
  OAI221XL U2487 ( .A0(n2066), .A1(n2141), .B0(n257), .B1(n2064), .C0(n258), 
        .Y(n626) );
  AOI2BB2X1 U2488 ( .B0(\loc_x[0][3] ), .B1(n2018), .A0N(n259), .A1N(n2062), 
        .Y(n258) );
  OAI221XL U2489 ( .A0(n2066), .A1(n2142), .B0(n254), .B1(n2065), .C0(n255), 
        .Y(n625) );
  AOI2BB2X1 U2490 ( .B0(\loc_x[0][2] ), .B1(n2018), .A0N(n256), .A1N(n2062), 
        .Y(n255) );
  OAI221XL U2491 ( .A0(n2066), .A1(n2143), .B0(n251), .B1(n2064), .C0(n252), 
        .Y(n624) );
  AOI2BB2X1 U2492 ( .B0(\loc_x[0][1] ), .B1(n2018), .A0N(n253), .A1N(n2062), 
        .Y(n252) );
  OAI221XL U2493 ( .A0(n2066), .A1(n2145), .B0(n245), .B1(n2065), .C0(n246), 
        .Y(n622) );
  AOI2BB2X1 U2494 ( .B0(\loc_y[0][9] ), .B1(n2018), .A0N(n247), .A1N(n2062), 
        .Y(n246) );
  OAI221XL U2495 ( .A0(n2067), .A1(n2146), .B0(n242), .B1(n187), .C0(n243), 
        .Y(n621) );
  AOI2BB2X1 U2496 ( .B0(\loc_y[0][8] ), .B1(n2018), .A0N(n244), .A1N(n190), 
        .Y(n243) );
  OAI221XL U2497 ( .A0(n2067), .A1(n2147), .B0(n239), .B1(n2064), .C0(n240), 
        .Y(n620) );
  AOI2BB2X1 U2498 ( .B0(\loc_y[0][7] ), .B1(n2018), .A0N(n241), .A1N(n190), 
        .Y(n240) );
  OAI221XL U2499 ( .A0(n2067), .A1(n2148), .B0(n236), .B1(n2064), .C0(n237), 
        .Y(n619) );
  AOI2BB2X1 U2500 ( .B0(\loc_y[0][6] ), .B1(n2019), .A0N(n238), .A1N(n2063), 
        .Y(n237) );
  OAI221XL U2501 ( .A0(n2067), .A1(n2149), .B0(n233), .B1(n2064), .C0(n234), 
        .Y(n618) );
  AOI2BB2X1 U2502 ( .B0(\loc_y[0][5] ), .B1(n2019), .A0N(n235), .A1N(n2062), 
        .Y(n234) );
  OAI221XL U2503 ( .A0(n2067), .A1(n2150), .B0(n230), .B1(n2064), .C0(n231), 
        .Y(n617) );
  AOI2BB2X1 U2504 ( .B0(\loc_y[0][4] ), .B1(n2019), .A0N(n232), .A1N(n2063), 
        .Y(n231) );
  OAI221XL U2505 ( .A0(n2067), .A1(n2151), .B0(n227), .B1(n2064), .C0(n228), 
        .Y(n616) );
  AOI2BB2X1 U2506 ( .B0(\loc_y[0][3] ), .B1(n2019), .A0N(n229), .A1N(n2062), 
        .Y(n228) );
  OAI221XL U2507 ( .A0(n2067), .A1(n2152), .B0(n224), .B1(n2064), .C0(n225), 
        .Y(n615) );
  AOI2BB2X1 U2508 ( .B0(\loc_y[0][2] ), .B1(n2019), .A0N(n226), .A1N(n2063), 
        .Y(n225) );
  OAI221XL U2509 ( .A0(n2067), .A1(n2153), .B0(n221), .B1(n2064), .C0(n222), 
        .Y(n614) );
  AOI2BB2X1 U2510 ( .B0(\loc_y[0][1] ), .B1(n2019), .A0N(n223), .A1N(n190), 
        .Y(n222) );
  OAI221XL U2511 ( .A0(n275), .A1(n2027), .B0(n111), .B1(n1974), .C0(n471), 
        .Y(n787) );
  OA22X1 U2512 ( .A0(n2030), .A1(n2135), .B0(n277), .B1(n2029), .Y(n471) );
  OAI221XL U2513 ( .A0(n272), .A1(n2027), .B0(n112), .B1(n1974), .C0(n470), 
        .Y(n786) );
  OA22X1 U2514 ( .A0(n438), .A1(n2136), .B0(n274), .B1(n2029), .Y(n470) );
  OAI221XL U2515 ( .A0(n269), .A1(n2027), .B0(n113), .B1(n1974), .C0(n469), 
        .Y(n785) );
  OA22X1 U2516 ( .A0(n2030), .A1(n2137), .B0(n271), .B1(n2029), .Y(n469) );
  OAI221XL U2517 ( .A0(n266), .A1(n2027), .B0(n114), .B1(n1974), .C0(n468), 
        .Y(n784) );
  OA22X1 U2518 ( .A0(n2030), .A1(n2138), .B0(n268), .B1(n2029), .Y(n468) );
  OAI221XL U2519 ( .A0(n263), .A1(n2027), .B0(n115), .B1(n1974), .C0(n467), 
        .Y(n783) );
  OA22X1 U2520 ( .A0(n2031), .A1(n2139), .B0(n265), .B1(n2029), .Y(n467) );
  OAI221XL U2521 ( .A0(n260), .A1(n2026), .B0(n116), .B1(n1974), .C0(n466), 
        .Y(n782) );
  OA22X1 U2522 ( .A0(n2031), .A1(n2140), .B0(n262), .B1(n2028), .Y(n466) );
  OAI221XL U2523 ( .A0(n257), .A1(n2027), .B0(n117), .B1(n1974), .C0(n465), 
        .Y(n781) );
  OA22X1 U2524 ( .A0(n2031), .A1(n2141), .B0(n259), .B1(n2028), .Y(n465) );
  OAI221XL U2525 ( .A0(n254), .A1(n2027), .B0(n118), .B1(n1974), .C0(n464), 
        .Y(n780) );
  OA22X1 U2526 ( .A0(n2031), .A1(n2142), .B0(n256), .B1(n2028), .Y(n464) );
  OAI221XL U2527 ( .A0(n251), .A1(n2027), .B0(n119), .B1(n1974), .C0(n463), 
        .Y(n779) );
  OA22X1 U2528 ( .A0(n2031), .A1(n2143), .B0(n253), .B1(n2028), .Y(n463) );
  OAI221XL U2529 ( .A0(n248), .A1(n2026), .B0(n120), .B1(n1974), .C0(n462), 
        .Y(n778) );
  OA22X1 U2530 ( .A0(n2031), .A1(n2144), .B0(n250), .B1(n2028), .Y(n462) );
  OAI221XL U2531 ( .A0(n245), .A1(n2026), .B0(n121), .B1(n1974), .C0(n461), 
        .Y(n777) );
  OA22X1 U2532 ( .A0(n2031), .A1(n2145), .B0(n247), .B1(n2028), .Y(n461) );
  OAI221XL U2533 ( .A0(n242), .A1(n2026), .B0(n122), .B1(n1974), .C0(n460), 
        .Y(n776) );
  OA22X1 U2534 ( .A0(n2031), .A1(n2146), .B0(n244), .B1(n2028), .Y(n460) );
  OAI221XL U2535 ( .A0(n239), .A1(n2026), .B0(n123), .B1(n1974), .C0(n459), 
        .Y(n775) );
  OA22X1 U2536 ( .A0(n2031), .A1(n2147), .B0(n241), .B1(n2028), .Y(n459) );
  OAI221XL U2537 ( .A0(n236), .A1(n2026), .B0(n124), .B1(n1974), .C0(n458), 
        .Y(n774) );
  OA22X1 U2538 ( .A0(n2031), .A1(n2148), .B0(n238), .B1(n2028), .Y(n458) );
  OAI221XL U2539 ( .A0(n233), .A1(n2026), .B0(n125), .B1(n1974), .C0(n457), 
        .Y(n773) );
  OA22X1 U2540 ( .A0(n2031), .A1(n2149), .B0(n235), .B1(n2028), .Y(n457) );
  OAI221XL U2541 ( .A0(n230), .A1(n2026), .B0(n126), .B1(n1974), .C0(n456), 
        .Y(n772) );
  OA22X1 U2542 ( .A0(n2031), .A1(n2150), .B0(n232), .B1(n2028), .Y(n456) );
  OAI221XL U2543 ( .A0(n227), .A1(n2026), .B0(n127), .B1(n1974), .C0(n455), 
        .Y(n771) );
  OA22X1 U2544 ( .A0(n2031), .A1(n2151), .B0(n229), .B1(n2028), .Y(n455) );
  OAI221XL U2545 ( .A0(n224), .A1(n2026), .B0(n128), .B1(n1974), .C0(n454), 
        .Y(n770) );
  OA22X1 U2546 ( .A0(n2031), .A1(n2152), .B0(n226), .B1(n2028), .Y(n454) );
  OAI221XL U2547 ( .A0(n221), .A1(n2026), .B0(n129), .B1(n1974), .C0(n453), 
        .Y(n769) );
  OA22X1 U2548 ( .A0(n2031), .A1(n2153), .B0(n223), .B1(n2028), .Y(n453) );
  OAI221XL U2549 ( .A0(n218), .A1(n2026), .B0(n130), .B1(n1974), .C0(n452), 
        .Y(n768) );
  OA22X1 U2550 ( .A0(n2030), .A1(n2154), .B0(n220), .B1(n2029), .Y(n452) );
  AO22X1 U2551 ( .A0(n2023), .A1(polygon_area[23]), .B0(polygon_area_temp[23]), 
        .B1(n2079), .Y(n831) );
  NAND2X1 U2552 ( .A(n1815), .B(n133), .Y(n1811) );
  CLKINVX1 U2553 ( .A(n1811), .Y(n1877) );
  NAND2BX1 U2554 ( .AN(n132), .B(n1880), .Y(n1812) );
  CLKINVX1 U2555 ( .A(n1812), .Y(n1876) );
  NAND2BX1 U2556 ( .AN(n1955), .B(n1956), .Y(n1813) );
  CLKINVX1 U2557 ( .A(n1813), .Y(n1952) );
  NOR2X1 U2558 ( .A(n2020), .B(n120), .Y(ref_x[0]) );
  CLKBUFX3 U2559 ( .A(curr_state[2]), .Y(n2098) );
  AO22X1 U2560 ( .A0(polygon_area[22]), .A1(n2022), .B0(polygon_area_temp[22]), 
        .B1(n2079), .Y(n832) );
  AO22X1 U2561 ( .A0(polygon_area[21]), .A1(n2022), .B0(polygon_area_temp[21]), 
        .B1(n2079), .Y(n833) );
  AO22X1 U2562 ( .A0(polygon_area[20]), .A1(n2022), .B0(polygon_area_temp[20]), 
        .B1(n2079), .Y(n834) );
  NAND2X1 U2563 ( .A(curr_state[1]), .B(n110), .Y(n178) );
  NOR2X1 U2564 ( .A(n2020), .B(n119), .Y(ref_x[1]) );
  NOR2X1 U2565 ( .A(n2020), .B(n118), .Y(ref_x[2]) );
  NOR2X1 U2566 ( .A(n2020), .B(n117), .Y(ref_x[3]) );
  NOR2X1 U2567 ( .A(n2020), .B(n116), .Y(ref_x[4]) );
  NOR2X1 U2568 ( .A(n2021), .B(n130), .Y(ref_y[0]) );
  NOR2X1 U2569 ( .A(n2020), .B(n115), .Y(ref_x[5]) );
  NOR2X1 U2570 ( .A(n2021), .B(n129), .Y(ref_y[1]) );
  NOR2X1 U2571 ( .A(n2021), .B(n128), .Y(ref_y[2]) );
  NOR2X1 U2572 ( .A(n2021), .B(n127), .Y(ref_y[3]) );
  AO22X1 U2573 ( .A0(polygon_area[19]), .A1(n2022), .B0(polygon_area_temp[19]), 
        .B1(n2079), .Y(n835) );
  AO22X1 U2574 ( .A0(polygon_area[18]), .A1(n2022), .B0(polygon_area_temp[18]), 
        .B1(n2078), .Y(n836) );
  NOR2X1 U2575 ( .A(n2020), .B(n114), .Y(ref_x[6]) );
  NOR2X1 U2576 ( .A(n2021), .B(n126), .Y(ref_y[4]) );
  NOR2X1 U2577 ( .A(n2021), .B(n125), .Y(ref_y[5]) );
  NOR2X1 U2578 ( .A(n2021), .B(n124), .Y(ref_y[6]) );
  AO22X1 U2579 ( .A0(polygon_area[17]), .A1(n2022), .B0(polygon_area_temp[17]), 
        .B1(n2078), .Y(n837) );
  AO22X1 U2580 ( .A0(polygon_area[16]), .A1(n2022), .B0(polygon_area_temp[16]), 
        .B1(n2078), .Y(n838) );
  AO22X1 U2581 ( .A0(hero_area[23]), .A1(n2023), .B0(hero_area_temp[23]), .B1(
        n2080), .Y(n807) );
  NOR2X1 U2582 ( .A(n2020), .B(n113), .Y(ref_x[7]) );
  NOR2X1 U2583 ( .A(n2021), .B(n112), .Y(ref_x[8]) );
  NOR2X1 U2584 ( .A(n2021), .B(n111), .Y(ref_x[9]) );
  NOR2X1 U2585 ( .A(n2021), .B(n123), .Y(ref_y[7]) );
  NOR2X1 U2586 ( .A(n2021), .B(n122), .Y(ref_y[8]) );
  AO22X1 U2587 ( .A0(polygon_area[15]), .A1(n2022), .B0(polygon_area_temp[15]), 
        .B1(n2078), .Y(n839) );
  AO22X1 U2588 ( .A0(polygon_area[14]), .A1(n2022), .B0(polygon_area_temp[14]), 
        .B1(n2078), .Y(n840) );
  AO22X1 U2589 ( .A0(hero_area[22]), .A1(n2022), .B0(hero_area_temp[22]), .B1(
        n2080), .Y(n808) );
  NOR2X1 U2590 ( .A(n2020), .B(n121), .Y(ref_y[9]) );
  AO22X1 U2591 ( .A0(polygon_area[13]), .A1(n2022), .B0(polygon_area_temp[13]), 
        .B1(n2078), .Y(n841) );
  AO22X1 U2592 ( .A0(polygon_area[12]), .A1(n2022), .B0(polygon_area_temp[12]), 
        .B1(n2078), .Y(n842) );
  AO22X1 U2593 ( .A0(hero_area[21]), .A1(n2023), .B0(hero_area_temp[21]), .B1(
        n2080), .Y(n809) );
  AO22X1 U2594 ( .A0(hero_area[20]), .A1(n2022), .B0(hero_area_temp[20]), .B1(
        n2080), .Y(n810) );
  AO22X1 U2595 ( .A0(polygon_area[11]), .A1(n2022), .B0(polygon_area_temp[11]), 
        .B1(n2078), .Y(n843) );
  AO22X1 U2596 ( .A0(polygon_area[10]), .A1(n2023), .B0(polygon_area_temp[10]), 
        .B1(n2078), .Y(n844) );
  AO22X1 U2597 ( .A0(hero_area[19]), .A1(n2023), .B0(hero_area_temp[19]), .B1(
        n2080), .Y(n811) );
  AO22X1 U2598 ( .A0(hero_area[18]), .A1(n2022), .B0(hero_area_temp[18]), .B1(
        n2080), .Y(n812) );
  AO22X1 U2599 ( .A0(polygon_area[9]), .A1(n2023), .B0(polygon_area_temp[9]), 
        .B1(n2078), .Y(n845) );
  AO22X1 U2600 ( .A0(polygon_area[8]), .A1(n2023), .B0(polygon_area_temp[8]), 
        .B1(n2078), .Y(n846) );
  AO22X1 U2601 ( .A0(hero_area[17]), .A1(n2023), .B0(hero_area_temp[17]), .B1(
        n2080), .Y(n813) );
  AO22X1 U2602 ( .A0(hero_area[16]), .A1(n572), .B0(hero_area_temp[16]), .B1(
        n2080), .Y(n814) );
  CLKBUFX3 U2603 ( .A(n107), .Y(n2081) );
  AO22X1 U2604 ( .A0(polygon_area[7]), .A1(n2023), .B0(polygon_area_temp[7]), 
        .B1(n2078), .Y(n847) );
  AO22X1 U2605 ( .A0(polygon_area[6]), .A1(n2023), .B0(polygon_area_temp[6]), 
        .B1(n2078), .Y(n848) );
  AO22X1 U2606 ( .A0(hero_area[15]), .A1(n2023), .B0(hero_area_temp[15]), .B1(
        n2079), .Y(n815) );
  AND2X2 U2607 ( .A(polygon_area[23]), .B(polygon_area[0]), .Y(N586) );
  AO22X1 U2608 ( .A0(polygon_area[5]), .A1(n2023), .B0(polygon_area_temp[5]), 
        .B1(n2078), .Y(n849) );
  AO22X1 U2609 ( .A0(polygon_area[4]), .A1(n2023), .B0(polygon_area_temp[4]), 
        .B1(n2078), .Y(n850) );
  AO22X1 U2610 ( .A0(hero_area[14]), .A1(n2022), .B0(hero_area_temp[14]), .B1(
        n2079), .Y(n816) );
  AO22X1 U2611 ( .A0(hero_area[13]), .A1(n2023), .B0(hero_area_temp[13]), .B1(
        n2079), .Y(n817) );
  CLKINVX1 U2612 ( .A(n549), .Y(n2100) );
  AOI222XL U2613 ( .A0(s0_ff[11]), .A1(n520), .B0(dis_a[11]), .B1(n2072), .C0(
        N683), .C1(n519), .Y(n549) );
  CLKINVX1 U2614 ( .A(s0[11]), .Y(N660) );
  CLKINVX1 U2615 ( .A(n514), .Y(n2112) );
  AOI222XL U2616 ( .A0(s2_ff[10]), .A1(n2025), .B0(s2[10]), .B1(n1972), .C0(
        N756), .C1(n504), .Y(n514) );
  CLKINVX1 U2617 ( .A(n513), .Y(n2113) );
  AOI222XL U2618 ( .A0(s2_ff[9]), .A1(n2025), .B0(s2[9]), .B1(n1972), .C0(N755), .C1(n504), .Y(n513) );
  CLKINVX1 U2619 ( .A(n512), .Y(n2114) );
  AOI222XL U2620 ( .A0(s2_ff[8]), .A1(n2025), .B0(s2[8]), .B1(n1972), .C0(N754), .C1(n504), .Y(n512) );
  CLKINVX1 U2621 ( .A(n511), .Y(n2115) );
  AOI222XL U2622 ( .A0(s2_ff[7]), .A1(n2025), .B0(s2[7]), .B1(n1972), .C0(N753), .C1(n504), .Y(n511) );
  CLKINVX1 U2623 ( .A(n510), .Y(n2116) );
  AOI222XL U2624 ( .A0(s2_ff[6]), .A1(n2025), .B0(s2[6]), .B1(n1972), .C0(N752), .C1(n504), .Y(n510) );
  CLKINVX1 U2625 ( .A(n509), .Y(n2117) );
  AOI222XL U2626 ( .A0(s2_ff[5]), .A1(n2025), .B0(s2[5]), .B1(n1972), .C0(N751), .C1(n504), .Y(n509) );
  CLKINVX1 U2627 ( .A(n508), .Y(n2118) );
  AOI222XL U2628 ( .A0(s2_ff[4]), .A1(n2025), .B0(s2[4]), .B1(n1972), .C0(N750), .C1(n504), .Y(n508) );
  CLKINVX1 U2629 ( .A(n507), .Y(n2119) );
  AOI222XL U2630 ( .A0(s2_ff[3]), .A1(n2025), .B0(s2[3]), .B1(n1972), .C0(N749), .C1(n504), .Y(n507) );
  CLKINVX1 U2631 ( .A(n506), .Y(n2120) );
  AOI222XL U2632 ( .A0(s2_ff[2]), .A1(n2025), .B0(s2[2]), .B1(n1972), .C0(N748), .C1(n504), .Y(n506) );
  CLKINVX1 U2633 ( .A(n505), .Y(n2121) );
  AOI222XL U2634 ( .A0(s2_ff[1]), .A1(n2025), .B0(s2[1]), .B1(n1972), .C0(N747), .C1(n504), .Y(n505) );
  CLKINVX1 U2635 ( .A(n502), .Y(n2122) );
  AOI222XL U2636 ( .A0(s2_ff[0]), .A1(n2024), .B0(s2[0]), .B1(n1972), .C0(N746), .C1(n504), .Y(n502) );
  OAI211X1 U2637 ( .A0(n2070), .A1(n550), .B0(n551), .C0(n552), .Y(n802) );
  CLKINVX1 U2638 ( .A(dis_a[0]), .Y(n550) );
  NAND2X1 U2639 ( .A(s0[0]), .B(n1970), .Y(n551) );
  AOI22X1 U2640 ( .A0(N672), .A1(n519), .B0(s0_ff[0]), .B1(n520), .Y(n552) );
  OAI211X1 U2641 ( .A0(n2070), .A1(n546), .B0(n547), .C0(n548), .Y(n801) );
  CLKINVX1 U2642 ( .A(dis_a[10]), .Y(n546) );
  NAND2X1 U2643 ( .A(s0[10]), .B(n1970), .Y(n547) );
  AOI22X1 U2644 ( .A0(N682), .A1(n519), .B0(s0_ff[10]), .B1(n520), .Y(n548) );
  OAI211X1 U2645 ( .A0(n2070), .A1(n543), .B0(n544), .C0(n545), .Y(n800) );
  CLKINVX1 U2646 ( .A(dis_a[9]), .Y(n543) );
  NAND2X1 U2647 ( .A(s0[9]), .B(n1970), .Y(n544) );
  AOI22X1 U2648 ( .A0(N681), .A1(n519), .B0(s0_ff[9]), .B1(n520), .Y(n545) );
  OAI211X1 U2649 ( .A0(n2070), .A1(n540), .B0(n541), .C0(n542), .Y(n799) );
  CLKINVX1 U2650 ( .A(dis_a[8]), .Y(n540) );
  NAND2X1 U2651 ( .A(s0[8]), .B(n1970), .Y(n541) );
  AOI22X1 U2652 ( .A0(N680), .A1(n519), .B0(s0_ff[8]), .B1(n520), .Y(n542) );
  OAI211X1 U2653 ( .A0(n2070), .A1(n537), .B0(n538), .C0(n539), .Y(n798) );
  CLKINVX1 U2654 ( .A(dis_a[7]), .Y(n537) );
  NAND2X1 U2655 ( .A(s0[7]), .B(n1970), .Y(n538) );
  AOI22X1 U2656 ( .A0(N679), .A1(n519), .B0(s0_ff[7]), .B1(n520), .Y(n539) );
  OAI211X1 U2657 ( .A0(n2070), .A1(n534), .B0(n535), .C0(n536), .Y(n797) );
  CLKINVX1 U2658 ( .A(dis_a[6]), .Y(n534) );
  NAND2X1 U2659 ( .A(s0[6]), .B(n1970), .Y(n535) );
  AOI22X1 U2660 ( .A0(N678), .A1(n519), .B0(s0_ff[6]), .B1(n520), .Y(n536) );
  OAI211X1 U2661 ( .A0(n2070), .A1(n531), .B0(n532), .C0(n533), .Y(n796) );
  CLKINVX1 U2662 ( .A(dis_a[5]), .Y(n531) );
  NAND2X1 U2663 ( .A(s0[5]), .B(n1970), .Y(n532) );
  AOI22X1 U2664 ( .A0(N677), .A1(n519), .B0(s0_ff[5]), .B1(n520), .Y(n533) );
  OAI211X1 U2665 ( .A0(n2070), .A1(n528), .B0(n529), .C0(n530), .Y(n795) );
  CLKINVX1 U2666 ( .A(dis_a[4]), .Y(n528) );
  NAND2X1 U2667 ( .A(s0[4]), .B(n1970), .Y(n529) );
  AOI22X1 U2668 ( .A0(N676), .A1(n519), .B0(s0_ff[4]), .B1(n520), .Y(n530) );
  OAI211X1 U2669 ( .A0(n2069), .A1(n525), .B0(n526), .C0(n527), .Y(n794) );
  CLKINVX1 U2670 ( .A(dis_a[3]), .Y(n525) );
  NAND2X1 U2671 ( .A(s0[3]), .B(n1970), .Y(n526) );
  AOI22X1 U2672 ( .A0(N675), .A1(n519), .B0(s0_ff[3]), .B1(n520), .Y(n527) );
  OAI211X1 U2673 ( .A0(n2069), .A1(n522), .B0(n523), .C0(n524), .Y(n793) );
  CLKINVX1 U2674 ( .A(dis_a[2]), .Y(n522) );
  NAND2X1 U2675 ( .A(s0[2]), .B(n1970), .Y(n523) );
  AOI22X1 U2676 ( .A0(N674), .A1(n519), .B0(s0_ff[2]), .B1(n520), .Y(n524) );
  OAI211X1 U2677 ( .A0(n2069), .A1(n516), .B0(n517), .C0(n518), .Y(n792) );
  CLKINVX1 U2678 ( .A(dis_a[1]), .Y(n516) );
  NAND2X1 U2679 ( .A(s0[1]), .B(n1970), .Y(n517) );
  AOI22X1 U2680 ( .A0(N673), .A1(n519), .B0(s0_ff[1]), .B1(n520), .Y(n518) );
  CLKINVX1 U2681 ( .A(n515), .Y(n2101) );
  AOI222XL U2682 ( .A0(s1_ff[0]), .A1(n2024), .B0(s1[0]), .B1(n1971), .C0(N709), .C1(n492), .Y(n515) );
  CLKINVX1 U2683 ( .A(n501), .Y(n2102) );
  AOI222XL U2684 ( .A0(s1_ff[10]), .A1(n2024), .B0(s1[10]), .B1(n1971), .C0(
        N719), .C1(n492), .Y(n501) );
  CLKINVX1 U2685 ( .A(n500), .Y(n2103) );
  AOI222XL U2686 ( .A0(s1_ff[9]), .A1(n2024), .B0(s1[9]), .B1(n1971), .C0(N718), .C1(n492), .Y(n500) );
  CLKINVX1 U2687 ( .A(n499), .Y(n2104) );
  AOI222XL U2688 ( .A0(s1_ff[8]), .A1(n2024), .B0(s1[8]), .B1(n1971), .C0(N717), .C1(n492), .Y(n499) );
  CLKINVX1 U2689 ( .A(n498), .Y(n2105) );
  AOI222XL U2690 ( .A0(s1_ff[7]), .A1(n2024), .B0(s1[7]), .B1(n1971), .C0(N716), .C1(n492), .Y(n498) );
  CLKINVX1 U2691 ( .A(n497), .Y(n2106) );
  AOI222XL U2692 ( .A0(s1_ff[6]), .A1(n2025), .B0(s1[6]), .B1(n1971), .C0(N715), .C1(n492), .Y(n497) );
  CLKINVX1 U2693 ( .A(n496), .Y(n2107) );
  AOI222XL U2694 ( .A0(s1_ff[5]), .A1(n2024), .B0(s1[5]), .B1(n1971), .C0(N714), .C1(n492), .Y(n496) );
  CLKINVX1 U2695 ( .A(n495), .Y(n2108) );
  AOI222XL U2696 ( .A0(s1_ff[4]), .A1(n2024), .B0(s1[4]), .B1(n1971), .C0(N713), .C1(n492), .Y(n495) );
  CLKINVX1 U2697 ( .A(n494), .Y(n2109) );
  AOI222XL U2698 ( .A0(s1_ff[3]), .A1(n2024), .B0(s1[3]), .B1(n1971), .C0(N712), .C1(n492), .Y(n494) );
  CLKINVX1 U2699 ( .A(n493), .Y(n2110) );
  AOI222XL U2700 ( .A0(s1_ff[2]), .A1(n2024), .B0(s1[2]), .B1(n1971), .C0(N711), .C1(n492), .Y(n493) );
  CLKINVX1 U2701 ( .A(n490), .Y(n2111) );
  AOI222XL U2702 ( .A0(s1_ff[1]), .A1(n2024), .B0(s1[1]), .B1(n1971), .C0(N710), .C1(n492), .Y(n490) );
  AO22X1 U2703 ( .A0(s1_ff[11]), .A1(n2025), .B0(N720), .B1(n492), .Y(n790) );
  CLKINVX1 U2704 ( .A(s1[11]), .Y(N697) );
  AO22X1 U2705 ( .A0(s2_ff[11]), .A1(n2025), .B0(N757), .B1(n504), .Y(n791) );
  CLKINVX1 U2706 ( .A(s2[11]), .Y(N734) );
  AO22X1 U2707 ( .A0(polygon_area[3]), .A1(n2023), .B0(polygon_area_temp[3]), 
        .B1(n2078), .Y(n851) );
  AO22X1 U2708 ( .A0(hero_area[12]), .A1(n2022), .B0(hero_area_temp[12]), .B1(
        n2079), .Y(n818) );
  AO22X1 U2709 ( .A0(hero_area[11]), .A1(n2023), .B0(hero_area_temp[11]), .B1(
        n2079), .Y(n819) );
  CLKINVX1 U2710 ( .A(n477), .Y(n2123) );
  AOI222XL U2711 ( .A0(s_ff[10]), .A1(n476), .B0(s[10]), .B1(n1969), .C0(
        dis_a[10]), .C1(n1973), .Y(n477) );
  AO22X1 U2712 ( .A0(polygon_area[2]), .A1(n2023), .B0(polygon_area_temp[2]), 
        .B1(n2078), .Y(n852) );
  AO22X1 U2713 ( .A0(polygon_area[1]), .A1(n2023), .B0(polygon_area_temp[1]), 
        .B1(n2078), .Y(n853) );
  AO22X1 U2714 ( .A0(hero_area[10]), .A1(n2022), .B0(hero_area_temp[10]), .B1(
        n2079), .Y(n820) );
  AO22X1 U2715 ( .A0(hero_area[9]), .A1(n2022), .B0(hero_area_temp[9]), .B1(
        n2079), .Y(n821) );
  CLKINVX1 U2716 ( .A(n483), .Y(n2128) );
  AOI222XL U2717 ( .A0(s_ff[5]), .A1(n476), .B0(s[5]), .B1(n1969), .C0(
        dis_a[5]), .C1(n1973), .Y(n483) );
  CLKINVX1 U2718 ( .A(n482), .Y(n2127) );
  AOI222XL U2719 ( .A0(s_ff[6]), .A1(n476), .B0(s[6]), .B1(n1969), .C0(
        dis_a[6]), .C1(n1973), .Y(n482) );
  CLKINVX1 U2720 ( .A(n481), .Y(n2126) );
  AOI222XL U2721 ( .A0(s_ff[7]), .A1(n476), .B0(s[7]), .B1(n1969), .C0(
        dis_a[7]), .C1(n1973), .Y(n481) );
  CLKINVX1 U2722 ( .A(n480), .Y(n2125) );
  AOI222XL U2723 ( .A0(s_ff[8]), .A1(n476), .B0(s[8]), .B1(n1969), .C0(
        dis_a[8]), .C1(n1973), .Y(n480) );
  CLKINVX1 U2724 ( .A(n479), .Y(n2124) );
  AOI222XL U2725 ( .A0(s_ff[9]), .A1(n476), .B0(s[9]), .B1(n1969), .C0(
        dis_a[9]), .C1(n1973), .Y(n479) );
  AO22X1 U2726 ( .A0(hero_area[8]), .A1(n2023), .B0(hero_area_temp[8]), .B1(
        n2079), .Y(n822) );
  AO22X1 U2727 ( .A0(hero_area[7]), .A1(n2023), .B0(hero_area_temp[7]), .B1(
        n2079), .Y(n823) );
  CLKINVX1 U2728 ( .A(n488), .Y(n2133) );
  AOI222XL U2729 ( .A0(s_ff[0]), .A1(n476), .B0(s[0]), .B1(n1969), .C0(
        dis_a[0]), .C1(n1973), .Y(n488) );
  CLKINVX1 U2730 ( .A(n487), .Y(n2132) );
  AOI222XL U2731 ( .A0(s_ff[1]), .A1(n476), .B0(s[1]), .B1(n1969), .C0(
        dis_a[1]), .C1(n1973), .Y(n487) );
  CLKINVX1 U2732 ( .A(n486), .Y(n2131) );
  AOI222XL U2733 ( .A0(s_ff[2]), .A1(n476), .B0(s[2]), .B1(n1969), .C0(
        dis_a[2]), .C1(n1973), .Y(n486) );
  CLKINVX1 U2734 ( .A(n485), .Y(n2130) );
  AOI222XL U2735 ( .A0(s_ff[3]), .A1(n476), .B0(s[3]), .B1(n1969), .C0(
        dis_a[3]), .C1(n1973), .Y(n485) );
  CLKINVX1 U2736 ( .A(n484), .Y(n2129) );
  AOI222XL U2737 ( .A0(s_ff[4]), .A1(n476), .B0(s[4]), .B1(n1969), .C0(
        dis_a[4]), .C1(n1973), .Y(n484) );
  AO22X1 U2738 ( .A0(n2023), .A1(polygon_area[0]), .B0(polygon_area_temp[0]), 
        .B1(n2078), .Y(n854) );
  AO22X1 U2739 ( .A0(hero_area[5]), .A1(n2022), .B0(hero_area_temp[5]), .B1(
        n2079), .Y(n825) );
  AO22X1 U2740 ( .A0(hero_area[6]), .A1(n2023), .B0(hero_area_temp[6]), .B1(
        n2079), .Y(n824) );
  AO22X1 U2741 ( .A0(hero_area[4]), .A1(n572), .B0(hero_area_temp[4]), .B1(
        n2079), .Y(n826) );
  AO22X1 U2742 ( .A0(hero_area[3]), .A1(n572), .B0(hero_area_temp[3]), .B1(
        n2079), .Y(n827) );
  NOR2X2 U2743 ( .A(n2170), .B(loc_ff_pt[2]), .Y(n282) );
  OAI221XL U2744 ( .A0(n2174), .A1(n564), .B0(n566), .B1(n133), .C0(n569), .Y(
        n805) );
  OAI211X1 U2745 ( .A0(n556), .A1(n567), .B0(n2174), .C0(n566), .Y(n569) );
  CLKINVX1 U2746 ( .A(n559), .Y(n2174) );
  CLKINVX1 U2747 ( .A(n323), .Y(n2172) );
  NOR2X1 U2748 ( .A(loc_ff_cnt[1]), .B(loc_ff_cnt[0]), .Y(n437) );
  NOR2X1 U2749 ( .A(loc_ff_pt[1]), .B(loc_ff_pt[0]), .Y(n576) );
  AO22X1 U2750 ( .A0(hero_area[2]), .A1(n572), .B0(hero_area_temp[2]), .B1(
        n2079), .Y(n828) );
  AO22X1 U2751 ( .A0(hero_area[1]), .A1(n2022), .B0(hero_area_temp[1]), .B1(
        n2079), .Y(n829) );
  AOI32X1 U2752 ( .A0(n323), .A1(n133), .A2(n2176), .B0(n324), .B1(n322), .Y(
        n289) );
  AOI32X1 U2753 ( .A0(loc_ff_cnt[1]), .A1(n2176), .A2(n323), .B0(n324), .B1(
        n399), .Y(n366) );
  AOI32X1 U2754 ( .A0(loc_ff_cnt[2]), .A1(n2176), .A2(n437), .B0(n324), .B1(
        n436), .Y(n403) );
  OAI222XL U2755 ( .A0(n577), .A1(n2069), .B0(n578), .B1(n2168), .C0(n1956), 
        .C1(n553), .Y(n856) );
  NOR2BX1 U2756 ( .AN(n175), .B(n1956), .Y(n577) );
  AOI2BB2X1 U2757 ( .B0(loc_ff_cnt[0]), .B1(n282), .A0N(n282), .A1N(
        loc_ff_pt[0]), .Y(n578) );
  OAI222XL U2758 ( .A0(n573), .A1(n2021), .B0(n574), .B1(n570), .C0(n1955), 
        .C1(n553), .Y(n855) );
  AOI2BB2X1 U2759 ( .B0(n575), .B1(n282), .A0N(n574), .A1N(n282), .Y(n573) );
  AOI2BB1X1 U2760 ( .A0N(n576), .A1N(n1955), .B0(n282), .Y(n574) );
  XNOR2X1 U2761 ( .A(n560), .B(n568), .Y(n575) );
  AOI21X1 U2762 ( .A0(loc_ff_cnt[0]), .A1(loc_ff_cnt[1]), .B0(n437), .Y(n559)
         );
  OAI221XL U2763 ( .A0(n2069), .A1(n175), .B0(n138), .B1(n553), .C0(n554), .Y(
        n803) );
  AOI33X1 U2764 ( .A0(n282), .A1(n555), .A2(n556), .B0(n557), .B1(n2169), .B2(
        n558), .Y(n554) );
  OAI21XL U2765 ( .A0(n1956), .A1(n138), .B0(n2170), .Y(n557) );
  OAI21XL U2766 ( .A0(loc_ff_cnt[0]), .A1(n559), .B0(n560), .Y(n555) );
  NOR2X1 U2767 ( .A(n1880), .B(loc_ff_cnt[2]), .Y(n323) );
  OAI211X1 U2768 ( .A0(n566), .A1(n1880), .B0(n571), .C0(n562), .Y(n806) );
  OAI211X1 U2769 ( .A0(n2173), .A1(n2176), .B0(n1880), .C0(n566), .Y(n571) );
  CLKINVX1 U2770 ( .A(n570), .Y(n2173) );
  OAI211X1 U2771 ( .A0(curr_state[0]), .A1(n179), .B0(n180), .C0(n1810), .Y(
        next_state[0]) );
  NAND3X1 U2772 ( .A(n109), .B(n2081), .C(n177), .Y(n180) );
  NOR2X1 U2773 ( .A(n181), .B(n2098), .Y(n179) );
  NOR3X1 U2774 ( .A(loc_ff_pt[1]), .B(loc_ff_pt[2]), .C(n1956), .Y(n322) );
  NOR3X1 U2775 ( .A(n1956), .B(loc_ff_pt[2]), .C(n138), .Y(n399) );
  NAND3X1 U2776 ( .A(n1956), .B(n1955), .C(loc_ff_pt[1]), .Y(n359) );
  NOR2X1 U2777 ( .A(n1955), .B(n2170), .Y(n436) );
  NAND3X1 U2778 ( .A(loc_ff_pt[0]), .B(n138), .C(loc_ff_pt[2]), .Y(n473) );
  NAND2X1 U2779 ( .A(n559), .B(loc_ff_cnt[0]), .Y(n560) );
  NAND3X1 U2780 ( .A(n561), .B(n562), .C(n563), .Y(n804) );
  OA22X1 U2781 ( .A0(n564), .A1(n565), .B0(n566), .B1(n132), .Y(n563) );
  OAI211X1 U2782 ( .A0(n324), .A1(n567), .B0(n568), .C0(n566), .Y(n561) );
  AOI2BB2X1 U2783 ( .B0(n323), .B1(loc_ff_cnt[1]), .A0N(loc_ff_cnt[0]), .A1N(
        n132), .Y(n565) );
  AO22X1 U2784 ( .A0(n1973), .A1(dis_a[11]), .B0(s_ff[11]), .B1(n476), .Y(n789) );
  AO22X1 U2785 ( .A0(hero_area[0]), .A1(n2022), .B0(hero_area_temp[0]), .B1(
        n2079), .Y(n830) );
  CLKBUFX3 U2786 ( .A(curr_state[2]), .Y(n2099) );
  AO21X1 U2787 ( .A0(n173), .A1(n2099), .B0(n2080), .Y(next_state[2]) );
  OAI21XL U2788 ( .A0(curr_state[0]), .A1(n175), .B0(curr_state[1]), .Y(n173)
         );
  AOI22X1 U2789 ( .A0(s_mul_out[6]), .A1(n2077), .B0(dis_a_square_ff[6]), .B1(
        n2075), .Y(n596) );
  AOI22X1 U2790 ( .A0(s_mul_out[15]), .A1(n182), .B0(dis_a_square_ff[15]), 
        .B1(n2076), .Y(n587) );
  AOI22X1 U2791 ( .A0(s_mul_out[16]), .A1(n182), .B0(dis_a_square_ff[16]), 
        .B1(n2076), .Y(n586) );
  AOI22X1 U2792 ( .A0(s_mul_out[17]), .A1(n182), .B0(dis_a_square_ff[17]), 
        .B1(n2076), .Y(n585) );
  AOI22X1 U2793 ( .A0(s_mul_out[18]), .A1(n182), .B0(dis_a_square_ff[18]), 
        .B1(n2076), .Y(n584) );
  AOI22X1 U2794 ( .A0(s_mul_out[19]), .A1(n182), .B0(dis_a_square_ff[19]), 
        .B1(n2076), .Y(n583) );
  AOI22X1 U2795 ( .A0(s_mul_out[20]), .A1(n2077), .B0(dis_a_square_ff[20]), 
        .B1(n2076), .Y(n582) );
  AOI22X1 U2796 ( .A0(s_mul_out[21]), .A1(n2077), .B0(dis_a_square_ff[21]), 
        .B1(n2076), .Y(n581) );
  AOI22X1 U2797 ( .A0(s_mul_out[22]), .A1(n2077), .B0(dis_a_square_ff[22]), 
        .B1(n2076), .Y(n580) );
  AOI22X1 U2798 ( .A0(s_mul_out[23]), .A1(n2077), .B0(dis_a_square_ff[23]), 
        .B1(n2076), .Y(n579) );
  AOI22X1 U2799 ( .A0(s_mul_out[0]), .A1(n2077), .B0(dis_a_square_ff[0]), .B1(
        n2075), .Y(n602) );
  AOI22X1 U2800 ( .A0(s_mul_out[1]), .A1(n2077), .B0(dis_a_square_ff[1]), .B1(
        n2075), .Y(n601) );
  AOI22X1 U2801 ( .A0(s_mul_out[2]), .A1(n2077), .B0(dis_a_square_ff[2]), .B1(
        n2075), .Y(n600) );
  AOI22X1 U2802 ( .A0(s_mul_out[3]), .A1(n2077), .B0(dis_a_square_ff[3]), .B1(
        n2075), .Y(n599) );
  AOI22X1 U2803 ( .A0(s_mul_out[4]), .A1(n2077), .B0(dis_a_square_ff[4]), .B1(
        n2075), .Y(n598) );
  AOI22X1 U2804 ( .A0(s_mul_out[5]), .A1(n2077), .B0(dis_a_square_ff[5]), .B1(
        n2075), .Y(n597) );
  AOI22X1 U2805 ( .A0(s_mul_out[7]), .A1(n2077), .B0(dis_a_square_ff[7]), .B1(
        n2075), .Y(n595) );
  AOI22X1 U2806 ( .A0(s_mul_out[8]), .A1(n2077), .B0(dis_a_square_ff[8]), .B1(
        n2075), .Y(n594) );
  AOI22X1 U2807 ( .A0(s_mul_out[9]), .A1(n2077), .B0(dis_a_square_ff[9]), .B1(
        n2075), .Y(n593) );
  AOI22X1 U2808 ( .A0(s_mul_out[10]), .A1(n2077), .B0(dis_a_square_ff[10]), 
        .B1(n2075), .Y(n592) );
  AOI22X1 U2809 ( .A0(s_mul_out[11]), .A1(n2077), .B0(dis_a_square_ff[11]), 
        .B1(n2075), .Y(n591) );
  AOI22X1 U2810 ( .A0(s_mul_out[12]), .A1(n2077), .B0(dis_a_square_ff[12]), 
        .B1(n2076), .Y(n590) );
  AOI22X1 U2811 ( .A0(s_mul_out[13]), .A1(n2077), .B0(dis_a_square_ff[13]), 
        .B1(n2076), .Y(n589) );
  AOI22X1 U2812 ( .A0(s_mul_out[14]), .A1(n2077), .B0(dis_a_square_ff[14]), 
        .B1(n2076), .Y(n588) );
  NOR2X1 U2813 ( .A(n1880), .B(loc_ff_cnt[2]), .Y(n1815) );
  AOI222XL U2814 ( .A0(\loc_r[5][0] ), .A1(n1884), .B0(\loc_r[3][0] ), .B1(
        n1883), .C0(\loc_r[4][0] ), .C1(n1882), .Y(n1817) );
  NOR2X1 U2815 ( .A(loc_ff_cnt[2]), .B(loc_ff_cnt[0]), .Y(n1814) );
  AOI222XL U2816 ( .A0(\loc_r[2][0] ), .A1(n1802), .B0(\loc_r[0][0] ), .B1(
        n1798), .C0(\loc_r[1][0] ), .C1(n1887), .Y(n1816) );
  NAND2X1 U2817 ( .A(n1817), .B(n1816), .Y(N946) );
  AOI222XL U2818 ( .A0(\loc_r[5][1] ), .A1(n1884), .B0(\loc_r[3][1] ), .B1(
        n1883), .C0(\loc_r[4][1] ), .C1(n1882), .Y(n1819) );
  AOI222XL U2819 ( .A0(\loc_r[2][1] ), .A1(n1802), .B0(\loc_r[0][1] ), .B1(
        n1798), .C0(\loc_r[1][1] ), .C1(n1887), .Y(n1818) );
  NAND2X1 U2820 ( .A(n1819), .B(n1818), .Y(N945) );
  AOI222XL U2821 ( .A0(\loc_r[5][2] ), .A1(n1884), .B0(\loc_r[3][2] ), .B1(
        n1883), .C0(\loc_r[4][2] ), .C1(n1882), .Y(n1821) );
  AOI222XL U2822 ( .A0(\loc_r[2][2] ), .A1(n1802), .B0(\loc_r[0][2] ), .B1(
        n1798), .C0(\loc_r[1][2] ), .C1(n1887), .Y(n1820) );
  NAND2X1 U2823 ( .A(n1821), .B(n1820), .Y(N944) );
  AOI222XL U2824 ( .A0(\loc_r[5][3] ), .A1(n1884), .B0(\loc_r[3][3] ), .B1(
        n1883), .C0(\loc_r[4][3] ), .C1(n1882), .Y(n1823) );
  AOI222XL U2825 ( .A0(\loc_r[2][3] ), .A1(n1802), .B0(\loc_r[0][3] ), .B1(
        n1798), .C0(\loc_r[1][3] ), .C1(n1887), .Y(n1822) );
  NAND2X1 U2826 ( .A(n1823), .B(n1822), .Y(N943) );
  AOI222XL U2827 ( .A0(\loc_r[5][4] ), .A1(n1884), .B0(\loc_r[3][4] ), .B1(
        n1883), .C0(\loc_r[4][4] ), .C1(n1882), .Y(n1825) );
  AOI222XL U2828 ( .A0(\loc_r[2][4] ), .A1(n1802), .B0(\loc_r[0][4] ), .B1(
        n1798), .C0(\loc_r[1][4] ), .C1(n1887), .Y(n1824) );
  NAND2X1 U2829 ( .A(n1825), .B(n1824), .Y(N942) );
  AOI222XL U2830 ( .A0(\loc_r[5][5] ), .A1(n1884), .B0(\loc_r[3][5] ), .B1(
        n1883), .C0(\loc_r[4][5] ), .C1(n1882), .Y(n1827) );
  AOI222XL U2831 ( .A0(\loc_r[2][5] ), .A1(n1802), .B0(\loc_r[0][5] ), .B1(
        n1798), .C0(\loc_r[1][5] ), .C1(n1887), .Y(n1826) );
  NAND2X1 U2832 ( .A(n1827), .B(n1826), .Y(N941) );
  AOI222XL U2833 ( .A0(\loc_r[5][6] ), .A1(n1884), .B0(\loc_r[3][6] ), .B1(
        n1883), .C0(\loc_r[4][6] ), .C1(n1882), .Y(n1829) );
  AOI222XL U2834 ( .A0(\loc_r[2][6] ), .A1(n1802), .B0(\loc_r[0][6] ), .B1(
        n1798), .C0(\loc_r[1][6] ), .C1(n1887), .Y(n1828) );
  NAND2X1 U2835 ( .A(n1829), .B(n1828), .Y(N940) );
  AOI222XL U2836 ( .A0(\loc_r[5][7] ), .A1(n1884), .B0(\loc_r[3][7] ), .B1(
        n1883), .C0(\loc_r[4][7] ), .C1(n1882), .Y(n1831) );
  AOI222XL U2837 ( .A0(\loc_r[2][7] ), .A1(n1889), .B0(\loc_r[0][7] ), .B1(
        n1888), .C0(\loc_r[1][7] ), .C1(n1887), .Y(n1830) );
  NAND2X1 U2838 ( .A(n1831), .B(n1830), .Y(N939) );
  AOI222XL U2839 ( .A0(\loc_r[5][8] ), .A1(n1884), .B0(\loc_r[3][8] ), .B1(
        n1883), .C0(\loc_r[4][8] ), .C1(n1882), .Y(n1833) );
  AOI222XL U2840 ( .A0(\loc_r[2][8] ), .A1(n1889), .B0(\loc_r[0][8] ), .B1(
        n1888), .C0(\loc_r[1][8] ), .C1(n1887), .Y(n1832) );
  NAND2X1 U2841 ( .A(n1833), .B(n1832), .Y(N938) );
  AOI222XL U2842 ( .A0(\loc_r[5][9] ), .A1(n1884), .B0(\loc_r[3][9] ), .B1(
        n1883), .C0(\loc_r[4][9] ), .C1(n1882), .Y(n1835) );
  AOI222XL U2843 ( .A0(\loc_r[2][9] ), .A1(n1889), .B0(\loc_r[0][9] ), .B1(
        n1888), .C0(\loc_r[1][9] ), .C1(n1887), .Y(n1834) );
  NAND2X1 U2844 ( .A(n1835), .B(n1834), .Y(N937) );
  AOI222XL U2845 ( .A0(\loc_r[5][10] ), .A1(n1884), .B0(\loc_r[3][10] ), .B1(
        n1883), .C0(\loc_r[4][10] ), .C1(n1882), .Y(n1837) );
  AOI222XL U2846 ( .A0(\loc_r[2][10] ), .A1(n1889), .B0(\loc_r[0][10] ), .B1(
        n1888), .C0(\loc_r[1][10] ), .C1(n1887), .Y(n1836) );
  NAND2X1 U2847 ( .A(n1837), .B(n1836), .Y(N936) );
  AOI222XL U2848 ( .A0(\loc_y[5][0] ), .A1(n1884), .B0(\loc_y[3][0] ), .B1(
        n1883), .C0(\loc_y[4][0] ), .C1(n1882), .Y(n1839) );
  AOI222XL U2849 ( .A0(\loc_y[2][0] ), .A1(n1889), .B0(\loc_y[0][0] ), .B1(
        n1888), .C0(\loc_y[1][0] ), .C1(n1887), .Y(n1838) );
  NAND2X1 U2850 ( .A(n1839), .B(n1838), .Y(N935) );
  AOI222XL U2851 ( .A0(\loc_y[5][1] ), .A1(n1884), .B0(\loc_y[3][1] ), .B1(
        n1883), .C0(\loc_y[4][1] ), .C1(n1882), .Y(n1841) );
  AOI222XL U2852 ( .A0(\loc_y[2][1] ), .A1(n1802), .B0(\loc_y[0][1] ), .B1(
        n1798), .C0(\loc_y[1][1] ), .C1(n1887), .Y(n1840) );
  NAND2X1 U2853 ( .A(n1841), .B(n1840), .Y(N934) );
  AOI222XL U2854 ( .A0(\loc_y[5][2] ), .A1(n1885), .B0(\loc_y[3][2] ), .B1(
        n1797), .C0(\loc_y[4][2] ), .C1(n1881), .Y(n1843) );
  AOI222XL U2855 ( .A0(\loc_y[2][2] ), .A1(n1889), .B0(\loc_y[0][2] ), .B1(
        n1888), .C0(\loc_y[1][2] ), .C1(n1886), .Y(n1842) );
  NAND2X1 U2856 ( .A(n1843), .B(n1842), .Y(N933) );
  AOI222XL U2857 ( .A0(\loc_y[5][3] ), .A1(n1885), .B0(\loc_y[3][3] ), .B1(
        n1797), .C0(\loc_y[4][3] ), .C1(n1881), .Y(n1845) );
  AOI222XL U2858 ( .A0(\loc_y[2][3] ), .A1(n1889), .B0(\loc_y[0][3] ), .B1(
        n1888), .C0(\loc_y[1][3] ), .C1(n1886), .Y(n1844) );
  NAND2X1 U2859 ( .A(n1845), .B(n1844), .Y(N932) );
  AOI222XL U2860 ( .A0(\loc_y[5][4] ), .A1(n1885), .B0(\loc_y[3][4] ), .B1(
        n1797), .C0(\loc_y[4][4] ), .C1(n1881), .Y(n1847) );
  AOI222XL U2861 ( .A0(\loc_y[2][4] ), .A1(n1889), .B0(\loc_y[0][4] ), .B1(
        n1888), .C0(\loc_y[1][4] ), .C1(n1886), .Y(n1846) );
  NAND2X1 U2862 ( .A(n1847), .B(n1846), .Y(N931) );
  AOI222XL U2863 ( .A0(\loc_y[5][5] ), .A1(n1885), .B0(\loc_y[3][5] ), .B1(
        n1797), .C0(\loc_y[4][5] ), .C1(n1881), .Y(n1849) );
  AOI222XL U2864 ( .A0(\loc_y[2][5] ), .A1(n1889), .B0(\loc_y[0][5] ), .B1(
        n1888), .C0(\loc_y[1][5] ), .C1(n1886), .Y(n1848) );
  NAND2X1 U2865 ( .A(n1849), .B(n1848), .Y(N930) );
  AOI222XL U2866 ( .A0(\loc_y[5][6] ), .A1(n1885), .B0(\loc_y[3][6] ), .B1(
        n1797), .C0(\loc_y[4][6] ), .C1(n1881), .Y(n1851) );
  AOI222XL U2867 ( .A0(\loc_y[2][6] ), .A1(n1889), .B0(\loc_y[0][6] ), .B1(
        n1888), .C0(\loc_y[1][6] ), .C1(n1886), .Y(n1850) );
  NAND2X1 U2868 ( .A(n1851), .B(n1850), .Y(N929) );
  AOI222XL U2869 ( .A0(\loc_y[5][7] ), .A1(n1885), .B0(\loc_y[3][7] ), .B1(
        n1797), .C0(\loc_y[4][7] ), .C1(n1881), .Y(n1853) );
  AOI222XL U2870 ( .A0(\loc_y[2][7] ), .A1(n1889), .B0(\loc_y[0][7] ), .B1(
        n1888), .C0(\loc_y[1][7] ), .C1(n1886), .Y(n1852) );
  NAND2X1 U2871 ( .A(n1853), .B(n1852), .Y(N928) );
  AOI222XL U2872 ( .A0(\loc_y[5][8] ), .A1(n1885), .B0(\loc_y[3][8] ), .B1(
        n1797), .C0(\loc_y[4][8] ), .C1(n1881), .Y(n1855) );
  AOI222XL U2873 ( .A0(\loc_y[2][8] ), .A1(n1889), .B0(\loc_y[0][8] ), .B1(
        n1888), .C0(\loc_y[1][8] ), .C1(n1886), .Y(n1854) );
  NAND2X1 U2874 ( .A(n1855), .B(n1854), .Y(N927) );
  AOI222XL U2875 ( .A0(\loc_y[5][9] ), .A1(n1885), .B0(\loc_y[3][9] ), .B1(
        n1797), .C0(\loc_y[4][9] ), .C1(n1881), .Y(n1857) );
  AOI222XL U2876 ( .A0(\loc_y[2][9] ), .A1(n1889), .B0(\loc_y[0][9] ), .B1(
        n1888), .C0(\loc_y[1][9] ), .C1(n1886), .Y(n1856) );
  NAND2X1 U2877 ( .A(n1857), .B(n1856), .Y(N926) );
  AOI222XL U2878 ( .A0(\loc_x[5][0] ), .A1(n1885), .B0(\loc_x[3][0] ), .B1(
        n1797), .C0(\loc_x[4][0] ), .C1(n1881), .Y(n1859) );
  AOI222XL U2879 ( .A0(\loc_x[2][0] ), .A1(n1889), .B0(\loc_x[0][0] ), .B1(
        n1888), .C0(\loc_x[1][0] ), .C1(n1886), .Y(n1858) );
  NAND2X1 U2880 ( .A(n1859), .B(n1858), .Y(N925) );
  AOI222XL U2881 ( .A0(\loc_x[5][1] ), .A1(n1885), .B0(\loc_x[3][1] ), .B1(
        n1797), .C0(\loc_x[4][1] ), .C1(n1881), .Y(n1861) );
  AOI222XL U2882 ( .A0(\loc_x[2][1] ), .A1(n1889), .B0(\loc_x[0][1] ), .B1(
        n1888), .C0(\loc_x[1][1] ), .C1(n1886), .Y(n1860) );
  NAND2X1 U2883 ( .A(n1861), .B(n1860), .Y(N924) );
  AOI222XL U2884 ( .A0(\loc_x[5][2] ), .A1(n1885), .B0(\loc_x[3][2] ), .B1(
        n1883), .C0(\loc_x[4][2] ), .C1(n1881), .Y(n1863) );
  AOI222XL U2885 ( .A0(\loc_x[2][2] ), .A1(n1889), .B0(\loc_x[0][2] ), .B1(
        n1888), .C0(\loc_x[1][2] ), .C1(n1886), .Y(n1862) );
  NAND2X1 U2886 ( .A(n1863), .B(n1862), .Y(N923) );
  AOI222XL U2887 ( .A0(\loc_x[5][3] ), .A1(n1885), .B0(\loc_x[3][3] ), .B1(
        n1883), .C0(\loc_x[4][3] ), .C1(n1881), .Y(n1865) );
  AOI222XL U2888 ( .A0(\loc_x[2][3] ), .A1(n1889), .B0(\loc_x[0][3] ), .B1(
        n1888), .C0(\loc_x[1][3] ), .C1(n1886), .Y(n1864) );
  NAND2X1 U2889 ( .A(n1865), .B(n1864), .Y(N922) );
  AOI222XL U2890 ( .A0(\loc_x[5][4] ), .A1(n1885), .B0(\loc_x[3][4] ), .B1(
        n1883), .C0(\loc_x[4][4] ), .C1(n1881), .Y(n1867) );
  AOI222XL U2891 ( .A0(\loc_x[2][4] ), .A1(n1889), .B0(\loc_x[0][4] ), .B1(
        n1888), .C0(\loc_x[1][4] ), .C1(n1886), .Y(n1866) );
  NAND2X1 U2892 ( .A(n1867), .B(n1866), .Y(N921) );
  AOI222XL U2893 ( .A0(\loc_x[5][5] ), .A1(n1884), .B0(\loc_x[3][5] ), .B1(
        n1883), .C0(\loc_x[4][5] ), .C1(n1882), .Y(n1869) );
  AOI222XL U2894 ( .A0(\loc_x[2][5] ), .A1(n1802), .B0(\loc_x[0][5] ), .B1(
        n1798), .C0(\loc_x[1][5] ), .C1(n1887), .Y(n1868) );
  NAND2X1 U2895 ( .A(n1869), .B(n1868), .Y(N920) );
  AOI222XL U2896 ( .A0(\loc_x[5][6] ), .A1(n1884), .B0(\loc_x[3][6] ), .B1(
        n1883), .C0(\loc_x[4][6] ), .C1(n1881), .Y(n1871) );
  AOI222XL U2897 ( .A0(\loc_x[2][6] ), .A1(n1802), .B0(\loc_x[0][6] ), .B1(
        n1798), .C0(\loc_x[1][6] ), .C1(n1886), .Y(n1870) );
  NAND2X1 U2898 ( .A(n1871), .B(n1870), .Y(N919) );
  AOI222XL U2899 ( .A0(\loc_x[5][7] ), .A1(n1884), .B0(\loc_x[3][7] ), .B1(
        n1883), .C0(\loc_x[4][7] ), .C1(n1876), .Y(n1873) );
  AOI222XL U2900 ( .A0(\loc_x[2][7] ), .A1(n1802), .B0(\loc_x[0][7] ), .B1(
        n1798), .C0(\loc_x[1][7] ), .C1(n1877), .Y(n1872) );
  NAND2X1 U2901 ( .A(n1873), .B(n1872), .Y(N918) );
  AOI222XL U2902 ( .A0(\loc_x[5][8] ), .A1(n1884), .B0(\loc_x[3][8] ), .B1(
        n1883), .C0(\loc_x[4][8] ), .C1(n1876), .Y(n1875) );
  AOI222XL U2903 ( .A0(\loc_x[2][8] ), .A1(n1802), .B0(\loc_x[0][8] ), .B1(
        n1798), .C0(\loc_x[1][8] ), .C1(n1877), .Y(n1874) );
  NAND2X1 U2904 ( .A(n1875), .B(n1874), .Y(N917) );
  AOI222XL U2905 ( .A0(\loc_x[5][9] ), .A1(n1884), .B0(\loc_x[3][9] ), .B1(
        n1883), .C0(\loc_x[4][9] ), .C1(n1876), .Y(n1879) );
  AOI222XL U2906 ( .A0(\loc_x[2][9] ), .A1(n1802), .B0(\loc_x[0][9] ), .B1(
        n1798), .C0(\loc_x[1][9] ), .C1(n1877), .Y(n1878) );
  NAND2X1 U2907 ( .A(n1879), .B(n1878), .Y(N916) );
  NOR2X1 U2908 ( .A(n1956), .B(loc_ff_pt[2]), .Y(n1891) );
  AOI222XL U2909 ( .A0(\loc_r[5][0] ), .A1(n1960), .B0(\loc_r[3][0] ), .B1(
        n1801), .C0(\loc_r[4][0] ), .C1(n1952), .Y(n1893) );
  NOR2X1 U2910 ( .A(loc_ff_pt[2]), .B(loc_ff_pt[0]), .Y(n1890) );
  AOI222XL U2911 ( .A0(\loc_r[2][0] ), .A1(n1799), .B0(\loc_r[0][0] ), .B1(
        n1805), .C0(\loc_r[1][0] ), .C1(n1962), .Y(n1892) );
  NAND2X1 U2912 ( .A(n1893), .B(n1892), .Y(N909) );
  AOI222XL U2913 ( .A0(\loc_r[5][1] ), .A1(n1960), .B0(\loc_r[3][1] ), .B1(
        n1801), .C0(\loc_r[4][1] ), .C1(n1952), .Y(n1895) );
  AOI222XL U2914 ( .A0(\loc_r[2][1] ), .A1(n1799), .B0(\loc_r[0][1] ), .B1(
        n1805), .C0(\loc_r[1][1] ), .C1(n1962), .Y(n1894) );
  NAND2X1 U2915 ( .A(n1895), .B(n1894), .Y(N908) );
  AOI222XL U2916 ( .A0(\loc_r[5][2] ), .A1(n1960), .B0(\loc_r[3][2] ), .B1(
        n1801), .C0(\loc_r[4][2] ), .C1(n1957), .Y(n1897) );
  AOI222XL U2917 ( .A0(\loc_r[2][2] ), .A1(n1799), .B0(\loc_r[0][2] ), .B1(
        n1805), .C0(\loc_r[1][2] ), .C1(n1962), .Y(n1896) );
  NAND2X1 U2918 ( .A(n1897), .B(n1896), .Y(N907) );
  AOI222XL U2919 ( .A0(\loc_r[5][3] ), .A1(n1960), .B0(\loc_r[3][3] ), .B1(
        n1801), .C0(\loc_r[4][3] ), .C1(n1957), .Y(n1899) );
  AOI222XL U2920 ( .A0(\loc_r[2][3] ), .A1(n1799), .B0(\loc_r[0][3] ), .B1(
        n1805), .C0(\loc_r[1][3] ), .C1(n1962), .Y(n1898) );
  NAND2X1 U2921 ( .A(n1899), .B(n1898), .Y(N906) );
  AOI222XL U2922 ( .A0(\loc_r[5][4] ), .A1(n1960), .B0(\loc_r[3][4] ), .B1(
        n1801), .C0(\loc_r[4][4] ), .C1(n1957), .Y(n1901) );
  AOI222XL U2923 ( .A0(\loc_r[2][4] ), .A1(n1799), .B0(\loc_r[0][4] ), .B1(
        n1805), .C0(\loc_r[1][4] ), .C1(n1962), .Y(n1900) );
  NAND2X1 U2924 ( .A(n1901), .B(n1900), .Y(N905) );
  AOI222XL U2925 ( .A0(\loc_r[5][5] ), .A1(n1960), .B0(\loc_r[3][5] ), .B1(
        n1801), .C0(\loc_r[4][5] ), .C1(n1957), .Y(n1903) );
  AOI222XL U2926 ( .A0(\loc_r[2][5] ), .A1(n1799), .B0(\loc_r[0][5] ), .B1(
        n1805), .C0(\loc_r[1][5] ), .C1(n1962), .Y(n1902) );
  NAND2X1 U2927 ( .A(n1903), .B(n1902), .Y(N904) );
  AOI222XL U2928 ( .A0(\loc_r[5][6] ), .A1(n1960), .B0(\loc_r[3][6] ), .B1(
        n1801), .C0(\loc_r[4][6] ), .C1(n1957), .Y(n1905) );
  AOI222XL U2929 ( .A0(\loc_r[2][6] ), .A1(n1799), .B0(\loc_r[0][6] ), .B1(
        n1805), .C0(\loc_r[1][6] ), .C1(n1962), .Y(n1904) );
  NAND2X1 U2930 ( .A(n1905), .B(n1904), .Y(N903) );
  AOI222XL U2931 ( .A0(\loc_r[5][7] ), .A1(n1960), .B0(\loc_r[3][7] ), .B1(
        n1959), .C0(\loc_r[4][7] ), .C1(n1957), .Y(n1907) );
  AOI222XL U2932 ( .A0(\loc_r[2][7] ), .A1(n1965), .B0(\loc_r[0][7] ), .B1(
        n1805), .C0(\loc_r[1][7] ), .C1(n1962), .Y(n1906) );
  NAND2X1 U2933 ( .A(n1907), .B(n1906), .Y(N902) );
  AOI222XL U2934 ( .A0(\loc_r[5][8] ), .A1(n1960), .B0(\loc_r[3][8] ), .B1(
        n1959), .C0(\loc_r[4][8] ), .C1(n1957), .Y(n1909) );
  AOI222XL U2935 ( .A0(\loc_r[2][8] ), .A1(n1965), .B0(\loc_r[0][8] ), .B1(
        n1805), .C0(\loc_r[1][8] ), .C1(n1962), .Y(n1908) );
  NAND2X1 U2936 ( .A(n1909), .B(n1908), .Y(N901) );
  AOI222XL U2937 ( .A0(\loc_r[5][9] ), .A1(n1960), .B0(\loc_r[3][9] ), .B1(
        n1959), .C0(\loc_r[4][9] ), .C1(n1957), .Y(n1911) );
  AOI222XL U2938 ( .A0(\loc_r[2][9] ), .A1(n1965), .B0(\loc_r[0][9] ), .B1(
        n1963), .C0(\loc_r[1][9] ), .C1(n1962), .Y(n1910) );
  NAND2X1 U2939 ( .A(n1911), .B(n1910), .Y(N900) );
  AOI222XL U2940 ( .A0(\loc_r[5][10] ), .A1(n1960), .B0(\loc_r[3][10] ), .B1(
        n1959), .C0(\loc_r[4][10] ), .C1(n1957), .Y(n1913) );
  AOI222XL U2941 ( .A0(\loc_r[2][10] ), .A1(n1965), .B0(\loc_r[0][10] ), .B1(
        n1963), .C0(\loc_r[1][10] ), .C1(n1962), .Y(n1912) );
  NAND2X1 U2942 ( .A(n1913), .B(n1912), .Y(N899) );
  AOI222XL U2943 ( .A0(\loc_y[5][0] ), .A1(n1960), .B0(\loc_y[3][0] ), .B1(
        n1801), .C0(\loc_y[4][0] ), .C1(n1958), .Y(n1915) );
  AOI222XL U2944 ( .A0(\loc_y[2][0] ), .A1(n1799), .B0(\loc_y[0][0] ), .B1(
        n1964), .C0(\loc_y[1][0] ), .C1(n1962), .Y(n1914) );
  NAND2X1 U2945 ( .A(n1915), .B(n1914), .Y(N898) );
  AOI222XL U2946 ( .A0(\loc_y[5][1] ), .A1(n1960), .B0(\loc_y[3][1] ), .B1(
        n1801), .C0(\loc_y[4][1] ), .C1(n1952), .Y(n1917) );
  AOI222XL U2947 ( .A0(\loc_y[2][1] ), .A1(n1799), .B0(\loc_y[0][1] ), .B1(
        n1805), .C0(\loc_y[1][1] ), .C1(n1962), .Y(n1916) );
  NAND2X1 U2948 ( .A(n1917), .B(n1916), .Y(N897) );
  AOI222XL U2949 ( .A0(\loc_y[5][2] ), .A1(n1961), .B0(\loc_y[3][2] ), .B1(
        n1959), .C0(\loc_y[4][2] ), .C1(n1958), .Y(n1919) );
  AOI222XL U2950 ( .A0(\loc_y[2][2] ), .A1(n1965), .B0(\loc_y[0][2] ), .B1(
        n1964), .C0(\loc_y[1][2] ), .C1(n1962), .Y(n1918) );
  NAND2X1 U2951 ( .A(n1919), .B(n1918), .Y(N896) );
  AOI222XL U2952 ( .A0(\loc_y[5][3] ), .A1(n1961), .B0(\loc_y[3][3] ), .B1(
        n1959), .C0(\loc_y[4][3] ), .C1(n1958), .Y(n1921) );
  AOI222XL U2953 ( .A0(\loc_y[2][3] ), .A1(n1965), .B0(\loc_y[0][3] ), .B1(
        n1964), .C0(\loc_y[1][3] ), .C1(n1800), .Y(n1920) );
  NAND2X1 U2954 ( .A(n1921), .B(n1920), .Y(N895) );
  AOI222XL U2955 ( .A0(\loc_y[5][4] ), .A1(n1961), .B0(\loc_y[3][4] ), .B1(
        n1959), .C0(\loc_y[4][4] ), .C1(n1958), .Y(n1923) );
  AOI222XL U2956 ( .A0(\loc_y[2][4] ), .A1(n1965), .B0(\loc_y[0][4] ), .B1(
        n1964), .C0(\loc_y[1][4] ), .C1(n1800), .Y(n1922) );
  NAND2X1 U2957 ( .A(n1923), .B(n1922), .Y(N894) );
  AOI222XL U2958 ( .A0(\loc_y[5][5] ), .A1(n1961), .B0(\loc_y[3][5] ), .B1(
        n1959), .C0(\loc_y[4][5] ), .C1(n1958), .Y(n1925) );
  AOI222XL U2959 ( .A0(\loc_y[2][5] ), .A1(n1965), .B0(\loc_y[0][5] ), .B1(
        n1964), .C0(\loc_y[1][5] ), .C1(n1800), .Y(n1924) );
  NAND2X1 U2960 ( .A(n1925), .B(n1924), .Y(N893) );
  AOI222XL U2961 ( .A0(\loc_y[5][6] ), .A1(n1961), .B0(\loc_y[3][6] ), .B1(
        n1959), .C0(\loc_y[4][6] ), .C1(n1958), .Y(n1927) );
  AOI222XL U2962 ( .A0(\loc_y[2][6] ), .A1(n1965), .B0(\loc_y[0][6] ), .B1(
        n1964), .C0(\loc_y[1][6] ), .C1(n1800), .Y(n1926) );
  NAND2X1 U2963 ( .A(n1927), .B(n1926), .Y(N892) );
  AOI222XL U2964 ( .A0(\loc_y[5][7] ), .A1(n1961), .B0(\loc_y[3][7] ), .B1(
        n1959), .C0(\loc_y[4][7] ), .C1(n1958), .Y(n1929) );
  AOI222XL U2965 ( .A0(\loc_y[2][7] ), .A1(n1965), .B0(\loc_y[0][7] ), .B1(
        n1964), .C0(\loc_y[1][7] ), .C1(n1800), .Y(n1928) );
  NAND2X1 U2966 ( .A(n1929), .B(n1928), .Y(N891) );
  AOI222XL U2967 ( .A0(\loc_y[5][8] ), .A1(n1961), .B0(\loc_y[3][8] ), .B1(
        n1959), .C0(\loc_y[4][8] ), .C1(n1958), .Y(n1931) );
  AOI222XL U2968 ( .A0(\loc_y[2][8] ), .A1(n1965), .B0(\loc_y[0][8] ), .B1(
        n1964), .C0(\loc_y[1][8] ), .C1(n1800), .Y(n1930) );
  NAND2X1 U2969 ( .A(n1931), .B(n1930), .Y(N890) );
  AOI222XL U2970 ( .A0(\loc_y[5][9] ), .A1(n1961), .B0(\loc_y[3][9] ), .B1(
        n1959), .C0(\loc_y[4][9] ), .C1(n1958), .Y(n1933) );
  AOI222XL U2971 ( .A0(\loc_y[2][9] ), .A1(n1965), .B0(\loc_y[0][9] ), .B1(
        n1964), .C0(\loc_y[1][9] ), .C1(n1800), .Y(n1932) );
  NAND2X1 U2972 ( .A(n1933), .B(n1932), .Y(N889) );
  AOI222XL U2973 ( .A0(\loc_x[5][0] ), .A1(n1961), .B0(\loc_x[3][0] ), .B1(
        n1959), .C0(\loc_x[4][0] ), .C1(n1958), .Y(n1935) );
  AOI222XL U2974 ( .A0(\loc_x[2][0] ), .A1(n1965), .B0(\loc_x[0][0] ), .B1(
        n1964), .C0(\loc_x[1][0] ), .C1(n1800), .Y(n1934) );
  NAND2X1 U2975 ( .A(n1935), .B(n1934), .Y(N888) );
  AOI222XL U2976 ( .A0(\loc_x[5][1] ), .A1(n1961), .B0(\loc_x[3][1] ), .B1(
        n1959), .C0(\loc_x[4][1] ), .C1(n1958), .Y(n1937) );
  AOI222XL U2977 ( .A0(\loc_x[2][1] ), .A1(n1965), .B0(\loc_x[0][1] ), .B1(
        n1964), .C0(\loc_x[1][1] ), .C1(n1800), .Y(n1936) );
  NAND2X1 U2978 ( .A(n1937), .B(n1936), .Y(N887) );
  AOI222XL U2979 ( .A0(\loc_x[5][2] ), .A1(n1961), .B0(\loc_x[3][2] ), .B1(
        n1959), .C0(\loc_x[4][2] ), .C1(n1958), .Y(n1939) );
  AOI222XL U2980 ( .A0(\loc_x[2][2] ), .A1(n1965), .B0(\loc_x[0][2] ), .B1(
        n1964), .C0(\loc_x[1][2] ), .C1(n1800), .Y(n1938) );
  NAND2X1 U2981 ( .A(n1939), .B(n1938), .Y(N886) );
  AOI222XL U2982 ( .A0(\loc_x[5][3] ), .A1(n1961), .B0(\loc_x[3][3] ), .B1(
        n1959), .C0(\loc_x[4][3] ), .C1(n1958), .Y(n1941) );
  AOI222XL U2983 ( .A0(\loc_x[2][3] ), .A1(n1965), .B0(\loc_x[0][3] ), .B1(
        n1964), .C0(\loc_x[1][3] ), .C1(n1962), .Y(n1940) );
  NAND2X1 U2984 ( .A(n1941), .B(n1940), .Y(N885) );
  AOI222XL U2985 ( .A0(\loc_x[5][4] ), .A1(n1961), .B0(\loc_x[3][4] ), .B1(
        n1959), .C0(\loc_x[4][4] ), .C1(n1958), .Y(n1943) );
  AOI222XL U2986 ( .A0(\loc_x[2][4] ), .A1(n1965), .B0(\loc_x[0][4] ), .B1(
        n1964), .C0(\loc_x[1][4] ), .C1(n1962), .Y(n1942) );
  NAND2X1 U2987 ( .A(n1943), .B(n1942), .Y(N884) );
  AOI222XL U2988 ( .A0(\loc_x[5][5] ), .A1(n1960), .B0(\loc_x[3][5] ), .B1(
        n1959), .C0(\loc_x[4][5] ), .C1(n1958), .Y(n1945) );
  AOI222XL U2989 ( .A0(\loc_x[2][5] ), .A1(n1965), .B0(\loc_x[0][5] ), .B1(
        n1964), .C0(\loc_x[1][5] ), .C1(n1962), .Y(n1944) );
  NAND2X1 U2990 ( .A(n1945), .B(n1944), .Y(N883) );
  AOI222XL U2991 ( .A0(\loc_x[5][6] ), .A1(n1960), .B0(\loc_x[3][6] ), .B1(
        n1801), .C0(\loc_x[4][6] ), .C1(n1952), .Y(n1947) );
  AOI222XL U2992 ( .A0(\loc_x[2][6] ), .A1(n1799), .B0(\loc_x[0][6] ), .B1(
        n1963), .C0(\loc_x[1][6] ), .C1(n1962), .Y(n1946) );
  NAND2X1 U2993 ( .A(n1947), .B(n1946), .Y(N882) );
  AOI222XL U2994 ( .A0(\loc_x[5][7] ), .A1(n1960), .B0(\loc_x[3][7] ), .B1(
        n1801), .C0(\loc_x[4][7] ), .C1(n1957), .Y(n1949) );
  AOI222XL U2995 ( .A0(\loc_x[2][7] ), .A1(n1799), .B0(\loc_x[0][7] ), .B1(
        n1805), .C0(\loc_x[1][7] ), .C1(n1962), .Y(n1948) );
  NAND2X1 U2996 ( .A(n1949), .B(n1948), .Y(N881) );
  AOI222XL U2997 ( .A0(\loc_x[5][8] ), .A1(n1960), .B0(\loc_x[3][8] ), .B1(
        n1801), .C0(\loc_x[4][8] ), .C1(n1952), .Y(n1951) );
  AOI222XL U2998 ( .A0(\loc_x[2][8] ), .A1(n1799), .B0(\loc_x[0][8] ), .B1(
        n1805), .C0(\loc_x[1][8] ), .C1(n1962), .Y(n1950) );
  NAND2X1 U2999 ( .A(n1951), .B(n1950), .Y(N880) );
  AOI222XL U3000 ( .A0(\loc_x[5][9] ), .A1(n1960), .B0(\loc_x[3][9] ), .B1(
        n1801), .C0(\loc_x[4][9] ), .C1(n1952), .Y(n1954) );
  AOI222XL U3001 ( .A0(\loc_x[2][9] ), .A1(n1799), .B0(\loc_x[0][9] ), .B1(
        n1805), .C0(\loc_x[1][9] ), .C1(n1962), .Y(n1953) );
  NAND2X1 U3002 ( .A(n1954), .B(n1953), .Y(N879) );
  CLKINVX1 U3003 ( .A(s1[0]), .Y(N708) );
  CLKINVX1 U3004 ( .A(s0[0]), .Y(N671) );
  CLKINVX1 U3005 ( .A(s2[0]), .Y(N745) );
endmodule

