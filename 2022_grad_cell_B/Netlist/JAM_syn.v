/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Jan  5 20:38:14 2024
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(A[9]), .B(n3), .Y(SUM[9]) );
  XOR2XL U3 ( .A(A[8]), .B(n2), .Y(SUM[8]) );
  XOR2XL U4 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XOR2XL U5 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  NAND2X1 U6 ( .A(A[8]), .B(n2), .Y(n3) );
  AND2X2 U7 ( .A(A[7]), .B(carry[7]), .Y(n2) );
endmodule


module JAM_DW01_dec_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;

  OR2X1 U1 ( .A(A[1]), .B(A[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(A[10]), .Y(n1) );
  CLKINVX1 U3 ( .A(A[13]), .Y(n2) );
  AO21X1 U4 ( .A0(n3), .A1(A[9]), .B0(n4), .Y(SUM[9]) );
  OAI2BB1X1 U5 ( .A0N(n5), .A1N(A[8]), .B0(n3), .Y(SUM[8]) );
  OAI2BB1X1 U6 ( .A0N(n6), .A1N(A[7]), .B0(n5), .Y(SUM[7]) );
  OAI2BB1X1 U7 ( .A0N(n7), .A1N(A[6]), .B0(n6), .Y(SUM[6]) );
  OAI2BB1X1 U8 ( .A0N(n8), .A1N(A[5]), .B0(n7), .Y(SUM[5]) );
  OAI2BB1X1 U9 ( .A0N(n9), .A1N(A[4]), .B0(n8), .Y(SUM[4]) );
  OAI2BB1X1 U10 ( .A0N(n10), .A1N(A[3]), .B0(n9), .Y(SUM[3]) );
  OAI2BB1X1 U11 ( .A0N(n11), .A1N(A[2]), .B0(n10), .Y(SUM[2]) );
  OAI2BB1X1 U12 ( .A0N(A[0]), .A1N(A[1]), .B0(n11), .Y(SUM[1]) );
  XOR2X1 U13 ( .A(A[15]), .B(n12), .Y(SUM[15]) );
  NOR2X1 U14 ( .A(A[14]), .B(n13), .Y(n12) );
  XNOR2X1 U15 ( .A(A[14]), .B(n13), .Y(SUM[14]) );
  OAI21XL U16 ( .A0(n14), .A1(n2), .B0(n13), .Y(SUM[13]) );
  NAND2X1 U17 ( .A(n14), .B(n2), .Y(n13) );
  AO21X1 U18 ( .A0(n15), .A1(A[12]), .B0(n14), .Y(SUM[12]) );
  NOR2X1 U19 ( .A(n15), .B(A[12]), .Y(n14) );
  OAI2BB1X1 U20 ( .A0N(n16), .A1N(A[11]), .B0(n15), .Y(SUM[11]) );
  OR2X1 U21 ( .A(n16), .B(A[11]), .Y(n15) );
  OAI21XL U22 ( .A0(n4), .A1(n1), .B0(n16), .Y(SUM[10]) );
  NAND2X1 U23 ( .A(n4), .B(n1), .Y(n16) );
  NOR2X1 U24 ( .A(n3), .B(A[9]), .Y(n4) );
  OR2X1 U25 ( .A(n5), .B(A[8]), .Y(n3) );
  OR2X1 U26 ( .A(n6), .B(A[7]), .Y(n5) );
  OR2X1 U27 ( .A(n7), .B(A[6]), .Y(n6) );
  OR2X1 U28 ( .A(n8), .B(A[5]), .Y(n7) );
  OR2X1 U29 ( .A(n9), .B(A[4]), .Y(n8) );
  OR2X1 U30 ( .A(n10), .B(A[3]), .Y(n9) );
  OR2X1 U31 ( .A(n11), .B(A[2]), .Y(n10) );
  CLKINVX1 U32 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N73, N74, N75, N76, N77, N79, N80, N81, N82, N83, n994, n995, n996,
         n997, N84, N85, \curr_state[2] , \job_list[0][2] , \job_list[0][1] ,
         \job_list[0][0] , \job_list[1][2] , \job_list[1][1] ,
         \job_list[1][0] , \job_list[2][2] , \job_list[2][1] ,
         \job_list[2][0] , \job_list[3][2] , \job_list[3][1] ,
         \job_list[3][0] , \job_list[4][2] , \job_list[4][1] ,
         \job_list[4][0] , \job_list[5][1] , \job_list[5][0] ,
         \job_list[6][2] , \job_list[6][1] , \job_list[6][0] ,
         \job_list[7][2] , \job_list[7][1] , \job_list[7][0] ,
         \before_flip_job_list[1][2] , \before_flip_job_list[1][1] ,
         \before_flip_job_list[1][0] , \before_flip_job_list[2][2] ,
         \before_flip_job_list[2][1] , \before_flip_job_list[2][0] ,
         \before_flip_job_list[3][0] , \before_flip_job_list[4][2] ,
         \before_flip_job_list[4][1] , \before_flip_job_list[4][0] ,
         \before_flip_job_list[5][2] , \before_flip_job_list[5][1] ,
         \before_flip_job_list[5][0] , \before_flip_job_list[6][1] ,
         \before_flip_job_list[6][0] , \before_flip_job_list[7][2] ,
         \before_flip_job_list[7][1] , \before_flip_job_list[7][0] , N226,
         N227, N228, N229, N230, N231, N235, N266, N267, N268, N270, N271,
         N272, N273, N274, N317, N318, N320, N321, N323, N324, N325, N326,
         N327, N328, N329, N330, N331, N332, N333, N334, N335, N336, N380,
         N381, N382, N383, N384, N385, N386, N387, N388, N389, n142, n143,
         n144, n145, n146, n147, n148, n149, n151, n154, n155, n156, n159,
         n160, n163, n164, n168, n169, n170, n173, n174, n176, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n197, n198, n199, n200, n201, n203, n204, n206, n208, n209, n210,
         n211, n212, n213, n214, n216, n217, n218, n220, n222, n223, n224,
         n225, n227, n228, n229, n231, n233, n235, n236, n238, n239, n240,
         n241, n242, n243, n245, n247, n248, n249, n250, n252, n254, n255,
         n257, n258, n261, n263, n265, n267, n269, n271, n273, n275, n277,
         n279, n281, n282, n283, n284, n285, n286, n287, n289, n290, n291,
         n292, n294, n295, n296, n297, n299, n300, n301, n302, n305, n306,
         n308, n309, n310, n311, n312, n313, n314, n316, n317, n318, n320,
         n321, n323, n325, n326, n327, n329, n330, n331, n332, n334, n335,
         n336, n339, n340, n341, n342, n343, n344, n345, n346, n349, n351,
         n352, n353, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n367, n368, n369, n370, n371, n373, n374, n376, n377,
         n379, n380, n382, n383, n384, n386, n387, n388, n390, n391, n392,
         n393, n394, n395, n396, n398, n399, n400, n401, n402, n403, n404,
         n405, n407, n408, n409, n411, n412, n413, n416, n418, n419, n420,
         n421, n423, n424, n425, n426, n427, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n440, n441, n442, n443, n444, n447,
         n448, n449, n452, n454, n455, n458, n460, n461, n465, n467, n468,
         n471, n472, n473, n474, n475, n476, n479, n481, n484, n486, n487,
         n489, n492, n493, n495, n496, n497, n498, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n659, n660, n661, n662, n663, n664, n665, n666, n667, n669, n671,
         n673, n675, n677, n679, n681, n683, n685, n687, n689, n691, n693,
         n695, n698, n699, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n734, n735, n736,
         n737, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n986, n987, n988, n989, n990, n991, n992, n993;
  wire   [15:0] total_sort_cnt;
  wire   [9:0] min_cost_temp;
  wire   [9:0] min_cost;
  wire   [15:0] total_sort_cnt_down;
  wire   [9:0] min_cost_temp_sum;
  wire   [2:0] next_state;

  DFFRX4 \job_list_reg[1][1]  ( .D(n536), .CK(CLK), .RN(n813), .Q(
        \job_list[1][1] ), .QN(n569) );
  DFFRX4 \job_list_reg[4][1]  ( .D(n520), .CK(CLK), .RN(n814), .Q(
        \job_list[4][1] ), .QN(n578) );
  DFFSX4 \job_list_reg[3][0]  ( .D(n533), .CK(CLK), .SN(n817), .Q(
        \job_list[3][0] ), .QN(n576) );
  DFFSX4 \job_list_reg[6][1]  ( .D(n531), .CK(CLK), .SN(n815), .Q(
        \job_list[6][1] ), .QN(n584) );
  DFFSX4 \job_list_reg[2][1]  ( .D(n519), .CK(CLK), .SN(n818), .Q(
        \job_list[2][1] ), .QN(n572) );
  DFFSX4 \job_list_reg[3][1]  ( .D(n518), .CK(CLK), .SN(n818), .Q(
        \job_list[3][1] ), .QN(n575) );
  OAI21X4 U233 ( .A0(n969), .A1(n305), .B0(n309), .Y(N76) );
  OAI22X4 U237 ( .A0(n969), .A1(n314), .B0(n957), .B1(n316), .Y(N75) );
  AOI31X2 U238 ( .A0(n306), .A1(n971), .A2(n317), .B0(n308), .Y(n316) );
  OAI221X2 U247 ( .A0(n335), .A1(n336), .B0(\job_list[3][2] ), .B1(n811), .C0(
        n950), .Y(n313) );
  OAI31X2 U249 ( .A0(n340), .A1(n341), .A2(n342), .B0(n343), .Y(n339) );
  OAI211X2 U250 ( .A0(n708), .A1(n341), .B0(n345), .C0(n346), .Y(n343) );
  OAI221X2 U253 ( .A0(n349), .A1(\job_list[2][2] ), .B0(n811), .B1(n351), .C0(
        n352), .Y(n312) );
  AOI31X2 U254 ( .A0(n952), .A1(n708), .A2(n951), .B0(n353), .Y(n352) );
  AOI211X2 U255 ( .A0(n949), .A1(n708), .B0(n355), .C0(n334), .Y(n353) );
  OAI211X2 U256 ( .A0(n811), .A1(n709), .B0(n184), .C0(n357), .Y(n334) );
  AOI32X2 U257 ( .A0(n358), .A1(n359), .A2(n360), .B0(n568), .B1(n361), .Y(
        n357) );
  OA21X4 U262 ( .A0(n570), .A1(n803), .B0(n364), .Y(n360) );
  AOI211X2 U312 ( .A0(n394), .A1(n332), .B0(n396), .C0(n223), .Y(n395) );
  NAND2BX4 U408 ( .AN(n429), .B(n430), .Y(n424) );
  OA21X4 U409 ( .A0(n577), .A1(\job_list[3][2] ), .B0(n447), .Y(n430) );
  OAI21X4 U413 ( .A0(n574), .A1(\job_list[2][2] ), .B0(n452), .Y(n429) );
  OAI22X4 U414 ( .A0(n974), .A1(n454), .B0(n571), .B1(\job_list[3][2] ), .Y(
        n452) );
  OAI211X2 U418 ( .A0(n977), .A1(n572), .B0(n573), .C0(\job_list[3][0] ), .Y(
        n455) );
  OA21X4 U430 ( .A0(n743), .A1(\job_list[4][2] ), .B0(n460), .Y(n423) );
  AOI211X2 U433 ( .A0(n581), .A1(\job_list[4][1] ), .B0(\job_list[4][0] ), 
        .C0(n582), .Y(n461) );
  OAI21X4 U438 ( .A0(n583), .A1(n742), .B0(n465), .Y(n419) );
  OAI21X4 U445 ( .A0(n586), .A1(\job_list[6][2] ), .B0(n471), .Y(n426) );
  DFFRX1 \total_sort_cnt_reg[14]  ( .D(n593), .CK(CLK), .RN(n814), .Q(
        total_sort_cnt[14]) );
  DFFSX1 \total_sort_cnt_reg[15]  ( .D(n592), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[15]), .QN(n989) );
  DFFRX1 \total_sort_cnt_reg[13]  ( .D(n594), .CK(CLK), .RN(n814), .Q(
        total_sort_cnt[13]) );
  DFFSX1 \total_sort_cnt_reg[12]  ( .D(n595), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[12]), .QN(n988) );
  DFFRX1 \total_sort_cnt_reg[9]  ( .D(n598), .CK(CLK), .RN(n814), .Q(
        total_sort_cnt[9]) );
  DFFSX1 \total_sort_cnt_reg[10]  ( .D(n597), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[10]), .QN(n986) );
  DFFSX1 \total_sort_cnt_reg[11]  ( .D(n596), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[11]), .QN(n987) );
  DFFRX1 \total_sort_cnt_reg[7]  ( .D(n600), .CK(CLK), .RN(n814), .Q(
        total_sort_cnt[7]) );
  DFFSX1 \total_sort_cnt_reg[8]  ( .D(n599), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[8]), .QN(n985) );
  DFFSX1 \total_sort_cnt_reg[5]  ( .D(n602), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[5]), .QN(n983) );
  DFFSX1 \total_sort_cnt_reg[6]  ( .D(n601), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[6]), .QN(n984) );
  DFFSX1 \total_sort_cnt_reg[4]  ( .D(n603), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[4]), .QN(n982) );
  DFFSX1 \total_sort_cnt_reg[3]  ( .D(n604), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[3]), .QN(n981) );
  DFFSX1 \total_sort_cnt_reg[1]  ( .D(n607), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[1]), .QN(n978) );
  DFFSX1 \total_sort_cnt_reg[2]  ( .D(n605), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[2]), .QN(n980) );
  DFFSX2 \job_list_reg[6][2]  ( .D(n532), .CK(CLK), .SN(n818), .Q(
        \job_list[6][2] ), .QN(n583) );
  DFFSX2 \job_list_reg[5][0]  ( .D(n526), .CK(CLK), .SN(n815), .Q(
        \job_list[5][0] ), .QN(n582) );
  DFFSX1 \total_sort_cnt_reg[0]  ( .D(n606), .CK(CLK), .SN(n818), .Q(
        total_sort_cnt[0]), .QN(n979) );
  DFFRX4 \job_list_reg[1][2]  ( .D(n522), .CK(CLK), .RN(n813), .Q(
        \job_list[1][2] ), .QN(n568) );
  DFFSX2 \job_list_reg[7][1]  ( .D(n538), .CK(CLK), .SN(n817), .Q(
        \job_list[7][1] ), .QN(n587) );
  DFFRX1 \worker_cnt_reg[1]  ( .D(n539), .CK(CLK), .RN(n813), .Q(N82), .QN(
        n893) );
  DFFRX1 \curr_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n814), .Q(
        \curr_state[2] ), .QN(n589) );
  DFFRX1 \curr_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n813), .Q(n801), .QN(n591) );
  DFFRX1 \min_cost_temp_reg[0]  ( .D(N380), .CK(CLK), .RN(n814), .Q(
        min_cost_temp[0]), .QN(n496) );
  DFFRX1 \min_cost_temp_reg[1]  ( .D(N381), .CK(CLK), .RN(n815), .Q(
        min_cost_temp[1]), .QN(n929) );
  DFFRX1 \min_cost_temp_reg[2]  ( .D(N382), .CK(CLK), .RN(n815), .Q(
        min_cost_temp[2]), .QN(n479) );
  DFFRX1 \min_cost_temp_reg[3]  ( .D(N383), .CK(CLK), .RN(n815), .Q(
        min_cost_temp[3]), .QN(n481) );
  DFFRX1 \min_cost_temp_reg[4]  ( .D(N384), .CK(CLK), .RN(n815), .Q(
        min_cost_temp[4]), .QN(n928) );
  DFFRX1 \min_cost_temp_reg[5]  ( .D(N385), .CK(CLK), .RN(n815), .Q(
        min_cost_temp[5]), .QN(n927) );
  DFFRX1 \job_list_reg[0][2]  ( .D(n517), .CK(CLK), .RN(n814), .Q(
        \job_list[0][2] ), .QN(n566) );
  DFFRX1 \min_cost_temp_reg[6]  ( .D(N386), .CK(CLK), .RN(n815), .Q(
        min_cost_temp[6]), .QN(n487) );
  DFFRX1 \min_cost_temp_reg[7]  ( .D(N387), .CK(CLK), .RN(n815), .Q(
        min_cost_temp[7]), .QN(n489) );
  DFFRX1 \min_cost_temp_reg[8]  ( .D(N388), .CK(CLK), .RN(n815), .Q(
        min_cost_temp[8]), .QN(n925) );
  DFFRX1 \min_cost_temp_reg[9]  ( .D(N389), .CK(CLK), .RN(n815), .Q(
        min_cost_temp[9]), .QN(n493) );
  DFFRX2 \job_list_reg[0][1]  ( .D(n516), .CK(CLK), .RN(n814), .Q(
        \job_list[0][1] ), .QN(n567) );
  DFFSX2 \job_list_reg[5][2]  ( .D(n528), .CK(CLK), .SN(n813), .Q(n742), .QN(
        n743) );
  DFFSX1 \min_cost_reg[9]  ( .D(n512), .CK(CLK), .SN(n817), .QN(n923) );
  DFFSX1 \min_cost_reg[8]  ( .D(n511), .CK(CLK), .SN(n817), .Q(min_cost[8]), 
        .QN(n492) );
  DFFSX1 \min_cost_reg[7]  ( .D(n510), .CK(CLK), .SN(n817), .QN(n922) );
  DFFSX1 \min_cost_reg[6]  ( .D(n509), .CK(CLK), .SN(n817), .QN(n921) );
  DFFSX1 \min_cost_reg[5]  ( .D(n508), .CK(CLK), .SN(n817), .Q(min_cost[5]), 
        .QN(n486) );
  DFFSX1 \min_cost_reg[4]  ( .D(n507), .CK(CLK), .SN(n817), .Q(min_cost[4]), 
        .QN(n484) );
  DFFSX1 \min_cost_reg[3]  ( .D(n506), .CK(CLK), .SN(n817), .Q(min_cost[3]), 
        .QN(n920) );
  DFFSX1 \min_cost_reg[2]  ( .D(n505), .CK(CLK), .SN(n817), .QN(n919) );
  DFFSX1 \min_cost_reg[1]  ( .D(n504), .CK(CLK), .SN(n817), .Q(min_cost[1]), 
        .QN(n918) );
  DFFSX1 \min_cost_reg[0]  ( .D(n514), .CK(CLK), .SN(n817), .Q(min_cost[0]), 
        .QN(n497) );
  DFFRX2 \worker_cnt_reg[2]  ( .D(n540), .CK(CLK), .RN(n813), .Q(N83), .QN(
        n894) );
  DFFRX2 \job_list_reg[2][2]  ( .D(n523), .CK(CLK), .RN(n813), .Q(
        \job_list[2][2] ), .QN(n571) );
  DFFSX2 \job_list_reg[4][2]  ( .D(n524), .CK(CLK), .SN(n814), .Q(
        \job_list[4][2] ), .QN(n577) );
  DFFRX2 \job_list_reg[4][0]  ( .D(n535), .CK(CLK), .RN(n813), .Q(
        \job_list[4][0] ), .QN(n579) );
  DFFRX2 \job_list_reg[3][2]  ( .D(n521), .CK(CLK), .RN(n814), .Q(
        \job_list[3][2] ), .QN(n574) );
  DFFRX2 \job_list_reg[5][1]  ( .D(n527), .CK(CLK), .RN(n813), .Q(
        \job_list[5][1] ), .QN(n581) );
  DFFRX1 \job_list_reg[0][0]  ( .D(n515), .CK(CLK), .RN(n814), .Q(
        \job_list[0][0] ), .QN(n498) );
  DFFRX2 \job_list_reg[2][0]  ( .D(n529), .CK(CLK), .RN(n813), .Q(
        \job_list[2][0] ), .QN(n573) );
  DFFSX2 \job_list_reg[1][0]  ( .D(n537), .CK(CLK), .SN(n816), .Q(
        \job_list[1][0] ), .QN(n570) );
  DFFSX2 \job_list_reg[7][2]  ( .D(n525), .CK(CLK), .SN(n816), .Q(
        \job_list[7][2] ), .QN(n586) );
  DFFRX2 \job_list_reg[6][0]  ( .D(n530), .CK(CLK), .RN(n813), .Q(
        \job_list[6][0] ), .QN(n585) );
  DFFSX4 \job_list_reg[7][0]  ( .D(n534), .CK(CLK), .SN(n814), .Q(
        \job_list[7][0] ), .QN(n588) );
  INVX6 U532 ( .A(n749), .Y(N235) );
  CLKINVX12 U533 ( .A(n660), .Y(n661) );
  NAND2X1 U534 ( .A(n803), .B(n585), .Y(n411) );
  BUFX6 U535 ( .A(n779), .Y(n659) );
  OAI221X1 U536 ( .A0(n790), .A1(n227), .B0(n585), .B1(n822), .C0(n228), .Y(
        n530) );
  INVX4 U537 ( .A(n762), .Y(n794) );
  OAI222X2 U538 ( .A0(\before_flip_job_list[7][1] ), .A1(n776), .B0(n794), 
        .B1(n775), .C0(\before_flip_job_list[5][1] ), .C1(n965), .Y(n779) );
  OAI2BB2X4 U539 ( .B0(n443), .B1(n444), .A0N(\job_list[1][2] ), .A1N(n571), 
        .Y(n442) );
  NOR2X1 U540 ( .A(n572), .B(\job_list[1][1] ), .Y(n444) );
  OA22X4 U541 ( .A0(n792), .A1(n773), .B0(n778), .B1(n793), .Y(n753) );
  OAI222X4 U542 ( .A0(\before_flip_job_list[7][0] ), .A1(n776), .B0(
        \before_flip_job_list[3][0] ), .B1(n775), .C0(
        \before_flip_job_list[5][0] ), .C1(n965), .Y(n778) );
  NOR2X2 U543 ( .A(n713), .B(n703), .Y(n183) );
  INVX12 U544 ( .A(n702), .Y(n703) );
  INVX12 U545 ( .A(n711), .Y(n713) );
  OAI222X4 U546 ( .A0(n573), .A1(n299), .B0(n947), .B1(n300), .C0(n939), .C1(
        n301), .Y(\before_flip_job_list[2][0] ) );
  INVX3 U547 ( .A(n301), .Y(n964) );
  NAND2X2 U548 ( .A(n300), .B(n301), .Y(n299) );
  NAND2X2 U549 ( .A(n193), .B(n971), .Y(n301) );
  OAI221X1 U550 ( .A0(n941), .A1(n216), .B0(n581), .B1(n822), .C0(n220), .Y(
        n527) );
  NAND2X4 U551 ( .A(N267), .B(n218), .Y(n220) );
  OAI21X2 U552 ( .A0(n588), .A1(n821), .B0(n239), .Y(n534) );
  AOI211X2 U553 ( .A0(n587), .A1(\job_list[6][1] ), .B0(\job_list[6][0] ), 
        .C0(n588), .Y(n472) );
  OAI22X4 U554 ( .A0(n716), .A1(n793), .B0(n792), .B1(n772), .Y(N274) );
  BUFX8 U555 ( .A(n777), .Y(n716) );
  AOI221X2 U556 ( .A0(\before_flip_job_list[1][2] ), .A1(n783), .B0(
        \before_flip_job_list[5][2] ), .B1(n784), .C0(n771), .Y(n772) );
  OAI22X1 U557 ( .A0(n773), .A1(n793), .B0(n792), .B1(n766), .Y(N272) );
  AOI221X1 U558 ( .A0(\before_flip_job_list[1][0] ), .A1(n783), .B0(
        \before_flip_job_list[5][0] ), .B1(n784), .C0(n765), .Y(n766) );
  OAI222X2 U559 ( .A0(n781), .A1(n940), .B0(n780), .B1(n787), .C0(n792), .C1(
        n659), .Y(N267) );
  NOR2BX4 U560 ( .AN(n390), .B(n804), .Y(n388) );
  OAI2BB2X2 U561 ( .B0(N230), .B1(n740), .A0N(\job_list[6][1] ), .A1N(n760), 
        .Y(n390) );
  INVX3 U562 ( .A(n387), .Y(n957) );
  OAI21X2 U563 ( .A0(n571), .A1(\job_list[1][2] ), .B0(n442), .Y(n431) );
  OAI21X2 U564 ( .A0(n948), .A1(n334), .B0(n313), .Y(n317) );
  NOR2X6 U565 ( .A(n713), .B(n703), .Y(n851) );
  INVX3 U566 ( .A(n832), .Y(n752) );
  NAND2X6 U567 ( .A(n296), .B(n297), .Y(n238) );
  XOR2X1 U568 ( .A(n368), .B(n369), .Y(n362) );
  XOR2X1 U569 ( .A(n572), .B(N230), .Y(n369) );
  CLKINVX4 U570 ( .A(n323), .Y(n959) );
  BUFX4 U571 ( .A(n344), .Y(n708) );
  OA22X2 U572 ( .A0(n340), .A1(n952), .B0(n951), .B1(n342), .Y(n345) );
  OAI22X1 U573 ( .A0(N230), .A1(n953), .B0(n575), .B1(n382), .Y(n336) );
  AND2X4 U574 ( .A(n335), .B(n336), .Y(n341) );
  AO22X2 U575 ( .A0(n392), .A1(n330), .B0(n393), .B1(n959), .Y(n396) );
  NAND2X2 U576 ( .A(n388), .B(\job_list[6][2] ), .Y(n393) );
  INVX3 U577 ( .A(n575), .Y(n977) );
  XNOR2X1 U578 ( .A(n383), .B(n384), .Y(n331) );
  INVX3 U579 ( .A(n312), .Y(n948) );
  NAND2X1 U580 ( .A(n811), .B(n709), .Y(n361) );
  AO22X2 U581 ( .A0(\job_list[3][2] ), .A1(n715), .B0(\job_list[1][2] ), .B1(
        n835), .Y(n834) );
  INVX3 U582 ( .A(n747), .Y(n839) );
  AO22X1 U583 ( .A0(\job_list[2][2] ), .A1(n715), .B0(\job_list[0][2] ), .B1(
        n835), .Y(n837) );
  INVX3 U584 ( .A(n711), .Y(n712) );
  INVX3 U585 ( .A(N76), .Y(n702) );
  NAND4X2 U586 ( .A(n310), .B(n741), .C(n306), .D(n971), .Y(n309) );
  NAND4X6 U587 ( .A(n975), .B(n423), .C(n972), .D(n440), .Y(n421) );
  AND2X2 U588 ( .A(n713), .B(n703), .Y(n284) );
  INVX3 U589 ( .A(n703), .Y(n945) );
  INVX3 U590 ( .A(n810), .Y(n858) );
  CLKINVX1 U591 ( .A(n346), .Y(n968) );
  NAND2X1 U592 ( .A(n183), .B(N77), .Y(n295) );
  OA21X2 U593 ( .A0(n575), .A1(n238), .B0(n705), .Y(n762) );
  BUFX6 U594 ( .A(n774), .Y(n717) );
  OAI222X1 U595 ( .A0(\before_flip_job_list[6][1] ), .A1(n776), .B0(
        \before_flip_job_list[2][1] ), .B1(n775), .C0(
        \before_flip_job_list[4][1] ), .C1(n965), .Y(n774) );
  OAI222XL U596 ( .A0(n203), .A1(n187), .B0(n204), .B1(n189), .C0(n574), .C1(
        n190), .Y(n521) );
  NAND2X2 U597 ( .A(N268), .B(n218), .Y(n222) );
  OAI222X1 U598 ( .A0(n781), .A1(n786), .B0(n780), .B1(n785), .C0(n792), .C1(
        n666), .Y(N268) );
  NAND2BX1 U599 ( .AN(n753), .B(n229), .Y(n228) );
  OAI21XL U600 ( .A0(n586), .A1(n821), .B0(n212), .Y(n525) );
  CLKINVX1 U601 ( .A(\before_flip_job_list[5][1] ), .Y(n941) );
  INVX16 U602 ( .A(n707), .Y(n942) );
  NAND2XL U603 ( .A(n225), .B(n822), .Y(n187) );
  AOI2BB2X1 U604 ( .B0(n661), .B1(n807), .A0N(n811), .A1N(n302), .Y(n206) );
  INVX6 U605 ( .A(N226), .Y(n660) );
  OAI222X4 U606 ( .A0(n796), .A1(n776), .B0(\before_flip_job_list[2][2] ), 
        .B1(n775), .C0(\before_flip_job_list[4][2] ), .C1(n965), .Y(n777) );
  CLKINVX1 U607 ( .A(n416), .Y(n662) );
  INVX3 U608 ( .A(n662), .Y(n663) );
  CLKBUFX3 U609 ( .A(N73), .Y(n704) );
  CLKINVX1 U610 ( .A(\before_flip_job_list[5][0] ), .Y(n938) );
  INVX1 U611 ( .A(N79), .Y(n735) );
  AND2X2 U612 ( .A(\job_list[1][2] ), .B(n811), .Y(n664) );
  AOI2BB2X1 U613 ( .B0(n706), .B1(n807), .A0N(n947), .A1N(n302), .Y(n247) );
  CLKBUFX3 U614 ( .A(n186), .Y(n705) );
  AND2X2 U615 ( .A(n744), .B(\job_list[1][0] ), .Y(n665) );
  OR3X2 U616 ( .A(n756), .B(n757), .C(n758), .Y(n666) );
  CLKBUFX6 U617 ( .A(n946), .Y(n810) );
  INVX3 U618 ( .A(n810), .Y(n859) );
  CLKINVX1 U619 ( .A(\before_flip_job_list[7][1] ), .Y(n936) );
  CLKINVX1 U620 ( .A(\before_flip_job_list[5][2] ), .Y(n795) );
  XOR2X1 U621 ( .A(n895), .B(n812), .Y(n995) );
  AOI222XL U622 ( .A0(n964), .A1(\before_flip_job_list[6][0] ), .B0(n966), 
        .B1(\before_flip_job_list[7][0] ), .C0(n807), .C1(
        \before_flip_job_list[5][0] ), .Y(n240) );
  AOI2BB2X1 U623 ( .B0(n661), .B1(n966), .A0N(n811), .A1N(n296), .Y(n203) );
  AOI2BB2X2 U624 ( .B0(n706), .B1(n966), .A0N(n947), .A1N(n296), .Y(n235) );
  OAI221X1 U625 ( .A0(n938), .A1(n216), .B0(n582), .B1(n822), .C0(n217), .Y(
        n526) );
  NAND2X1 U626 ( .A(n223), .B(n822), .Y(n216) );
  NOR2X1 U627 ( .A(n965), .B(n704), .Y(n193) );
  INVX12 U628 ( .A(N74), .Y(n965) );
  NOR2X2 U629 ( .A(n968), .B(n704), .Y(n184) );
  NOR2X2 U630 ( .A(n704), .B(N74), .Y(n191) );
  NAND2X1 U631 ( .A(n970), .B(n704), .Y(n250) );
  INVX12 U633 ( .A(n667), .Y(MatchCount[3]) );
  INVX12 U635 ( .A(n669), .Y(MatchCount[2]) );
  INVX12 U637 ( .A(n671), .Y(MatchCount[1]) );
  INVX12 U639 ( .A(n673), .Y(MinCost[0]) );
  INVX12 U641 ( .A(n675), .Y(MinCost[1]) );
  INVX12 U643 ( .A(n677), .Y(MinCost[2]) );
  INVX12 U645 ( .A(n679), .Y(MinCost[3]) );
  INVX12 U647 ( .A(n681), .Y(MinCost[4]) );
  INVX12 U649 ( .A(n683), .Y(MinCost[5]) );
  INVX12 U651 ( .A(n685), .Y(MinCost[6]) );
  INVX12 U653 ( .A(n687), .Y(MinCost[7]) );
  INVX12 U655 ( .A(n689), .Y(MinCost[8]) );
  INVX12 U657 ( .A(n691), .Y(MinCost[9]) );
  INVX12 U659 ( .A(n693), .Y(MatchCount[0]) );
  INVX12 U661 ( .A(n695), .Y(Valid) );
  OAI21X2 U667 ( .A0(n578), .A1(n243), .B0(n199), .Y(
        \before_flip_job_list[4][1] ) );
  OAI21X2 U668 ( .A0(n579), .A1(n243), .B0(n241), .Y(
        \before_flip_job_list[4][0] ) );
  AOI2BB1X1 U669 ( .A0N(n242), .A1N(n243), .B0(n824), .Y(n201) );
  OAI22X4 U670 ( .A0(n819), .A1(n829), .B0(n704), .B1(n828), .Y(N231) );
  BUFX8 U671 ( .A(N231), .Y(n803) );
  OA22X1 U672 ( .A0(n944), .A1(n294), .B0(n811), .B1(n295), .Y(n210) );
  NAND2X1 U673 ( .A(n295), .B(n294), .Y(n243) );
  NAND2BX4 U674 ( .AN(n857), .B(n703), .Y(n748) );
  OAI21X1 U675 ( .A0(n968), .A1(n312), .B0(n313), .Y(n310) );
  AO22X2 U676 ( .A0(n329), .A1(n341), .B0(n331), .B1(n340), .Y(n377) );
  OAI21X2 U677 ( .A0(n570), .A1(n248), .B0(n247), .Y(
        \before_flip_job_list[1][0] ) );
  OAI221X2 U678 ( .A0(n786), .A1(n227), .B0(n583), .B1(n822), .C0(n233), .Y(
        n532) );
  OAI222X4 U679 ( .A0(\before_flip_job_list[6][0] ), .A1(n776), .B0(
        \before_flip_job_list[2][0] ), .B1(n775), .C0(
        \before_flip_job_list[4][0] ), .C1(n965), .Y(n773) );
  OAI21X1 U680 ( .A0(n425), .A1(n426), .B0(n421), .Y(N73) );
  OAI2BB2X2 U681 ( .B0(n572), .B1(n370), .A0N(n961), .A1N(n368), .Y(n351) );
  OAI21X2 U682 ( .A0(n587), .A1(n821), .B0(n249), .Y(n538) );
  XOR2XL U683 ( .A(n587), .B(N230), .Y(n413) );
  INVX3 U684 ( .A(n383), .Y(n955) );
  NAND2X2 U685 ( .A(n803), .B(n579), .Y(n383) );
  NOR2X1 U686 ( .A(n961), .B(n368), .Y(n370) );
  NOR2BX2 U687 ( .AN(n373), .B(n804), .Y(n371) );
  OAI22X2 U688 ( .A0(N230), .A1(n955), .B0(n578), .B1(n386), .Y(n373) );
  OAI2BB2X1 U689 ( .B0(n569), .B1(n367), .A0N(n961), .A1N(n364), .Y(n356) );
  NOR2BX2 U690 ( .AN(N230), .B(n364), .Y(n367) );
  NOR2X4 U691 ( .A(n311), .B(n223), .Y(n308) );
  OAI221X4 U692 ( .A0(n318), .A1(n742), .B0(n320), .B1(n811), .C0(n321), .Y(
        n311) );
  AOI2BB2X1 U693 ( .B0(n707), .B1(n807), .A0N(n961), .A1N(n302), .Y(n245) );
  NAND2X2 U694 ( .A(n423), .B(n424), .Y(n420) );
  INVX8 U695 ( .A(N75), .Y(n711) );
  NOR2X1 U696 ( .A(n578), .B(\job_list[3][1] ), .Y(n449) );
  AO21X1 U697 ( .A0(n578), .A1(\job_list[3][1] ), .B0(\job_list[3][0] ), .Y(
        n746) );
  OAI21X2 U698 ( .A0(n568), .A1(n248), .B0(n206), .Y(
        \before_flip_job_list[1][2] ) );
  NAND2X4 U699 ( .A(n302), .B(n967), .Y(n248) );
  BUFX16 U700 ( .A(N228), .Y(n706) );
  NOR2X1 U701 ( .A(n961), .B(n383), .Y(n386) );
  BUFX16 U702 ( .A(N227), .Y(n707) );
  NOR2BX4 U703 ( .AN(n314), .B(n957), .Y(n305) );
  AOI211X2 U704 ( .A0(n956), .A1(n326), .B0(n327), .C0(N235), .Y(n325) );
  OAI22X2 U705 ( .A0(n959), .A1(n329), .B0(n330), .B1(n331), .Y(n327) );
  AOI221X2 U706 ( .A0(\job_list[4][1] ), .A1(n839), .B0(\job_list[6][1] ), 
        .B1(n838), .C0(n831), .Y(n832) );
  AOI221X2 U707 ( .A0(\job_list[4][2] ), .A1(n839), .B0(\job_list[6][2] ), 
        .B1(n838), .C0(n837), .Y(n840) );
  AOI221X2 U708 ( .A0(\job_list[5][0] ), .A1(n839), .B0(\job_list[7][0] ), 
        .B1(n838), .C0(n826), .Y(n829) );
  NOR2X4 U709 ( .A(n749), .B(n965), .Y(n838) );
  BUFX6 U710 ( .A(n356), .Y(n709) );
  AO22X4 U711 ( .A0(\job_list[5][1] ), .A1(n750), .B0(n961), .B1(n398), .Y(
        n320) );
  OR2X8 U712 ( .A(n961), .B(n398), .Y(n750) );
  OAI21X4 U713 ( .A0(n577), .A1(n243), .B0(n210), .Y(
        \before_flip_job_list[4][2] ) );
  AOI221X4 U714 ( .A0(\job_list[6][0] ), .A1(n714), .B0(\job_list[7][0] ), 
        .B1(n854), .C0(n842), .Y(n845) );
  AOI221X2 U715 ( .A0(\before_flip_job_list[1][1] ), .A1(n783), .B0(
        \before_flip_job_list[5][1] ), .B1(n784), .C0(n767), .Y(n768) );
  OAI22X1 U716 ( .A0(n770), .A1(n936), .B0(n769), .B1(n762), .Y(n767) );
  OAI221X2 U717 ( .A0(n795), .A1(n216), .B0(n743), .B1(n822), .C0(n222), .Y(
        n528) );
  CLKINVX4 U718 ( .A(\before_flip_job_list[3][0] ), .Y(n788) );
  OAI21X1 U719 ( .A0(n576), .A1(n238), .B0(n235), .Y(
        \before_flip_job_list[3][0] ) );
  OAI222X4 U720 ( .A0(n582), .A1(n290), .B0(n947), .B1(n291), .C0(n939), .C1(
        n292), .Y(\before_flip_job_list[5][0] ) );
  INVX12 U721 ( .A(n661), .Y(n944) );
  INVX12 U722 ( .A(n706), .Y(n939) );
  AO22X4 U723 ( .A0(\job_list[2][0] ), .A1(n715), .B0(\job_list[0][0] ), .B1(
        n835), .Y(n827) );
  AO22X1 U724 ( .A0(\job_list[3][1] ), .A1(n715), .B0(\job_list[1][1] ), .B1(
        n835), .Y(n830) );
  NOR2BX4 U725 ( .AN(n965), .B(N235), .Y(n835) );
  OAI22X1 U726 ( .A0(n770), .A1(n943), .B0(n769), .B1(n764), .Y(n771) );
  AOI22X4 U727 ( .A0(N273), .A1(n213), .B0(n214), .B1(
        \before_flip_job_list[7][1] ), .Y(n249) );
  BUFX6 U728 ( .A(n283), .Y(n710) );
  NAND2XL U729 ( .A(n284), .B(N77), .Y(n283) );
  NAND2X2 U730 ( .A(N271), .B(n229), .Y(n233) );
  OAI22X1 U731 ( .A0(n792), .A1(n716), .B0(n666), .B1(n793), .Y(N271) );
  AOI2BB2X1 U732 ( .B0(n707), .B1(n966), .A0N(n961), .A1N(n296), .Y(n186) );
  OAI22X1 U733 ( .A0(n792), .A1(n717), .B0(n659), .B1(n793), .Y(N270) );
  NAND2X4 U734 ( .A(n284), .B(n755), .Y(n296) );
  BUFX20 U735 ( .A(n289), .Y(n714) );
  BUFX6 U736 ( .A(n836), .Y(n715) );
  NOR2X1 U737 ( .A(n965), .B(N235), .Y(n836) );
  OAI22X4 U738 ( .A0(n717), .A1(n793), .B0(n792), .B1(n768), .Y(N273) );
  OAI22X1 U739 ( .A0(n770), .A1(n937), .B0(n769), .B1(n788), .Y(n765) );
  AO22X4 U740 ( .A0(\job_list[1][2] ), .A1(n852), .B0(\job_list[0][2] ), .B1(
        n851), .Y(n853) );
  AO22X2 U741 ( .A0(\job_list[1][0] ), .A1(n852), .B0(\job_list[0][0] ), .B1(
        n851), .Y(n843) );
  AO22X4 U742 ( .A0(\job_list[5][0] ), .A1(n852), .B0(\job_list[4][0] ), .B1(
        n851), .Y(n842) );
  AO22X4 U743 ( .A0(n742), .A1(n852), .B0(\job_list[4][2] ), .B1(n851), .Y(
        n850) );
  AO22X4 U744 ( .A0(\job_list[1][1] ), .A1(n852), .B0(\job_list[0][1] ), .B1(
        n851), .Y(n847) );
  AO22X4 U745 ( .A0(\job_list[5][1] ), .A1(n852), .B0(\job_list[4][1] ), .B1(
        n851), .Y(n846) );
  OR4X2 U746 ( .A(n407), .B(n408), .C(n409), .D(n960), .Y(n402) );
  NOR3X1 U747 ( .A(n804), .B(n586), .C(n404), .Y(n407) );
  NAND2X2 U748 ( .A(N231), .B(n582), .Y(n398) );
  OA21X4 U749 ( .A0(n574), .A1(n238), .B0(n203), .Y(n764) );
  OAI222X4 U750 ( .A0(n583), .A1(n285), .B0(n811), .B1(n286), .C0(n944), .C1(
        n287), .Y(n796) );
  NAND2X2 U751 ( .A(N266), .B(n218), .Y(n217) );
  OAI221X2 U752 ( .A0(n371), .A1(\job_list[4][2] ), .B0(n811), .B1(n373), .C0(
        n374), .Y(n306) );
  OAI222X1 U753 ( .A0(n781), .A1(n790), .B0(n780), .B1(n789), .C0(n792), .C1(
        n778), .Y(N266) );
  NAND2X6 U754 ( .A(n714), .B(N77), .Y(n286) );
  NAND2X6 U755 ( .A(n714), .B(n810), .Y(n300) );
  AOI221X2 U756 ( .A0(\job_list[2][2] ), .A1(n714), .B0(\job_list[3][2] ), 
        .B1(n854), .C0(n853), .Y(n855) );
  AOI221X2 U757 ( .A0(\job_list[6][2] ), .A1(n714), .B0(\job_list[7][2] ), 
        .B1(n854), .C0(n850), .Y(n856) );
  NOR2X4 U758 ( .A(n945), .B(n713), .Y(n289) );
  AOI221X4 U759 ( .A0(\job_list[2][1] ), .A1(n714), .B0(\job_list[3][1] ), 
        .B1(n854), .C0(n847), .Y(n848) );
  AOI221X4 U760 ( .A0(\job_list[6][1] ), .A1(n714), .B0(\job_list[7][1] ), 
        .B1(n854), .C0(n846), .Y(n849) );
  INVX6 U761 ( .A(n763), .Y(N230) );
  AOI2BB2X2 U762 ( .B0(n819), .B1(n752), .A0N(n819), .A1N(n833), .Y(n763) );
  BUFX12 U763 ( .A(n994), .Y(W[2]) );
  OAI2BB2XL U764 ( .B0(n894), .B1(n801), .A0N(n801), .A1N(N80), .Y(n994) );
  CLKINVX1 U765 ( .A(n776), .Y(n784) );
  NAND2X1 U766 ( .A(N235), .B(n965), .Y(n776) );
  INVX12 U767 ( .A(n734), .Y(W[1]) );
  NOR2X1 U768 ( .A(n735), .B(n812), .Y(n736) );
  NOR2XL U769 ( .A(n893), .B(n801), .Y(n737) );
  NOR2X1 U770 ( .A(n736), .B(n737), .Y(n734) );
  CLKXOR2X2 U771 ( .A(n895), .B(n893), .Y(N79) );
  BUFX12 U772 ( .A(n995), .Y(W[0]) );
  OAI22X2 U773 ( .A0(min_cost_temp[9]), .A1(n923), .B0(n924), .B1(n911), .Y(
        N84) );
  NAND2X4 U774 ( .A(n664), .B(n709), .Y(n359) );
  NOR2BX1 U775 ( .AN(N231), .B(\job_list[1][0] ), .Y(n739) );
  INVX3 U776 ( .A(n739), .Y(n364) );
  CLKINVX1 U777 ( .A(N77), .Y(n946) );
  CLKINVX1 U778 ( .A(n359), .Y(n949) );
  AND2XL U779 ( .A(n803), .B(n585), .Y(n740) );
  BUFX12 U780 ( .A(n962), .Y(n811) );
  NAND2BX1 U781 ( .AN(n749), .B(n965), .Y(n747) );
  NAND2X2 U782 ( .A(n318), .B(n742), .Y(n323) );
  NOR3X6 U783 ( .A(n441), .B(n424), .C(n431), .Y(n440) );
  AND2X4 U784 ( .A(n795), .B(n791), .Y(n758) );
  NOR2BX1 U785 ( .AN(n320), .B(n804), .Y(n318) );
  AOI211X2 U786 ( .A0(n572), .A1(\job_list[1][1] ), .B0(\job_list[1][0] ), 
        .C0(n573), .Y(n443) );
  OAI221X4 U787 ( .A0(n318), .A1(n742), .B0(n320), .B1(n811), .C0(n321), .Y(
        n741) );
  NAND2X4 U788 ( .A(n291), .B(n292), .Y(n290) );
  INVXL U789 ( .A(N77), .Y(n755) );
  OR2XL U790 ( .A(n741), .B(n223), .Y(n745) );
  AND2XL U791 ( .A(n764), .B(n783), .Y(n757) );
  NAND3BXL U792 ( .AN(N84), .B(n913), .C(n912), .Y(n916) );
  AO22X4 U793 ( .A0(\job_list[3][0] ), .A1(n715), .B0(\job_list[1][0] ), .B1(
        n835), .Y(n826) );
  NOR2X1 U794 ( .A(n895), .B(n893), .Y(n145) );
  OA21XL U795 ( .A0(\job_list[1][1] ), .A1(n567), .B0(n498), .Y(n744) );
  NOR2X2 U796 ( .A(n971), .B(n191), .Y(n223) );
  INVX8 U797 ( .A(n426), .Y(n972) );
  NOR2BX2 U798 ( .AN(n351), .B(n804), .Y(n349) );
  XOR2X1 U799 ( .A(n931), .B(n894), .Y(N80) );
  INVX6 U800 ( .A(n748), .Y(n854) );
  AOI2BB1X1 U801 ( .A0N(n963), .A1N(n238), .B0(n824), .Y(n190) );
  AOI31X2 U802 ( .A0(n958), .A1(n323), .A2(n956), .B0(n325), .Y(n321) );
  INVXL U803 ( .A(n330), .Y(n958) );
  CLKINVX12 U804 ( .A(N230), .Y(n961) );
  NOR2X1 U805 ( .A(n581), .B(\job_list[4][1] ), .Y(n754) );
  INVXL U806 ( .A(n379), .Y(n953) );
  OAI22X2 U807 ( .A0(n976), .A1(n467), .B0(n743), .B1(\job_list[6][2] ), .Y(
        n465) );
  NOR2X2 U808 ( .A(n746), .B(n579), .Y(n448) );
  OAI22X2 U809 ( .A0(n448), .A1(n449), .B0(n574), .B1(\job_list[4][2] ), .Y(
        n447) );
  NAND2X4 U810 ( .A(n286), .B(n287), .Y(n285) );
  NOR2XL U811 ( .A(n968), .B(n819), .Y(n197) );
  CLKBUFX2 U812 ( .A(n819), .Y(n793) );
  NAND2X2 U813 ( .A(n710), .B(n250), .Y(n282) );
  NAND3XL U814 ( .A(n183), .B(n810), .C(n185), .Y(n173) );
  AOI21XL U815 ( .A0(n810), .A1(n183), .B0(n184), .Y(n759) );
  CLKINVX1 U816 ( .A(N235), .Y(n971) );
  NAND2XL U817 ( .A(N74), .B(N235), .Y(n418) );
  NAND3XL U818 ( .A(n704), .B(n971), .C(N74), .Y(n297) );
  NOR2XL U819 ( .A(n184), .B(n823), .Y(n185) );
  NAND2BXL U820 ( .AN(n965), .B(N235), .Y(n770) );
  NOR2XL U821 ( .A(n191), .B(N235), .Y(n242) );
  AND4X4 U822 ( .A(n972), .B(n975), .C(n423), .D(n421), .Y(n749) );
  OAI211X4 U823 ( .A0(n400), .A1(n401), .B0(n402), .C0(n403), .Y(n314) );
  AOI2BB2XL U824 ( .B0(n404), .B1(n804), .A0N(n405), .A1N(\job_list[7][2] ), 
        .Y(n403) );
  NAND2X2 U825 ( .A(n371), .B(\job_list[4][2] ), .Y(n329) );
  AOI211X2 U826 ( .A0(n954), .A1(n342), .B0(n377), .C0(n225), .Y(n376) );
  INVX6 U827 ( .A(\before_flip_job_list[7][0] ), .Y(n937) );
  AOI31X2 U828 ( .A0(n392), .A1(n393), .A2(n394), .B0(n395), .Y(n391) );
  OAI221X2 U829 ( .A0(n388), .A1(\job_list[6][2] ), .B0(n811), .B1(n390), .C0(
        n391), .Y(n387) );
  CLKINVX8 U830 ( .A(n419), .Y(n975) );
  CLKINVX2 U831 ( .A(n803), .Y(n947) );
  NAND2X2 U832 ( .A(n825), .B(\curr_state[2] ), .Y(n257) );
  INVX6 U833 ( .A(\before_flip_job_list[7][2] ), .Y(n943) );
  OAI22X4 U834 ( .A0(n472), .A1(n473), .B0(n583), .B1(\job_list[7][2] ), .Y(
        n471) );
  OAI2BB1X4 U835 ( .A0N(\job_list[1][2] ), .A1N(n566), .B0(n751), .Y(n441) );
  OAI22X4 U836 ( .A0(n665), .A1(n458), .B0(n566), .B1(\job_list[1][2] ), .Y(
        n751) );
  OR2XL U837 ( .A(n961), .B(n663), .Y(n761) );
  NOR2XL U838 ( .A(n961), .B(n379), .Y(n382) );
  OR2XL U839 ( .A(n961), .B(n411), .Y(n760) );
  NOR2BXL U840 ( .AN(n567), .B(n569), .Y(n458) );
  OAI22X4 U841 ( .A0(n577), .A1(n742), .B0(n461), .B1(n754), .Y(n460) );
  INVXL U842 ( .A(\before_flip_job_list[6][1] ), .Y(n940) );
  OAI221X2 U843 ( .A0(n940), .A1(n227), .B0(n584), .B1(n822), .C0(n231), .Y(
        n531) );
  XOR2XL U844 ( .A(n581), .B(N230), .Y(n399) );
  XOR2XL U845 ( .A(n578), .B(N230), .Y(n384) );
  OAI21XL U846 ( .A0(n573), .A1(n803), .B0(n368), .Y(n363) );
  NAND2XL U847 ( .A(n588), .B(N231), .Y(n416) );
  NAND2X1 U848 ( .A(N231), .B(n576), .Y(n379) );
  XOR2XL U849 ( .A(n584), .B(N230), .Y(n412) );
  OAI21XL U850 ( .A0(n582), .A1(n803), .B0(n398), .Y(n332) );
  OAI21XL U851 ( .A0(n579), .A1(n803), .B0(n383), .Y(n326) );
  NOR2XL U852 ( .A(n574), .B(n804), .Y(n335) );
  NOR2XL U853 ( .A(n588), .B(n803), .Y(n408) );
  XOR2XL U854 ( .A(n575), .B(N230), .Y(n380) );
  AO22XL U855 ( .A0(\job_list[1][0] ), .A1(n870), .B0(\job_list[0][0] ), .B1(
        n869), .Y(n861) );
  CLKBUFX3 U856 ( .A(n591), .Y(n812) );
  NOR2XL U858 ( .A(n812), .B(n931), .Y(n254) );
  NAND4XL U859 ( .A(n589), .B(n824), .C(n144), .D(n145), .Y(n143) );
  XNOR2XL U860 ( .A(n893), .B(n252), .Y(n539) );
  NOR2XL U861 ( .A(n812), .B(n895), .Y(n252) );
  CLKINVX1 U862 ( .A(RST), .Y(n930) );
  OAI221X4 U863 ( .A0(n969), .A1(n305), .B0(n223), .B1(n306), .C0(n745), .Y(
        N77) );
  AND2XL U864 ( .A(n943), .B(n784), .Y(n756) );
  INVXL U865 ( .A(n965), .Y(n791) );
  INVX3 U866 ( .A(n793), .Y(n792) );
  CLKINVX1 U867 ( .A(n775), .Y(n783) );
  NAND2X1 U868 ( .A(n970), .B(n819), .Y(n287) );
  CLKBUFX3 U869 ( .A(n197), .Y(n807) );
  CLKINVX1 U870 ( .A(n225), .Y(n963) );
  CLKINVX1 U871 ( .A(n807), .Y(n967) );
  NOR2X6 U872 ( .A(n857), .B(n703), .Y(n852) );
  INVX3 U873 ( .A(N73), .Y(n819) );
  NOR2X1 U874 ( .A(n964), .B(n346), .Y(n225) );
  CLKINVX1 U875 ( .A(n250), .Y(n969) );
  CLKINVX1 U876 ( .A(n418), .Y(n970) );
  CLKINVX1 U877 ( .A(n297), .Y(n966) );
  NAND2BX1 U878 ( .AN(n965), .B(n782), .Y(n769) );
  NAND2X1 U879 ( .A(n184), .B(n822), .Y(n174) );
  NAND2X1 U880 ( .A(n963), .B(n822), .Y(n189) );
  CLKINVX1 U881 ( .A(n185), .Y(n934) );
  NAND2X1 U882 ( .A(n970), .B(n822), .Y(n227) );
  CLKINVX1 U883 ( .A(n808), .Y(n935) );
  NOR2X1 U884 ( .A(N235), .B(N74), .Y(n346) );
  NAND2X1 U885 ( .A(n990), .B(n821), .Y(n156) );
  CLKINVX1 U886 ( .A(N85), .Y(n993) );
  AOI2BB1X1 U887 ( .A0N(n184), .A1N(n248), .B0(n824), .Y(n208) );
  CLKINVX1 U888 ( .A(n160), .Y(n992) );
  NOR2X1 U889 ( .A(n759), .B(n824), .Y(n176) );
  INVX3 U890 ( .A(n809), .Y(n933) );
  NOR2X1 U891 ( .A(n819), .B(N74), .Y(n192) );
  NAND2X1 U892 ( .A(n191), .B(N235), .Y(n294) );
  NAND2X1 U893 ( .A(n192), .B(N235), .Y(n292) );
  CLKINVX1 U894 ( .A(N235), .Y(n782) );
  NOR2X1 U895 ( .A(n225), .B(n824), .Y(n194) );
  NOR2X1 U896 ( .A(n223), .B(n824), .Y(n218) );
  NOR2X1 U897 ( .A(n250), .B(n824), .Y(n214) );
  NOR2X1 U898 ( .A(n969), .B(n824), .Y(n213) );
  NOR2X1 U899 ( .A(n970), .B(n823), .Y(n229) );
  OR2X1 U900 ( .A(n242), .B(n825), .Y(n200) );
  INVX3 U901 ( .A(n823), .Y(n822) );
  INVX3 U902 ( .A(n824), .Y(n821) );
  CLKBUFX3 U903 ( .A(n255), .Y(n808) );
  NAND2X1 U904 ( .A(n825), .B(n257), .Y(n255) );
  CLKBUFX3 U905 ( .A(n930), .Y(n818) );
  CLKBUFX3 U906 ( .A(n930), .Y(n817) );
  CLKBUFX3 U907 ( .A(n930), .Y(n816) );
  CLKBUFX3 U908 ( .A(n930), .Y(n815) );
  CLKBUFX3 U909 ( .A(n930), .Y(n814) );
  CLKBUFX3 U910 ( .A(n930), .Y(n813) );
  AOI31X1 U911 ( .A0(n331), .A1(n329), .A2(n954), .B0(n376), .Y(n374) );
  CLKINVX1 U912 ( .A(n326), .Y(n954) );
  AOI21X1 U913 ( .A0(n423), .A1(n427), .B0(n419), .Y(n425) );
  OAI21XL U914 ( .A0(n973), .A1(n429), .B0(n430), .Y(n427) );
  INVX3 U915 ( .A(n431), .Y(n973) );
  OAI22XL U916 ( .A0(n362), .A1(n358), .B0(n360), .B1(n363), .Y(n355) );
  OAI31XL U917 ( .A0(n408), .A1(n960), .A2(n394), .B0(n418), .Y(n400) );
  OAI22XL U918 ( .A0(n407), .A1(n393), .B0(n409), .B1(n392), .Y(n401) );
  NAND2X1 U919 ( .A(n349), .B(\job_list[2][2] ), .Y(n344) );
  CLKINVX1 U920 ( .A(n362), .Y(n952) );
  CLKINVX1 U921 ( .A(n804), .Y(n962) );
  NOR2X1 U922 ( .A(n404), .B(n804), .Y(n405) );
  CLKINVX1 U923 ( .A(n332), .Y(n956) );
  CLKINVX1 U924 ( .A(n363), .Y(n951) );
  CLKINVX1 U925 ( .A(\before_flip_job_list[4][1] ), .Y(n787) );
  CLKINVX1 U926 ( .A(\before_flip_job_list[4][0] ), .Y(n789) );
  CLKINVX1 U927 ( .A(\before_flip_job_list[4][2] ), .Y(n785) );
  CLKINVX1 U928 ( .A(n796), .Y(n786) );
  INVXL U929 ( .A(N84), .Y(n990) );
  AOI2BB1XL U930 ( .A0N(N84), .A1N(n992), .B0(n824), .Y(n159) );
  NAND2X1 U931 ( .A(n164), .B(n699), .Y(n160) );
  CLKINVX1 U932 ( .A(N80), .Y(n876) );
  CLKINVX1 U933 ( .A(n145), .Y(n931) );
  CLKINVX1 U934 ( .A(n663), .Y(n960) );
  CLKBUFX3 U935 ( .A(n432), .Y(n805) );
  NAND2X1 U936 ( .A(n990), .B(\curr_state[2] ), .Y(n432) );
  CLKINVX1 U937 ( .A(n164), .Y(n991) );
  NOR2X1 U938 ( .A(n805), .B(n437), .Y(N324) );
  XOR2X1 U939 ( .A(n699), .B(n991), .Y(n437) );
  NOR2X1 U940 ( .A(n805), .B(n436), .Y(N325) );
  XOR2X1 U941 ( .A(n698), .B(n160), .Y(n436) );
  CLKBUFX3 U942 ( .A(n168), .Y(n809) );
  NAND2XL U943 ( .A(N84), .B(n822), .Y(n168) );
  CLKBUFX3 U944 ( .A(n433), .Y(n806) );
  NAND2XL U945 ( .A(N84), .B(\curr_state[2] ), .Y(n433) );
  NOR2BX1 U946 ( .AN(min_cost_temp_sum[6]), .B(n812), .Y(N386) );
  NOR2BX1 U947 ( .AN(min_cost_temp_sum[5]), .B(n812), .Y(N385) );
  NOR2BX1 U948 ( .AN(min_cost_temp_sum[4]), .B(n812), .Y(N384) );
  NOR2BX1 U949 ( .AN(min_cost_temp_sum[3]), .B(n812), .Y(N383) );
  NOR2BX1 U950 ( .AN(min_cost_temp_sum[2]), .B(n812), .Y(N382) );
  NOR2BX1 U951 ( .AN(min_cost_temp_sum[1]), .B(n812), .Y(N381) );
  NOR2BX1 U952 ( .AN(n142), .B(n143), .Y(next_state[1]) );
  CLKBUFX3 U953 ( .A(n820), .Y(n823) );
  CLKBUFX3 U954 ( .A(n820), .Y(n824) );
  CLKBUFX3 U955 ( .A(n820), .Y(n825) );
  NOR2X1 U956 ( .A(n142), .B(n143), .Y(next_state[2]) );
  OAI222XL U957 ( .A0(n571), .A1(n299), .B0(n811), .B1(n300), .C0(n944), .C1(
        n301), .Y(\before_flip_job_list[2][2] ) );
  OAI222X4 U958 ( .A0(n584), .A1(n285), .B0(n961), .B1(n286), .C0(n942), .C1(
        n287), .Y(\before_flip_job_list[6][1] ) );
  OAI222X4 U959 ( .A0(n581), .A1(n290), .B0(n961), .B1(n291), .C0(n942), .C1(
        n292), .Y(\before_flip_job_list[5][1] ) );
  OAI222XL U960 ( .A0(n235), .A1(n187), .B0(n236), .B1(n189), .C0(n576), .C1(
        n190), .Y(n533) );
  AOI222XL U961 ( .A0(n191), .A1(\before_flip_job_list[5][1] ), .B0(n192), 
        .B1(\before_flip_job_list[6][1] ), .C0(n193), .C1(
        \before_flip_job_list[7][1] ), .Y(n188) );
  INVX12 U962 ( .A(n799), .Y(J[2]) );
  AOI22X1 U963 ( .A0(n961), .A1(n663), .B0(\job_list[7][1] ), .B1(n761), .Y(
        n404) );
  OAI222XL U964 ( .A0(n825), .A1(n198), .B0(n199), .B1(n200), .C0(n578), .C1(
        n201), .Y(n520) );
  AOI222XL U965 ( .A0(n964), .A1(\before_flip_job_list[6][1] ), .B0(n966), 
        .B1(\before_flip_job_list[7][1] ), .C0(n807), .C1(
        \before_flip_job_list[5][1] ), .Y(n198) );
  OAI222XL U966 ( .A0(n825), .A1(n240), .B0(n241), .B1(n200), .C0(n579), .C1(
        n201), .Y(n535) );
  XOR2X1 U967 ( .A(n398), .B(n399), .Y(n330) );
  XNOR2X1 U968 ( .A(n411), .B(n412), .Y(n392) );
  OAI211X1 U969 ( .A0(\job_list[6][1] ), .A1(n581), .B0(n582), .C0(
        \job_list[6][0] ), .Y(n468) );
  XOR2X1 U970 ( .A(n379), .B(n380), .Y(n340) );
  OAI221XL U971 ( .A0(n210), .A1(n200), .B0(n577), .B1(n201), .C0(n211), .Y(
        n524) );
  XNOR2X1 U972 ( .A(n960), .B(n413), .Y(n409) );
  NOR2BX1 U973 ( .AN(n581), .B(n584), .Y(n467) );
  INVX3 U974 ( .A(n468), .Y(n976) );
  XNOR2X1 U975 ( .A(n364), .B(n365), .Y(n358) );
  XOR2X1 U976 ( .A(n569), .B(N230), .Y(n365) );
  OAI21X1 U977 ( .A0(n576), .A1(n803), .B0(n379), .Y(n342) );
  NAND2X1 U978 ( .A(N231), .B(n573), .Y(n368) );
  AOI2BB1X1 U979 ( .A0N(n585), .A1N(n803), .B0(n740), .Y(n394) );
  NOR2X1 U980 ( .A(n587), .B(\job_list[6][1] ), .Y(n473) );
  OAI22XL U981 ( .A0(n571), .A1(n194), .B0(n824), .B1(n209), .Y(n523) );
  OAI22XL U982 ( .A0(n573), .A1(n194), .B0(n824), .B1(n224), .Y(n529) );
  AOI22X1 U983 ( .A0(N274), .A1(n213), .B0(n214), .B1(
        \before_flip_job_list[7][2] ), .Y(n212) );
  BUFX4 U984 ( .A(N229), .Y(n804) );
  OAI22X1 U985 ( .A0(n841), .A1(n819), .B0(n704), .B1(n840), .Y(N229) );
  AOI221X1 U986 ( .A0(n742), .A1(n839), .B0(\job_list[7][2] ), .B1(n838), .C0(
        n834), .Y(n841) );
  CLKINVX1 U987 ( .A(\before_flip_job_list[6][0] ), .Y(n790) );
  OAI222XL U988 ( .A0(n937), .A1(n174), .B0(n247), .B1(n934), .C0(n570), .C1(
        n208), .Y(n537) );
  OAI222XL U989 ( .A0(n943), .A1(n174), .B0(n206), .B1(n934), .C0(n568), .C1(
        n208), .Y(n522) );
  CLKINVX1 U990 ( .A(n913), .Y(n924) );
  CLKINVX1 U991 ( .A(n899), .Y(n926) );
  NOR3XL U992 ( .A(n434), .B(n589), .C(N84), .Y(N326) );
  XNOR2X1 U993 ( .A(n474), .B(n435), .Y(n434) );
  NAND2X1 U994 ( .A(n992), .B(n698), .Y(n435) );
  OAI222XL U995 ( .A0(n947), .A1(n173), .B0(n174), .B1(n939), .C0(n498), .C1(
        n176), .Y(n515) );
  OAI222XL U996 ( .A0(n811), .A1(n173), .B0(n174), .B1(n944), .C0(n566), .C1(
        n176), .Y(n517) );
  OAI32X1 U997 ( .A0(n698), .A1(n160), .A2(n156), .B0(n475), .B1(n159), .Y(
        n502) );
  OAI32X1 U998 ( .A0(n699), .A1(n991), .A2(n156), .B0(n476), .B1(n163), .Y(
        n503) );
  AOI2BB1XL U999 ( .A0N(n164), .A1N(N84), .B0(n824), .Y(n163) );
  AOI21X1 U1000 ( .A0(n438), .A1(n990), .B0(n589), .Y(N323) );
  XOR2X1 U1001 ( .A(n495), .B(N85), .Y(n438) );
  NOR2X1 U1002 ( .A(n993), .B(n495), .Y(n164) );
  OAI22XL U1003 ( .A0(n497), .A1(n805), .B0(n496), .B1(n806), .Y(N327) );
  OAI22XL U1004 ( .A0(n918), .A1(n805), .B0(n929), .B1(n806), .Y(N328) );
  OAI22XL U1005 ( .A0(n919), .A1(n805), .B0(n479), .B1(n806), .Y(N329) );
  OAI22XL U1006 ( .A0(n920), .A1(n805), .B0(n481), .B1(n806), .Y(N330) );
  OAI22XL U1007 ( .A0(n484), .A1(n805), .B0(n928), .B1(n806), .Y(N331) );
  OAI22XL U1008 ( .A0(n486), .A1(n805), .B0(n927), .B1(n806), .Y(N332) );
  OAI22XL U1009 ( .A0(n921), .A1(n805), .B0(n487), .B1(n806), .Y(N333) );
  OAI22XL U1010 ( .A0(n922), .A1(n805), .B0(n489), .B1(n806), .Y(N334) );
  OAI22XL U1011 ( .A0(n492), .A1(n805), .B0(n925), .B1(n806), .Y(N335) );
  OAI22XL U1012 ( .A0(n923), .A1(n805), .B0(n493), .B1(n806), .Y(N336) );
  OAI21XL U1013 ( .A0(n154), .A1(n474), .B0(n155), .Y(n501) );
  NAND4BX1 U1014 ( .AN(n156), .B(n474), .C(n992), .D(n698), .Y(n155) );
  OA21XL U1015 ( .A0(N84), .A1(n698), .B0(n159), .Y(n154) );
  OAI211X1 U1016 ( .A0(n808), .A1(n989), .B0(n257), .C0(n258), .Y(n592) );
  NAND2X1 U1017 ( .A(total_sort_cnt_down[15]), .B(n822), .Y(n258) );
  OAI22XL U1018 ( .A0(n918), .A1(n933), .B0(n929), .B1(n809), .Y(n504) );
  OAI22XL U1019 ( .A0(n919), .A1(n933), .B0(n479), .B1(n809), .Y(n505) );
  OAI22XL U1020 ( .A0(n920), .A1(n933), .B0(n481), .B1(n809), .Y(n506) );
  OAI22XL U1021 ( .A0(n484), .A1(n933), .B0(n928), .B1(n809), .Y(n507) );
  OAI22XL U1022 ( .A0(n486), .A1(n933), .B0(n927), .B1(n809), .Y(n508) );
  OAI22XL U1023 ( .A0(n921), .A1(n933), .B0(n487), .B1(n809), .Y(n509) );
  OAI22XL U1024 ( .A0(n922), .A1(n933), .B0(n489), .B1(n809), .Y(n510) );
  OAI22XL U1025 ( .A0(n492), .A1(n933), .B0(n925), .B1(n809), .Y(n511) );
  OAI22XL U1026 ( .A0(n923), .A1(n933), .B0(n493), .B1(n809), .Y(n512) );
  OAI22XL U1027 ( .A0(n497), .A1(n933), .B0(n496), .B1(n809), .Y(n514) );
  NOR2BX1 U1028 ( .AN(min_cost_temp_sum[9]), .B(n812), .Y(N389) );
  NOR2BX1 U1029 ( .AN(min_cost_temp_sum[8]), .B(n812), .Y(N388) );
  AO22X1 U1030 ( .A0(n935), .A1(total_sort_cnt[13]), .B0(
        total_sort_cnt_down[13]), .B1(n821), .Y(n594) );
  NAND2X1 U1031 ( .A(n169), .B(n809), .Y(n513) );
  XOR2X1 U1032 ( .A(n495), .B(n170), .Y(n169) );
  NOR2X1 U1033 ( .A(n824), .B(n993), .Y(n170) );
  AO22X1 U1034 ( .A0(n935), .A1(total_sort_cnt[14]), .B0(
        total_sort_cnt_down[14]), .B1(n821), .Y(n593) );
  OAI211X1 U1035 ( .A0(n808), .A1(n988), .B0(n257), .C0(n261), .Y(n595) );
  NAND2X1 U1036 ( .A(total_sort_cnt_down[12]), .B(n822), .Y(n261) );
  OAI211X1 U1037 ( .A0(n808), .A1(n987), .B0(n257), .C0(n263), .Y(n596) );
  NAND2X1 U1038 ( .A(total_sort_cnt_down[11]), .B(n821), .Y(n263) );
  OAI211X1 U1039 ( .A0(n808), .A1(n986), .B0(n257), .C0(n265), .Y(n597) );
  NAND2X1 U1040 ( .A(total_sort_cnt_down[10]), .B(n821), .Y(n265) );
  NOR2BX1 U1041 ( .AN(min_cost_temp_sum[7]), .B(n812), .Y(N387) );
  NOR2BX1 U1042 ( .AN(min_cost_temp_sum[0]), .B(n812), .Y(N380) );
  AO22X1 U1043 ( .A0(n935), .A1(total_sort_cnt[9]), .B0(total_sort_cnt_down[9]), .B1(n821), .Y(n598) );
  OAI211X1 U1044 ( .A0(n808), .A1(n985), .B0(n257), .C0(n267), .Y(n599) );
  NAND2X1 U1045 ( .A(total_sort_cnt_down[8]), .B(n822), .Y(n267) );
  AO22X1 U1046 ( .A0(n935), .A1(total_sort_cnt[7]), .B0(total_sort_cnt_down[7]), .B1(n821), .Y(n600) );
  OAI211X1 U1047 ( .A0(n808), .A1(n984), .B0(n257), .C0(n269), .Y(n601) );
  NAND2X1 U1048 ( .A(total_sort_cnt_down[6]), .B(n821), .Y(n269) );
  OAI211X1 U1049 ( .A0(n808), .A1(n982), .B0(n257), .C0(n273), .Y(n603) );
  NAND2X1 U1050 ( .A(total_sort_cnt_down[4]), .B(n821), .Y(n273) );
  OAI211X1 U1051 ( .A0(n808), .A1(n983), .B0(n257), .C0(n271), .Y(n602) );
  NAND2X1 U1052 ( .A(total_sort_cnt_down[5]), .B(n821), .Y(n271) );
  OAI211X1 U1053 ( .A0(n808), .A1(n981), .B0(n257), .C0(n275), .Y(n604) );
  NAND2X1 U1054 ( .A(total_sort_cnt_down[3]), .B(n821), .Y(n275) );
  OAI211X1 U1055 ( .A0(n808), .A1(n980), .B0(n257), .C0(n277), .Y(n605) );
  NAND2X1 U1056 ( .A(total_sort_cnt_down[2]), .B(n821), .Y(n277) );
  OAI211X1 U1057 ( .A0(n808), .A1(n979), .B0(n257), .C0(n279), .Y(n606) );
  NAND2X1 U1058 ( .A(total_sort_cnt_down[0]), .B(n821), .Y(n279) );
  OAI211X1 U1059 ( .A0(n808), .A1(n978), .B0(n257), .C0(n281), .Y(n607) );
  NAND2X1 U1060 ( .A(total_sort_cnt_down[1]), .B(n821), .Y(n281) );
  NOR4X1 U1061 ( .A(total_sort_cnt[9]), .B(total_sort_cnt[8]), .C(
        total_sort_cnt[7]), .D(total_sort_cnt[6]), .Y(n149) );
  NOR2X1 U1062 ( .A(n894), .B(n812), .Y(n144) );
  NAND4X1 U1063 ( .A(n146), .B(n147), .C(n148), .D(n149), .Y(n142) );
  NOR4X1 U1064 ( .A(total_sort_cnt[5]), .B(total_sort_cnt[4]), .C(
        total_sort_cnt[3]), .D(total_sort_cnt[2]), .Y(n148) );
  NOR4X1 U1065 ( .A(total_sort_cnt[12]), .B(total_sort_cnt[11]), .C(
        total_sort_cnt[10]), .D(total_sort_cnt[0]), .Y(n146) );
  NOR4X1 U1066 ( .A(total_sort_cnt[1]), .B(total_sort_cnt[15]), .C(
        total_sort_cnt[14]), .D(total_sort_cnt[13]), .Y(n147) );
  XNOR2X1 U1067 ( .A(n894), .B(n254), .Y(n540) );
  AOI21X1 U1068 ( .A0(n801), .A1(n151), .B0(\curr_state[2] ), .Y(next_state[0]) );
  OAI21XL U1069 ( .A0(n894), .A1(n931), .B0(n825), .Y(n151) );
  CLKBUFX3 U1070 ( .A(n590), .Y(n820) );
  NAND2X1 U1071 ( .A(n782), .B(n965), .Y(n775) );
  NAND2X1 U1072 ( .A(n792), .B(n791), .Y(n781) );
  NAND2X1 U1073 ( .A(n792), .B(n965), .Y(n780) );
  NAND3X1 U1074 ( .A(n945), .B(n810), .C(n713), .Y(n302) );
  NAND3X1 U1075 ( .A(N77), .B(n945), .C(n713), .Y(n291) );
  INVX3 U1076 ( .A(n712), .Y(n857) );
  OA22X1 U1077 ( .A0(n939), .A1(n294), .B0(n947), .B1(n295), .Y(n241) );
  BUFX12 U1078 ( .A(n997), .Y(J[0]) );
  AO22X1 U1079 ( .A0(N321), .A1(n812), .B0(N318), .B1(n801), .Y(n997) );
  BUFX12 U1080 ( .A(n996), .Y(J[1]) );
  AO22X1 U1081 ( .A0(N320), .A1(n812), .B0(N317), .B1(n801), .Y(n996) );
  OA22X1 U1082 ( .A0(n800), .A1(n801), .B0(n802), .B1(n812), .Y(n799) );
  OA22X1 U1083 ( .A0(n892), .A1(n894), .B0(N83), .B1(n891), .Y(n800) );
  OA22X1 U1084 ( .A0(n875), .A1(n876), .B0(N80), .B1(n874), .Y(n802) );
  OAI222X4 U1085 ( .A0(n585), .A1(n285), .B0(n947), .B1(n286), .C0(n939), .C1(
        n287), .Y(\before_flip_job_list[6][0] ) );
  AOI222XL U1086 ( .A0(n184), .A1(\before_flip_job_list[6][1] ), .B0(n964), 
        .B1(n707), .C0(n807), .C1(\before_flip_job_list[7][1] ), .Y(n195) );
  OA22XL U1087 ( .A0(n942), .A1(n294), .B0(n961), .B1(n295), .Y(n199) );
  OAI222XL U1088 ( .A0(n572), .A1(n299), .B0(n961), .B1(n300), .C0(n942), .C1(
        n301), .Y(\before_flip_job_list[2][1] ) );
  OAI222XL U1089 ( .A0(n961), .A1(n173), .B0(n174), .B1(n942), .C0(n567), .C1(
        n176), .Y(n516) );
  OAI22XL U1090 ( .A0(n572), .A1(n194), .B0(n824), .B1(n195), .Y(n519) );
  OAI21XL U1091 ( .A0(n569), .A1(n248), .B0(n245), .Y(
        \before_flip_job_list[1][1] ) );
  OAI222XL U1092 ( .A0(n936), .A1(n174), .B0(n245), .B1(n934), .C0(n569), .C1(
        n208), .Y(n536) );
  AOI22X1 U1093 ( .A0(N272), .A1(n213), .B0(n214), .B1(
        \before_flip_job_list[7][0] ), .Y(n239) );
  AOI222XL U1094 ( .A0(n191), .A1(\before_flip_job_list[5][0] ), .B0(n192), 
        .B1(\before_flip_job_list[6][0] ), .C0(n193), .C1(
        \before_flip_job_list[7][0] ), .Y(n236) );
  NOR2BX2 U1095 ( .AN(n572), .B(n575), .Y(n454) );
  AOI222XL U1096 ( .A0(n184), .A1(\before_flip_job_list[6][0] ), .B0(n964), 
        .B1(n706), .C0(n807), .C1(\before_flip_job_list[7][0] ), .Y(n224) );
  NAND2X2 U1097 ( .A(N270), .B(n229), .Y(n231) );
  INVX4 U1098 ( .A(n339), .Y(n950) );
  INVX3 U1099 ( .A(n455), .Y(n974) );
  AO22X4 U1100 ( .A0(\job_list[2][1] ), .A1(n715), .B0(\job_list[0][1] ), .B1(
        n835), .Y(n831) );
  OAI222X4 U1101 ( .A0(n743), .A1(n290), .B0(n811), .B1(n291), .C0(n944), .C1(
        n292), .Y(\before_flip_job_list[5][2] ) );
  OAI22X4 U1102 ( .A0(n856), .A1(n810), .B0(n858), .B1(n855), .Y(N226) );
  AOI221X2 U1103 ( .A0(\job_list[4][0] ), .A1(n839), .B0(\job_list[6][0] ), 
        .B1(n838), .C0(n827), .Y(n828) );
  OAI222X4 U1104 ( .A0(n586), .A1(n282), .B0(n811), .B1(n710), .C0(n944), .C1(
        n250), .Y(\before_flip_job_list[7][2] ) );
  AOI221X2 U1105 ( .A0(\job_list[5][1] ), .A1(n839), .B0(\job_list[7][1] ), 
        .B1(n838), .C0(n830), .Y(n833) );
  OAI222X4 U1106 ( .A0(n588), .A1(n282), .B0(n947), .B1(n710), .C0(n939), .C1(
        n250), .Y(\before_flip_job_list[7][0] ) );
  OAI22X4 U1107 ( .A0(n810), .A1(n845), .B0(n859), .B1(n844), .Y(N228) );
  AOI221X2 U1108 ( .A0(\job_list[2][0] ), .A1(n714), .B0(\job_list[3][0] ), 
        .B1(n854), .C0(n843), .Y(n844) );
  OAI222XL U1109 ( .A0(n187), .A1(n705), .B0(n188), .B1(n189), .C0(n575), .C1(
        n190), .Y(n518) );
  AOI222XL U1110 ( .A0(n964), .A1(n796), .B0(n966), .B1(
        \before_flip_job_list[7][2] ), .C0(n807), .C1(
        \before_flip_job_list[5][2] ), .Y(n211) );
  AOI222XL U1111 ( .A0(n184), .A1(n796), .B0(n964), .B1(n661), .C0(n807), .C1(
        \before_flip_job_list[7][2] ), .Y(n209) );
  AOI222XL U1112 ( .A0(n191), .A1(\before_flip_job_list[5][2] ), .B0(n192), 
        .B1(n796), .C0(n193), .C1(\before_flip_job_list[7][2] ), .Y(n204) );
  OAI222X4 U1113 ( .A0(n587), .A1(n282), .B0(n961), .B1(n710), .C0(n942), .C1(
        n250), .Y(\before_flip_job_list[7][1] ) );
  OAI211X4 U1114 ( .A0(n419), .A1(n420), .B0(n421), .C0(n972), .Y(N74) );
  OAI22X4 U1115 ( .A0(n849), .A1(n810), .B0(n848), .B1(n859), .Y(N227) );
  NOR2X1 U1116 ( .A(n735), .B(n895), .Y(n873) );
  NOR2X1 U1117 ( .A(n735), .B(N81), .Y(n872) );
  NOR2X1 U1118 ( .A(N81), .B(N79), .Y(n870) );
  NOR2X1 U1119 ( .A(n895), .B(N79), .Y(n869) );
  AO22X1 U1120 ( .A0(\job_list[5][0] ), .A1(n870), .B0(\job_list[4][0] ), .B1(
        n869), .Y(n860) );
  AOI221XL U1121 ( .A0(\job_list[6][0] ), .A1(n873), .B0(\job_list[7][0] ), 
        .B1(n872), .C0(n860), .Y(n863) );
  AOI221XL U1122 ( .A0(\job_list[2][0] ), .A1(n873), .B0(\job_list[3][0] ), 
        .B1(n872), .C0(n861), .Y(n862) );
  OAI22XL U1123 ( .A0(n876), .A1(n863), .B0(N80), .B1(n862), .Y(N318) );
  AO22X1 U1124 ( .A0(\job_list[5][1] ), .A1(n870), .B0(\job_list[4][1] ), .B1(
        n869), .Y(n864) );
  AOI221XL U1125 ( .A0(\job_list[6][1] ), .A1(n873), .B0(\job_list[7][1] ), 
        .B1(n872), .C0(n864), .Y(n867) );
  AO22X1 U1126 ( .A0(\job_list[1][1] ), .A1(n870), .B0(\job_list[0][1] ), .B1(
        n869), .Y(n865) );
  AOI221XL U1127 ( .A0(\job_list[2][1] ), .A1(n873), .B0(\job_list[3][1] ), 
        .B1(n872), .C0(n865), .Y(n866) );
  OAI22XL U1128 ( .A0(n876), .A1(n867), .B0(N80), .B1(n866), .Y(N317) );
  AO22X1 U1129 ( .A0(n742), .A1(n870), .B0(\job_list[4][2] ), .B1(n869), .Y(
        n868) );
  AOI221XL U1130 ( .A0(\job_list[6][2] ), .A1(n873), .B0(\job_list[7][2] ), 
        .B1(n872), .C0(n868), .Y(n875) );
  AO22X1 U1131 ( .A0(\job_list[1][2] ), .A1(n870), .B0(\job_list[0][2] ), .B1(
        n869), .Y(n871) );
  AOI221XL U1132 ( .A0(\job_list[2][2] ), .A1(n873), .B0(\job_list[3][2] ), 
        .B1(n872), .C0(n871), .Y(n874) );
  NOR2X1 U1133 ( .A(n893), .B(N81), .Y(n890) );
  NOR2X1 U1134 ( .A(n893), .B(n895), .Y(n889) );
  NOR2X1 U1135 ( .A(n895), .B(N82), .Y(n887) );
  NOR2X1 U1136 ( .A(N81), .B(N82), .Y(n886) );
  AO22X1 U1137 ( .A0(\job_list[5][0] ), .A1(n887), .B0(\job_list[4][0] ), .B1(
        n886), .Y(n877) );
  AOI221XL U1138 ( .A0(\job_list[6][0] ), .A1(n890), .B0(\job_list[7][0] ), 
        .B1(n889), .C0(n877), .Y(n880) );
  AO22X1 U1139 ( .A0(\job_list[1][0] ), .A1(n887), .B0(\job_list[0][0] ), .B1(
        n886), .Y(n878) );
  AOI221XL U1140 ( .A0(\job_list[2][0] ), .A1(n890), .B0(\job_list[3][0] ), 
        .B1(n889), .C0(n878), .Y(n879) );
  OAI22XL U1141 ( .A0(n894), .A1(n880), .B0(N83), .B1(n879), .Y(N321) );
  AO22X1 U1142 ( .A0(\job_list[5][1] ), .A1(n887), .B0(\job_list[4][1] ), .B1(
        n886), .Y(n881) );
  AOI221XL U1143 ( .A0(\job_list[6][1] ), .A1(n890), .B0(\job_list[7][1] ), 
        .B1(n889), .C0(n881), .Y(n884) );
  AO22X1 U1144 ( .A0(\job_list[1][1] ), .A1(n887), .B0(\job_list[0][1] ), .B1(
        n886), .Y(n882) );
  AOI221XL U1145 ( .A0(\job_list[2][1] ), .A1(n890), .B0(\job_list[3][1] ), 
        .B1(n889), .C0(n882), .Y(n883) );
  OAI22XL U1146 ( .A0(n894), .A1(n884), .B0(N83), .B1(n883), .Y(N320) );
  AO22X1 U1147 ( .A0(n742), .A1(n887), .B0(\job_list[4][2] ), .B1(n886), .Y(
        n885) );
  AOI221XL U1148 ( .A0(\job_list[6][2] ), .A1(n890), .B0(\job_list[7][2] ), 
        .B1(n889), .C0(n885), .Y(n892) );
  AO22X1 U1149 ( .A0(\job_list[1][2] ), .A1(n887), .B0(\job_list[0][2] ), .B1(
        n886), .Y(n888) );
  AOI221XL U1150 ( .A0(\job_list[2][2] ), .A1(n890), .B0(\job_list[3][2] ), 
        .B1(n889), .C0(n888), .Y(n891) );
  NOR2BX1 U1151 ( .AN(min_cost_temp[0]), .B(min_cost[0]), .Y(n896) );
  OAI22XL U1152 ( .A0(min_cost_temp[1]), .A1(n896), .B0(n896), .B1(n918), .Y(
        n898) );
  NAND2X1 U1153 ( .A(min_cost_temp[7]), .B(n922), .Y(n910) );
  NAND2X1 U1154 ( .A(min_cost_temp[6]), .B(n921), .Y(n905) );
  NOR2X1 U1155 ( .A(n925), .B(min_cost[8]), .Y(n899) );
  NOR2X1 U1156 ( .A(n927), .B(min_cost[5]), .Y(n906) );
  NOR3BXL U1157 ( .AN(n905), .B(n899), .C(n906), .Y(n897) );
  NAND3X1 U1158 ( .A(n898), .B(n910), .C(n897), .Y(n917) );
  NAND2X1 U1159 ( .A(min_cost_temp[9]), .B(n923), .Y(n913) );
  NOR2BX1 U1160 ( .AN(min_cost_temp[3]), .B(min_cost[3]), .Y(n915) );
  NOR2X1 U1161 ( .A(n928), .B(min_cost[4]), .Y(n914) );
  NOR2X1 U1162 ( .A(n915), .B(n914), .Y(n904) );
  NOR2BX1 U1163 ( .AN(min_cost[0]), .B(min_cost_temp[0]), .Y(n901) );
  AO21X1 U1164 ( .A0(n929), .A1(n901), .B0(min_cost[1]), .Y(n900) );
  NAND2X1 U1165 ( .A(min_cost_temp[2]), .B(n919), .Y(n912) );
  OAI211X1 U1166 ( .A0(n901), .A1(n929), .B0(n900), .C0(n912), .Y(n902) );
  OAI221XL U1167 ( .A0(min_cost_temp[2]), .A1(n919), .B0(min_cost_temp[3]), 
        .B1(n920), .C0(n902), .Y(n903) );
  AOI222XL U1168 ( .A0(min_cost[5]), .A1(n927), .B0(min_cost[4]), .B1(n928), 
        .C0(n904), .C1(n903), .Y(n908) );
  NAND2BX1 U1169 ( .AN(n906), .B(n905), .Y(n907) );
  OAI222XL U1170 ( .A0(n908), .A1(n907), .B0(min_cost_temp[6]), .B1(n921), 
        .C0(min_cost_temp[7]), .C1(n922), .Y(n909) );
  AOI32X1 U1171 ( .A0(n910), .A1(n926), .A2(n909), .B0(min_cost[8]), .B1(n925), 
        .Y(n911) );
  NOR4X1 U1172 ( .A(n917), .B(n916), .C(n915), .D(n914), .Y(N85) );
  JAM_DW01_add_0 add_47 ( .A(min_cost_temp), .B({1'b0, 1'b0, 1'b0, Cost}), 
        .CI(1'b0), .SUM(min_cost_temp_sum) );
  JAM_DW01_dec_0 sub_44 ( .A(total_sort_cnt), .SUM(total_sort_cnt_down) );
  DFFRXL Valid_reg ( .D(\curr_state[2] ), .CK(CLK), .RN(n814), .QN(n695) );
  DFFRXL \curr_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n813), .QN(
        n590) );
  DFFRXL \MatchCount_reg[0]  ( .D(N323), .CK(CLK), .RN(n815), .QN(n693) );
  DFFRXL \MinCost_reg[9]  ( .D(N336), .CK(CLK), .RN(n815), .QN(n691) );
  DFFRXL \MinCost_reg[8]  ( .D(N335), .CK(CLK), .RN(n816), .QN(n689) );
  DFFRXL \MinCost_reg[7]  ( .D(N334), .CK(CLK), .RN(n816), .QN(n687) );
  DFFRXL \MinCost_reg[6]  ( .D(N333), .CK(CLK), .RN(n816), .QN(n685) );
  DFFRXL \MinCost_reg[5]  ( .D(N332), .CK(CLK), .RN(n816), .QN(n683) );
  DFFRXL \MinCost_reg[4]  ( .D(N331), .CK(CLK), .RN(n816), .QN(n681) );
  DFFRXL \MinCost_reg[3]  ( .D(N330), .CK(CLK), .RN(n816), .QN(n679) );
  DFFRXL \MinCost_reg[2]  ( .D(N329), .CK(CLK), .RN(n816), .QN(n677) );
  DFFRXL \MinCost_reg[1]  ( .D(N328), .CK(CLK), .RN(n816), .QN(n675) );
  DFFRXL \MinCost_reg[0]  ( .D(N327), .CK(CLK), .RN(n817), .QN(n673) );
  DFFRXL \match_cnt_reg[0]  ( .D(n513), .CK(CLK), .RN(n815), .QN(n495) );
  DFFRXL \match_cnt_reg[1]  ( .D(n503), .CK(CLK), .RN(n816), .Q(n699), .QN(
        n476) );
  DFFRXL \MatchCount_reg[1]  ( .D(N324), .CK(CLK), .RN(n817), .QN(n671) );
  DFFRXL \MatchCount_reg[2]  ( .D(N325), .CK(CLK), .RN(n817), .QN(n669) );
  DFFRXL \MatchCount_reg[3]  ( .D(N326), .CK(CLK), .RN(n816), .QN(n667) );
  DFFRXL \match_cnt_reg[3]  ( .D(n501), .CK(CLK), .RN(n816), .QN(n474) );
  DFFRX2 \worker_cnt_reg[0]  ( .D(n995), .CK(CLK), .RN(n813), .Q(N81), .QN(
        n895) );
  DFFRX1 \match_cnt_reg[2]  ( .D(n502), .CK(CLK), .RN(n816), .Q(n698), .QN(
        n475) );
endmodule

