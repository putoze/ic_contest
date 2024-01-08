/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Mon Jan  8 12:50:20 2024
/////////////////////////////////////////////////////////////


module DW_sqrt_inst_DW_sqrt_0 ( a, root );
  input [23:0] a;
  output [11:0] root;
  wire   n87, n88, n89, \PartRem[11][2] , \PartRem[10][3] , \PartRem[10][2] ,
         \PartRem[9][4] , \PartRem[9][3] , \PartRem[9][2] , \PartRem[8][5] ,
         \PartRem[8][4] , \PartRem[8][3] , \PartRem[8][2] , \PartRem[7][6] ,
         \PartRem[7][5] , \PartRem[7][4] , \PartRem[7][3] , \PartRem[7][2] ,
         \PartRem[6][7] , \PartRem[6][6] , \PartRem[6][5] , \PartRem[6][4] ,
         \PartRem[6][3] , \PartRem[6][2] , \PartRem[5][8] , \PartRem[5][7] ,
         \PartRem[5][6] , \PartRem[5][5] , \PartRem[5][4] , \PartRem[5][3] ,
         \PartRem[5][2] , \PartRem[4][9] , \PartRem[4][8] , \PartRem[4][7] ,
         \PartRem[4][6] , \PartRem[4][5] , \PartRem[4][4] , \PartRem[4][3] ,
         \PartRem[4][2] , \PartRem[3][10] , \PartRem[3][9] , \PartRem[3][8] ,
         \PartRem[3][7] , \PartRem[3][6] , \PartRem[3][5] , \PartRem[3][4] ,
         \PartRem[3][3] , \PartRem[3][2] , \PartRem[2][11] , \PartRem[2][10] ,
         \PartRem[2][9] , \PartRem[2][8] , \PartRem[2][7] , \PartRem[2][6] ,
         \PartRem[2][5] , \PartRem[2][4] , \PartRem[2][3] , \PartRem[2][2] ,
         \PartRoot[9][4] , \SumTmp[10][2] , \SumTmp[9][3] , \SumTmp[9][2] ,
         \SumTmp[8][4] , \SumTmp[8][3] , \SumTmp[8][2] , \SumTmp[7][5] ,
         \SumTmp[7][4] , \SumTmp[7][3] , \SumTmp[7][2] , \SumTmp[6][6] ,
         \SumTmp[6][5] , \SumTmp[6][4] , \SumTmp[6][3] , \SumTmp[6][2] ,
         \SumTmp[5][7] , \SumTmp[5][6] , \SumTmp[5][5] , \SumTmp[5][4] ,
         \SumTmp[5][3] , \SumTmp[5][2] , \SumTmp[4][8] , \SumTmp[4][7] ,
         \SumTmp[4][6] , \SumTmp[4][5] , \SumTmp[4][4] , \SumTmp[4][3] ,
         \SumTmp[4][2] , \SumTmp[3][9] , \SumTmp[3][8] , \SumTmp[3][7] ,
         \SumTmp[3][6] , \SumTmp[3][5] , \SumTmp[3][4] , \SumTmp[3][3] ,
         \SumTmp[3][2] , \SumTmp[2][10] , \SumTmp[2][9] , \SumTmp[2][8] ,
         \SumTmp[2][7] , \SumTmp[2][6] , \SumTmp[2][5] , \SumTmp[2][4] ,
         \SumTmp[2][3] , \SumTmp[2][2] , \SumTmp[1][11] , \SumTmp[1][10] ,
         \SumTmp[1][9] , \SumTmp[1][8] , \SumTmp[1][7] , \SumTmp[1][6] ,
         \SumTmp[1][5] , \SumTmp[1][4] , \SumTmp[1][3] , \SumTmp[1][2] ,
         \CryTmp[10][3] , \CryTmp[10][2] , \CryTmp[9][4] , \CryTmp[9][3] ,
         \CryTmp[9][2] , \CryTmp[8][5] , \CryTmp[8][4] , \CryTmp[8][3] ,
         \CryTmp[8][2] , \CryTmp[7][6] , \CryTmp[7][5] , \CryTmp[7][4] ,
         \CryTmp[7][3] , \CryTmp[7][2] , \CryTmp[6][7] , \CryTmp[6][6] ,
         \CryTmp[6][5] , \CryTmp[6][4] , \CryTmp[6][3] , \CryTmp[6][2] ,
         \CryTmp[5][8] , \CryTmp[5][7] , \CryTmp[5][6] , \CryTmp[5][5] ,
         \CryTmp[5][4] , \CryTmp[5][3] , \CryTmp[5][2] , \CryTmp[4][9] ,
         \CryTmp[4][8] , \CryTmp[4][7] , \CryTmp[4][6] , \CryTmp[4][5] ,
         \CryTmp[4][4] , \CryTmp[4][3] , \CryTmp[4][2] , \CryTmp[3][10] ,
         \CryTmp[3][9] , \CryTmp[3][8] , \CryTmp[3][7] , \CryTmp[3][6] ,
         \CryTmp[3][5] , \CryTmp[3][4] , \CryTmp[3][3] , \CryTmp[3][2] ,
         \CryTmp[2][11] , \CryTmp[2][10] , \CryTmp[2][9] , \CryTmp[2][8] ,
         \CryTmp[2][7] , \CryTmp[2][6] , \CryTmp[2][5] , \CryTmp[2][4] ,
         \CryTmp[2][3] , \CryTmp[2][2] , \CryTmp[1][12] , \CryTmp[1][11] ,
         \CryTmp[1][10] , \CryTmp[1][9] , \CryTmp[1][8] , \CryTmp[1][7] ,
         \CryTmp[1][6] , \CryTmp[1][5] , \CryTmp[1][4] , \CryTmp[1][3] ,
         \CryTmp[1][2] , n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86;

  ADDFXL u_fa_PartRem_3_3 ( .A(\PartRem[4][3] ), .B(n32), .CI(\CryTmp[3][3] ), 
        .CO(\CryTmp[3][4] ), .S(\SumTmp[3][3] ) );
  ADDFXL u_fa_PartRem_5_3 ( .A(\PartRem[6][3] ), .B(n25), .CI(\CryTmp[5][3] ), 
        .CO(\CryTmp[5][4] ), .S(\SumTmp[5][3] ) );
  ADDFXL u_fa_PartRem_6_3 ( .A(\PartRem[7][3] ), .B(n26), .CI(\CryTmp[6][3] ), 
        .CO(\CryTmp[6][4] ), .S(\SumTmp[6][3] ) );
  ADDFXL u_fa_PartRem_4_3 ( .A(\PartRem[5][3] ), .B(n33), .CI(\CryTmp[4][3] ), 
        .CO(\CryTmp[4][4] ), .S(\SumTmp[4][3] ) );
  ADDFXL u_fa_PartRem_4_2 ( .A(\PartRem[5][2] ), .B(n32), .CI(\CryTmp[4][2] ), 
        .CO(\CryTmp[4][3] ), .S(\SumTmp[4][2] ) );
  ADDFXL u_fa_PartRem_9_3 ( .A(\PartRem[10][3] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[9][3] ), .CO(\CryTmp[9][4] ), .S(\SumTmp[9][3] ) );
  ADDFXL u_fa_PartRem_5_6 ( .A(\PartRem[6][6] ), .B(n27), .CI(\CryTmp[5][6] ), 
        .CO(\CryTmp[5][7] ), .S(\SumTmp[5][6] ) );
  ADDFXL u_fa_PartRem_2_4 ( .A(\PartRem[3][4] ), .B(n32), .CI(\CryTmp[2][4] ), 
        .CO(\CryTmp[2][5] ), .S(\SumTmp[2][4] ) );
  ADDFXL u_fa_PartRem_4_7 ( .A(\PartRem[5][7] ), .B(n27), .CI(\CryTmp[4][7] ), 
        .CO(\CryTmp[4][8] ), .S(\SumTmp[4][7] ) );
  ADDFXL u_fa_PartRem_6_5 ( .A(\PartRem[7][5] ), .B(n27), .CI(\CryTmp[6][5] ), 
        .CO(\CryTmp[6][6] ), .S(\SumTmp[6][5] ) );
  ADDFXL u_fa_PartRem_1_5 ( .A(\PartRem[2][5] ), .B(n32), .CI(\CryTmp[1][5] ), 
        .CO(\CryTmp[1][6] ), .S(\SumTmp[1][5] ) );
  ADDFXL u_fa_PartRem_4_4 ( .A(\PartRem[5][4] ), .B(n25), .CI(\CryTmp[4][4] ), 
        .CO(\CryTmp[4][5] ), .S(\SumTmp[4][4] ) );
  ADDFXL u_fa_PartRem_4_5 ( .A(\PartRem[5][5] ), .B(n26), .CI(\CryTmp[4][5] ), 
        .CO(\CryTmp[4][6] ), .S(\SumTmp[4][5] ) );
  ADDFXL u_fa_PartRem_5_4 ( .A(\PartRem[6][4] ), .B(n26), .CI(\CryTmp[5][4] ), 
        .CO(\CryTmp[5][5] ), .S(\SumTmp[5][4] ) );
  ADDFXL u_fa_PartRem_1_10 ( .A(\PartRem[2][10] ), .B(n27), .CI(
        \CryTmp[1][10] ), .CO(\CryTmp[1][11] ), .S(\SumTmp[1][10] ) );
  ADDFXL u_fa_PartRem_3_8 ( .A(\PartRem[4][8] ), .B(n27), .CI(\CryTmp[3][8] ), 
        .CO(\CryTmp[3][9] ), .S(\SumTmp[3][8] ) );
  ADDFXL u_fa_PartRem_2_5 ( .A(\PartRem[3][5] ), .B(n33), .CI(\CryTmp[2][5] ), 
        .CO(\CryTmp[2][6] ), .S(\SumTmp[2][5] ) );
  ADDFXL u_fa_PartRem_3_4 ( .A(\PartRem[4][4] ), .B(n33), .CI(\CryTmp[3][4] ), 
        .CO(\CryTmp[3][5] ), .S(\SumTmp[3][4] ) );
  ADDFXL u_fa_PartRem_2_6 ( .A(\PartRem[3][6] ), .B(n25), .CI(\CryTmp[2][6] ), 
        .CO(\CryTmp[2][7] ), .S(\SumTmp[2][6] ) );
  ADDFXL u_fa_PartRem_1_8 ( .A(\PartRem[2][8] ), .B(n26), .CI(\CryTmp[1][8] ), 
        .CO(\CryTmp[1][9] ), .S(\SumTmp[1][8] ) );
  ADDFXL u_fa_PartRem_2_7 ( .A(\PartRem[3][7] ), .B(n26), .CI(\CryTmp[2][7] ), 
        .CO(\CryTmp[2][8] ), .S(\SumTmp[2][7] ) );
  ADDFXL u_fa_PartRem_3_6 ( .A(\PartRem[4][6] ), .B(n26), .CI(\CryTmp[3][6] ), 
        .CO(\CryTmp[3][7] ), .S(\SumTmp[3][6] ) );
  ADDFXL u_fa_PartRem_2_8 ( .A(\PartRem[3][8] ), .B(n36), .CI(\CryTmp[2][8] ), 
        .CO(\CryTmp[2][9] ), .S(\SumTmp[2][8] ) );
  ADDFHX2 u_fa_PartRem_2_10 ( .A(\PartRem[3][10] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[2][10] ), .CO(\CryTmp[2][11] ), .S(\SumTmp[2][10] ) );
  ADDFHX2 u_fa_PartRem_3_9 ( .A(\PartRem[4][9] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[3][9] ), .CO(\CryTmp[3][10] ), .S(\SumTmp[3][9] ) );
  ADDFHX2 u_fa_PartRem_4_8 ( .A(\PartRem[5][8] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[4][8] ), .CO(\CryTmp[4][9] ), .S(\SumTmp[4][8] ) );
  ADDFHX2 u_fa_PartRem_5_7 ( .A(\PartRem[6][7] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[5][7] ), .CO(\CryTmp[5][8] ), .S(\SumTmp[5][7] ) );
  ADDFHX2 u_fa_PartRem_1_11 ( .A(\PartRem[2][11] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[1][11] ), .CO(\CryTmp[1][12] ), .S(\SumTmp[1][11] ) );
  ADDFHX2 u_fa_PartRem_7_5 ( .A(\PartRem[8][5] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[7][5] ), .CO(\CryTmp[7][6] ), .S(\SumTmp[7][5] ) );
  CMPR32X2 u_fa_PartRem_1_2 ( .A(\PartRem[2][2] ), .B(n29), .C(\CryTmp[1][2] ), 
        .CO(\CryTmp[1][3] ), .S(\SumTmp[1][2] ) );
  ADDFHX2 u_fa_PartRem_6_6 ( .A(\PartRem[7][6] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[6][6] ), .CO(\CryTmp[6][7] ), .S(\SumTmp[6][6] ) );
  ADDFHX2 u_fa_PartRem_2_9 ( .A(\PartRem[3][9] ), .B(n27), .CI(\CryTmp[2][9] ), 
        .CO(\CryTmp[2][10] ), .S(\SumTmp[2][9] ) );
  ADDFHX2 u_fa_PartRem_5_5 ( .A(\PartRem[6][5] ), .B(n36), .CI(\CryTmp[5][5] ), 
        .CO(\CryTmp[5][6] ), .S(\SumTmp[5][5] ) );
  ADDFHX2 u_fa_PartRem_6_4 ( .A(\PartRem[7][4] ), .B(n36), .CI(\CryTmp[6][4] ), 
        .CO(\CryTmp[6][5] ), .S(\SumTmp[6][4] ) );
  ADDFHX2 u_fa_PartRem_1_9 ( .A(\PartRem[2][9] ), .B(n36), .CI(\CryTmp[1][9] ), 
        .CO(\CryTmp[1][10] ), .S(\SumTmp[1][9] ) );
  ADDFHX2 u_fa_PartRem_3_7 ( .A(\PartRem[4][7] ), .B(n36), .CI(\CryTmp[3][7] ), 
        .CO(\CryTmp[3][8] ), .S(\SumTmp[3][7] ) );
  ADDFHX2 u_fa_PartRem_4_6 ( .A(\PartRem[5][6] ), .B(n36), .CI(\CryTmp[4][6] ), 
        .CO(\CryTmp[4][7] ), .S(\SumTmp[4][6] ) );
  ADDFXL u_fa_PartRem_8_4 ( .A(\PartRem[9][4] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[8][4] ), .CO(\CryTmp[8][5] ), .S(\SumTmp[8][4] ) );
  ADDFHX4 u_fa_PartRem_7_3 ( .A(\PartRem[8][3] ), .B(n36), .CI(\CryTmp[7][3] ), 
        .CO(\CryTmp[7][4] ), .S(\SumTmp[7][3] ) );
  ADDFHX4 u_fa_PartRem_2_2 ( .A(\PartRem[3][2] ), .B(n30), .CI(\CryTmp[2][2] ), 
        .CO(\CryTmp[2][3] ), .S(\SumTmp[2][2] ) );
  ADDFX2 u_fa_PartRem_1_3 ( .A(\PartRem[2][3] ), .B(n30), .CI(\CryTmp[1][3] ), 
        .CO(\CryTmp[1][4] ), .S(\SumTmp[1][3] ) );
  ADDFX1 u_fa_PartRem_10_2 ( .A(\PartRem[11][2] ), .B(\PartRoot[9][4] ), .CI(
        \CryTmp[10][2] ), .CO(\CryTmp[10][3] ), .S(\SumTmp[10][2] ) );
  ADDFHX4 u_fa_PartRem_3_2 ( .A(\PartRem[4][2] ), .B(n31), .CI(\CryTmp[3][2] ), 
        .CO(\CryTmp[3][3] ), .S(\SumTmp[3][2] ) );
  ADDFHX4 u_fa_PartRem_1_4 ( .A(\PartRem[2][4] ), .B(n31), .CI(\CryTmp[1][4] ), 
        .CO(\CryTmp[1][5] ), .S(\SumTmp[1][4] ) );
  ADDFHX4 u_fa_PartRem_2_3 ( .A(\PartRem[3][3] ), .B(n31), .CI(\CryTmp[2][3] ), 
        .CO(\CryTmp[2][4] ), .S(\SumTmp[2][3] ) );
  ADDFHX2 u_fa_PartRem_3_5 ( .A(\PartRem[4][5] ), .B(n25), .CI(\CryTmp[3][5] ), 
        .CO(\CryTmp[3][6] ), .S(\SumTmp[3][5] ) );
  ADDFHX4 u_fa_PartRem_7_4 ( .A(n6), .B(n27), .CI(\CryTmp[7][4] ), .CO(
        \CryTmp[7][5] ), .S(\SumTmp[7][4] ) );
  ADDFHX4 u_fa_PartRem_8_3 ( .A(\PartRem[9][3] ), .B(n27), .CI(\CryTmp[8][3] ), 
        .CO(\CryTmp[8][4] ), .S(\SumTmp[8][3] ) );
  ADDFX2 u_fa_PartRem_8_2 ( .A(\PartRem[9][2] ), .B(n36), .CI(\CryTmp[8][2] ), 
        .CO(\CryTmp[8][3] ), .S(\SumTmp[8][2] ) );
  ADDFX1 u_fa_PartRem_6_2 ( .A(\PartRem[7][2] ), .B(n25), .CI(\CryTmp[6][2] ), 
        .CO(\CryTmp[6][3] ), .S(\SumTmp[6][2] ) );
  ADDFX2 u_fa_PartRem_5_2 ( .A(\PartRem[6][2] ), .B(n33), .CI(\CryTmp[5][2] ), 
        .CO(\CryTmp[5][3] ), .S(\SumTmp[5][2] ) );
  ADDFHX1 u_fa_PartRem_9_2 ( .A(\PartRem[10][2] ), .B(n27), .CI(\CryTmp[9][2] ), .CO(\CryTmp[9][3] ), .S(\SumTmp[9][2] ) );
  ADDFHX1 u_fa_PartRem_1_6 ( .A(\PartRem[2][6] ), .B(n33), .CI(\CryTmp[1][6] ), 
        .CO(\CryTmp[1][7] ), .S(\SumTmp[1][6] ) );
  ADDFX1 u_fa_PartRem_1_7 ( .A(\PartRem[2][7] ), .B(n25), .CI(\CryTmp[1][7] ), 
        .CO(\CryTmp[1][8] ), .S(\SumTmp[1][7] ) );
  ADDFHX2 u_fa_PartRem_7_2 ( .A(\PartRem[8][2] ), .B(n26), .CI(\CryTmp[7][2] ), 
        .CO(\CryTmp[7][3] ), .S(\SumTmp[7][2] ) );
  AOI2BB1X2 U3 ( .A0N(\CryTmp[1][2] ), .A1N(n28), .B0(n20), .Y(n67) );
  OA21X4 U4 ( .A0(n28), .A1(a[2]), .B0(a[3]), .Y(n20) );
  INVX12 U5 ( .A(root[7]), .Y(n34) );
  XOR2X4 U6 ( .A(root[7]), .B(a[14]), .Y(\PartRem[7][2] ) );
  CLKMX2X2 U7 ( .A(\PartRem[8][2] ), .B(\SumTmp[7][2] ), .S0(root[7]), .Y(
        \PartRem[7][4] ) );
  AO21X4 U8 ( .A0(n53), .A1(n52), .B0(root[7]), .Y(n54) );
  NAND2X8 U9 ( .A(n10), .B(n84), .Y(root[7]) );
  XOR2X4 U10 ( .A(root[8]), .B(a[16]), .Y(\PartRem[8][2] ) );
  XOR2X2 U11 ( .A(root[6]), .B(a[12]), .Y(\PartRem[6][2] ) );
  OAI21X4 U12 ( .A0(n52), .A1(n53), .B0(n54), .Y(n49) );
  OAI21X2 U13 ( .A0(n32), .A1(a[10]), .B0(a[11]), .Y(n72) );
  CLKINVX4 U14 ( .A(root[5]), .Y(n32) );
  AOI2BB2X2 U15 ( .B0(n26), .B1(n49), .A0N(n50), .A1N(n51), .Y(n46) );
  NOR2X1 U16 ( .A(n26), .B(n49), .Y(n50) );
  CLKINVX8 U17 ( .A(n18), .Y(\PartRem[10][3] ) );
  OR2X1 U18 ( .A(a[13]), .B(a[12]), .Y(\CryTmp[6][2] ) );
  OR2X1 U19 ( .A(a[15]), .B(a[14]), .Y(\CryTmp[7][2] ) );
  MXI2X1 U20 ( .A(n70), .B(n28), .S0(a[2]), .Y(n68) );
  XOR2X2 U21 ( .A(root[2]), .B(a[4]), .Y(\PartRem[2][2] ) );
  OAI21X1 U22 ( .A0(\CryTmp[3][2] ), .A1(n30), .B0(n74), .Y(\PartRem[3][3] )
         );
  OAI21XL U23 ( .A0(n30), .A1(a[6]), .B0(a[7]), .Y(n74) );
  CLKMX2X2 U24 ( .A(\PartRem[4][3] ), .B(\SumTmp[3][3] ), .S0(root[3]), .Y(
        \PartRem[3][5] ) );
  CLKMX2X2 U25 ( .A(\PartRem[3][4] ), .B(\SumTmp[2][4] ), .S0(root[2]), .Y(
        \PartRem[2][6] ) );
  CLKBUFX3 U26 ( .A(\PartRem[8][4] ), .Y(n6) );
  INVX12 U27 ( .A(root[1]), .Y(n28) );
  INVX6 U28 ( .A(root[3]), .Y(n30) );
  BUFX12 U29 ( .A(n37), .Y(n27) );
  CLKBUFX3 U30 ( .A(n28), .Y(n24) );
  INVX6 U31 ( .A(root[9]), .Y(n36) );
  NAND2X6 U32 ( .A(n17), .B(n85), .Y(root[8]) );
  NAND2X8 U33 ( .A(n13), .B(n82), .Y(root[5]) );
  CLKMX2X2 U34 ( .A(\PartRem[4][2] ), .B(\SumTmp[3][2] ), .S0(root[3]), .Y(
        \PartRem[3][4] ) );
  CLKINVX12 U35 ( .A(n23), .Y(\PartRoot[9][4] ) );
  MXI2X1 U36 ( .A(\SumTmp[1][10] ), .B(\PartRem[2][10] ), .S0(n24), .Y(n40) );
  OA21X4 U37 ( .A0(n27), .A1(a[20]), .B0(a[21]), .Y(n19) );
  OAI211X4 U38 ( .A0(n39), .A1(n40), .B0(n41), .C0(n42), .Y(root[0]) );
  AO21X4 U39 ( .A0(n40), .A1(n39), .B0(root[11]), .Y(n41) );
  OAI21X4 U40 ( .A0(n64), .A1(n65), .B0(n66), .Y(n61) );
  AO21X1 U41 ( .A0(n65), .A1(n64), .B0(root[3]), .Y(n66) );
  BUFX20 U42 ( .A(n88), .Y(root[9]) );
  XOR2X4 U43 ( .A(root[9]), .B(a[18]), .Y(\PartRem[9][2] ) );
  OA22X4 U44 ( .A0(root[9]), .A1(n46), .B0(n47), .B1(n48), .Y(n43) );
  AO21X1 U45 ( .A0(n44), .A1(n43), .B0(root[10]), .Y(n45) );
  OAI21X2 U46 ( .A0(\CryTmp[2][2] ), .A1(n29), .B0(n75), .Y(\PartRem[2][3] )
         );
  OAI21X4 U47 ( .A0(n29), .A1(a[4]), .B0(a[5]), .Y(n75) );
  NOR2X8 U48 ( .A(\PartRoot[9][4] ), .B(a[22]), .Y(\PartRem[11][2] ) );
  OR2X8 U49 ( .A(a[23]), .B(a[22]), .Y(n23) );
  AO21X1 U50 ( .A0(a[23]), .A1(a[22]), .B0(\CryTmp[10][3] ), .Y(n87) );
  CLKINVX20 U51 ( .A(root[4]), .Y(n31) );
  INVX3 U52 ( .A(\CryTmp[8][5] ), .Y(n17) );
  BUFX20 U53 ( .A(n89), .Y(root[6]) );
  OAI21X4 U54 ( .A0(\CryTmp[7][2] ), .A1(n25), .B0(n78), .Y(\PartRem[7][3] )
         );
  OAI21X4 U55 ( .A0(n25), .A1(a[14]), .B0(a[15]), .Y(n78) );
  OAI21X4 U56 ( .A0(\CryTmp[6][2] ), .A1(n33), .B0(n76), .Y(\PartRem[6][3] )
         );
  INVX4 U57 ( .A(root[6]), .Y(n33) );
  INVX2 U58 ( .A(root[2]), .Y(n29) );
  INVX20 U59 ( .A(n8), .Y(root[2]) );
  XOR2X4 U60 ( .A(root[4]), .B(a[8]), .Y(\PartRem[4][2] ) );
  MXI2XL U61 ( .A(\SumTmp[10][2] ), .B(\PartRem[11][2] ), .S0(n27), .Y(n86) );
  INVX6 U62 ( .A(n21), .Y(\PartRem[9][3] ) );
  NOR2X2 U63 ( .A(n31), .B(n61), .Y(n62) );
  OA21X4 U64 ( .A0(n43), .A1(n44), .B0(n45), .Y(n39) );
  XOR2X2 U65 ( .A(root[3]), .B(a[6]), .Y(\PartRem[3][2] ) );
  INVX20 U66 ( .A(n15), .Y(root[3]) );
  MXI2X2 U67 ( .A(\SumTmp[3][9] ), .B(\PartRem[4][9] ), .S0(n30), .Y(n77) );
  OAI21X2 U68 ( .A0(n33), .A1(a[12]), .B0(a[13]), .Y(n76) );
  BUFX12 U69 ( .A(n34), .Y(n25) );
  OA21X4 U70 ( .A0(n55), .A1(n56), .B0(n57), .Y(n52) );
  AO21XL U71 ( .A0(n56), .A1(n55), .B0(root[6]), .Y(n57) );
  OAI21X4 U72 ( .A0(\CryTmp[4][2] ), .A1(n31), .B0(n73), .Y(\PartRem[4][3] )
         );
  OAI21X4 U73 ( .A0(n31), .A1(a[8]), .B0(a[9]), .Y(n73) );
  MXI2X2 U74 ( .A(\SumTmp[1][2] ), .B(\PartRem[2][2] ), .S0(n24), .Y(n65) );
  OA21X4 U75 ( .A0(n67), .A1(n68), .B0(n69), .Y(n64) );
  AO21XL U76 ( .A0(n68), .A1(n67), .B0(root[2]), .Y(n69) );
  OAI21X4 U77 ( .A0(\CryTmp[8][2] ), .A1(n26), .B0(n81), .Y(\PartRem[8][3] )
         );
  OAI21X4 U78 ( .A0(n26), .A1(a[16]), .B0(a[17]), .Y(n81) );
  BUFX12 U79 ( .A(n35), .Y(n26) );
  MXI2XL U80 ( .A(\SumTmp[9][3] ), .B(\PartRem[10][3] ), .S0(n36), .Y(n85) );
  BUFX8 U81 ( .A(n87), .Y(root[10]) );
  INVX3 U82 ( .A(\CryTmp[5][8] ), .Y(n13) );
  INVX3 U83 ( .A(\CryTmp[7][6] ), .Y(n10) );
  AND2X8 U84 ( .A(n12), .B(n80), .Y(n11) );
  INVX16 U85 ( .A(n11), .Y(root[4]) );
  OA21X2 U86 ( .A0(n36), .A1(a[18]), .B0(a[19]), .Y(n22) );
  INVX4 U87 ( .A(\CryTmp[1][12] ), .Y(n14) );
  MX2XL U88 ( .A(\PartRem[6][6] ), .B(\SumTmp[5][6] ), .S0(root[5]), .Y(
        \PartRem[5][8] ) );
  MX2XL U89 ( .A(\PartRem[5][7] ), .B(\SumTmp[4][7] ), .S0(root[4]), .Y(
        \PartRem[4][9] ) );
  MX2XL U90 ( .A(\PartRem[4][8] ), .B(\SumTmp[3][8] ), .S0(root[3]), .Y(
        \PartRem[3][10] ) );
  MX2XL U91 ( .A(\PartRem[3][8] ), .B(\SumTmp[2][8] ), .S0(root[2]), .Y(
        \PartRem[2][10] ) );
  NAND2X8 U92 ( .A(n14), .B(n71), .Y(root[1]) );
  CLKINVX4 U93 ( .A(\CryTmp[4][9] ), .Y(n12) );
  CLKINVX4 U94 ( .A(\CryTmp[2][11] ), .Y(n9) );
  AND2X8 U95 ( .A(n9), .B(n77), .Y(n8) );
  INVX3 U96 ( .A(\CryTmp[3][10] ), .Y(n16) );
  CLKAND2X12 U97 ( .A(n16), .B(n79), .Y(n15) );
  INVX1 U98 ( .A(root[10]), .Y(n37) );
  OR2X1 U99 ( .A(a[11]), .B(a[10]), .Y(\CryTmp[5][2] ) );
  OR2X1 U100 ( .A(a[9]), .B(a[8]), .Y(\CryTmp[4][2] ) );
  MXI2XL U101 ( .A(\SumTmp[1][9] ), .B(\PartRem[2][9] ), .S0(n24), .Y(n44) );
  MX2XL U102 ( .A(n6), .B(\SumTmp[7][4] ), .S0(root[7]), .Y(\PartRem[7][6] )
         );
  MX2XL U103 ( .A(\PartRem[7][5] ), .B(\SumTmp[6][5] ), .S0(root[6]), .Y(
        \PartRem[6][7] ) );
  NAND2BX4 U104 ( .AN(\CryTmp[9][4] ), .B(n86), .Y(n88) );
  MX2XL U105 ( .A(\PartRem[8][3] ), .B(\SumTmp[7][3] ), .S0(root[7]), .Y(
        \PartRem[7][5] ) );
  MX2XL U106 ( .A(\PartRem[5][2] ), .B(\SumTmp[4][2] ), .S0(root[4]), .Y(
        \PartRem[4][4] ) );
  MX2XL U107 ( .A(\PartRem[5][3] ), .B(\SumTmp[4][3] ), .S0(root[4]), .Y(
        \PartRem[4][5] ) );
  MX2XL U108 ( .A(\PartRem[6][2] ), .B(\SumTmp[5][2] ), .S0(root[5]), .Y(
        \PartRem[5][4] ) );
  MX2XL U109 ( .A(\PartRem[6][3] ), .B(\SumTmp[5][3] ), .S0(root[5]), .Y(
        \PartRem[5][5] ) );
  MX2XL U110 ( .A(\PartRem[9][2] ), .B(\SumTmp[8][2] ), .S0(root[8]), .Y(
        \PartRem[8][4] ) );
  MX2XL U111 ( .A(\PartRem[7][3] ), .B(\SumTmp[6][3] ), .S0(root[6]), .Y(
        \PartRem[6][5] ) );
  MX2XL U112 ( .A(\PartRem[7][2] ), .B(\SumTmp[6][2] ), .S0(root[6]), .Y(
        \PartRem[6][4] ) );
  MX2XL U113 ( .A(\PartRem[3][2] ), .B(\SumTmp[2][2] ), .S0(root[2]), .Y(
        \PartRem[2][4] ) );
  MX2XL U114 ( .A(\PartRem[3][3] ), .B(\SumTmp[2][3] ), .S0(root[2]), .Y(
        \PartRem[2][5] ) );
  MX2XL U115 ( .A(\PartRem[9][3] ), .B(\SumTmp[8][3] ), .S0(root[8]), .Y(
        \PartRem[8][5] ) );
  MX2XL U116 ( .A(\PartRem[10][2] ), .B(\SumTmp[9][2] ), .S0(root[9]), .Y(
        \PartRem[9][4] ) );
  MXI2XL U117 ( .A(\SumTmp[1][3] ), .B(\PartRem[2][3] ), .S0(n24), .Y(n63) );
  AOI2BB1X4 U118 ( .A0N(\CryTmp[10][2] ), .A1N(n27), .B0(n19), .Y(n18) );
  AOI2BB1X4 U119 ( .A0N(\CryTmp[9][2] ), .A1N(n36), .B0(n22), .Y(n21) );
  CLKINVX1 U120 ( .A(root[8]), .Y(n35) );
  NOR2BX1 U121 ( .AN(n46), .B(n36), .Y(n47) );
  OA22X1 U122 ( .A0(root[5]), .A1(n58), .B0(n59), .B1(n60), .Y(n55) );
  NOR2BX1 U123 ( .AN(n58), .B(n32), .Y(n59) );
  AOI2BB2X1 U124 ( .B0(n31), .B1(n61), .A0N(n62), .A1N(n63), .Y(n58) );
  CLKINVX1 U125 ( .A(\PartRoot[9][4] ), .Y(root[11]) );
  XOR2X1 U126 ( .A(root[5]), .B(a[10]), .Y(\PartRem[5][2] ) );
  OAI21X1 U127 ( .A0(\CryTmp[5][2] ), .A1(n32), .B0(n72), .Y(\PartRem[5][3] )
         );
  XOR2X1 U128 ( .A(root[10]), .B(a[20]), .Y(\PartRem[10][2] ) );
  NAND2BX4 U129 ( .AN(\CryTmp[6][7] ), .B(n83), .Y(n89) );
  MXI2X1 U130 ( .A(\SumTmp[1][11] ), .B(\PartRem[2][11] ), .S0(n24), .Y(n42)
         );
  MXI2X1 U131 ( .A(\SumTmp[1][8] ), .B(\PartRem[2][8] ), .S0(n24), .Y(n48) );
  MXI2X1 U132 ( .A(\SumTmp[1][7] ), .B(\PartRem[2][7] ), .S0(n24), .Y(n51) );
  MXI2X1 U133 ( .A(\SumTmp[1][6] ), .B(\PartRem[2][6] ), .S0(n24), .Y(n53) );
  MXI2X1 U134 ( .A(\SumTmp[1][5] ), .B(\PartRem[2][5] ), .S0(n24), .Y(n56) );
  MXI2X1 U135 ( .A(\SumTmp[1][4] ), .B(\PartRem[2][4] ), .S0(n24), .Y(n60) );
  OR2X1 U136 ( .A(a[0]), .B(a[1]), .Y(n70) );
  MXI2X1 U137 ( .A(\SumTmp[2][10] ), .B(\PartRem[3][10] ), .S0(n29), .Y(n71)
         );
  CLKMX2X2 U138 ( .A(\PartRem[5][6] ), .B(\SumTmp[4][6] ), .S0(root[4]), .Y(
        \PartRem[4][8] ) );
  CLKMX2X2 U139 ( .A(\PartRem[6][4] ), .B(\SumTmp[5][4] ), .S0(root[5]), .Y(
        \PartRem[5][6] ) );
  CLKMX2X2 U140 ( .A(\PartRem[3][7] ), .B(\SumTmp[2][7] ), .S0(root[2]), .Y(
        \PartRem[2][9] ) );
  CLKMX2X2 U141 ( .A(\PartRem[4][5] ), .B(\SumTmp[3][5] ), .S0(root[3]), .Y(
        \PartRem[3][7] ) );
  CLKMX2X2 U142 ( .A(\PartRem[3][6] ), .B(\SumTmp[2][6] ), .S0(root[2]), .Y(
        \PartRem[2][8] ) );
  CLKMX2X2 U143 ( .A(\PartRem[4][4] ), .B(\SumTmp[3][4] ), .S0(root[3]), .Y(
        \PartRem[3][6] ) );
  CLKMX2X2 U144 ( .A(\PartRem[3][5] ), .B(\SumTmp[2][5] ), .S0(root[2]), .Y(
        \PartRem[2][7] ) );
  CLKMX2X2 U145 ( .A(\PartRem[3][9] ), .B(\SumTmp[2][9] ), .S0(root[2]), .Y(
        \PartRem[2][11] ) );
  CLKMX2X2 U146 ( .A(\PartRem[4][7] ), .B(\SumTmp[3][7] ), .S0(root[3]), .Y(
        \PartRem[3][9] ) );
  CLKMX2X2 U147 ( .A(\PartRem[5][5] ), .B(\SumTmp[4][5] ), .S0(root[4]), .Y(
        \PartRem[4][7] ) );
  CLKMX2X2 U148 ( .A(\PartRem[6][5] ), .B(\SumTmp[5][5] ), .S0(root[5]), .Y(
        \PartRem[5][7] ) );
  CLKMX2X2 U149 ( .A(\PartRem[4][6] ), .B(\SumTmp[3][6] ), .S0(root[3]), .Y(
        \PartRem[3][8] ) );
  MXI2X1 U150 ( .A(\SumTmp[4][8] ), .B(\PartRem[5][8] ), .S0(n31), .Y(n79) );
  CLKMX2X2 U151 ( .A(\PartRem[7][4] ), .B(\SumTmp[6][4] ), .S0(root[6]), .Y(
        \PartRem[6][6] ) );
  CLKMX2X2 U152 ( .A(\PartRem[5][4] ), .B(\SumTmp[4][4] ), .S0(root[4]), .Y(
        \PartRem[4][6] ) );
  MXI2X1 U153 ( .A(\SumTmp[5][7] ), .B(\PartRem[6][7] ), .S0(n32), .Y(n80) );
  MXI2X1 U154 ( .A(\SumTmp[6][6] ), .B(\PartRem[7][6] ), .S0(n33), .Y(n82) );
  MXI2X1 U155 ( .A(\SumTmp[7][5] ), .B(\PartRem[8][5] ), .S0(n25), .Y(n83) );
  MXI2X1 U156 ( .A(\SumTmp[8][4] ), .B(\PartRem[9][4] ), .S0(n26), .Y(n84) );
  OR2X1 U157 ( .A(a[19]), .B(a[18]), .Y(\CryTmp[9][2] ) );
  OR2X1 U158 ( .A(a[17]), .B(a[16]), .Y(\CryTmp[8][2] ) );
  OR2X1 U159 ( .A(a[7]), .B(a[6]), .Y(\CryTmp[3][2] ) );
  OR2X1 U160 ( .A(a[5]), .B(a[4]), .Y(\CryTmp[2][2] ) );
  OR2X1 U161 ( .A(a[3]), .B(a[2]), .Y(\CryTmp[1][2] ) );
  OR2X1 U162 ( .A(a[21]), .B(a[20]), .Y(\CryTmp[10][2] ) );
endmodule


module DW_sqrt_inst ( radicand, square_root );
  input [23:0] radicand;
  output [11:0] square_root;


  DW_sqrt_inst_DW_sqrt_0 U1 ( .a(radicand), .root(square_root) );
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


module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFHX2 U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFHX1 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX4 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFHX2 U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX4 U1 ( .A(carry[11]), .Y(DIFF[11]) );
  XNOR2X1 U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n3) );
  NAND2X1 U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n12) );
  INVXL U15 ( .A(B[0]), .Y(n2) );
endmodule


module geofence_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFHX2 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  CMPR32X2 U2_10 ( .A(A[10]), .B(n12), .C(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFHX1 U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFHX1 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFHX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CMPR32X2 U2_2 ( .A(A[2]), .B(n4), .C(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX4 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  CLKINVX4 U1 ( .A(carry[11]), .Y(DIFF[11]) );
  XNOR2X1 U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(B[10]), .Y(n12) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n3) );
  NAND2X1 U6 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U12 ( .A(B[7]), .Y(n9) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U14 ( .A(B[9]), .Y(n11) );
  INVXL U15 ( .A(B[0]), .Y(n2) );
endmodule


module geofence_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [12:0] carry;

  ADDFXL U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n4), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n9), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX2 U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  CMPR32X2 U2_9 ( .A(A[9]), .B(n10), .C(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX2 U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2 U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  INVXL U1 ( .A(B[0]), .Y(n3) );
  INVXL U2 ( .A(B[9]), .Y(n10) );
  XNOR2X2 U3 ( .A(B[11]), .B(carry[11]), .Y(DIFF[11]) );
  INVXL U4 ( .A(B[2]), .Y(n5) );
  INVXL U5 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[6]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[7]), .Y(n2) );
  CLKINVX1 U8 ( .A(B[8]), .Y(n11) );
  CLKINVX1 U9 ( .A(B[1]), .Y(n4) );
  NAND2X1 U10 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U11 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U12 ( .A(B[5]), .Y(n8) );
  XNOR2X1 U13 ( .A(n3), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U14 ( .A(A[0]), .Y(n1) );
  INVXL U15 ( .A(B[10]), .Y(n12) );
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


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
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
  ADDFXL U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n18), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n19), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n16), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n17), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n15), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n12), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n13), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n9), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n10), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n11), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n8), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n5), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n7), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  XOR3X1 U2_23 ( .A(A[23]), .B(n2), .C(carry[23]), .Y(DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n3), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n4), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n25) );
  CLKINVX1 U2 ( .A(B[21]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[22]), .Y(n3) );
  CLKINVX1 U4 ( .A(B[23]), .Y(n2) );
  CLKINVX1 U5 ( .A(B[18]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[19]), .Y(n6) );
  CLKINVX1 U7 ( .A(B[20]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[17]), .Y(n8) );
  CLKINVX1 U9 ( .A(B[14]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[15]), .Y(n10) );
  CLKINVX1 U11 ( .A(B[16]), .Y(n9) );
  CLKINVX1 U12 ( .A(B[12]), .Y(n13) );
  CLKINVX1 U13 ( .A(B[11]), .Y(n14) );
  CLKINVX1 U14 ( .A(B[13]), .Y(n12) );
  CLKINVX1 U15 ( .A(B[10]), .Y(n15) );
  CLKINVX1 U16 ( .A(B[8]), .Y(n17) );
  CLKINVX1 U17 ( .A(B[9]), .Y(n16) );
  CLKINVX1 U18 ( .A(B[5]), .Y(n20) );
  CLKINVX1 U19 ( .A(B[6]), .Y(n19) );
  CLKINVX1 U20 ( .A(B[7]), .Y(n18) );
  CLKINVX1 U21 ( .A(B[4]), .Y(n21) );
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
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3X1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  CMPR32X2 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  CMPR32X2 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  CMPR32X2 U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  CMPR32X2 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  CMPR32X2 U1_18 ( .A(A[18]), .B(B[18]), .C(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
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
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
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


module geofence_DW01_sub_5 ( A, B, CI, DIFF, CO );
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
  ADDFXL U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
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


module geofence_DW01_inc_0 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX2 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  XOR2X2 U1 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_inc_1 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX2 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX4 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  XOR2X1 U1 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_inc_2 ( A, SUM );
  input [11:0] A;
  output [11:0] SUM;

  wire   [11:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX2 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHX2 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR2X1 U1 ( .A(carry[11]), .B(A[11]), .Y(SUM[11]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_add_4 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [11:1] carry;

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(SUM[11]), .S(
        SUM[10]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_add_3 ( A, B, CI, SUM, CO );
  input [11:0] A;
  input [11:0] B;
  output [11:0] SUM;
  input CI;
  output CO;

  wire   [11:1] carry;

  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3X1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .Y(SUM[11]) );
  CMPR32X2 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  CMPR32X2 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CMPR32X2 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  CLKAND2X8 U1 ( .A(B[0]), .B(A[0]), .Y(carry[1]) );
endmodule


module geofence_DW01_sub_10 ( A, B, CI, DIFF, CO );
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


module geofence_DW01_sub_9 ( A, B, CI, DIFF, CO );
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


module geofence_DW01_sub_8 ( A, B, CI, DIFF, CO );
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
  CLKINVX1 U11 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_7 ( A, B, CI, DIFF, CO );
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
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVXL U1 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n10) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U5 ( .A(B[5]), .Y(n6) );
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
  CLKBUFX3 U280 ( .A(n396), .Y(n358) );
  NAND2X1 U281 ( .A(n359), .B(n461), .Y(n396) );
  CLKBUFX3 U282 ( .A(n393), .Y(n359) );
  XOR2X1 U283 ( .A(a[4]), .B(n381), .Y(n393) );
  CLKBUFX3 U284 ( .A(a[1]), .Y(n365) );
  CLKBUFX3 U285 ( .A(a[5]), .Y(n367) );
  CLKBUFX3 U286 ( .A(a[3]), .Y(n366) );
  CLKBUFX3 U287 ( .A(n414), .Y(n356) );
  NAND2X1 U288 ( .A(n357), .B(n460), .Y(n414) );
  CLKBUFX3 U289 ( .A(n391), .Y(n361) );
  XOR2X1 U290 ( .A(a[6]), .B(n380), .Y(n391) );
  CLKBUFX3 U291 ( .A(n399), .Y(n363) );
  XOR2X1 U292 ( .A(a[8]), .B(n379), .Y(n399) );
  INVX3 U293 ( .A(n364), .Y(n376) );
  INVX3 U294 ( .A(a[0]), .Y(n383) );
  CLKBUFX3 U295 ( .A(n402), .Y(n362) );
  NAND2X1 U296 ( .A(n363), .B(n463), .Y(n402) );
  CLKBUFX3 U297 ( .A(a[7]), .Y(n368) );
  CLKBUFX3 U298 ( .A(a[9]), .Y(n369) );
  CLKBUFX3 U299 ( .A(n390), .Y(n360) );
  NAND2X1 U300 ( .A(n361), .B(n462), .Y(n390) );
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


module geofence_DW01_sub_6 ( A, B, CI, DIFF, CO );
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
  ADDFXL U2_15 ( .A(A[15]), .B(n8), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
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
  ADDFXL U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  XOR3X1 U2_23 ( .A(A[23]), .B(n2), .C(carry[23]), .Y(DIFF[23]) );
  CLKINVX1 U1 ( .A(B[21]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[16]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[17]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[12]), .Y(n11) );
  CLKINVX1 U5 ( .A(B[13]), .Y(n10) );
  CLKINVX1 U6 ( .A(B[14]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[15]), .Y(n8) );
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


module geofence_DW01_add_2 ( A, B, CI, SUM, CO );
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
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548;

  ADDHXL U26 ( .A(n147), .B(n237), .CO(n25), .S(product[1]) );
  ADDFXL U28 ( .A(n156), .B(n30), .CI(n31), .CO(n27), .S(n28) );
  CMPR42X1 U30 ( .A(n458), .B(n149), .C(n169), .D(n157), .ICI(n34), .S(n33), 
        .ICO(n31), .CO(n32) );
  CMPR42X1 U31 ( .A(n38), .B(n170), .C(n158), .D(n42), .ICI(n39), .S(n36), 
        .ICO(n34), .CO(n35) );
  CMPR42X1 U33 ( .A(n171), .B(n159), .C(n43), .D(n47), .ICI(n44), .S(n41), 
        .ICO(n39), .CO(n40) );
  ADDFXL U34 ( .A(n150), .B(n457), .CI(n183), .CO(n42), .S(n43) );
  CMPR42X1 U35 ( .A(n184), .B(n54), .C(n55), .D(n48), .ICI(n51), .S(n46), 
        .ICO(n44), .CO(n45) );
  ADDFXL U36 ( .A(n172), .B(n50), .CI(n160), .CO(n47), .S(n48) );
  CMPR42X1 U38 ( .A(n161), .B(n60), .C(n56), .D(n61), .ICI(n57), .S(n53), 
        .ICO(n51), .CO(n52) );
  CMPR42X1 U39 ( .A(n456), .B(n151), .C(n197), .D(n173), .ICI(n185), .S(n56), 
        .ICO(n54), .CO(n55) );
  CMPR42X1 U40 ( .A(n68), .B(n71), .C(n62), .D(n69), .ICI(n65), .S(n59), .ICO(
        n57), .CO(n58) );
  CMPR42X1 U43 ( .A(n79), .B(n72), .C(n77), .D(n70), .ICI(n73), .S(n67), .ICO(
        n65), .CO(n66) );
  CMPR42X1 U44 ( .A(n175), .B(n199), .C(n187), .D(n163), .ICI(n76), .S(n70), 
        .ICO(n68), .CO(n69) );
  ADDFXL U45 ( .A(n152), .B(n455), .CI(n211), .CO(n71), .S(n72) );
  CMPR42X1 U46 ( .A(n80), .B(n89), .C(n87), .D(n78), .ICI(n83), .S(n75), .ICO(
        n73), .CO(n74) );
  CMPR42X1 U47 ( .A(n176), .B(n212), .C(n200), .D(n164), .ICI(n86), .S(n78), 
        .ICO(n76), .CO(n77) );
  ADDFXL U48 ( .A(n91), .B(n153), .CI(n188), .CO(n79), .S(n80) );
  CMPR42X1 U50 ( .A(n90), .B(n98), .C(n96), .D(n88), .ICI(n92), .S(n85), .ICO(
        n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n177), .B(n201), .C(n189), .D(n165), .ICI(n95), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U52 ( .A(n450), .B(n91), .CI(n213), .CO(n89), .S(n90) );
  CMPR42X1 U54 ( .A(n106), .B(n99), .C(n104), .D(n97), .ICI(n100), .S(n94), 
        .ICO(n92), .CO(n93) );
  CMPR42X1 U55 ( .A(n214), .B(n166), .C(n202), .D(n190), .ICI(n103), .S(n97), 
        .ICO(n95), .CO(n96) );
  ADDFXL U56 ( .A(n178), .B(n154), .CI(n226), .CO(n98), .S(n99) );
  CMPR42X1 U57 ( .A(n203), .B(n107), .C(n112), .D(n105), .ICI(n108), .S(n102), 
        .ICO(n100), .CO(n101) );
  CMPR42X1 U58 ( .A(n227), .B(n179), .C(n215), .D(n191), .ICI(n111), .S(n105), 
        .ICO(n103), .CO(n104) );
  CMPR42X1 U60 ( .A(n204), .B(n119), .C(n113), .D(n117), .ICI(n114), .S(n110), 
        .ICO(n108), .CO(n109) );
  CMPR42X1 U62 ( .A(n229), .B(n120), .C(n121), .D(n124), .ICI(n118), .S(n116), 
        .ICO(n114), .CO(n115) );
  ADDFXL U63 ( .A(n193), .B(n205), .CI(n217), .CO(n117), .S(n118) );
  ADDHXL U64 ( .A(n181), .B(n143), .CO(n119), .S(n120) );
  CMPR42X1 U65 ( .A(n218), .B(n194), .C(n129), .D(n126), .ICI(n125), .S(n123), 
        .ICO(n121), .CO(n122) );
  ADDFXL U66 ( .A(n206), .B(n182), .CI(n230), .CO(n124), .S(n125) );
  CMPR42X1 U67 ( .A(n231), .B(n207), .C(n219), .D(n131), .ICI(n130), .S(n128), 
        .ICO(n126), .CO(n127) );
  CMPR42X1 U69 ( .A(n196), .B(n232), .C(n220), .D(n208), .ICI(n136), .S(n133), 
        .ICO(n131), .CO(n132) );
  NAND2X8 U322 ( .A(n493), .B(n545), .Y(n440) );
  XOR2X4 U323 ( .A(b[1]), .B(n450), .Y(n469) );
  XOR2X1 U324 ( .A(b[1]), .B(n452), .Y(n495) );
  XOR2X2 U325 ( .A(b[1]), .B(n453), .Y(n508) );
  XOR2X1 U326 ( .A(b[1]), .B(n454), .Y(n521) );
  XOR2X1 U327 ( .A(b[1]), .B(n459), .Y(n533) );
  NAND2X8 U328 ( .A(n449), .B(n546), .Y(n437) );
  OAI22X1 U329 ( .A0(n482), .A1(n439), .B0(n480), .B1(n483), .Y(n222) );
  NAND2X6 U330 ( .A(n480), .B(n544), .Y(n439) );
  OAI22X1 U331 ( .A0(n533), .A1(n441), .B0(n467), .B1(n534), .Y(n166) );
  NAND2X4 U332 ( .A(n467), .B(n548), .Y(n441) );
  CLKINVX8 U333 ( .A(n461), .Y(n434) );
  INVX8 U334 ( .A(n434), .Y(n435) );
  CLKINVX6 U335 ( .A(n434), .Y(n436) );
  OAI22X1 U336 ( .A0(n471), .A1(n468), .B0(n472), .B1(n436), .Y(n234) );
  OAI21X1 U337 ( .A0(b[0]), .A1(n450), .B0(n468), .Y(n147) );
  OAI22X1 U338 ( .A0(b[0]), .A1(n468), .B0(n469), .B1(n436), .Y(n237) );
  ADDFX1 U339 ( .A(n234), .B(n210), .CI(n222), .CO(n138), .S(n139) );
  INVX4 U340 ( .A(a[0]), .Y(n461) );
  XOR2X2 U341 ( .A(b[3]), .B(n450), .Y(n471) );
  CLKINVX3 U342 ( .A(a[4]), .Y(n445) );
  CLKINVX6 U343 ( .A(a[8]), .Y(n447) );
  INVX6 U344 ( .A(a[5]), .Y(n452) );
  XOR2X1 U345 ( .A(b[4]), .B(n451), .Y(n485) );
  CLKBUFX3 U346 ( .A(n474), .Y(n442) );
  INVX16 U347 ( .A(a[9]), .Y(n454) );
  INVX4 U348 ( .A(n446), .Y(n520) );
  AND2X4 U349 ( .A(n438), .B(n547), .Y(n446) );
  ADDFX2 U350 ( .A(n221), .B(n233), .CI(n137), .CO(n134), .S(n135) );
  OAI22XL U351 ( .A0(n483), .A1(n439), .B0(n480), .B1(n484), .Y(n221) );
  INVX12 U352 ( .A(a[3]), .Y(n451) );
  OAI22XL U353 ( .A0(n476), .A1(n468), .B0(n477), .B1(n436), .Y(n229) );
  INVX4 U354 ( .A(a[11]), .Y(n459) );
  ADDFHX1 U355 ( .A(n139), .B(n140), .CI(n23), .CO(n22), .S(product[4]) );
  ADDFX2 U356 ( .A(n236), .B(n224), .CI(n25), .CO(n24), .S(product[2]) );
  CLKINVX8 U357 ( .A(n448), .Y(n467) );
  OAI22X1 U358 ( .A0(n510), .A1(n437), .B0(n449), .B1(n511), .Y(n192) );
  XOR2X1 U359 ( .A(b[4]), .B(n453), .Y(n511) );
  CLKINVX8 U360 ( .A(a[1]), .Y(n450) );
  OAI22X1 U361 ( .A0(n470), .A1(n468), .B0(n471), .B1(n436), .Y(n235) );
  XNOR2X4 U362 ( .A(n447), .B(n453), .Y(n438) );
  ADDFX2 U363 ( .A(n141), .B(n146), .CI(n24), .CO(n23), .S(product[3]) );
  OAI32X1 U364 ( .A0(n451), .A1(b[0]), .A2(n480), .B0(n451), .B1(n439), .Y(
        n146) );
  ADDFHX4 U365 ( .A(n52), .B(n46), .CI(n9), .CO(n8), .S(product[18]) );
  ADDFHX4 U366 ( .A(n53), .B(n58), .CI(n10), .CO(n9), .S(product[17]) );
  OAI22X1 U367 ( .A0(n519), .A1(n520), .B0(n438), .B1(n521), .Y(n181) );
  OAI22X1 U368 ( .A0(n521), .A1(n520), .B0(n438), .B1(n522), .Y(n180) );
  ADDFHX4 U369 ( .A(n116), .B(n122), .CI(n18), .CO(n17), .S(product[9]) );
  ADDFHX2 U370 ( .A(n123), .B(n127), .CI(n19), .CO(n18), .S(product[8]) );
  ADDFHX4 U371 ( .A(n35), .B(n33), .CI(n6), .CO(n5), .S(product[21]) );
  ADDFHX4 U372 ( .A(n40), .B(n36), .CI(n7), .CO(n6), .S(product[20]) );
  OAI22X1 U373 ( .A0(n475), .A1(n468), .B0(n476), .B1(n436), .Y(n230) );
  OAI22XL U374 ( .A0(n484), .A1(n439), .B0(n480), .B1(n485), .Y(n220) );
  OAI22XL U375 ( .A0(n485), .A1(n439), .B0(n480), .B1(n486), .Y(n219) );
  OAI22X1 U376 ( .A0(n495), .A1(n440), .B0(n493), .B1(n496), .Y(n208) );
  OAI22X1 U377 ( .A0(n496), .A1(n440), .B0(n493), .B1(n497), .Y(n207) );
  ADDHX1 U378 ( .A(n235), .B(n223), .CO(n140), .S(n141) );
  OAI22X1 U379 ( .A0(n481), .A1(n439), .B0(n480), .B1(n482), .Y(n223) );
  OAI22X1 U380 ( .A0(n497), .A1(n440), .B0(n493), .B1(n498), .Y(n206) );
  OAI22X1 U381 ( .A0(n498), .A1(n440), .B0(n493), .B1(n499), .Y(n205) );
  XOR2X1 U382 ( .A(b[4]), .B(n452), .Y(n498) );
  XOR2X1 U383 ( .A(b[2]), .B(n451), .Y(n483) );
  OAI22X1 U384 ( .A0(n473), .A1(n468), .B0(n442), .B1(n436), .Y(n232) );
  OAI22X1 U385 ( .A0(n442), .A1(n468), .B0(n475), .B1(n436), .Y(n231) );
  ADDFHX4 U386 ( .A(n134), .B(n133), .CI(n21), .CO(n20), .S(product[6]) );
  ADDFHX4 U387 ( .A(n135), .B(n138), .CI(n22), .CO(n21), .S(product[5]) );
  XOR2X1 U388 ( .A(b[3]), .B(n451), .Y(n484) );
  XOR2X4 U389 ( .A(n445), .B(n451), .Y(n444) );
  INVX16 U390 ( .A(n444), .Y(n493) );
  XOR2X1 U391 ( .A(b[1]), .B(n451), .Y(n482) );
  XOR2X4 U392 ( .A(n30), .B(n464), .Y(n463) );
  XNOR2X4 U393 ( .A(n4), .B(n27), .Y(n464) );
  ADDFHX4 U394 ( .A(n28), .B(n32), .CI(n5), .CO(n4), .S(product[22]) );
  CMPR42X1 U395 ( .A(n64), .B(n174), .C(n186), .D(n162), .ICI(n198), .S(n62), 
        .ICO(n60), .CO(n61) );
  NOR2XL U396 ( .A(n436), .B(n460), .Y(product[0]) );
  CLKINVX12 U397 ( .A(a[7]), .Y(n453) );
  INVX3 U398 ( .A(b[0]), .Y(n460) );
  XOR2XL U399 ( .A(b[6]), .B(n450), .Y(n474) );
  XOR2X1 U400 ( .A(b[2]), .B(n450), .Y(n470) );
  XOR2X1 U401 ( .A(b[5]), .B(n450), .Y(n473) );
  OAI22XL U402 ( .A0(n507), .A1(n437), .B0(n449), .B1(n508), .Y(n195) );
  XNOR2X1 U403 ( .A(a[10]), .B(n454), .Y(n448) );
  XOR2XL U404 ( .A(b[8]), .B(n450), .Y(n476) );
  XOR2XL U405 ( .A(b[10]), .B(n450), .Y(n478) );
  XOR2XL U406 ( .A(b[7]), .B(n450), .Y(n475) );
  XOR2XL U407 ( .A(b[9]), .B(n450), .Y(n477) );
  XOR2XL U408 ( .A(b[11]), .B(n450), .Y(n479) );
  INVXL U409 ( .A(n91), .Y(n455) );
  ADDFHX2 U410 ( .A(n41), .B(n45), .CI(n8), .CO(n7), .S(product[19]) );
  ADDFHX2 U411 ( .A(n59), .B(n66), .CI(n11), .CO(n10), .S(product[16]) );
  ADDFHX2 U412 ( .A(n67), .B(n74), .CI(n12), .CO(n11), .S(product[15]) );
  ADDFHX2 U413 ( .A(n75), .B(n84), .CI(n13), .CO(n12), .S(product[14]) );
  ADDFHX2 U414 ( .A(n85), .B(n93), .CI(n14), .CO(n13), .S(product[13]) );
  ADDFHX2 U415 ( .A(n94), .B(n101), .CI(n15), .CO(n14), .S(product[12]) );
  ADDFHX2 U416 ( .A(n102), .B(n109), .CI(n16), .CO(n15), .S(product[11]) );
  ADDFHX2 U417 ( .A(n110), .B(n115), .CI(n17), .CO(n16), .S(product[10]) );
  ADDFHX2 U418 ( .A(n128), .B(n132), .CI(n20), .CO(n19), .S(product[7]) );
  XOR2X2 U419 ( .A(n462), .B(n463), .Y(product[23]) );
  CMPR42X2 U420 ( .A(n168), .B(n192), .C(n228), .D(n216), .ICI(n180), .S(n113), 
        .ICO(n111), .CO(n112) );
  XOR2X4 U421 ( .A(a[2]), .B(a[1]), .Y(n443) );
  CLKINVX12 U422 ( .A(n443), .Y(n480) );
  ADDHX1 U423 ( .A(n209), .B(n145), .CO(n136), .S(n137) );
  OAI32XL U424 ( .A0(n452), .A1(b[0]), .A2(n493), .B0(n452), .B1(n440), .Y(
        n145) );
  OAI22X1 U425 ( .A0(n494), .A1(n440), .B0(n493), .B1(n495), .Y(n209) );
  XOR2XL U426 ( .A(n452), .B(b[0]), .Y(n494) );
  NAND2X8 U427 ( .A(a[1]), .B(n435), .Y(n468) );
  ADDHX1 U428 ( .A(n195), .B(n144), .CO(n129), .S(n130) );
  OAI32XL U429 ( .A0(n453), .A1(b[0]), .A2(n449), .B0(n453), .B1(n437), .Y(
        n144) );
  XOR2XL U430 ( .A(n453), .B(b[0]), .Y(n507) );
  XOR2X4 U431 ( .A(b[4]), .B(n450), .Y(n472) );
  BUFX12 U432 ( .A(n506), .Y(n449) );
  CLKXOR2X2 U433 ( .A(a[6]), .B(n452), .Y(n506) );
  XOR2XL U434 ( .A(b[2]), .B(n452), .Y(n496) );
  ADDHX1 U435 ( .A(n167), .B(n142), .CO(n106), .S(n107) );
  OAI32XL U436 ( .A0(n459), .A1(b[0]), .A2(n467), .B0(n459), .B1(n441), .Y(
        n142) );
  XOR2XL U437 ( .A(n460), .B(a[11]), .Y(n532) );
  XOR2XL U438 ( .A(b[3]), .B(n452), .Y(n497) );
  XOR2XL U439 ( .A(b[5]), .B(n451), .Y(n486) );
  XOR2XL U440 ( .A(b[6]), .B(n451), .Y(n487) );
  XOR2XL U441 ( .A(b[2]), .B(n453), .Y(n509) );
  XOR2XL U442 ( .A(b[5]), .B(n452), .Y(n499) );
  XOR2XL U443 ( .A(b[3]), .B(n453), .Y(n510) );
  XOR2XL U444 ( .A(b[7]), .B(n451), .Y(n488) );
  XOR2XL U445 ( .A(b[8]), .B(n451), .Y(n489) );
  XOR2XL U446 ( .A(b[2]), .B(n454), .Y(n522) );
  XOR2XL U447 ( .A(b[3]), .B(n454), .Y(n523) );
  XOR2XL U448 ( .A(b[6]), .B(n452), .Y(n500) );
  XOR2XL U449 ( .A(b[9]), .B(n451), .Y(n490) );
  XOR2XL U450 ( .A(b[5]), .B(n453), .Y(n512) );
  XOR2XL U451 ( .A(b[4]), .B(n454), .Y(n524) );
  XOR2XL U452 ( .A(b[10]), .B(n451), .Y(n491) );
  XOR2XL U453 ( .A(b[7]), .B(n452), .Y(n501) );
  XOR2XL U454 ( .A(b[8]), .B(n452), .Y(n502) );
  XOR2XL U455 ( .A(b[6]), .B(n453), .Y(n513) );
  XOR2XL U456 ( .A(b[9]), .B(n452), .Y(n503) );
  XOR2XL U457 ( .A(b[11]), .B(n451), .Y(n492) );
  XOR2XL U458 ( .A(b[5]), .B(n454), .Y(n525) );
  XOR2XL U459 ( .A(b[7]), .B(n453), .Y(n514) );
  XOR2XL U460 ( .A(b[8]), .B(n453), .Y(n515) );
  XOR2XL U461 ( .A(b[2]), .B(n459), .Y(n534) );
  XOR2XL U462 ( .A(b[3]), .B(n459), .Y(n535) );
  AO21XL U463 ( .A0(n439), .A1(n480), .B0(n451), .Y(n211) );
  XOR2XL U464 ( .A(b[6]), .B(n454), .Y(n526) );
  XOR2XL U465 ( .A(b[10]), .B(n452), .Y(n504) );
  XOR2XL U466 ( .A(b[11]), .B(n452), .Y(n505) );
  XOR2XL U467 ( .A(b[7]), .B(n454), .Y(n527) );
  XOR2XL U468 ( .A(b[9]), .B(n453), .Y(n516) );
  XOR2XL U469 ( .A(b[8]), .B(n454), .Y(n528) );
  XOR2XL U470 ( .A(b[4]), .B(n459), .Y(n536) );
  XOR2XL U471 ( .A(b[5]), .B(n459), .Y(n537) );
  NAND2XL U472 ( .A(b[1]), .B(a[11]), .Y(n91) );
  XOR2XL U473 ( .A(b[10]), .B(n453), .Y(n517) );
  XOR2XL U474 ( .A(b[9]), .B(n454), .Y(n529) );
  XOR2XL U475 ( .A(b[11]), .B(n453), .Y(n518) );
  XOR2XL U476 ( .A(b[6]), .B(n459), .Y(n538) );
  AO21XL U477 ( .A0(n437), .A1(n449), .B0(n453), .Y(n183) );
  XOR2XL U478 ( .A(b[10]), .B(n454), .Y(n530) );
  XOR2XL U479 ( .A(b[8]), .B(n459), .Y(n540) );
  XOR2XL U480 ( .A(b[7]), .B(n459), .Y(n539) );
  NAND2XL U481 ( .A(b[4]), .B(a[11]), .Y(n64) );
  AO21XL U482 ( .A0(n520), .A1(n438), .B0(n454), .Y(n169) );
  XOR2XL U483 ( .A(b[11]), .B(n454), .Y(n531) );
  XOR2XL U484 ( .A(b[9]), .B(n459), .Y(n541) );
  NAND2XL U485 ( .A(b[6]), .B(a[11]), .Y(n50) );
  XOR2XL U486 ( .A(b[11]), .B(n459), .Y(n543) );
  XOR2XL U487 ( .A(b[10]), .B(n459), .Y(n542) );
  NAND2XL U488 ( .A(b[8]), .B(a[11]), .Y(n38) );
  NAND2XL U489 ( .A(b[10]), .B(a[11]), .Y(n30) );
  CLKINVX1 U490 ( .A(n64), .Y(n456) );
  CLKINVX1 U491 ( .A(n50), .Y(n457) );
  CLKINVX1 U492 ( .A(n38), .Y(n458) );
  XOR2X1 U493 ( .A(n465), .B(n466), .Y(n462) );
  AND2X1 U494 ( .A(b[11]), .B(a[11]), .Y(n466) );
  AO21X1 U495 ( .A0(n441), .A1(n467), .B0(n459), .Y(n465) );
  OAI22XL U496 ( .A0(n469), .A1(n468), .B0(n470), .B1(n436), .Y(n236) );
  OAI22XL U497 ( .A0(n472), .A1(n468), .B0(n473), .B1(n436), .Y(n233) );
  OAI22XL U498 ( .A0(n477), .A1(n468), .B0(n478), .B1(n436), .Y(n228) );
  OAI22XL U499 ( .A0(n478), .A1(n468), .B0(n479), .B1(n436), .Y(n227) );
  OAI22XL U500 ( .A0(n479), .A1(n468), .B0(n450), .B1(n436), .Y(n226) );
  NOR2X1 U501 ( .A(n480), .B(n460), .Y(n224) );
  XOR2X1 U502 ( .A(n451), .B(b[0]), .Y(n481) );
  OAI22XL U503 ( .A0(n486), .A1(n439), .B0(n480), .B1(n487), .Y(n218) );
  OAI22XL U504 ( .A0(n487), .A1(n439), .B0(n480), .B1(n488), .Y(n217) );
  OAI22XL U505 ( .A0(n488), .A1(n439), .B0(n480), .B1(n489), .Y(n216) );
  OAI22XL U506 ( .A0(n489), .A1(n439), .B0(n480), .B1(n490), .Y(n215) );
  OAI22XL U507 ( .A0(n490), .A1(n439), .B0(n480), .B1(n491), .Y(n214) );
  OAI22XL U508 ( .A0(n491), .A1(n439), .B0(n480), .B1(n492), .Y(n213) );
  OAI22XL U509 ( .A0(n492), .A1(n439), .B0(n480), .B1(n451), .Y(n212) );
  NOR2X1 U510 ( .A(n493), .B(n460), .Y(n210) );
  OAI22XL U511 ( .A0(n499), .A1(n440), .B0(n493), .B1(n500), .Y(n204) );
  OAI22XL U512 ( .A0(n500), .A1(n440), .B0(n493), .B1(n501), .Y(n203) );
  OAI22XL U513 ( .A0(n501), .A1(n440), .B0(n493), .B1(n502), .Y(n202) );
  OAI22XL U514 ( .A0(n502), .A1(n440), .B0(n493), .B1(n503), .Y(n201) );
  OAI22XL U515 ( .A0(n503), .A1(n440), .B0(n493), .B1(n504), .Y(n200) );
  OAI22XL U516 ( .A0(n504), .A1(n440), .B0(n493), .B1(n505), .Y(n199) );
  OAI22XL U517 ( .A0(n505), .A1(n440), .B0(n493), .B1(n452), .Y(n198) );
  AO21X1 U518 ( .A0(n440), .A1(n493), .B0(n452), .Y(n197) );
  NOR2X1 U519 ( .A(n449), .B(n460), .Y(n196) );
  OAI22XL U520 ( .A0(n508), .A1(n437), .B0(n449), .B1(n509), .Y(n194) );
  OAI22XL U521 ( .A0(n509), .A1(n437), .B0(n449), .B1(n510), .Y(n193) );
  OAI22XL U522 ( .A0(n511), .A1(n437), .B0(n449), .B1(n512), .Y(n191) );
  OAI22XL U523 ( .A0(n512), .A1(n437), .B0(n449), .B1(n513), .Y(n190) );
  OAI22XL U524 ( .A0(n513), .A1(n437), .B0(n449), .B1(n514), .Y(n189) );
  OAI22XL U525 ( .A0(n514), .A1(n437), .B0(n449), .B1(n515), .Y(n188) );
  OAI22XL U526 ( .A0(n515), .A1(n437), .B0(n449), .B1(n516), .Y(n187) );
  OAI22XL U527 ( .A0(n516), .A1(n437), .B0(n449), .B1(n517), .Y(n186) );
  OAI22XL U528 ( .A0(n517), .A1(n437), .B0(n449), .B1(n518), .Y(n185) );
  OAI22XL U529 ( .A0(n518), .A1(n437), .B0(n449), .B1(n453), .Y(n184) );
  NOR2X1 U530 ( .A(n438), .B(n460), .Y(n182) );
  XOR2X1 U531 ( .A(n454), .B(b[0]), .Y(n519) );
  OAI22XL U532 ( .A0(n522), .A1(n520), .B0(n438), .B1(n523), .Y(n179) );
  OAI22XL U533 ( .A0(n523), .A1(n520), .B0(n438), .B1(n524), .Y(n178) );
  OAI22XL U534 ( .A0(n524), .A1(n520), .B0(n438), .B1(n525), .Y(n177) );
  OAI22XL U535 ( .A0(n525), .A1(n520), .B0(n438), .B1(n526), .Y(n176) );
  OAI22XL U536 ( .A0(n526), .A1(n520), .B0(n438), .B1(n527), .Y(n175) );
  OAI22XL U537 ( .A0(n527), .A1(n520), .B0(n438), .B1(n528), .Y(n174) );
  OAI22XL U538 ( .A0(n528), .A1(n520), .B0(n438), .B1(n529), .Y(n173) );
  OAI22XL U539 ( .A0(n529), .A1(n520), .B0(n438), .B1(n530), .Y(n172) );
  OAI22XL U540 ( .A0(n530), .A1(n520), .B0(n438), .B1(n531), .Y(n171) );
  OAI22XL U541 ( .A0(n531), .A1(n520), .B0(n438), .B1(n454), .Y(n170) );
  NOR2X1 U542 ( .A(n467), .B(n460), .Y(n168) );
  OAI22XL U543 ( .A0(n532), .A1(n441), .B0(n467), .B1(n533), .Y(n167) );
  OAI22XL U544 ( .A0(n534), .A1(n441), .B0(n467), .B1(n535), .Y(n165) );
  OAI22XL U545 ( .A0(n535), .A1(n441), .B0(n467), .B1(n536), .Y(n164) );
  OAI22XL U546 ( .A0(n536), .A1(n441), .B0(n467), .B1(n537), .Y(n163) );
  OAI22XL U547 ( .A0(n537), .A1(n441), .B0(n467), .B1(n538), .Y(n162) );
  OAI22XL U548 ( .A0(n538), .A1(n441), .B0(n467), .B1(n539), .Y(n161) );
  OAI22XL U549 ( .A0(n539), .A1(n441), .B0(n467), .B1(n540), .Y(n160) );
  OAI22XL U550 ( .A0(n540), .A1(n441), .B0(n467), .B1(n541), .Y(n159) );
  OAI22XL U551 ( .A0(n541), .A1(n441), .B0(n467), .B1(n542), .Y(n158) );
  OAI22XL U552 ( .A0(n542), .A1(n441), .B0(n467), .B1(n543), .Y(n157) );
  OAI22XL U553 ( .A0(n543), .A1(n441), .B0(n467), .B1(n459), .Y(n156) );
  NOR2X1 U554 ( .A(n459), .B(n460), .Y(n154) );
  NOR2BX1 U555 ( .AN(b[2]), .B(n459), .Y(n153) );
  NOR2BX1 U556 ( .AN(b[3]), .B(n459), .Y(n152) );
  NOR2BX1 U557 ( .AN(b[5]), .B(n459), .Y(n151) );
  NOR2BX1 U558 ( .AN(b[7]), .B(n459), .Y(n150) );
  NOR2BX1 U559 ( .AN(b[9]), .B(n459), .Y(n149) );
  XOR2X1 U560 ( .A(a[3]), .B(a[2]), .Y(n544) );
  XOR2X1 U561 ( .A(a[5]), .B(a[4]), .Y(n545) );
  XOR2X1 U562 ( .A(a[7]), .B(a[6]), .Y(n546) );
  OAI32X1 U563 ( .A0(n454), .A1(b[0]), .A2(n438), .B0(n454), .B1(n520), .Y(
        n143) );
  XOR2X1 U564 ( .A(a[9]), .B(a[8]), .Y(n547) );
  XOR2X1 U565 ( .A(a[11]), .B(a[10]), .Y(n548) );
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

  ADDFXL U21 ( .A(n134), .B(n133), .CI(n21), .CO(n20), .S(product[6]) );
  ADDHXL U26 ( .A(n147), .B(n237), .CO(n25), .S(product[1]) );
  ADDFXL U28 ( .A(n156), .B(n30), .CI(n31), .CO(n27), .S(n28) );
  CMPR42X1 U30 ( .A(n451), .B(n149), .C(n169), .D(n157), .ICI(n34), .S(n33), 
        .ICO(n31), .CO(n32) );
  CMPR42X1 U31 ( .A(n38), .B(n170), .C(n158), .D(n42), .ICI(n39), .S(n36), 
        .ICO(n34), .CO(n35) );
  CMPR42X1 U33 ( .A(n171), .B(n159), .C(n43), .D(n47), .ICI(n44), .S(n41), 
        .ICO(n39), .CO(n40) );
  ADDFXL U34 ( .A(n150), .B(n450), .CI(n183), .CO(n42), .S(n43) );
  CMPR42X1 U35 ( .A(n184), .B(n54), .C(n55), .D(n48), .ICI(n51), .S(n46), 
        .ICO(n44), .CO(n45) );
  ADDFXL U36 ( .A(n172), .B(n50), .CI(n160), .CO(n47), .S(n48) );
  CMPR42X1 U38 ( .A(n161), .B(n60), .C(n56), .D(n61), .ICI(n57), .S(n53), 
        .ICO(n51), .CO(n52) );
  CMPR42X1 U39 ( .A(n449), .B(n151), .C(n197), .D(n173), .ICI(n185), .S(n56), 
        .ICO(n54), .CO(n55) );
  CMPR42X1 U40 ( .A(n68), .B(n71), .C(n62), .D(n69), .ICI(n65), .S(n59), .ICO(
        n57), .CO(n58) );
  CMPR42X1 U43 ( .A(n79), .B(n72), .C(n77), .D(n70), .ICI(n73), .S(n67), .ICO(
        n65), .CO(n66) );
  CMPR42X1 U44 ( .A(n175), .B(n199), .C(n187), .D(n163), .ICI(n76), .S(n70), 
        .ICO(n68), .CO(n69) );
  ADDFXL U45 ( .A(n152), .B(n448), .CI(n211), .CO(n71), .S(n72) );
  CMPR42X1 U46 ( .A(n80), .B(n89), .C(n87), .D(n78), .ICI(n83), .S(n75), .ICO(
        n73), .CO(n74) );
  CMPR42X1 U47 ( .A(n176), .B(n212), .C(n200), .D(n164), .ICI(n86), .S(n78), 
        .ICO(n76), .CO(n77) );
  ADDFXL U48 ( .A(n91), .B(n153), .CI(n188), .CO(n79), .S(n80) );
  CMPR42X1 U50 ( .A(n90), .B(n98), .C(n96), .D(n88), .ICI(n92), .S(n85), .ICO(
        n83), .CO(n84) );
  CMPR42X1 U51 ( .A(n177), .B(n201), .C(n189), .D(n165), .ICI(n95), .S(n88), 
        .ICO(n86), .CO(n87) );
  ADDFXL U52 ( .A(n458), .B(n91), .CI(n213), .CO(n89), .S(n90) );
  CMPR42X1 U54 ( .A(n106), .B(n99), .C(n104), .D(n97), .ICI(n100), .S(n94), 
        .ICO(n92), .CO(n93) );
  CMPR42X1 U55 ( .A(n214), .B(n166), .C(n202), .D(n190), .ICI(n103), .S(n97), 
        .ICO(n95), .CO(n96) );
  ADDFXL U56 ( .A(n178), .B(n154), .CI(n226), .CO(n98), .S(n99) );
  CMPR42X1 U57 ( .A(n203), .B(n107), .C(n112), .D(n105), .ICI(n108), .S(n102), 
        .ICO(n100), .CO(n101) );
  CMPR42X1 U58 ( .A(n227), .B(n179), .C(n215), .D(n191), .ICI(n111), .S(n105), 
        .ICO(n103), .CO(n104) );
  CMPR42X1 U60 ( .A(n204), .B(n119), .C(n113), .D(n117), .ICI(n114), .S(n110), 
        .ICO(n108), .CO(n109) );
  CMPR42X1 U61 ( .A(n168), .B(n438), .C(n228), .D(n216), .ICI(n180), .S(n113), 
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
  CMPR42X1 U69 ( .A(n196), .B(n232), .C(n220), .D(n208), .ICI(n136), .S(n133), 
        .ICO(n131), .CO(n132) );
  OAI22X1 U322 ( .A0(n467), .A1(n439), .B0(n468), .B1(n459), .Y(n236) );
  NAND2X6 U323 ( .A(n447), .B(n545), .Y(n435) );
  INVX4 U324 ( .A(n446), .Y(n465) );
  ADDFHX4 U325 ( .A(n221), .B(n233), .CI(n137), .CO(n134), .S(n135) );
  OAI22X1 U326 ( .A0(n470), .A1(n466), .B0(n471), .B1(n459), .Y(n233) );
  OAI22X1 U327 ( .A0(n482), .A1(n480), .B0(n478), .B1(n483), .Y(n221) );
  OAI22X4 U328 ( .A0(n493), .A1(n437), .B0(n492), .B1(n494), .Y(n209) );
  OAI32X1 U329 ( .A0(n456), .A1(b[0]), .A2(n492), .B0(n456), .B1(n437), .Y(
        n145) );
  OAI22X2 U330 ( .A0(n494), .A1(n437), .B0(n492), .B1(n495), .Y(n208) );
  NAND2X8 U331 ( .A(n492), .B(n544), .Y(n437) );
  CLKINVX6 U332 ( .A(a[4]), .Y(n443) );
  INVX8 U333 ( .A(a[9]), .Y(n454) );
  XOR2X1 U334 ( .A(b[1]), .B(n456), .Y(n494) );
  XOR2X1 U335 ( .A(b[5]), .B(n458), .Y(n471) );
  XOR2X1 U336 ( .A(b[6]), .B(n458), .Y(n472) );
  XOR2X1 U337 ( .A(b[2]), .B(n456), .Y(n495) );
  INVX8 U338 ( .A(a[7]), .Y(n455) );
  ADDFX2 U339 ( .A(n234), .B(n210), .CI(n222), .CO(n138), .S(n139) );
  INVX8 U340 ( .A(a[3]), .Y(n457) );
  XOR2X1 U341 ( .A(b[2]), .B(n458), .Y(n468) );
  NAND2X4 U342 ( .A(a[1]), .B(n459), .Y(n439) );
  AND2X2 U343 ( .A(n434), .B(n547), .Y(n446) );
  OAI21XL U344 ( .A0(b[0]), .A1(n458), .B0(n466), .Y(n147) );
  ADDFHX2 U345 ( .A(n135), .B(n138), .CI(n22), .CO(n21), .S(product[5]) );
  NAND2X6 U346 ( .A(a[1]), .B(n459), .Y(n466) );
  CLKXOR2X2 U347 ( .A(b[3]), .B(n458), .Y(n469) );
  OAI22X1 U348 ( .A0(n519), .A1(n436), .B0(n518), .B1(n520), .Y(n181) );
  XOR2X1 U349 ( .A(b[4]), .B(n456), .Y(n497) );
  INVX12 U350 ( .A(a[11]), .Y(n453) );
  OAI22X1 U351 ( .A0(n509), .A1(n435), .B0(n447), .B1(n510), .Y(n192) );
  CLKXOR2X4 U352 ( .A(a[10]), .B(n454), .Y(n434) );
  NAND2X4 U353 ( .A(n518), .B(n546), .Y(n436) );
  XOR2X1 U354 ( .A(b[4]), .B(n457), .Y(n484) );
  OAI22XL U355 ( .A0(n495), .A1(n437), .B0(n492), .B1(n496), .Y(n207) );
  ADDFHX4 U356 ( .A(n40), .B(n36), .CI(n7), .CO(n6), .S(product[20]) );
  ADDFHX4 U357 ( .A(n41), .B(n45), .CI(n8), .CO(n7), .S(product[19]) );
  BUFX3 U358 ( .A(n192), .Y(n438) );
  ADDFHX4 U359 ( .A(n116), .B(n122), .CI(n18), .CO(n17), .S(product[9]) );
  ADDFHX4 U360 ( .A(n123), .B(n127), .CI(n19), .CO(n18), .S(product[8]) );
  ADDFHX4 U361 ( .A(n52), .B(n46), .CI(n9), .CO(n8), .S(product[18]) );
  ADDFHX4 U362 ( .A(n53), .B(n58), .CI(n10), .CO(n9), .S(product[17]) );
  OAI22X1 U363 ( .A0(n469), .A1(n466), .B0(n470), .B1(n459), .Y(n234) );
  OAI22X1 U364 ( .A0(n471), .A1(n439), .B0(n472), .B1(n459), .Y(n232) );
  ADDFHX2 U365 ( .A(n236), .B(n224), .CI(n25), .CO(n24), .S(product[2]) );
  OAI22X1 U366 ( .A0(n468), .A1(n466), .B0(n469), .B1(n459), .Y(n235) );
  XOR2X4 U367 ( .A(b[1]), .B(n458), .Y(n467) );
  OAI22X1 U368 ( .A0(n481), .A1(n480), .B0(n478), .B1(n482), .Y(n222) );
  CLKXOR2X1 U369 ( .A(b[2]), .B(n457), .Y(n482) );
  OAI22X1 U370 ( .A0(n483), .A1(n480), .B0(n478), .B1(n484), .Y(n220) );
  XOR2X1 U371 ( .A(b[3]), .B(n457), .Y(n483) );
  OAI22X2 U372 ( .A0(n479), .A1(n480), .B0(n478), .B1(n481), .Y(n223) );
  XOR2X1 U373 ( .A(b[1]), .B(n457), .Y(n481) );
  INVX8 U374 ( .A(a[0]), .Y(n459) );
  INVX16 U375 ( .A(a[5]), .Y(n456) );
  XOR2X4 U376 ( .A(n443), .B(n457), .Y(n442) );
  ADDHX1 U377 ( .A(n235), .B(n223), .CO(n140), .S(n141) );
  INVX12 U378 ( .A(n442), .Y(n492) );
  ADDFHX2 U379 ( .A(n141), .B(n146), .CI(n24), .CO(n23), .S(product[3]) );
  CLKINVX8 U380 ( .A(n444), .Y(n518) );
  XOR2X2 U381 ( .A(n445), .B(n455), .Y(n444) );
  CLKINVX12 U382 ( .A(n441), .Y(n478) );
  XNOR2X4 U383 ( .A(a[2]), .B(n458), .Y(n441) );
  XOR2X4 U384 ( .A(b[4]), .B(n458), .Y(n470) );
  CLKINVX12 U385 ( .A(a[1]), .Y(n458) );
  XOR2X4 U386 ( .A(n30), .B(n462), .Y(n461) );
  XNOR2X4 U387 ( .A(n4), .B(n27), .Y(n462) );
  ADDFHX4 U388 ( .A(n28), .B(n32), .CI(n5), .CO(n4), .S(product[22]) );
  CMPR42X1 U389 ( .A(n64), .B(n174), .C(n186), .D(n162), .ICI(n198), .S(n62), 
        .ICO(n60), .CO(n61) );
  INVX16 U390 ( .A(n440), .Y(n480) );
  INVX3 U391 ( .A(b[0]), .Y(n452) );
  OAI22XL U392 ( .A0(n506), .A1(n435), .B0(n447), .B1(n507), .Y(n195) );
  CLKINVX8 U393 ( .A(a[8]), .Y(n445) );
  INVXL U394 ( .A(n91), .Y(n448) );
  INVXL U395 ( .A(n50), .Y(n450) );
  ADDFHX2 U396 ( .A(n59), .B(n66), .CI(n11), .CO(n10), .S(product[16]) );
  ADDFHX2 U397 ( .A(n67), .B(n74), .CI(n12), .CO(n11), .S(product[15]) );
  ADDFHX2 U398 ( .A(n75), .B(n84), .CI(n13), .CO(n12), .S(product[14]) );
  ADDFHX2 U399 ( .A(n85), .B(n93), .CI(n14), .CO(n13), .S(product[13]) );
  ADDFHX2 U400 ( .A(n94), .B(n101), .CI(n15), .CO(n14), .S(product[12]) );
  ADDFHX2 U401 ( .A(n102), .B(n109), .CI(n16), .CO(n15), .S(product[11]) );
  ADDFHX2 U402 ( .A(n110), .B(n115), .CI(n17), .CO(n16), .S(product[10]) );
  ADDFHX2 U403 ( .A(n128), .B(n132), .CI(n20), .CO(n19), .S(product[7]) );
  XOR2X4 U404 ( .A(n460), .B(n461), .Y(product[23]) );
  ADDFHX2 U405 ( .A(n139), .B(n140), .CI(n23), .CO(n22), .S(product[4]) );
  ADDFHX2 U406 ( .A(n35), .B(n33), .CI(n6), .CO(n5), .S(product[21]) );
  AND2X8 U407 ( .A(n478), .B(n543), .Y(n440) );
  ADDHX1 U408 ( .A(n209), .B(n145), .CO(n136), .S(n137) );
  XOR2XL U409 ( .A(n456), .B(b[0]), .Y(n493) );
  ADDHX1 U410 ( .A(n195), .B(n144), .CO(n129), .S(n130) );
  OAI32XL U411 ( .A0(n455), .A1(b[0]), .A2(n447), .B0(n455), .B1(n435), .Y(
        n144) );
  XOR2XL U412 ( .A(n455), .B(b[0]), .Y(n506) );
  BUFX12 U413 ( .A(n505), .Y(n447) );
  CLKXOR2X2 U414 ( .A(a[6]), .B(n456), .Y(n505) );
  XOR2XL U415 ( .A(b[1]), .B(n455), .Y(n507) );
  ADDHX1 U416 ( .A(n167), .B(n142), .CO(n106), .S(n107) );
  OAI32XL U417 ( .A0(n453), .A1(b[0]), .A2(n434), .B0(n453), .B1(n465), .Y(
        n142) );
  XOR2XL U418 ( .A(n452), .B(a[11]), .Y(n531) );
  XOR2XL U419 ( .A(b[3]), .B(n456), .Y(n496) );
  XOR2XL U420 ( .A(b[5]), .B(n457), .Y(n485) );
  XOR2XL U421 ( .A(b[6]), .B(n457), .Y(n486) );
  XOR2XL U422 ( .A(b[1]), .B(n454), .Y(n520) );
  XOR2XL U423 ( .A(b[2]), .B(n455), .Y(n508) );
  XOR2XL U424 ( .A(b[5]), .B(n456), .Y(n498) );
  XOR2XL U425 ( .A(b[3]), .B(n455), .Y(n509) );
  XOR2XL U426 ( .A(b[4]), .B(n455), .Y(n510) );
  XOR2XL U427 ( .A(b[7]), .B(n457), .Y(n487) );
  XOR2XL U428 ( .A(b[7]), .B(n458), .Y(n473) );
  XOR2XL U429 ( .A(b[8]), .B(n458), .Y(n474) );
  XOR2XL U430 ( .A(b[8]), .B(n457), .Y(n488) );
  XOR2XL U431 ( .A(b[2]), .B(n454), .Y(n521) );
  XOR2XL U432 ( .A(b[3]), .B(n454), .Y(n522) );
  XOR2XL U433 ( .A(b[6]), .B(n456), .Y(n499) );
  XOR2XL U434 ( .A(b[9]), .B(n457), .Y(n489) );
  XOR2XL U435 ( .A(b[5]), .B(n455), .Y(n511) );
  XOR2XL U436 ( .A(b[4]), .B(n454), .Y(n523) );
  XOR2XL U437 ( .A(b[10]), .B(n458), .Y(n476) );
  XOR2XL U438 ( .A(b[9]), .B(n458), .Y(n475) );
  XOR2XL U439 ( .A(b[11]), .B(n458), .Y(n477) );
  XOR2XL U440 ( .A(b[1]), .B(n453), .Y(n532) );
  XOR2XL U441 ( .A(b[10]), .B(n457), .Y(n490) );
  XOR2XL U442 ( .A(b[7]), .B(n456), .Y(n500) );
  XOR2XL U443 ( .A(b[8]), .B(n456), .Y(n501) );
  XOR2XL U444 ( .A(b[6]), .B(n455), .Y(n512) );
  XOR2XL U445 ( .A(b[9]), .B(n456), .Y(n502) );
  XOR2XL U446 ( .A(b[11]), .B(n457), .Y(n491) );
  XOR2XL U447 ( .A(b[5]), .B(n454), .Y(n524) );
  XOR2XL U448 ( .A(b[7]), .B(n455), .Y(n513) );
  XOR2XL U449 ( .A(b[2]), .B(n453), .Y(n533) );
  XOR2XL U450 ( .A(b[3]), .B(n453), .Y(n534) );
  AO21XL U451 ( .A0(n480), .A1(n478), .B0(n457), .Y(n211) );
  XOR2XL U452 ( .A(b[8]), .B(n455), .Y(n514) );
  XOR2XL U453 ( .A(b[6]), .B(n454), .Y(n525) );
  XOR2XL U454 ( .A(b[10]), .B(n456), .Y(n503) );
  XOR2XL U455 ( .A(b[11]), .B(n456), .Y(n504) );
  XOR2XL U456 ( .A(b[7]), .B(n454), .Y(n526) );
  XOR2XL U457 ( .A(b[9]), .B(n455), .Y(n515) );
  XOR2XL U458 ( .A(b[8]), .B(n454), .Y(n527) );
  XOR2XL U459 ( .A(b[4]), .B(n453), .Y(n535) );
  XOR2XL U460 ( .A(b[5]), .B(n453), .Y(n536) );
  NAND2XL U461 ( .A(b[1]), .B(a[11]), .Y(n91) );
  XOR2XL U462 ( .A(b[10]), .B(n455), .Y(n516) );
  XOR2XL U463 ( .A(b[9]), .B(n454), .Y(n528) );
  XOR2XL U464 ( .A(b[6]), .B(n453), .Y(n537) );
  AO21XL U465 ( .A0(n435), .A1(n447), .B0(n455), .Y(n183) );
  XOR2XL U466 ( .A(b[11]), .B(n455), .Y(n517) );
  XOR2XL U467 ( .A(b[10]), .B(n454), .Y(n529) );
  XOR2XL U468 ( .A(b[8]), .B(n453), .Y(n539) );
  XOR2XL U469 ( .A(b[7]), .B(n453), .Y(n538) );
  NAND2XL U470 ( .A(b[4]), .B(a[11]), .Y(n64) );
  AO21XL U471 ( .A0(n436), .A1(n518), .B0(n454), .Y(n169) );
  XOR2XL U472 ( .A(b[11]), .B(n454), .Y(n530) );
  XOR2XL U473 ( .A(b[9]), .B(n453), .Y(n540) );
  NAND2XL U474 ( .A(b[6]), .B(a[11]), .Y(n50) );
  XOR2XL U475 ( .A(b[11]), .B(n453), .Y(n542) );
  XOR2XL U476 ( .A(b[10]), .B(n453), .Y(n541) );
  NAND2XL U477 ( .A(b[8]), .B(a[11]), .Y(n38) );
  NAND2XL U478 ( .A(b[10]), .B(a[11]), .Y(n30) );
  AND2XL U479 ( .A(b[11]), .B(a[11]), .Y(n464) );
  CLKINVX1 U480 ( .A(n64), .Y(n449) );
  CLKINVX1 U481 ( .A(n38), .Y(n451) );
  XOR2X1 U482 ( .A(n463), .B(n464), .Y(n460) );
  AO21X1 U483 ( .A0(n465), .A1(n434), .B0(n453), .Y(n463) );
  NOR2X1 U484 ( .A(n459), .B(n452), .Y(product[0]) );
  OAI22XL U485 ( .A0(b[0]), .A1(n466), .B0(n467), .B1(n459), .Y(n237) );
  OAI22XL U486 ( .A0(n472), .A1(n439), .B0(n473), .B1(n459), .Y(n231) );
  OAI22XL U487 ( .A0(n473), .A1(n439), .B0(n474), .B1(n459), .Y(n230) );
  OAI22XL U488 ( .A0(n474), .A1(n439), .B0(n475), .B1(n459), .Y(n229) );
  OAI22XL U489 ( .A0(n475), .A1(n439), .B0(n476), .B1(n459), .Y(n228) );
  OAI22XL U490 ( .A0(n476), .A1(n439), .B0(n477), .B1(n459), .Y(n227) );
  OAI22XL U491 ( .A0(n477), .A1(n439), .B0(n458), .B1(n459), .Y(n226) );
  NOR2X1 U492 ( .A(n478), .B(n452), .Y(n224) );
  XOR2X1 U493 ( .A(n457), .B(b[0]), .Y(n479) );
  OAI22XL U494 ( .A0(n484), .A1(n480), .B0(n478), .B1(n485), .Y(n219) );
  OAI22XL U495 ( .A0(n485), .A1(n480), .B0(n478), .B1(n486), .Y(n218) );
  OAI22XL U496 ( .A0(n486), .A1(n480), .B0(n478), .B1(n487), .Y(n217) );
  OAI22XL U497 ( .A0(n487), .A1(n480), .B0(n478), .B1(n488), .Y(n216) );
  OAI22XL U498 ( .A0(n488), .A1(n480), .B0(n478), .B1(n489), .Y(n215) );
  OAI22XL U499 ( .A0(n489), .A1(n480), .B0(n478), .B1(n490), .Y(n214) );
  OAI22XL U500 ( .A0(n490), .A1(n480), .B0(n478), .B1(n491), .Y(n213) );
  OAI22XL U501 ( .A0(n491), .A1(n480), .B0(n478), .B1(n457), .Y(n212) );
  NOR2X1 U502 ( .A(n492), .B(n452), .Y(n210) );
  OAI22XL U503 ( .A0(n496), .A1(n437), .B0(n492), .B1(n497), .Y(n206) );
  OAI22XL U504 ( .A0(n497), .A1(n437), .B0(n492), .B1(n498), .Y(n205) );
  OAI22XL U505 ( .A0(n498), .A1(n437), .B0(n492), .B1(n499), .Y(n204) );
  OAI22XL U506 ( .A0(n499), .A1(n437), .B0(n492), .B1(n500), .Y(n203) );
  OAI22XL U507 ( .A0(n500), .A1(n437), .B0(n492), .B1(n501), .Y(n202) );
  OAI22XL U508 ( .A0(n501), .A1(n437), .B0(n492), .B1(n502), .Y(n201) );
  OAI22XL U509 ( .A0(n502), .A1(n437), .B0(n492), .B1(n503), .Y(n200) );
  OAI22XL U510 ( .A0(n503), .A1(n437), .B0(n492), .B1(n504), .Y(n199) );
  OAI22XL U511 ( .A0(n504), .A1(n437), .B0(n492), .B1(n456), .Y(n198) );
  AO21X1 U512 ( .A0(n437), .A1(n492), .B0(n456), .Y(n197) );
  NOR2X1 U513 ( .A(n447), .B(n452), .Y(n196) );
  OAI22XL U514 ( .A0(n507), .A1(n435), .B0(n447), .B1(n508), .Y(n194) );
  OAI22XL U515 ( .A0(n508), .A1(n435), .B0(n447), .B1(n509), .Y(n193) );
  OAI22XL U516 ( .A0(n510), .A1(n435), .B0(n447), .B1(n511), .Y(n191) );
  OAI22XL U517 ( .A0(n511), .A1(n435), .B0(n447), .B1(n512), .Y(n190) );
  OAI22XL U518 ( .A0(n512), .A1(n435), .B0(n447), .B1(n513), .Y(n189) );
  OAI22XL U519 ( .A0(n513), .A1(n435), .B0(n447), .B1(n514), .Y(n188) );
  OAI22XL U520 ( .A0(n514), .A1(n435), .B0(n447), .B1(n515), .Y(n187) );
  OAI22XL U521 ( .A0(n515), .A1(n435), .B0(n447), .B1(n516), .Y(n186) );
  OAI22XL U522 ( .A0(n516), .A1(n435), .B0(n447), .B1(n517), .Y(n185) );
  OAI22XL U523 ( .A0(n517), .A1(n435), .B0(n447), .B1(n455), .Y(n184) );
  NOR2X1 U524 ( .A(n518), .B(n452), .Y(n182) );
  XOR2X1 U525 ( .A(n454), .B(b[0]), .Y(n519) );
  OAI22XL U526 ( .A0(n520), .A1(n436), .B0(n518), .B1(n521), .Y(n180) );
  OAI22XL U527 ( .A0(n521), .A1(n436), .B0(n518), .B1(n522), .Y(n179) );
  OAI22XL U528 ( .A0(n522), .A1(n436), .B0(n518), .B1(n523), .Y(n178) );
  OAI22XL U529 ( .A0(n523), .A1(n436), .B0(n518), .B1(n524), .Y(n177) );
  OAI22XL U530 ( .A0(n524), .A1(n436), .B0(n518), .B1(n525), .Y(n176) );
  OAI22XL U531 ( .A0(n525), .A1(n436), .B0(n518), .B1(n526), .Y(n175) );
  OAI22XL U532 ( .A0(n526), .A1(n436), .B0(n518), .B1(n527), .Y(n174) );
  OAI22XL U533 ( .A0(n527), .A1(n436), .B0(n518), .B1(n528), .Y(n173) );
  OAI22XL U534 ( .A0(n528), .A1(n436), .B0(n518), .B1(n529), .Y(n172) );
  OAI22XL U535 ( .A0(n529), .A1(n436), .B0(n518), .B1(n530), .Y(n171) );
  OAI22XL U536 ( .A0(n530), .A1(n436), .B0(n518), .B1(n454), .Y(n170) );
  NOR2X1 U537 ( .A(n434), .B(n452), .Y(n168) );
  OAI22XL U538 ( .A0(n531), .A1(n465), .B0(n434), .B1(n532), .Y(n167) );
  OAI22XL U539 ( .A0(n532), .A1(n465), .B0(n434), .B1(n533), .Y(n166) );
  OAI22XL U540 ( .A0(n533), .A1(n465), .B0(n434), .B1(n534), .Y(n165) );
  OAI22XL U541 ( .A0(n534), .A1(n465), .B0(n434), .B1(n535), .Y(n164) );
  OAI22XL U542 ( .A0(n535), .A1(n465), .B0(n434), .B1(n536), .Y(n163) );
  OAI22XL U543 ( .A0(n536), .A1(n465), .B0(n434), .B1(n537), .Y(n162) );
  OAI22XL U544 ( .A0(n537), .A1(n465), .B0(n434), .B1(n538), .Y(n161) );
  OAI22XL U545 ( .A0(n538), .A1(n465), .B0(n434), .B1(n539), .Y(n160) );
  OAI22XL U546 ( .A0(n539), .A1(n465), .B0(n434), .B1(n540), .Y(n159) );
  OAI22XL U547 ( .A0(n540), .A1(n465), .B0(n434), .B1(n541), .Y(n158) );
  OAI22XL U548 ( .A0(n541), .A1(n465), .B0(n434), .B1(n542), .Y(n157) );
  OAI22XL U549 ( .A0(n542), .A1(n465), .B0(n434), .B1(n453), .Y(n156) );
  NOR2X1 U550 ( .A(n453), .B(n452), .Y(n154) );
  NOR2BX1 U551 ( .AN(b[2]), .B(n453), .Y(n153) );
  NOR2BX1 U552 ( .AN(b[3]), .B(n453), .Y(n152) );
  NOR2BX1 U553 ( .AN(b[5]), .B(n453), .Y(n151) );
  NOR2BX1 U554 ( .AN(b[7]), .B(n453), .Y(n150) );
  NOR2BX1 U555 ( .AN(b[9]), .B(n453), .Y(n149) );
  OAI32X1 U556 ( .A0(n457), .A1(b[0]), .A2(n478), .B0(n457), .B1(n480), .Y(
        n146) );
  XOR2X1 U557 ( .A(a[3]), .B(a[2]), .Y(n543) );
  XOR2X1 U558 ( .A(a[5]), .B(a[4]), .Y(n544) );
  XOR2X1 U559 ( .A(a[7]), .B(a[6]), .Y(n545) );
  OAI32X1 U560 ( .A0(n454), .A1(b[0]), .A2(n518), .B0(n454), .B1(n436), .Y(
        n143) );
  XOR2X1 U561 ( .A(a[9]), .B(a[8]), .Y(n546) );
  XOR2X1 U562 ( .A(a[11]), .B(a[10]), .Y(n547) );
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
         N580, N581, N582, N583, N584, N585, N586, N602, N604, N672, N673,
         N674, N675, N676, N677, N678, N679, N680, N681, N682, N683, N709,
         N710, N711, N712, N713, N714, N715, N716, N717, N718, N719, N720,
         N746, N747, N748, N749, N750, N751, N752, N753, N754, N755, N756,
         N757, N879, N880, N881, N882, N883, N884, N885, N886, N887, N888,
         N889, N890, N891, N892, N893, N894, N895, N896, N897, N898, N899,
         N900, N901, N902, N903, N904, N905, N906, N907, N908, N909, N916,
         N917, N918, N919, N920, N921, N922, N923, N924, N925, N926, N927,
         N928, N929, N930, N931, N932, N933, N934, N935, N936, N937, N938,
         N939, N940, N941, N942, N943, N944, N945, N946, N1518, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n140,
         n141, n146, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, N671,
         N670, N669, N668, N667, N666, N665, N664, N663, N662, N661, N660,
         N708, N707, N706, N705, N704, N703, N702, N701, N700, N699, N698,
         N697, N745, N744, N743, N742, N741, N740, N739, N738, N737, N736,
         N735, N734, N598, N597, N596, N595, N594, N593, N592, N591, N590,
         N589, N588, N587, N417, N416, N415, N414, N413, N412, N411, N410,
         N409, N408, N407, N406, N405, N404, N403, N402, N401, N400, N399,
         N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388,
         N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, N377,
         N376, N375, N374, N373, N372, N371, N370, N369, N368, N367, N366,
         N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355,
         N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344,
         N343, N342, N341, N340, N339, N338, N337, N336, N335, N334, N333,
         N332, N331, N330, N329, N328, N327, N326, N525, N524, N523, N522,
         N521, N520, N519, N518, N517, N516, N515, N514, N513, N512, N511,
         N510, N509, N508, N507, N506, N504, N503, N502, N501, N500, N499,
         N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, N488,
         N487, N486, N485, N484, N482, n1767, n1768, n1769, n1770, n1771,
         n1772, n1773, n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781,
         n1782, n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792, n1793,
         n1794, n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802, n1803,
         n1804, n1805, n1806, n1807, n1808, n1809, n1810, n1811, n1812, n1813,
         n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822, n1823,
         n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832, n1833,
         n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842, n1843,
         n1844, n1845, n1846, n1847, n1848, n1849, n1850, n1851, n1852, n1853,
         n1854, n1855, n1856, n1857, n1858, n1859, n1860, n1861, n1862, n1863,
         n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, n1872, n1873,
         n1874, n1875, n1876, n1877, n1878, n1879, n1880, n1881, n1882, n1883,
         n1884, n1885, n1886, n1887, n1888, n1889, n1890, n1891, n1892, n1893,
         n1894, n1895, n1896, n1897, n1898, n1899, n1900, n1901, n1902, n1903,
         n1904, n1905, n1906, n1907, n1908, n1909, n1910, n1911, n1912, n1913,
         n1914, n1915, n1916, n1917, n1918, n1919, n1920, n1921, n1922, n1923,
         n1924, n1925, n1926, n1927, n1928, n1929, n1930, n1931, n1932, n1933,
         n1934, n1935, n1936, n1937, n1938, n1939, n1940, n1941, n1942, n1943,
         n1944, n1945, n1946, n1947, n1948, n1949, n1950, n1951, n1952, n1953,
         n1954, n1955, n1956, n1957, n1958, n1959, n1960, n1961, n1962, n1963,
         n1964, n1965, n1966, n1967, n1968, n1969, n1970, n1971, n1972, n1973,
         n1974, n1975, n1976, n1977, n1978, n1979, n1980, n1981, n1982, n1983,
         n1984, n1985, n1986, n1987, n1988, n1989, n1990, n1991, n1992, n1993,
         n1994, n1995, n1996, n1997, n1998, n1999, n2000, n2001, n2002, n2003,
         n2004, n2005, n2006, n2007, n2008, n2009, n2010, n2011, n2012, n2013,
         n2014, n2015, n2016, n2017, n2018, n2019, n2020, n2021, n2022, n2023,
         n2024, n2025, n2026, n2027, n2028, n2029, n2030, n2031, n2032, n2033,
         n2034, n2035, n2036, n2037, n2038, n2039, n2040, n2041, n2042, n2043,
         n2044, n2045, n2046, n2047, n2048, n2049, n2050, n2051, n2052, n2053,
         n2054, n2055, n2056, n2057, n2058, n2059, n2060, n2061, n2062, n2063,
         n2064, n2065, n2066, n2067, n2068, n2069, n2070, n2071, n2072, n2073,
         n2074, n2075, n2076, n2077, n2078, n2079, n2080, n2081, n2082, n2083,
         n2084, n2085, n2086, n2087, n2088, n2089, n2090, n2091, n2092, n2093,
         n2094, n2095, n2096, n2097, n2098, n2099, n2100, n2101, n2102, n2103,
         n2104, n2105, n2106, n2107, n2108, n2109, n2110, n2111, n2112, n2113,
         n2114, n2115, n2116, n2117, n2118, n2119, n2120, n2121, n2122, n2123,
         n2124, n2125, n2126, n2127, n2128, n2129, n2130, n2131, n2132, n2133,
         n2134, n2135, n2136, n2137, n2138, n2139, n2140, n2141, n2142, n2143,
         n2144, n2145, n2146, n2147, n2148, n2149, n2150, n2151, n2152, n2153,
         n2154, n2155, n2156, n2157, n2158, n2159, n2160, n2161, n2162;
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

  DFFRX4 \s1_ff_reg[11]  ( .D(n760), .CK(clk), .RN(n1961), .Q(s1_ff[11]) );
  DFFRX4 \s0_ff_reg[0]  ( .D(n772), .CK(clk), .RN(n1965), .Q(s0_ff[0]) );
  DW_sqrt_inst sqrt ( .radicand(radicand_in), .square_root(dis_a) );
  geofence_DW_cmp_0 gt_126 ( .A(hero_area_temp), .B(polygon_area_actual), .TC(
        1'b1), .GE_LT(1'b0), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(N602) );
  geofence_DW01_sub_0 sub_103 ( .A({1'b0, n1770, n1786, s[8], n1785, s[6:0]}), 
        .B({1'b0, N899, N900, N901, N902, N903, N904, N905, N906, N907, N908, 
        N909}), .CI(1'b0), .DIFF(s2) );
  geofence_DW01_sub_1 sub_102 ( .A({1'b0, n1770, n1786, s[8], n1785, s[6:0]}), 
        .B({1'b0, N936, N937, N938, N939, N940, N941, N942, N943, N944, N945, 
        N946}), .CI(1'b0), .DIFF(s1) );
  geofence_DW01_sub_2 sub_101 ( .A({1'b0, n1770, n1786, s[8], n1785, s[6:0]}), 
        .B(dis_a), .CI(1'b0), .DIFF(s0) );
  geofence_DW01_add_0 add_div_94 ( .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N586}), .B({polygon_area[23], 
        polygon_area[23:1]}), .CI(1'b0), .SUM(polygon_area_actual) );
  geofence_DW01_sub_3 sub_93 ( .A(polygon_area), .B({n2058, cross_result[22:0]}), .CI(1'b0), .DIFF(polygon_area_temp) );
  geofence_DW01_add_1 add_92 ( .A(hero_area), .B(s_mul_out), .CI(1'b0), .SUM(
        hero_area_temp) );
  geofence_DW01_sub_4 sub_74 ( .A({1'b0, N926, N927, N928, N929, N930, N931, 
        N932, N933, N934, N935}), .B({1'b0, N889, N890, N891, N892, N893, N894, 
        N895, N896, N897, N898}), .CI(1'b0), .DIFF({loc_a_dis_y_11, 
        loc_a_dis_y}) );
  geofence_DW01_sub_5 sub_73 ( .A({1'b0, N916, N917, N918, N919, N920, N921, 
        N922, N923, N924, N925}), .B({1'b0, N879, N880, N881, N882, N883, N884, 
        N885, N886, N887, N888}), .CI(1'b0), .DIFF({loc_a_dis_x_11, 
        loc_a_dis_x}) );
  geofence_DW01_inc_0 add_0_root_add_194_ni ( .A({N660, N661, N662, N663, N664, 
        N665, N666, N667, N668, N669, N670, N671}), .SUM({N683, N682, N681, 
        N680, N679, N678, N677, N676, N675, N674, N673, N672}) );
  geofence_DW01_inc_1 add_0_root_add_195_ni ( .A({N697, N698, N699, N700, N701, 
        N702, N703, N704, N705, N706, N707, N708}), .SUM({N720, N719, N718, 
        N717, N716, N715, N714, N713, N712, N711, N710, N709}) );
  geofence_DW01_inc_2 add_0_root_add_196_ni ( .A({N734, N735, N736, N737, N738, 
        N739, N740, N741, N742, N743, N744, N745}), .SUM({N757, N756, N755, 
        N754, N753, N752, N751, N750, N749, N748, N747, N746}) );
  geofence_DW01_add_4 add_1_root_add_0_root_add_100_2 ( .A({1'b0, N936, N937, 
        N938, N939, N940, N941, N942, N943, N944, N945, N946}), .B({1'b0, N899, 
        N900, N901, N902, N903, N904, N905, N906, N907, N908, N909}), .CI(1'b0), .SUM({N598, N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587}) );
  geofence_DW01_add_3 add_0_root_add_0_root_add_100_2 ( .A({N598, N597, N596, 
        N595, N594, N593, N592, N591, N590, N589, N588, N587}), .B(dis_a), 
        .CI(1'b0), .SUM({s, SYNOPSYS_UNCONNECTED__0}) );
  geofence_DW01_sub_10 sub_67_4 ( .A({1'b0, N926, N927, N928, N929, N930, N931, 
        N932, N933, N934, N935}), .B({1'b0, ref_y}), .CI(1'b0), .DIFF({N393, 
        N392, N391, N390, N389, N388, N387, N386, N385, N384, N383}) );
  geofence_DW01_sub_9 sub_67_2 ( .A({1'b0, N889, N890, N891, N892, N893, N894, 
        N895, N896, N897, N898}), .B({1'b0, ref_y}), .CI(1'b0), .DIFF({N347, 
        N346, N345, N344, N343, N342, N341, N340, N339, N338, N337}) );
  geofence_DW01_sub_8 sub_67_3 ( .A({1'b0, N879, N880, N881, N882, N883, N884, 
        N885, N886, N887, N888}), .B({1'b0, ref_x}), .CI(1'b0), .DIFF({N382, 
        N381, N380, N379, N378, N377, N376, N375, N374, N373, N372}) );
  geofence_DW01_sub_7 sub_67 ( .A({1'b0, N916, N917, N918, N919, N920, N921, 
        N922, N923, N924, N925}), .B({1'b0, ref_x}), .CI(1'b0), .DIFF({N336, 
        N335, N334, N333, N332, N331, N330, N329, N328, N327, N326}) );
  geofence_DW_mult_uns_3 mult_67_2 ( .a({N382, N382, N382, N382, N382, N382, 
        N382, N382, N382, N382, N382, N382, N382, N382, N381, N380, N379, N378, 
        N377, N376, N375, N374, N373, N372}), .b({n1945, n1945, n1945, n1945, 
        n1945, n1945, n1945, n1945, n1945, n1945, n1945, n1945, n1945, n1945, 
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
        N331, N330, N329, N328, N327, N326}), .b({n1946, n1946, n1946, n1946, 
        n1946, n1946, n1946, n1946, n1946, n1946, n1946, n1946, n1946, n1946, 
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
  geofence_DW01_sub_6 sub_67_5 ( .A({N371, N370, N369, N368, N367, N366, N365, 
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
  geofence_DW01_add_2 add_76 ( .A({N503, N503, N502, N501, N500, N499, N498, 
        N497, N496, N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, 
        N485, N484, 1'b0, N482}), .B({N525, N525, N524, N523, N522, N521, N520, 
        N519, N518, N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, 
        N507, N506, 1'b0, N504}), .CI(1'b0), .SUM({dis_a_square_23, 
        dis_a_square}) );
  geofence_DW_mult_uns_1 mult_89 ( .a(s1_ff), .b({s2_ff[11:1], n1769}), 
        .product({N561, N560, N559, N558, N557, N556, N555, N554, N553, N552, 
        N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, 
        N539, N538}) );
  geofence_DW_mult_uns_0 mult_89_2 ( .a(s_ff), .b(s0_ff), .product({N585, N584, 
        N583, N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, 
        N571, N570, N569, N568, N567, N566, N565, N564, N563, N562}) );
  DFFRX1 \hero_area_reg[21]  ( .D(n779), .CK(clk), .RN(n1964), .Q(
        hero_area[21]) );
  DFFRX1 \hero_area_reg[22]  ( .D(n778), .CK(clk), .RN(n1964), .Q(
        hero_area[22]) );
  DFFRX1 \hero_area_reg[23]  ( .D(n777), .CK(clk), .RN(n1964), .Q(
        hero_area[23]) );
  DFFRX1 \polygon_area_reg[22]  ( .D(n802), .CK(clk), .RN(n1960), .Q(
        polygon_area[22]) );
  DFFRX1 \hero_area_reg[20]  ( .D(n780), .CK(clk), .RN(n1964), .Q(
        hero_area[20]) );
  DFFRX1 \polygon_area_reg[20]  ( .D(n804), .CK(clk), .RN(n1960), .Q(
        polygon_area[20]) );
  DFFRX1 \polygon_area_reg[21]  ( .D(n803), .CK(clk), .RN(n1960), .Q(
        polygon_area[21]) );
  DFFRX1 \hero_area_reg[18]  ( .D(n782), .CK(clk), .RN(n1964), .Q(
        hero_area[18]) );
  DFFRX1 \hero_area_reg[19]  ( .D(n781), .CK(clk), .RN(n1964), .Q(
        hero_area[19]) );
  DFFRX1 \loc_ff_reg[4][10]  ( .D(n706), .CK(clk), .RN(n1967), .Q(
        \loc_r[4][10] ) );
  DFFRX1 \loc_ff_reg[1][10]  ( .D(n613), .CK(clk), .RN(n1977), .Q(
        \loc_r[1][10] ) );
  DFFRX1 \loc_ff_reg[5][9]  ( .D(n736), .CK(clk), .RN(n1975), .Q(\loc_r[5][9] ) );
  DFFRX1 \loc_ff_reg[5][10]  ( .D(n737), .CK(clk), .RN(n1975), .Q(
        \loc_r[5][10] ) );
  DFFRX1 \loc_ff_reg[2][9]  ( .D(n643), .CK(clk), .RN(n1980), .Q(\loc_r[2][9] ) );
  DFFRX1 \loc_ff_reg[2][10]  ( .D(n644), .CK(clk), .RN(n1980), .Q(
        \loc_r[2][10] ) );
  DFFRX1 \loc_ff_reg[0][10]  ( .D(n582), .CK(clk), .RN(n1970), .Q(
        \loc_r[0][10] ) );
  DFFRX1 \loc_ff_reg[3][10]  ( .D(n675), .CK(clk), .RN(n1972), .Q(
        \loc_r[3][10] ) );
  DFFRX1 \polygon_area_reg[19]  ( .D(n805), .CK(clk), .RN(n1960), .Q(
        polygon_area[19]) );
  DFFRX1 \hero_area_reg[17]  ( .D(n783), .CK(clk), .RN(n1963), .Q(
        hero_area[17]) );
  DFFRX1 \loc_ff_reg[4][5]  ( .D(n701), .CK(clk), .RN(n1967), .Q(\loc_r[4][5] ) );
  DFFRX1 \loc_ff_reg[4][6]  ( .D(n702), .CK(clk), .RN(n1967), .Q(\loc_r[4][6] ) );
  DFFRX1 \loc_ff_reg[4][7]  ( .D(n703), .CK(clk), .RN(n1967), .Q(\loc_r[4][7] ) );
  DFFRX1 \loc_ff_reg[4][8]  ( .D(n704), .CK(clk), .RN(n1967), .Q(\loc_r[4][8] ) );
  DFFRX1 \loc_ff_reg[4][9]  ( .D(n705), .CK(clk), .RN(n1967), .Q(\loc_r[4][9] ) );
  DFFRX1 \loc_ff_reg[1][5]  ( .D(n608), .CK(clk), .RN(n1977), .Q(\loc_r[1][5] ) );
  DFFRX1 \loc_ff_reg[1][6]  ( .D(n609), .CK(clk), .RN(n1977), .Q(\loc_r[1][6] ) );
  DFFRX1 \loc_ff_reg[1][7]  ( .D(n610), .CK(clk), .RN(n1977), .Q(\loc_r[1][7] ) );
  DFFRX1 \loc_ff_reg[1][8]  ( .D(n611), .CK(clk), .RN(n1977), .Q(\loc_r[1][8] ) );
  DFFRX1 \loc_ff_reg[1][9]  ( .D(n612), .CK(clk), .RN(n1977), .Q(\loc_r[1][9] ) );
  DFFRX1 \loc_ff_reg[5][4]  ( .D(n731), .CK(clk), .RN(n1974), .Q(\loc_r[5][4] ) );
  DFFRX1 \loc_ff_reg[5][5]  ( .D(n732), .CK(clk), .RN(n1974), .Q(\loc_r[5][5] ) );
  DFFRX1 \loc_ff_reg[5][6]  ( .D(n733), .CK(clk), .RN(n1974), .Q(\loc_r[5][6] ) );
  DFFRX1 \loc_ff_reg[5][7]  ( .D(n734), .CK(clk), .RN(n1974), .Q(\loc_r[5][7] ) );
  DFFRX1 \loc_ff_reg[5][8]  ( .D(n735), .CK(clk), .RN(n1975), .Q(\loc_r[5][8] ) );
  DFFRX1 \loc_ff_reg[2][4]  ( .D(n638), .CK(clk), .RN(n1979), .Q(\loc_r[2][4] ) );
  DFFRX1 \loc_ff_reg[2][5]  ( .D(n639), .CK(clk), .RN(n1979), .Q(\loc_r[2][5] ) );
  DFFRX1 \loc_ff_reg[2][6]  ( .D(n640), .CK(clk), .RN(n1980), .Q(\loc_r[2][6] ) );
  DFFRX1 \loc_ff_reg[2][7]  ( .D(n641), .CK(clk), .RN(n1980), .Q(\loc_r[2][7] ) );
  DFFRX1 \loc_ff_reg[2][8]  ( .D(n642), .CK(clk), .RN(n1980), .Q(\loc_r[2][8] ) );
  DFFRX1 \loc_ff_reg[0][5]  ( .D(n577), .CK(clk), .RN(n1969), .Q(\loc_r[0][5] ) );
  DFFRX1 \loc_ff_reg[0][6]  ( .D(n578), .CK(clk), .RN(n1969), .Q(\loc_r[0][6] ) );
  DFFRX1 \loc_ff_reg[0][7]  ( .D(n579), .CK(clk), .RN(n1969), .Q(\loc_r[0][7] ) );
  DFFRX1 \loc_ff_reg[0][8]  ( .D(n580), .CK(clk), .RN(n1969), .Q(\loc_r[0][8] ) );
  DFFRX1 \loc_ff_reg[0][9]  ( .D(n581), .CK(clk), .RN(n1969), .Q(\loc_r[0][9] ) );
  DFFRX1 \loc_ff_reg[3][5]  ( .D(n670), .CK(clk), .RN(n1972), .Q(\loc_r[3][5] ) );
  DFFRX1 \loc_ff_reg[3][6]  ( .D(n671), .CK(clk), .RN(n1972), .Q(\loc_r[3][6] ) );
  DFFRX1 \loc_ff_reg[3][7]  ( .D(n672), .CK(clk), .RN(n1972), .Q(\loc_r[3][7] ) );
  DFFRX1 \loc_ff_reg[3][8]  ( .D(n673), .CK(clk), .RN(n1972), .Q(\loc_r[3][8] ) );
  DFFRX1 \loc_ff_reg[3][9]  ( .D(n674), .CK(clk), .RN(n1972), .Q(\loc_r[3][9] ) );
  DFFRX1 \polygon_area_reg[17]  ( .D(n807), .CK(clk), .RN(n1959), .Q(
        polygon_area[17]) );
  DFFRX1 \polygon_area_reg[18]  ( .D(n806), .CK(clk), .RN(n1960), .Q(
        polygon_area[18]) );
  DFFRX1 \hero_area_reg[12]  ( .D(n788), .CK(clk), .RN(n1963), .Q(
        hero_area[12]) );
  DFFRX1 \hero_area_reg[13]  ( .D(n787), .CK(clk), .RN(n1963), .Q(
        hero_area[13]) );
  DFFRX1 \hero_area_reg[14]  ( .D(n786), .CK(clk), .RN(n1963), .Q(
        hero_area[14]) );
  DFFRX1 \hero_area_reg[15]  ( .D(n785), .CK(clk), .RN(n1963), .Q(
        hero_area[15]) );
  DFFRX1 \hero_area_reg[16]  ( .D(n784), .CK(clk), .RN(n1963), .Q(
        hero_area[16]) );
  DFFRX1 \loc_ff_reg[4][1]  ( .D(n697), .CK(clk), .RN(n1966), .Q(\loc_r[4][1] ) );
  DFFRX1 \loc_ff_reg[4][2]  ( .D(n698), .CK(clk), .RN(n1966), .Q(\loc_r[4][2] ) );
  DFFRX1 \loc_ff_reg[4][3]  ( .D(n699), .CK(clk), .RN(n1966), .Q(\loc_r[4][3] ) );
  DFFRX1 \loc_ff_reg[4][4]  ( .D(n700), .CK(clk), .RN(n1966), .Q(\loc_r[4][4] ) );
  DFFRX1 \loc_ff_reg[4][0]  ( .D(n727), .CK(clk), .RN(n1969), .Q(\loc_r[4][0] ) );
  DFFRX1 \loc_ff_reg[1][1]  ( .D(n604), .CK(clk), .RN(n1977), .Q(\loc_r[1][1] ) );
  DFFRX1 \loc_ff_reg[1][2]  ( .D(n605), .CK(clk), .RN(n1977), .Q(\loc_r[1][2] ) );
  DFFRX1 \loc_ff_reg[1][3]  ( .D(n606), .CK(clk), .RN(n1977), .Q(\loc_r[1][3] ) );
  DFFRX1 \loc_ff_reg[1][4]  ( .D(n607), .CK(clk), .RN(n1977), .Q(\loc_r[1][4] ) );
  DFFRX1 \loc_ff_reg[1][0]  ( .D(n634), .CK(clk), .RN(n1979), .Q(\loc_r[1][0] ) );
  DFFRX1 \loc_ff_reg[5][1]  ( .D(n728), .CK(clk), .RN(n1974), .Q(\loc_r[5][1] ) );
  DFFRX1 \loc_ff_reg[5][2]  ( .D(n729), .CK(clk), .RN(n1974), .Q(\loc_r[5][2] ) );
  DFFRX1 \loc_ff_reg[5][3]  ( .D(n730), .CK(clk), .RN(n1974), .Q(\loc_r[5][3] ) );
  DFFRX1 \loc_ff_reg[5][0]  ( .D(n758), .CK(clk), .RN(n1976), .Q(\loc_r[5][0] ) );
  DFFRX1 \loc_ff_reg[2][1]  ( .D(n635), .CK(clk), .RN(n1979), .Q(\loc_r[2][1] ) );
  DFFRX1 \loc_ff_reg[2][2]  ( .D(n636), .CK(clk), .RN(n1979), .Q(\loc_r[2][2] ) );
  DFFRX1 \loc_ff_reg[2][3]  ( .D(n637), .CK(clk), .RN(n1979), .Q(\loc_r[2][3] ) );
  DFFRX1 \loc_ff_reg[2][0]  ( .D(n665), .CK(clk), .RN(n1982), .Q(\loc_r[2][0] ) );
  DFFRX1 \loc_ff_reg[0][1]  ( .D(n573), .CK(clk), .RN(n1969), .Q(\loc_r[0][1] ) );
  DFFRX1 \loc_ff_reg[0][2]  ( .D(n574), .CK(clk), .RN(n1969), .Q(\loc_r[0][2] ) );
  DFFRX1 \loc_ff_reg[0][3]  ( .D(n575), .CK(clk), .RN(n1969), .Q(\loc_r[0][3] ) );
  DFFRX1 \loc_ff_reg[0][4]  ( .D(n576), .CK(clk), .RN(n1969), .Q(\loc_r[0][4] ) );
  DFFRX1 \loc_ff_reg[0][0]  ( .D(n603), .CK(clk), .RN(n1971), .Q(\loc_r[0][0] ) );
  DFFRX1 \loc_ff_reg[3][1]  ( .D(n666), .CK(clk), .RN(n1971), .Q(\loc_r[3][1] ) );
  DFFRX1 \loc_ff_reg[3][2]  ( .D(n667), .CK(clk), .RN(n1971), .Q(\loc_r[3][2] ) );
  DFFRX1 \loc_ff_reg[3][3]  ( .D(n668), .CK(clk), .RN(n1972), .Q(\loc_r[3][3] ) );
  DFFRX1 \loc_ff_reg[3][4]  ( .D(n669), .CK(clk), .RN(n1972), .Q(\loc_r[3][4] ) );
  DFFRX1 \loc_ff_reg[3][0]  ( .D(n696), .CK(clk), .RN(n1974), .Q(\loc_r[3][0] ) );
  DFFRX1 \polygon_area_reg[12]  ( .D(n812), .CK(clk), .RN(n1959), .Q(
        polygon_area[12]) );
  DFFRX1 \polygon_area_reg[13]  ( .D(n811), .CK(clk), .RN(n1959), .Q(
        polygon_area[13]) );
  DFFRX1 \polygon_area_reg[14]  ( .D(n810), .CK(clk), .RN(n1959), .Q(
        polygon_area[14]) );
  DFFRX1 \polygon_area_reg[15]  ( .D(n809), .CK(clk), .RN(n1959), .Q(
        polygon_area[15]) );
  DFFRX1 \polygon_area_reg[16]  ( .D(n808), .CK(clk), .RN(n1959), .Q(
        polygon_area[16]) );
  DFFRX1 \hero_area_reg[7]  ( .D(n793), .CK(clk), .RN(n1963), .Q(hero_area[7])
         );
  DFFRX1 \hero_area_reg[8]  ( .D(n792), .CK(clk), .RN(n1963), .Q(hero_area[8])
         );
  DFFRX1 \hero_area_reg[9]  ( .D(n791), .CK(clk), .RN(n1963), .Q(hero_area[9])
         );
  DFFRX1 \hero_area_reg[10]  ( .D(n790), .CK(clk), .RN(n1963), .Q(
        hero_area[10]) );
  DFFRX1 \hero_area_reg[11]  ( .D(n789), .CK(clk), .RN(n1963), .Q(
        hero_area[11]) );
  DFFRX1 \polygon_area_reg[7]  ( .D(n817), .CK(clk), .RN(n1959), .Q(
        polygon_area[7]) );
  DFFRX1 \polygon_area_reg[8]  ( .D(n816), .CK(clk), .RN(n1959), .Q(
        polygon_area[8]) );
  DFFRX1 \polygon_area_reg[9]  ( .D(n815), .CK(clk), .RN(n1959), .Q(
        polygon_area[9]) );
  DFFRX1 \polygon_area_reg[10]  ( .D(n814), .CK(clk), .RN(n1959), .Q(
        polygon_area[10]) );
  DFFRX1 \polygon_area_reg[11]  ( .D(n813), .CK(clk), .RN(n1959), .Q(
        polygon_area[11]) );
  DFFRX1 \hero_area_reg[2]  ( .D(n798), .CK(clk), .RN(n1962), .Q(hero_area[2])
         );
  DFFRX1 \hero_area_reg[3]  ( .D(n797), .CK(clk), .RN(n1962), .Q(hero_area[3])
         );
  DFFRX1 \hero_area_reg[4]  ( .D(n796), .CK(clk), .RN(n1962), .Q(hero_area[4])
         );
  DFFRX1 \hero_area_reg[5]  ( .D(n795), .CK(clk), .RN(n1962), .Q(hero_area[5])
         );
  DFFRX1 \hero_area_reg[6]  ( .D(n794), .CK(clk), .RN(n1963), .Q(hero_area[6])
         );
  DFFRX1 \polygon_area_reg[2]  ( .D(n822), .CK(clk), .RN(n1958), .Q(
        polygon_area[2]) );
  DFFRX1 \polygon_area_reg[3]  ( .D(n821), .CK(clk), .RN(n1958), .Q(
        polygon_area[3]) );
  DFFRX1 \polygon_area_reg[4]  ( .D(n820), .CK(clk), .RN(n1958), .Q(
        polygon_area[4]) );
  DFFRX1 \polygon_area_reg[5]  ( .D(n819), .CK(clk), .RN(n1958), .Q(
        polygon_area[5]) );
  DFFRX1 \polygon_area_reg[6]  ( .D(n818), .CK(clk), .RN(n1959), .Q(
        polygon_area[6]) );
  DFFRX1 \hero_area_reg[1]  ( .D(n799), .CK(clk), .RN(n1962), .Q(hero_area[1])
         );
  DFFRX1 \hero_area_reg[0]  ( .D(n800), .CK(clk), .RN(n1962), .Q(hero_area[0])
         );
  DFFRX1 \polygon_area_reg[0]  ( .D(n824), .CK(clk), .RN(n1958), .Q(
        polygon_area[0]) );
  DFFRX1 \polygon_area_reg[1]  ( .D(n823), .CK(clk), .RN(n1958), .Q(
        polygon_area[1]) );
  DFFRX1 \dis_a_square_ff_reg[1]  ( .D(dis_a_square[1]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[1]) );
  DFFRX1 \dis_a_square_ff_reg[0]  ( .D(dis_a_square[0]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[0]) );
  DFFRX1 \loc_ff_reg[5][20]  ( .D(n747), .CK(clk), .RN(n1976), .Q(
        \loc_y[5][9] ), .QN(n128) );
  DFFRX1 \loc_ff_reg[4][20]  ( .D(n716), .CK(clk), .RN(n1968), .Q(
        \loc_y[4][9] ) );
  DFFRX1 \loc_ff_reg[1][20]  ( .D(n623), .CK(clk), .RN(n1978), .Q(
        \loc_y[1][9] ) );
  DFFRX1 \loc_ff_reg[2][20]  ( .D(n654), .CK(clk), .RN(n1981), .Q(
        \loc_y[2][9] ) );
  DFFRX1 \loc_ff_reg[0][20]  ( .D(n592), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][9] ) );
  DFFRX1 \loc_ff_reg[3][20]  ( .D(n685), .CK(clk), .RN(n1973), .Q(
        \loc_y[3][9] ) );
  DFFRX1 \dis_a_square_ff_reg[3]  ( .D(dis_a_square[3]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[3]) );
  DFFRX1 \dis_a_square_ff_reg[2]  ( .D(dis_a_square[2]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[2]) );
  DFFRX1 \loc_ff_reg[5][18]  ( .D(n745), .CK(clk), .RN(n1975), .Q(
        \loc_y[5][7] ), .QN(n130) );
  DFFRX1 \loc_ff_reg[5][19]  ( .D(n746), .CK(clk), .RN(n1975), .Q(
        \loc_y[5][8] ), .QN(n129) );
  DFFRX1 \loc_ff_reg[5][29]  ( .D(n756), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][8] ), .QN(n119) );
  DFFRX1 \loc_ff_reg[5][30]  ( .D(n757), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][9] ), .QN(n118) );
  DFFRX1 \loc_ff_reg[4][18]  ( .D(n714), .CK(clk), .RN(n1968), .Q(
        \loc_y[4][7] ) );
  DFFRX1 \loc_ff_reg[4][19]  ( .D(n715), .CK(clk), .RN(n1968), .Q(
        \loc_y[4][8] ) );
  DFFRX1 \loc_ff_reg[4][29]  ( .D(n725), .CK(clk), .RN(n1969), .Q(
        \loc_x[4][8] ) );
  DFFRX1 \loc_ff_reg[4][30]  ( .D(n726), .CK(clk), .RN(n1969), .Q(
        \loc_x[4][9] ) );
  DFFRX1 \loc_ff_reg[1][18]  ( .D(n621), .CK(clk), .RN(n1978), .Q(
        \loc_y[1][7] ) );
  DFFRX1 \loc_ff_reg[1][19]  ( .D(n622), .CK(clk), .RN(n1978), .Q(
        \loc_y[1][8] ) );
  DFFRX1 \loc_ff_reg[1][29]  ( .D(n632), .CK(clk), .RN(n1979), .Q(
        \loc_x[1][8] ) );
  DFFRX1 \loc_ff_reg[1][30]  ( .D(n633), .CK(clk), .RN(n1979), .Q(
        \loc_x[1][9] ) );
  DFFRX1 \loc_ff_reg[2][18]  ( .D(n652), .CK(clk), .RN(n1981), .Q(
        \loc_y[2][7] ) );
  DFFRX1 \loc_ff_reg[2][19]  ( .D(n653), .CK(clk), .RN(n1981), .Q(
        \loc_y[2][8] ) );
  DFFRX1 \loc_ff_reg[2][28]  ( .D(n662), .CK(clk), .RN(n1981), .Q(
        \loc_x[2][7] ) );
  DFFRX1 \loc_ff_reg[2][29]  ( .D(n663), .CK(clk), .RN(n1981), .Q(
        \loc_x[2][8] ) );
  DFFRX1 \loc_ff_reg[2][30]  ( .D(n664), .CK(clk), .RN(n1982), .Q(
        \loc_x[2][9] ) );
  DFFRX1 \loc_ff_reg[0][18]  ( .D(n590), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][7] ) );
  DFFRX1 \loc_ff_reg[0][19]  ( .D(n591), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][8] ) );
  DFFRX1 \loc_ff_reg[0][29]  ( .D(n601), .CK(clk), .RN(n1971), .Q(
        \loc_x[0][8] ) );
  DFFRX1 \loc_ff_reg[0][30]  ( .D(n602), .CK(clk), .RN(n1971), .Q(
        \loc_x[0][9] ) );
  DFFRX1 \loc_ff_reg[3][18]  ( .D(n683), .CK(clk), .RN(n1973), .Q(
        \loc_y[3][7] ) );
  DFFRX1 \loc_ff_reg[3][19]  ( .D(n684), .CK(clk), .RN(n1973), .Q(
        \loc_y[3][8] ) );
  DFFRX1 \loc_ff_reg[3][29]  ( .D(n694), .CK(clk), .RN(n1974), .Q(
        \loc_x[3][8] ) );
  DFFRX1 \loc_ff_reg[3][30]  ( .D(n695), .CK(clk), .RN(n1974), .Q(
        \loc_x[3][9] ) );
  DFFRX1 \loc_ff_reg[5][16]  ( .D(n743), .CK(clk), .RN(n1975), .Q(
        \loc_y[5][5] ), .QN(n132) );
  DFFRX1 \loc_ff_reg[5][17]  ( .D(n744), .CK(clk), .RN(n1975), .Q(
        \loc_y[5][6] ), .QN(n131) );
  DFFRX1 \loc_ff_reg[5][27]  ( .D(n754), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][6] ), .QN(n121) );
  DFFRX1 \loc_ff_reg[5][28]  ( .D(n755), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][7] ), .QN(n120) );
  DFFRX1 \loc_ff_reg[4][16]  ( .D(n712), .CK(clk), .RN(n1967), .Q(
        \loc_y[4][5] ) );
  DFFRX1 \loc_ff_reg[4][17]  ( .D(n713), .CK(clk), .RN(n1968), .Q(
        \loc_y[4][6] ) );
  DFFRX1 \loc_ff_reg[4][27]  ( .D(n723), .CK(clk), .RN(n1968), .Q(
        \loc_x[4][6] ) );
  DFFRX1 \loc_ff_reg[4][28]  ( .D(n724), .CK(clk), .RN(n1968), .Q(
        \loc_x[4][7] ) );
  DFFRX1 \loc_ff_reg[1][16]  ( .D(n619), .CK(clk), .RN(n1978), .Q(
        \loc_y[1][5] ) );
  DFFRX1 \loc_ff_reg[1][17]  ( .D(n620), .CK(clk), .RN(n1978), .Q(
        \loc_y[1][6] ) );
  DFFRX1 \loc_ff_reg[1][27]  ( .D(n630), .CK(clk), .RN(n1979), .Q(
        \loc_x[1][6] ) );
  DFFRX1 \loc_ff_reg[1][28]  ( .D(n631), .CK(clk), .RN(n1979), .Q(
        \loc_x[1][7] ) );
  DFFRX1 \loc_ff_reg[2][16]  ( .D(n650), .CK(clk), .RN(n1980), .Q(
        \loc_y[2][5] ) );
  DFFRX1 \loc_ff_reg[2][17]  ( .D(n651), .CK(clk), .RN(n1980), .Q(
        \loc_y[2][6] ) );
  DFFRX1 \loc_ff_reg[2][27]  ( .D(n661), .CK(clk), .RN(n1981), .Q(
        \loc_x[2][6] ) );
  DFFRX1 \loc_ff_reg[0][16]  ( .D(n588), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][5] ) );
  DFFRX1 \loc_ff_reg[0][17]  ( .D(n589), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][6] ) );
  DFFRX1 \loc_ff_reg[0][27]  ( .D(n599), .CK(clk), .RN(n1971), .Q(
        \loc_x[0][6] ) );
  DFFRX1 \loc_ff_reg[0][28]  ( .D(n600), .CK(clk), .RN(n1971), .Q(
        \loc_x[0][7] ) );
  DFFRX1 \loc_ff_reg[3][16]  ( .D(n681), .CK(clk), .RN(n1973), .Q(
        \loc_y[3][5] ) );
  DFFRX1 \loc_ff_reg[3][17]  ( .D(n682), .CK(clk), .RN(n1973), .Q(
        \loc_y[3][6] ) );
  DFFRX1 \loc_ff_reg[3][27]  ( .D(n692), .CK(clk), .RN(n1974), .Q(
        \loc_x[3][6] ) );
  DFFRX1 \loc_ff_reg[3][28]  ( .D(n693), .CK(clk), .RN(n1974), .Q(
        \loc_x[3][7] ) );
  DFFRX1 \loc_ff_reg[5][11]  ( .D(n738), .CK(clk), .RN(n1975), .Q(
        \loc_y[5][0] ), .QN(n137) );
  DFFRX1 \loc_ff_reg[5][12]  ( .D(n739), .CK(clk), .RN(n1975), .Q(
        \loc_y[5][1] ), .QN(n136) );
  DFFRX1 \loc_ff_reg[5][13]  ( .D(n740), .CK(clk), .RN(n1975), .Q(
        \loc_y[5][2] ), .QN(n135) );
  DFFRX1 \loc_ff_reg[5][14]  ( .D(n741), .CK(clk), .RN(n1975), .Q(
        \loc_y[5][3] ), .QN(n134) );
  DFFRX1 \loc_ff_reg[5][15]  ( .D(n742), .CK(clk), .RN(n1975), .Q(
        \loc_y[5][4] ), .QN(n133) );
  DFFRX1 \loc_ff_reg[5][23]  ( .D(n750), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][2] ), .QN(n125) );
  DFFRX1 \loc_ff_reg[5][24]  ( .D(n751), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][3] ), .QN(n124) );
  DFFRX1 \loc_ff_reg[5][25]  ( .D(n752), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][4] ), .QN(n123) );
  DFFRX1 \loc_ff_reg[5][26]  ( .D(n753), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][5] ), .QN(n122) );
  DFFRX1 \loc_ff_reg[4][12]  ( .D(n708), .CK(clk), .RN(n1967), .Q(
        \loc_y[4][1] ) );
  DFFRX1 \loc_ff_reg[4][13]  ( .D(n709), .CK(clk), .RN(n1967), .Q(
        \loc_y[4][2] ) );
  DFFRX1 \loc_ff_reg[4][14]  ( .D(n710), .CK(clk), .RN(n1967), .Q(
        \loc_y[4][3] ) );
  DFFRX1 \loc_ff_reg[4][15]  ( .D(n711), .CK(clk), .RN(n1967), .Q(
        \loc_y[4][4] ) );
  DFFRX1 \loc_ff_reg[4][24]  ( .D(n720), .CK(clk), .RN(n1968), .Q(
        \loc_x[4][3] ) );
  DFFRX1 \loc_ff_reg[4][25]  ( .D(n721), .CK(clk), .RN(n1968), .Q(
        \loc_x[4][4] ) );
  DFFRX1 \loc_ff_reg[4][26]  ( .D(n722), .CK(clk), .RN(n1968), .Q(
        \loc_x[4][5] ) );
  DFFRX1 \loc_ff_reg[1][12]  ( .D(n615), .CK(clk), .RN(n1977), .Q(
        \loc_y[1][1] ) );
  DFFRX1 \loc_ff_reg[1][13]  ( .D(n616), .CK(clk), .RN(n1978), .Q(
        \loc_y[1][2] ) );
  DFFRX1 \loc_ff_reg[1][14]  ( .D(n617), .CK(clk), .RN(n1978), .Q(
        \loc_y[1][3] ) );
  DFFRX1 \loc_ff_reg[1][15]  ( .D(n618), .CK(clk), .RN(n1978), .Q(
        \loc_y[1][4] ) );
  DFFRX1 \loc_ff_reg[1][24]  ( .D(n627), .CK(clk), .RN(n1978), .Q(
        \loc_x[1][3] ) );
  DFFRX1 \loc_ff_reg[1][25]  ( .D(n628), .CK(clk), .RN(n1979), .Q(
        \loc_x[1][4] ) );
  DFFRX1 \loc_ff_reg[1][26]  ( .D(n629), .CK(clk), .RN(n1979), .Q(
        \loc_x[1][5] ) );
  DFFRX1 \loc_ff_reg[2][11]  ( .D(n645), .CK(clk), .RN(n1980), .Q(
        \loc_y[2][0] ) );
  DFFRX1 \loc_ff_reg[2][12]  ( .D(n646), .CK(clk), .RN(n1980), .Q(
        \loc_y[2][1] ) );
  DFFRX1 \loc_ff_reg[2][13]  ( .D(n647), .CK(clk), .RN(n1980), .Q(
        \loc_y[2][2] ) );
  DFFRX1 \loc_ff_reg[2][14]  ( .D(n648), .CK(clk), .RN(n1980), .Q(
        \loc_y[2][3] ) );
  DFFRX1 \loc_ff_reg[2][15]  ( .D(n649), .CK(clk), .RN(n1980), .Q(
        \loc_y[2][4] ) );
  DFFRX1 \loc_ff_reg[2][23]  ( .D(n657), .CK(clk), .RN(n1981), .Q(
        \loc_x[2][2] ) );
  DFFRX1 \loc_ff_reg[2][24]  ( .D(n658), .CK(clk), .RN(n1981), .Q(
        \loc_x[2][3] ) );
  DFFRX1 \loc_ff_reg[2][25]  ( .D(n659), .CK(clk), .RN(n1981), .Q(
        \loc_x[2][4] ) );
  DFFRX1 \loc_ff_reg[2][26]  ( .D(n660), .CK(clk), .RN(n1981), .Q(
        \loc_x[2][5] ) );
  DFFRX1 \loc_ff_reg[0][12]  ( .D(n584), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][1] ) );
  DFFRX1 \loc_ff_reg[0][13]  ( .D(n585), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][2] ) );
  DFFRX1 \loc_ff_reg[0][14]  ( .D(n586), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][3] ) );
  DFFRX1 \loc_ff_reg[0][15]  ( .D(n587), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][4] ) );
  DFFRX1 \loc_ff_reg[0][23]  ( .D(n595), .CK(clk), .RN(n1971), .Q(
        \loc_x[0][2] ) );
  DFFRX1 \loc_ff_reg[0][24]  ( .D(n596), .CK(clk), .RN(n1971), .Q(
        \loc_x[0][3] ) );
  DFFRX1 \loc_ff_reg[0][25]  ( .D(n597), .CK(clk), .RN(n1971), .Q(
        \loc_x[0][4] ) );
  DFFRX1 \loc_ff_reg[0][26]  ( .D(n598), .CK(clk), .RN(n1971), .Q(
        \loc_x[0][5] ) );
  DFFRX1 \loc_ff_reg[3][12]  ( .D(n677), .CK(clk), .RN(n1972), .Q(
        \loc_y[3][1] ) );
  DFFRX1 \loc_ff_reg[3][13]  ( .D(n678), .CK(clk), .RN(n1972), .Q(
        \loc_y[3][2] ) );
  DFFRX1 \loc_ff_reg[3][14]  ( .D(n679), .CK(clk), .RN(n1972), .Q(
        \loc_y[3][3] ) );
  DFFRX1 \loc_ff_reg[3][15]  ( .D(n680), .CK(clk), .RN(n1973), .Q(
        \loc_y[3][4] ) );
  DFFRX1 \loc_ff_reg[3][24]  ( .D(n689), .CK(clk), .RN(n1973), .Q(
        \loc_x[3][3] ) );
  DFFRX1 \loc_ff_reg[3][25]  ( .D(n690), .CK(clk), .RN(n1973), .Q(
        \loc_x[3][4] ) );
  DFFRX1 \loc_ff_reg[3][26]  ( .D(n691), .CK(clk), .RN(n1973), .Q(
        \loc_x[3][5] ) );
  DFFRX1 \dis_a_square_ff_reg[5]  ( .D(dis_a_square[5]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[5]) );
  DFFRX1 \dis_a_square_ff_reg[4]  ( .D(dis_a_square[4]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[4]) );
  DFFRX1 \loc_ff_reg[5][21]  ( .D(n748), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][0] ), .QN(n127) );
  DFFRX1 \loc_ff_reg[5][22]  ( .D(n749), .CK(clk), .RN(n1976), .Q(
        \loc_x[5][1] ), .QN(n126) );
  DFFRX1 \loc_ff_reg[4][11]  ( .D(n707), .CK(clk), .RN(n1967), .Q(
        \loc_y[4][0] ) );
  DFFRX1 \loc_ff_reg[4][21]  ( .D(n717), .CK(clk), .RN(n1968), .Q(
        \loc_x[4][0] ) );
  DFFRX1 \loc_ff_reg[4][22]  ( .D(n718), .CK(clk), .RN(n1968), .Q(
        \loc_x[4][1] ) );
  DFFRX1 \loc_ff_reg[4][23]  ( .D(n719), .CK(clk), .RN(n1968), .Q(
        \loc_x[4][2] ) );
  DFFRX1 \loc_ff_reg[1][11]  ( .D(n614), .CK(clk), .RN(n1977), .Q(
        \loc_y[1][0] ) );
  DFFRX1 \loc_ff_reg[1][21]  ( .D(n624), .CK(clk), .RN(n1978), .Q(
        \loc_x[1][0] ) );
  DFFRX1 \loc_ff_reg[1][22]  ( .D(n625), .CK(clk), .RN(n1978), .Q(
        \loc_x[1][1] ) );
  DFFRX1 \loc_ff_reg[1][23]  ( .D(n626), .CK(clk), .RN(n1978), .Q(
        \loc_x[1][2] ) );
  DFFRX1 \loc_ff_reg[2][21]  ( .D(n655), .CK(clk), .RN(n1981), .Q(
        \loc_x[2][0] ) );
  DFFRX1 \loc_ff_reg[2][22]  ( .D(n656), .CK(clk), .RN(n1981), .Q(
        \loc_x[2][1] ) );
  DFFRX1 \loc_ff_reg[0][11]  ( .D(n583), .CK(clk), .RN(n1970), .Q(
        \loc_y[0][0] ) );
  DFFRX1 \loc_ff_reg[0][21]  ( .D(n593), .CK(clk), .RN(n1970), .Q(
        \loc_x[0][0] ) );
  DFFRX1 \loc_ff_reg[0][22]  ( .D(n594), .CK(clk), .RN(n1971), .Q(
        \loc_x[0][1] ) );
  DFFRX1 \loc_ff_reg[3][11]  ( .D(n676), .CK(clk), .RN(n1972), .Q(
        \loc_y[3][0] ) );
  DFFRX1 \loc_ff_reg[3][21]  ( .D(n686), .CK(clk), .RN(n1973), .Q(
        \loc_x[3][0] ) );
  DFFRX1 \loc_ff_reg[3][22]  ( .D(n687), .CK(clk), .RN(n1973), .Q(
        \loc_x[3][1] ) );
  DFFRX1 \loc_ff_reg[3][23]  ( .D(n688), .CK(clk), .RN(n1973), .Q(
        \loc_x[3][2] ) );
  DFFRX1 \dis_a_square_ff_reg[7]  ( .D(dis_a_square[7]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[7]) );
  DFFRX1 \dis_a_square_ff_reg[6]  ( .D(dis_a_square[6]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[6]) );
  DFFRX1 \dis_a_square_ff_reg[9]  ( .D(dis_a_square[9]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[9]) );
  DFFRX1 \dis_a_square_ff_reg[8]  ( .D(dis_a_square[8]), .CK(clk), .RN(n1957), 
        .Q(dis_a_square_ff[8]) );
  DFFRX1 \dis_a_square_ff_reg[11]  ( .D(dis_a_square[11]), .CK(clk), .RN(n1957), .Q(dis_a_square_ff[11]) );
  DFFRX1 \dis_a_square_ff_reg[10]  ( .D(dis_a_square[10]), .CK(clk), .RN(n1957), .Q(dis_a_square_ff[10]) );
  DFFRX1 \dis_a_square_ff_reg[13]  ( .D(dis_a_square[13]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[13]) );
  DFFRX1 \dis_a_square_ff_reg[12]  ( .D(dis_a_square[12]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[12]) );
  DFFRX1 \dis_a_square_ff_reg[15]  ( .D(dis_a_square[15]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[15]) );
  DFFRX1 \dis_a_square_ff_reg[14]  ( .D(dis_a_square[14]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[14]) );
  DFFRX1 \dis_a_square_ff_reg[17]  ( .D(dis_a_square[17]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[17]) );
  DFFRX2 \s0_ff_reg[11]  ( .D(n2093), .CK(clk), .RN(n1965), .Q(s0_ff[11]) );
  DFFRX2 \s0_ff_reg[7]  ( .D(n768), .CK(clk), .RN(n1965), .Q(s0_ff[7]) );
  DFFRX2 \s0_ff_reg[9]  ( .D(n770), .CK(clk), .RN(n1965), .Q(s0_ff[9]) );
  DFFRX2 \s0_ff_reg[8]  ( .D(n769), .CK(clk), .RN(n1965), .Q(s0_ff[8]) );
  DFFRX2 \s0_ff_reg[10]  ( .D(n771), .CK(clk), .RN(n1965), .Q(s0_ff[10]) );
  DFFRX2 \s2_ff_reg[11]  ( .D(n761), .CK(clk), .RN(n1962), .Q(s2_ff[11]) );
  DFFRX2 \s2_ff_reg[7]  ( .D(n2076), .CK(clk), .RN(n1962), .Q(s2_ff[7]) );
  DFFRX2 \s2_ff_reg[9]  ( .D(n2074), .CK(clk), .RN(n1962), .Q(s2_ff[9]) );
  DFFRX2 \s2_ff_reg[8]  ( .D(n2075), .CK(clk), .RN(n1962), .Q(s2_ff[8]) );
  DFFRX2 \s2_ff_reg[10]  ( .D(n2073), .CK(clk), .RN(n1962), .Q(s2_ff[10]) );
  DFFRX2 \s0_ff_reg[5]  ( .D(n766), .CK(clk), .RN(n1964), .Q(s0_ff[5]) );
  DFFRX2 \s0_ff_reg[6]  ( .D(n767), .CK(clk), .RN(n1965), .Q(s0_ff[6]) );
  DFFRX2 \s2_ff_reg[5]  ( .D(n2078), .CK(clk), .RN(n1961), .Q(s2_ff[5]) );
  DFFRX2 \s2_ff_reg[6]  ( .D(n2077), .CK(clk), .RN(n1961), .Q(s2_ff[6]) );
  DFFRX2 \s0_ff_reg[2]  ( .D(n763), .CK(clk), .RN(n1964), .Q(s0_ff[2]) );
  DFFRX2 \s0_ff_reg[3]  ( .D(n764), .CK(clk), .RN(n1964), .Q(s0_ff[3]) );
  DFFRX2 \s0_ff_reg[1]  ( .D(n762), .CK(clk), .RN(n1964), .Q(s0_ff[1]) );
  DFFRX2 \s0_ff_reg[4]  ( .D(n765), .CK(clk), .RN(n1964), .Q(s0_ff[4]) );
  DFFRX2 \s2_ff_reg[2]  ( .D(n2081), .CK(clk), .RN(n1961), .Q(s2_ff[2]) );
  DFFRX2 \s2_ff_reg[3]  ( .D(n2080), .CK(clk), .RN(n1961), .Q(s2_ff[3]) );
  DFFRX2 \s2_ff_reg[1]  ( .D(n2082), .CK(clk), .RN(n1961), .Q(s2_ff[1]) );
  DFFRX2 \s2_ff_reg[4]  ( .D(n2079), .CK(clk), .RN(n1961), .Q(s2_ff[4]) );
  DFFRX1 \polygon_area_reg[23]  ( .D(n801), .CK(clk), .RN(n1960), .Q(
        polygon_area[23]) );
  DFFRX1 \loc_ff_cnt_reg[2]  ( .D(n774), .CK(clk), .RN(n1958), .Q(
        loc_ff_cnt[2]), .QN(n140) );
  DFFSX1 \loc_ff_pt_reg[1]  ( .D(n773), .CK(clk), .SN(n1982), .Q(loc_ff_pt[1]), 
        .QN(n146) );
  DFFRX4 \s1_ff_reg[1]  ( .D(n2092), .CK(clk), .RN(n1960), .Q(s1_ff[1]) );
  DFFRX4 \s1_ff_reg[9]  ( .D(n2084), .CK(clk), .RN(n1961), .Q(s1_ff[9]) );
  DFFRX4 \s_ff_reg[7]  ( .D(n2099), .CK(clk), .RN(n1965), .Q(s_ff[7]) );
  DFFRX4 \s1_ff_reg[7]  ( .D(n2086), .CK(clk), .RN(n1961), .Q(s1_ff[7]) );
  DFFRX4 \s_ff_reg[5]  ( .D(n2101), .CK(clk), .RN(n1966), .Q(s_ff[5]) );
  DFFRX4 \s1_ff_reg[5]  ( .D(n2088), .CK(clk), .RN(n1960), .Q(s1_ff[5]) );
  DFFRX4 \s_ff_reg[3]  ( .D(n2103), .CK(clk), .RN(n1966), .Q(s_ff[3]) );
  DFFRX4 \s1_ff_reg[3]  ( .D(n2090), .CK(clk), .RN(n1960), .Q(s1_ff[3]) );
  DFFRX4 \s_ff_reg[1]  ( .D(n2105), .CK(clk), .RN(n1966), .Q(s_ff[1]) );
  DFFRX1 \dis_a_square_ff_reg[16]  ( .D(dis_a_square[16]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[16]) );
  DFFSX1 \curr_state_reg[0]  ( .D(next_state[0]), .CK(clk), .SN(n1982), .Q(
        curr_state[0]), .QN(n117) );
  DFFRX1 \curr_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n1958), .Q(
        curr_state[2]), .QN(n115) );
  DFFRX1 \s_ff_reg[0]  ( .D(n2106), .CK(clk), .RN(n1966), .Q(s_ff[0]) );
  DFFRX1 \curr_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n1958), .Q(
        curr_state[1]), .QN(n116) );
  DFFRX1 is_inside_reg ( .D(N604), .CK(clk), .RN(n1964), .QN(n1781) );
  DFFRX1 valid_reg ( .D(N1518), .CK(clk), .RN(n1958), .QN(n1782) );
  DFFRX1 \loc_ff_pt_reg[2]  ( .D(n825), .CK(clk), .RN(n1958), .Q(loc_ff_pt[2]), 
        .QN(n1934) );
  DFFRX2 \s_ff_reg[11]  ( .D(n759), .CK(clk), .RN(n1965), .Q(s_ff[11]) );
  DFFRX2 \loc_ff_cnt_reg[1]  ( .D(n775), .CK(clk), .RN(n1966), .Q(
        loc_ff_cnt[1]), .QN(n141) );
  DFFSX2 \loc_ff_pt_reg[0]  ( .D(n826), .CK(clk), .SN(n1982), .Q(loc_ff_pt[0]), 
        .QN(n1935) );
  DFFRX2 \loc_ff_cnt_reg[0]  ( .D(n776), .CK(clk), .RN(n1958), .Q(
        loc_ff_cnt[0]), .QN(n1859) );
  DFFRX1 \dis_a_square_ff_reg[19]  ( .D(dis_a_square[19]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[19]) );
  DFFRX1 \dis_a_square_ff_reg[18]  ( .D(dis_a_square[18]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[18]) );
  DFFRX1 \dis_a_square_ff_reg[21]  ( .D(dis_a_square[21]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[21]) );
  DFFRX1 \dis_a_square_ff_reg[20]  ( .D(dis_a_square[20]), .CK(clk), .RN(n1956), .Q(dis_a_square_ff[20]) );
  DFFRX1 \dis_a_square_ff_reg[23]  ( .D(dis_a_square_23), .CK(clk), .RN(n1956), 
        .Q(dis_a_square_ff[23]) );
  DFFRX1 \dis_a_square_ff_reg[22]  ( .D(dis_a_square_23), .CK(clk), .RN(n1956), 
        .Q(dis_a_square_ff[22]) );
  DFFRX1 \s1_ff_reg[10]  ( .D(n2083), .CK(clk), .RN(n1961), .Q(s1_ff[10]) );
  DFFRX1 \s_ff_reg[10]  ( .D(n2096), .CK(clk), .RN(n1965), .Q(s_ff[10]) );
  DFFRX2 \s_ff_reg[9]  ( .D(n2097), .CK(clk), .RN(n1965), .Q(s_ff[9]) );
  DFFRX2 \s_ff_reg[8]  ( .D(n2098), .CK(clk), .RN(n1965), .Q(s_ff[8]) );
  DFFRX2 \s1_ff_reg[8]  ( .D(n2085), .CK(clk), .RN(n1961), .Q(s1_ff[8]) );
  DFFRX1 \s_ff_reg[6]  ( .D(n2100), .CK(clk), .RN(n1966), .Q(s_ff[6]) );
  DFFRX2 \s1_ff_reg[6]  ( .D(n2087), .CK(clk), .RN(n1960), .Q(s1_ff[6]) );
  DFFRX2 \s_ff_reg[4]  ( .D(n2102), .CK(clk), .RN(n1966), .Q(s_ff[4]) );
  DFFRX2 \s1_ff_reg[4]  ( .D(n2089), .CK(clk), .RN(n1960), .Q(s1_ff[4]) );
  DFFRX2 \s1_ff_reg[2]  ( .D(n2091), .CK(clk), .RN(n1960), .Q(s1_ff[2]) );
  DFFRX1 \s1_ff_reg[0]  ( .D(n2094), .CK(clk), .RN(n1962), .Q(s1_ff[0]) );
  DFFRX4 \s2_ff_reg[0]  ( .D(n2095), .CK(clk), .RN(n1961), .Q(s2_ff[0]) );
  DFFRX4 \s_ff_reg[2]  ( .D(n2104), .CK(clk), .RN(n1966), .Q(s_ff[2]) );
  BUFX20 U1769 ( .A(n523), .Y(n1949) );
  INVX12 U1770 ( .A(n1948), .Y(n1767) );
  CLKINVX16 U1771 ( .A(n1767), .Y(n1768) );
  BUFX6 U1772 ( .A(n525), .Y(n1948) );
  BUFX20 U1773 ( .A(s2_ff[0]), .Y(n1769) );
  INVX1 U1774 ( .A(n506), .Y(n2083) );
  INVX1 U1775 ( .A(n520), .Y(n2094) );
  INVX4 U1776 ( .A(n1787), .Y(n496) );
  OR2X1 U1777 ( .A(n1788), .B(s1[11]), .Y(n1787) );
  AND2X8 U1778 ( .A(s2[11]), .B(n2056), .Y(n509) );
  OAI21XL U1779 ( .A0(n1997), .A1(n365), .B0(n368), .Y(n367) );
  CLKBUFX3 U1780 ( .A(n2048), .Y(n2052) );
  CLKINVX1 U1781 ( .A(s0[0]), .Y(N671) );
  CLKINVX1 U1782 ( .A(s1[2]), .Y(N706) );
  CLKINVX1 U1783 ( .A(s1[4]), .Y(N704) );
  CLKINVX1 U1784 ( .A(s1[6]), .Y(N702) );
  NOR2X4 U1785 ( .A(n186), .B(n115), .Y(n481) );
  CLKINVX1 U1786 ( .A(s2[4]), .Y(N741) );
  CLKINVX1 U1787 ( .A(s2[2]), .Y(N743) );
  AND2X2 U1788 ( .A(s0[11]), .B(n2056), .Y(n523) );
  CLKINVX1 U1789 ( .A(s2[0]), .Y(N745) );
  AOI222XL U1790 ( .A0(s1_ff[0]), .A1(n2001), .B0(s1[0]), .B1(n496), .C0(N709), 
        .C1(n497), .Y(n520) );
  AOI222XL U1791 ( .A0(s1_ff[10]), .A1(n2001), .B0(s1[10]), .B1(n496), .C0(
        N719), .C1(n497), .Y(n506) );
  AOI222X1 U1792 ( .A0(s2_ff[10]), .A1(n2002), .B0(s2[10]), .B1(n1780), .C0(
        N756), .C1(n509), .Y(n519) );
  CLKBUFX3 U1793 ( .A(s[10]), .Y(n1770) );
  NOR2X1 U1794 ( .A(n115), .B(n187), .Y(n182) );
  CLKBUFX3 U1795 ( .A(n2051), .Y(n2054) );
  AND2X2 U1796 ( .A(n1793), .B(loc_ff_cnt[1]), .Y(n1771) );
  AND2X2 U1797 ( .A(n1869), .B(loc_ff_pt[1]), .Y(n1772) );
  AND2X2 U1798 ( .A(n1792), .B(loc_ff_cnt[1]), .Y(n1773) );
  AND2X2 U1799 ( .A(n1870), .B(n146), .Y(n1774) );
  AND2X2 U1800 ( .A(n1870), .B(loc_ff_pt[1]), .Y(n1775) );
  AND2X2 U1801 ( .A(n1792), .B(n141), .Y(n1776) );
  NOR2X1 U1802 ( .A(n1935), .B(n1934), .Y(n1777) );
  NOR2X1 U1803 ( .A(n1859), .B(n1858), .Y(n1778) );
  AND2X2 U1804 ( .A(n1869), .B(n146), .Y(n1779) );
  NOR2X4 U1805 ( .A(n1788), .B(s2[11]), .Y(n1780) );
  NAND2X2 U1806 ( .A(n2162), .B(n2049), .Y(n181) );
  AO22X1 U1807 ( .A0(dis_a_square_ff[17]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[17]), .Y(radicand_in[17]) );
  AO22X1 U1808 ( .A0(dis_a_square_ff[16]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[16]), .Y(radicand_in[16]) );
  AO22X1 U1809 ( .A0(dis_a_square_ff[19]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[19]), .Y(radicand_in[19]) );
  AO22X1 U1810 ( .A0(dis_a_square_ff[18]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[18]), .Y(radicand_in[18]) );
  AO22X1 U1811 ( .A0(dis_a_square_ff[21]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[21]), .Y(radicand_in[21]) );
  AO22X2 U1812 ( .A0(dis_a_square_ff[23]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[23]), .Y(radicand_in[23]) );
  AO22X1 U1813 ( .A0(dis_a_square_ff[20]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[20]), .Y(radicand_in[20]) );
  AO22X1 U1814 ( .A0(dis_a_square_ff[22]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[22]), .Y(radicand_in[22]) );
  NOR3XL U1815 ( .A(n1859), .B(loc_ff_cnt[1]), .C(n140), .Y(n188) );
  NAND4XL U1816 ( .A(loc_ff_cnt[1]), .B(n2161), .C(n1859), .D(n140), .Y(n368)
         );
  INVX12 U1817 ( .A(n1782), .Y(valid) );
  INVX12 U1818 ( .A(n1781), .Y(is_inside) );
  INVX3 U1819 ( .A(n544), .Y(n2093) );
  AOI222X2 U1820 ( .A0(s0_ff[11]), .A1(n524), .B0(dis_a[11]), .B1(n2051), .C0(
        N683), .C1(n1949), .Y(n544) );
  INVX1 U1821 ( .A(n502), .Y(n2087) );
  INVX1 U1822 ( .A(n499), .Y(n2090) );
  INVX1 U1823 ( .A(n500), .Y(n2089) );
  INVX1 U1824 ( .A(n495), .Y(n2092) );
  INVX1 U1825 ( .A(n501), .Y(n2088) );
  INVX1 U1826 ( .A(n503), .Y(n2086) );
  INVX1 U1827 ( .A(n504), .Y(n2085) );
  INVX1 U1828 ( .A(n498), .Y(n2091) );
  INVX1 U1829 ( .A(n505), .Y(n2084) );
  BUFX8 U1830 ( .A(s[7]), .Y(n1785) );
  BUFX6 U1831 ( .A(s[9]), .Y(n1786) );
  CLKBUFX2 U1832 ( .A(n2051), .Y(n2053) );
  AND2X8 U1833 ( .A(s1[11]), .B(n2056), .Y(n497) );
  CLKINVX1 U1834 ( .A(n2056), .Y(n1788) );
  NOR2BX1 U1835 ( .AN(n2056), .B(s0[11]), .Y(n525) );
  INVXL U1836 ( .A(s0[7]), .Y(N664) );
  CLKINVX4 U1837 ( .A(s0[2]), .Y(N669) );
  CLKINVX4 U1838 ( .A(s1[0]), .Y(N708) );
  INVX3 U1839 ( .A(s1[9]), .Y(N699) );
  INVX3 U1840 ( .A(s2[9]), .Y(N736) );
  INVX3 U1841 ( .A(s2[6]), .Y(N739) );
  CLKBUFX2 U1842 ( .A(n2048), .Y(n2051) );
  NAND2X1 U1843 ( .A(n287), .B(n2153), .Y(n196) );
  CLKINVX1 U1844 ( .A(n289), .Y(n2151) );
  AO22X4 U1845 ( .A0(N585), .A1(n2050), .B0(N561), .B1(n2054), .Y(
        s_mul_out[23]) );
  CLKINVX1 U1846 ( .A(n330), .Y(n2160) );
  AO22XL U1847 ( .A0(N562), .A1(n2050), .B0(N538), .B1(n2052), .Y(s_mul_out[0]) );
  OAI22XL U1848 ( .A0(n1997), .A1(n2153), .B0(n291), .B1(n185), .Y(n289) );
  CLKINVX1 U1849 ( .A(n288), .Y(n2153) );
  NAND2X1 U1850 ( .A(n404), .B(n405), .Y(n373) );
  NAND2X1 U1851 ( .A(n327), .B(n328), .Y(n296) );
  NAND2X1 U1852 ( .A(n287), .B(n288), .Y(n193) );
  NAND2X1 U1853 ( .A(n480), .B(n479), .Y(n445) );
  NAND2X1 U1854 ( .A(n366), .B(n365), .Y(n332) );
  NAND2X1 U1855 ( .A(n441), .B(n442), .Y(n410) );
  NAND2BX1 U1856 ( .AN(n365), .B(n366), .Y(n334) );
  NAND2BX1 U1857 ( .AN(n328), .B(n327), .Y(n293) );
  NAND2BX1 U1858 ( .AN(n405), .B(n404), .Y(n370) );
  NAND2BX1 U1859 ( .AN(n442), .B(n441), .Y(n407) );
  NAND2BX1 U1860 ( .AN(n479), .B(n480), .Y(n447) );
  CLKINVX1 U1861 ( .A(n367), .Y(n2150) );
  NAND2X1 U1862 ( .A(n1947), .B(n367), .Y(n331) );
  NAND2X1 U1863 ( .A(n1947), .B(n289), .Y(n191) );
  NAND2XL U1864 ( .A(n2054), .B(n185), .Y(n564) );
  OAI211XL U1865 ( .A0(n186), .A1(n2157), .B0(n2162), .C0(n187), .Y(
        next_state[1]) );
  INVXL U1866 ( .A(s0[11]), .Y(N660) );
  INVXL U1867 ( .A(dis_a[0]), .Y(n2140) );
  AOI22XL U1868 ( .A0(N672), .A1(n1949), .B0(s0_ff[0]), .B1(n524), .Y(n546) );
  INVXL U1869 ( .A(dis_a[2]), .Y(n2142) );
  AOI22XL U1870 ( .A0(N674), .A1(n1949), .B0(s0_ff[2]), .B1(n524), .Y(n527) );
  INVXL U1871 ( .A(dis_a[9]), .Y(n2147) );
  AOI22XL U1872 ( .A0(N681), .A1(n1949), .B0(s0_ff[9]), .B1(n524), .Y(n541) );
  INVXL U1873 ( .A(dis_a[8]), .Y(n2148) );
  AOI22XL U1874 ( .A0(N680), .A1(n1949), .B0(s0_ff[8]), .B1(n524), .Y(n539) );
  INVXL U1875 ( .A(dis_a[7]), .Y(n2139) );
  AOI22XL U1876 ( .A0(N679), .A1(n1949), .B0(s0_ff[7]), .B1(n524), .Y(n537) );
  INVXL U1877 ( .A(dis_a[6]), .Y(n2146) );
  AOI22XL U1878 ( .A0(N678), .A1(n1949), .B0(s0_ff[6]), .B1(n524), .Y(n535) );
  INVXL U1879 ( .A(dis_a[5]), .Y(n2145) );
  AOI22XL U1880 ( .A0(N677), .A1(n1949), .B0(s0_ff[5]), .B1(n524), .Y(n533) );
  INVXL U1881 ( .A(dis_a[4]), .Y(n2144) );
  AOI22XL U1882 ( .A0(N676), .A1(n1949), .B0(s0_ff[4]), .B1(n524), .Y(n531) );
  INVXL U1883 ( .A(dis_a[3]), .Y(n2143) );
  AOI22XL U1884 ( .A0(N675), .A1(n1949), .B0(s0_ff[3]), .B1(n524), .Y(n529) );
  INVXL U1885 ( .A(dis_a[1]), .Y(n2141) );
  AOI22XL U1886 ( .A0(N673), .A1(n1949), .B0(s0_ff[1]), .B1(n524), .Y(n522) );
  INVXL U1887 ( .A(s2[11]), .Y(N734) );
  AO22XL U1888 ( .A0(s2_ff[11]), .A1(n2002), .B0(N757), .B1(n509), .Y(n761) );
  INVX1 U1889 ( .A(n507), .Y(n2095) );
  INVX1 U1890 ( .A(n519), .Y(n2073) );
  INVX1 U1891 ( .A(n518), .Y(n2074) );
  INVX1 U1892 ( .A(n517), .Y(n2075) );
  INVX1 U1893 ( .A(n516), .Y(n2076) );
  INVX1 U1894 ( .A(n515), .Y(n2077) );
  INVX1 U1895 ( .A(n514), .Y(n2078) );
  INVX1 U1896 ( .A(n513), .Y(n2079) );
  INVX1 U1897 ( .A(n512), .Y(n2080) );
  INVX1 U1898 ( .A(n511), .Y(n2081) );
  INVX1 U1899 ( .A(n510), .Y(n2082) );
  INVXL U1900 ( .A(s1[11]), .Y(N697) );
  AO22XL U1901 ( .A0(s1_ff[11]), .A1(n2002), .B0(N720), .B1(n497), .Y(n760) );
  NOR3X1 U1902 ( .A(curr_state[0]), .B(curr_state[1]), .C(n115), .Y(n180) );
  CLKINVX1 U1903 ( .A(X[9]), .Y(n2108) );
  CLKINVX1 U1904 ( .A(X[8]), .Y(n2109) );
  CLKINVX1 U1905 ( .A(X[7]), .Y(n2110) );
  CLKINVX1 U1906 ( .A(X[6]), .Y(n2111) );
  CLKINVX1 U1907 ( .A(X[5]), .Y(n2112) );
  CLKINVX1 U1908 ( .A(X[4]), .Y(n2113) );
  CLKINVX1 U1909 ( .A(X[3]), .Y(n2114) );
  CLKINVX1 U1910 ( .A(X[2]), .Y(n2115) );
  CLKINVX1 U1911 ( .A(X[1]), .Y(n2116) );
  CLKINVX1 U1912 ( .A(X[0]), .Y(n2117) );
  CLKINVX1 U1913 ( .A(Y[9]), .Y(n2118) );
  CLKINVX1 U1914 ( .A(Y[8]), .Y(n2119) );
  CLKINVX1 U1915 ( .A(Y[7]), .Y(n2120) );
  CLKINVX1 U1916 ( .A(Y[6]), .Y(n2121) );
  CLKINVX1 U1917 ( .A(Y[5]), .Y(n2122) );
  CLKINVX1 U1918 ( .A(Y[4]), .Y(n2123) );
  CLKINVX1 U1919 ( .A(Y[3]), .Y(n2124) );
  CLKINVX1 U1920 ( .A(Y[2]), .Y(n2125) );
  CLKINVX1 U1921 ( .A(Y[1]), .Y(n2126) );
  CLKINVX1 U1922 ( .A(Y[0]), .Y(n2127) );
  CLKINVX1 U1923 ( .A(R[0]), .Y(n2138) );
  CLKINVX1 U1924 ( .A(R[10]), .Y(n2128) );
  CLKINVX1 U1925 ( .A(R[9]), .Y(n2129) );
  CLKINVX1 U1926 ( .A(R[8]), .Y(n2130) );
  CLKINVX1 U1927 ( .A(R[7]), .Y(n2131) );
  CLKINVX1 U1928 ( .A(R[6]), .Y(n2132) );
  CLKINVX1 U1929 ( .A(R[5]), .Y(n2133) );
  CLKINVX1 U1930 ( .A(R[4]), .Y(n2134) );
  CLKINVX1 U1931 ( .A(R[3]), .Y(n2135) );
  CLKINVX1 U1932 ( .A(R[2]), .Y(n2136) );
  CLKINVX1 U1933 ( .A(R[1]), .Y(n2137) );
  NOR2XL U1934 ( .A(n186), .B(curr_state[2]), .Y(n290) );
  NOR3X1 U1935 ( .A(n2153), .B(loc_ff_cnt[1]), .C(n2156), .Y(n190) );
  NAND2X1 U1936 ( .A(n443), .B(n140), .Y(n185) );
  NOR3X1 U1937 ( .A(n116), .B(curr_state[2]), .C(n117), .Y(n184) );
  NOR3X1 U1938 ( .A(n115), .B(n116), .C(n117), .Y(N1518) );
  OAI21XL U1939 ( .A0(n443), .A1(n140), .B0(n185), .Y(n562) );
  CLKINVX1 U1940 ( .A(reset), .Y(n2107) );
  INVX6 U1941 ( .A(n2061), .Y(n2058) );
  INVX6 U1942 ( .A(n2061), .Y(n2059) );
  CLKBUFX3 U1943 ( .A(n2070), .Y(n2065) );
  CLKBUFX3 U1944 ( .A(n2070), .Y(n2064) );
  CLKBUFX3 U1945 ( .A(n2070), .Y(n2063) );
  CLKBUFX3 U1946 ( .A(n2070), .Y(n2062) );
  CLKBUFX3 U1947 ( .A(n2070), .Y(n2066) );
  CLKBUFX3 U1948 ( .A(n2070), .Y(n2069) );
  CLKBUFX3 U1949 ( .A(n2070), .Y(n2068) );
  CLKBUFX3 U1950 ( .A(n2070), .Y(n2067) );
  INVX3 U1951 ( .A(n2061), .Y(n2060) );
  CLKBUFX3 U1952 ( .A(n2071), .Y(n2061) );
  CLKBUFX3 U1953 ( .A(n2072), .Y(n2071) );
  CLKBUFX3 U1954 ( .A(n2071), .Y(n2070) );
  CLKINVX1 U1955 ( .A(cross_result[23]), .Y(n2072) );
  CLKINVX1 U1956 ( .A(s0[1]), .Y(N670) );
  CLKINVX1 U1957 ( .A(s0[9]), .Y(N662) );
  CLKINVX1 U1958 ( .A(s0[8]), .Y(N663) );
  CLKINVX1 U1959 ( .A(s0[6]), .Y(N665) );
  CLKINVX1 U1960 ( .A(s0[5]), .Y(N666) );
  CLKINVX1 U1961 ( .A(s0[4]), .Y(N667) );
  CLKINVX1 U1962 ( .A(s0[3]), .Y(N668) );
  CLKINVX1 U1963 ( .A(s0[10]), .Y(N661) );
  AO22X1 U1964 ( .A0(N582), .A1(n2050), .B0(N558), .B1(n2053), .Y(
        s_mul_out[20]) );
  AO22X1 U1965 ( .A0(N581), .A1(n2050), .B0(N557), .B1(n2053), .Y(
        s_mul_out[19]) );
  AO22X1 U1966 ( .A0(N580), .A1(n2050), .B0(N556), .B1(n2053), .Y(
        s_mul_out[18]) );
  AO22X1 U1967 ( .A0(N578), .A1(n2050), .B0(N554), .B1(n2053), .Y(
        s_mul_out[16]) );
  AO22X1 U1968 ( .A0(N579), .A1(n2050), .B0(N555), .B1(n2053), .Y(
        s_mul_out[17]) );
  AO22X1 U1969 ( .A0(N577), .A1(n2049), .B0(N553), .B1(n2054), .Y(
        s_mul_out[15]) );
  AO22X1 U1970 ( .A0(N576), .A1(n2050), .B0(N552), .B1(n2054), .Y(
        s_mul_out[14]) );
  INVX3 U1971 ( .A(n2052), .Y(n2049) );
  INVX3 U1972 ( .A(n2051), .Y(n2050) );
  CLKBUFX3 U1973 ( .A(n181), .Y(n2055) );
  AO22X1 U1974 ( .A0(N575), .A1(n2049), .B0(N551), .B1(n2054), .Y(
        s_mul_out[13]) );
  AO22X1 U1975 ( .A0(N574), .A1(n2049), .B0(N550), .B1(n2054), .Y(
        s_mul_out[12]) );
  AO22X1 U1976 ( .A0(N573), .A1(n2049), .B0(N549), .B1(n2054), .Y(
        s_mul_out[11]) );
  AO22X1 U1977 ( .A0(N572), .A1(n2049), .B0(N548), .B1(n2054), .Y(
        s_mul_out[10]) );
  AO22X1 U1978 ( .A0(N571), .A1(n2050), .B0(N547), .B1(n2054), .Y(s_mul_out[9]) );
  AO22X1 U1979 ( .A0(N570), .A1(n2050), .B0(N546), .B1(n2054), .Y(s_mul_out[8]) );
  AO22X1 U1980 ( .A0(N568), .A1(n2050), .B0(N544), .B1(n2054), .Y(s_mul_out[6]) );
  AO22X1 U1981 ( .A0(N569), .A1(n2050), .B0(N545), .B1(n2054), .Y(s_mul_out[7]) );
  AO22X1 U1982 ( .A0(N567), .A1(n2050), .B0(N543), .B1(n2054), .Y(s_mul_out[5]) );
  CLKBUFX3 U1983 ( .A(n1778), .Y(n1864) );
  CLKBUFX3 U1984 ( .A(n1777), .Y(n1940) );
  CLKBUFX3 U1985 ( .A(n1777), .Y(n1939) );
  CLKBUFX3 U1986 ( .A(n1778), .Y(n1863) );
  NOR2X1 U1987 ( .A(n1996), .B(n1992), .Y(n366) );
  NOR2X1 U1988 ( .A(n1996), .B(n2034), .Y(n327) );
  NOR2X1 U1989 ( .A(n1997), .B(n2020), .Y(n404) );
  NOR2X1 U1990 ( .A(n1997), .B(n2012), .Y(n441) );
  NOR2X1 U1991 ( .A(n1996), .B(n1994), .Y(n287) );
  NOR2X1 U1992 ( .A(n1997), .B(n2155), .Y(n480) );
  CLKBUFX3 U1993 ( .A(n2151), .Y(n1994) );
  CLKBUFX3 U1994 ( .A(n292), .Y(n2037) );
  CLKBUFX3 U1995 ( .A(n292), .Y(n2038) );
  CLKBUFX3 U1996 ( .A(n369), .Y(n2023) );
  CLKBUFX3 U1997 ( .A(n369), .Y(n2024) );
  CLKBUFX3 U1998 ( .A(n406), .Y(n2015) );
  CLKBUFX3 U1999 ( .A(n406), .Y(n2016) );
  CLKBUFX3 U2000 ( .A(n196), .Y(n2039) );
  CLKBUFX3 U2001 ( .A(n196), .Y(n2040) );
  AND2X2 U2002 ( .A(n2001), .B(n2049), .Y(n524) );
  NAND2X1 U2003 ( .A(n2049), .B(n1997), .Y(n547) );
  CLKBUFX3 U2004 ( .A(n2151), .Y(n1995) );
  CLKBUFX3 U2005 ( .A(n444), .Y(n2007) );
  CLKBUFX3 U2006 ( .A(n444), .Y(n2008) );
  NAND2X1 U2007 ( .A(n2049), .B(n2152), .Y(n552) );
  CLKBUFX3 U2008 ( .A(n566), .Y(n1998) );
  CLKBUFX3 U2009 ( .A(n566), .Y(n1999) );
  CLKBUFX3 U2010 ( .A(n566), .Y(n2000) );
  CLKBUFX3 U2011 ( .A(n1983), .Y(n1981) );
  CLKBUFX3 U2012 ( .A(n1984), .Y(n1980) );
  CLKBUFX3 U2013 ( .A(n1984), .Y(n1979) );
  CLKBUFX3 U2014 ( .A(n1985), .Y(n1978) );
  CLKBUFX3 U2015 ( .A(n1985), .Y(n1977) );
  CLKBUFX3 U2016 ( .A(n1986), .Y(n1976) );
  CLKBUFX3 U2017 ( .A(n1986), .Y(n1975) );
  CLKBUFX3 U2018 ( .A(n1987), .Y(n1974) );
  CLKBUFX3 U2019 ( .A(n1987), .Y(n1973) );
  CLKBUFX3 U2020 ( .A(n1988), .Y(n1972) );
  CLKBUFX3 U2021 ( .A(n1988), .Y(n1971) );
  CLKBUFX3 U2022 ( .A(n1989), .Y(n1970) );
  CLKBUFX3 U2023 ( .A(n1989), .Y(n1969) );
  CLKBUFX3 U2024 ( .A(n1990), .Y(n1968) );
  CLKBUFX3 U2025 ( .A(n1990), .Y(n1967) );
  CLKBUFX3 U2026 ( .A(n1953), .Y(n1966) );
  CLKBUFX3 U2027 ( .A(n1984), .Y(n1965) );
  CLKBUFX3 U2028 ( .A(n1954), .Y(n1964) );
  CLKBUFX3 U2029 ( .A(n1985), .Y(n1963) );
  CLKBUFX3 U2030 ( .A(n1954), .Y(n1962) );
  CLKBUFX3 U2031 ( .A(n1983), .Y(n1961) );
  CLKBUFX3 U2032 ( .A(n1991), .Y(n1960) );
  CLKBUFX3 U2033 ( .A(n1991), .Y(n1959) );
  CLKBUFX3 U2034 ( .A(n1955), .Y(n1958) );
  CLKBUFX3 U2035 ( .A(n1955), .Y(n1957) );
  CLKBUFX3 U2036 ( .A(n1983), .Y(n1982) );
  AO22X1 U2037 ( .A0(N584), .A1(n2050), .B0(N560), .B1(n2054), .Y(
        s_mul_out[22]) );
  CLKINVX1 U2038 ( .A(s2[1]), .Y(N744) );
  CLKINVX1 U2039 ( .A(s1[1]), .Y(N707) );
  CLKINVX1 U2040 ( .A(s2[3]), .Y(N742) );
  CLKINVX1 U2041 ( .A(s1[3]), .Y(N705) );
  CLKINVX1 U2042 ( .A(s2[5]), .Y(N740) );
  CLKINVX1 U2043 ( .A(s1[5]), .Y(N703) );
  CLKINVX1 U2044 ( .A(s2[7]), .Y(N738) );
  CLKINVX1 U2045 ( .A(s1[7]), .Y(N701) );
  CLKINVX1 U2046 ( .A(s2[8]), .Y(N737) );
  CLKINVX1 U2047 ( .A(s1[8]), .Y(N700) );
  CLKINVX1 U2048 ( .A(s2[10]), .Y(N735) );
  CLKINVX1 U2049 ( .A(s1[10]), .Y(N698) );
  AO22X1 U2050 ( .A0(N583), .A1(n2050), .B0(N559), .B1(n2054), .Y(
        s_mul_out[21]) );
  AO22X1 U2051 ( .A0(N566), .A1(n2050), .B0(N542), .B1(n2054), .Y(s_mul_out[4]) );
  CLKBUFX3 U2052 ( .A(n1773), .Y(n1868) );
  CLKBUFX3 U2053 ( .A(n1772), .Y(n1944) );
  CLKBUFX3 U2054 ( .A(n1776), .Y(n1867) );
  CLKBUFX3 U2055 ( .A(n1942), .Y(n1943) );
  CLKBUFX3 U2056 ( .A(n1775), .Y(n1938) );
  CLKBUFX3 U2057 ( .A(n1854), .Y(n1860) );
  CLKBUFX3 U2058 ( .A(n1936), .Y(n1937) );
  CLKBUFX3 U2059 ( .A(n1774), .Y(n1941) );
  CLKBUFX3 U2060 ( .A(N393), .Y(n1945) );
  CLKBUFX3 U2061 ( .A(N347), .Y(n1946) );
  AO22X1 U2062 ( .A0(N564), .A1(n2050), .B0(N540), .B1(n2054), .Y(s_mul_out[2]) );
  CLKBUFX3 U2063 ( .A(n2160), .Y(n1996) );
  CLKINVX1 U2064 ( .A(n291), .Y(n2161) );
  CLKBUFX3 U2065 ( .A(n2150), .Y(n1992) );
  CLKBUFX3 U2066 ( .A(n295), .Y(n2034) );
  CLKBUFX3 U2067 ( .A(n372), .Y(n2020) );
  CLKBUFX3 U2068 ( .A(n409), .Y(n2012) );
  INVX3 U2069 ( .A(n1950), .Y(n2155) );
  CLKBUFX3 U2070 ( .A(n193), .Y(n2041) );
  CLKBUFX3 U2071 ( .A(n332), .Y(n2027) );
  CLKBUFX3 U2072 ( .A(n293), .Y(n2035) );
  CLKBUFX3 U2073 ( .A(n370), .Y(n2021) );
  CLKBUFX3 U2074 ( .A(n407), .Y(n2013) );
  CLKBUFX3 U2075 ( .A(n447), .Y(n2004) );
  CLKBUFX3 U2076 ( .A(n445), .Y(n2005) );
  CLKBUFX3 U2077 ( .A(n447), .Y(n2003) );
  CLKBUFX3 U2078 ( .A(n296), .Y(n2031) );
  CLKBUFX3 U2079 ( .A(n296), .Y(n2032) );
  CLKBUFX3 U2080 ( .A(n373), .Y(n2017) );
  CLKBUFX3 U2081 ( .A(n373), .Y(n2018) );
  CLKBUFX3 U2082 ( .A(n410), .Y(n2009) );
  CLKBUFX3 U2083 ( .A(n410), .Y(n2010) );
  CLKBUFX3 U2084 ( .A(n334), .Y(n2025) );
  CLKBUFX3 U2085 ( .A(n2160), .Y(n1997) );
  CLKBUFX3 U2086 ( .A(n334), .Y(n2026) );
  CLKBUFX3 U2087 ( .A(n293), .Y(n2036) );
  CLKBUFX3 U2088 ( .A(n370), .Y(n2022) );
  CLKBUFX3 U2089 ( .A(n407), .Y(n2014) );
  CLKBUFX3 U2090 ( .A(n193), .Y(n2042) );
  CLKBUFX3 U2091 ( .A(n332), .Y(n2028) );
  CLKBUFX3 U2092 ( .A(n445), .Y(n2006) );
  AND2X2 U2093 ( .A(n2001), .B(n2162), .Y(n482) );
  NAND2X1 U2094 ( .A(n2157), .B(n564), .Y(n561) );
  CLKBUFX3 U2095 ( .A(n2150), .Y(n1993) );
  CLKINVX1 U2096 ( .A(n550), .Y(n2152) );
  CLKBUFX3 U2097 ( .A(n494), .Y(n2001) );
  CLKBUFX3 U2098 ( .A(n331), .Y(n2029) );
  CLKBUFX3 U2099 ( .A(n331), .Y(n2030) );
  CLKBUFX3 U2100 ( .A(n191), .Y(n2043) );
  CLKBUFX3 U2101 ( .A(n191), .Y(n2044) );
  CLKBUFX3 U2102 ( .A(n494), .Y(n2002) );
  CLKBUFX3 U2103 ( .A(n1955), .Y(n1956) );
  CLKBUFX3 U2104 ( .A(n1951), .Y(n1983) );
  CLKBUFX3 U2105 ( .A(n1951), .Y(n1984) );
  CLKBUFX3 U2106 ( .A(n1951), .Y(n1985) );
  CLKBUFX3 U2107 ( .A(n1952), .Y(n1986) );
  CLKBUFX3 U2108 ( .A(n1952), .Y(n1987) );
  CLKBUFX3 U2109 ( .A(n1952), .Y(n1988) );
  CLKBUFX3 U2110 ( .A(n1953), .Y(n1989) );
  CLKBUFX3 U2111 ( .A(n1953), .Y(n1990) );
  CLKBUFX3 U2112 ( .A(n1954), .Y(n1991) );
  CLKINVX1 U2113 ( .A(n481), .Y(n2162) );
  CLKBUFX3 U2114 ( .A(n182), .Y(n2048) );
  CLKBUFX3 U2115 ( .A(n180), .Y(n2057) );
  CLKBUFX3 U2116 ( .A(n180), .Y(n2056) );
  AOI22X2 U2117 ( .A0(n2064), .A1(N888), .B0(n2059), .B1(N925), .Y(n256) );
  AOI22X2 U2118 ( .A0(n2063), .A1(N898), .B0(n2059), .B1(N935), .Y(n226) );
  AOI22X2 U2119 ( .A0(n2063), .A1(N899), .B0(n2059), .B1(N936), .Y(n223) );
  AOI22X2 U2120 ( .A0(n2063), .A1(N900), .B0(n2059), .B1(N937), .Y(n220) );
  AOI22X2 U2121 ( .A0(n2063), .A1(N901), .B0(n2059), .B1(N938), .Y(n217) );
  AOI22X2 U2122 ( .A0(n2062), .A1(N902), .B0(n2059), .B1(N939), .Y(n214) );
  AOI22X2 U2123 ( .A0(n2062), .A1(N903), .B0(n2060), .B1(N940), .Y(n211) );
  AOI22X2 U2124 ( .A0(n2062), .A1(N904), .B0(n2060), .B1(N941), .Y(n208) );
  AOI22X2 U2125 ( .A0(n2062), .A1(N905), .B0(n2060), .B1(N942), .Y(n205) );
  AOI22X2 U2126 ( .A0(n2062), .A1(N906), .B0(n2060), .B1(N943), .Y(n202) );
  AOI22X2 U2127 ( .A0(n2062), .A1(N907), .B0(n2060), .B1(N944), .Y(n199) );
  AOI22X2 U2128 ( .A0(n2062), .A1(N909), .B0(n2060), .B1(N946), .Y(n286) );
  AOI22X2 U2129 ( .A0(n2058), .A1(N888), .B0(n2066), .B1(N925), .Y(n254) );
  AOI22X2 U2130 ( .A0(n2058), .A1(N898), .B0(n2068), .B1(N935), .Y(n224) );
  AOI22X2 U2131 ( .A0(N908), .A1(n2066), .B0(n2060), .B1(N945), .Y(n195) );
  AOI22X2 U2132 ( .A0(n2058), .A1(N908), .B0(N945), .B1(n2068), .Y(n192) );
  AOI22X2 U2133 ( .A0(n2058), .A1(N899), .B0(n2069), .B1(N936), .Y(n221) );
  AOI22X2 U2134 ( .A0(n2058), .A1(N900), .B0(n2068), .B1(N937), .Y(n218) );
  AOI22X2 U2135 ( .A0(n2058), .A1(N901), .B0(n2069), .B1(N938), .Y(n215) );
  AOI22X2 U2136 ( .A0(n2058), .A1(N902), .B0(n2069), .B1(N939), .Y(n212) );
  AOI22X2 U2137 ( .A0(n2058), .A1(N903), .B0(n2069), .B1(N940), .Y(n209) );
  AOI22X2 U2138 ( .A0(n2058), .A1(N904), .B0(n2068), .B1(N941), .Y(n206) );
  AOI22X2 U2139 ( .A0(n2058), .A1(N905), .B0(n2069), .B1(N942), .Y(n203) );
  AOI22X2 U2140 ( .A0(n2058), .A1(N906), .B0(n2067), .B1(N943), .Y(n200) );
  AOI22X2 U2141 ( .A0(n2058), .A1(N907), .B0(n2062), .B1(N944), .Y(n197) );
  AOI22X2 U2142 ( .A0(n2059), .A1(N909), .B0(n2069), .B1(N946), .Y(n284) );
  AOI22X2 U2143 ( .A0(n2066), .A1(N879), .B0(n2060), .B1(N916), .Y(n283) );
  AOI22X2 U2144 ( .A0(n2065), .A1(N880), .B0(n2060), .B1(N917), .Y(n280) );
  AOI22X2 U2145 ( .A0(n2066), .A1(N881), .B0(n2059), .B1(N918), .Y(n277) );
  AOI22X2 U2146 ( .A0(n2065), .A1(N882), .B0(n2059), .B1(N919), .Y(n274) );
  AOI22X2 U2147 ( .A0(n2065), .A1(N883), .B0(n2059), .B1(N920), .Y(n271) );
  AOI22X2 U2148 ( .A0(n2065), .A1(N884), .B0(n2059), .B1(N921), .Y(n268) );
  AOI22X2 U2149 ( .A0(n2065), .A1(N885), .B0(n2059), .B1(N922), .Y(n265) );
  AOI22X2 U2150 ( .A0(n2065), .A1(N886), .B0(n2059), .B1(N923), .Y(n262) );
  AOI22X2 U2151 ( .A0(n2065), .A1(N887), .B0(n2059), .B1(N924), .Y(n259) );
  AOI22X2 U2152 ( .A0(n2064), .A1(N889), .B0(n2059), .B1(N926), .Y(n253) );
  AOI22X2 U2153 ( .A0(n2064), .A1(N890), .B0(n2059), .B1(N927), .Y(n250) );
  AOI22X2 U2154 ( .A0(n2064), .A1(N891), .B0(n2059), .B1(N928), .Y(n247) );
  AOI22X2 U2155 ( .A0(n2064), .A1(N892), .B0(n2059), .B1(N929), .Y(n244) );
  AOI22X2 U2156 ( .A0(n2064), .A1(N893), .B0(n2059), .B1(N930), .Y(n241) );
  AOI22X2 U2157 ( .A0(n2064), .A1(N894), .B0(n2059), .B1(N931), .Y(n238) );
  AOI22X2 U2158 ( .A0(n2063), .A1(N895), .B0(n2059), .B1(N932), .Y(n235) );
  AOI22X2 U2159 ( .A0(n2063), .A1(N896), .B0(n2060), .B1(N933), .Y(n232) );
  AOI22X2 U2160 ( .A0(n2063), .A1(N897), .B0(n2059), .B1(N934), .Y(n229) );
  AOI22X2 U2161 ( .A0(n2059), .A1(N879), .B0(n2066), .B1(N916), .Y(n281) );
  AOI22X2 U2162 ( .A0(n2059), .A1(N880), .B0(n2070), .B1(N917), .Y(n278) );
  AOI22X2 U2163 ( .A0(n2059), .A1(N881), .B0(n2069), .B1(N918), .Y(n275) );
  AOI22X2 U2164 ( .A0(n2058), .A1(N882), .B0(n2069), .B1(N919), .Y(n272) );
  AOI22X2 U2165 ( .A0(n2059), .A1(N883), .B0(n2068), .B1(N920), .Y(n269) );
  AOI22X2 U2166 ( .A0(n2059), .A1(N884), .B0(n2068), .B1(N921), .Y(n266) );
  AOI22X2 U2167 ( .A0(n2059), .A1(N885), .B0(n2067), .B1(N922), .Y(n263) );
  AOI22X2 U2168 ( .A0(n2058), .A1(N886), .B0(n2067), .B1(N923), .Y(n260) );
  AOI22X2 U2169 ( .A0(n2058), .A1(N887), .B0(n2066), .B1(N924), .Y(n257) );
  AOI22X2 U2170 ( .A0(n2058), .A1(N889), .B0(n2067), .B1(N926), .Y(n251) );
  AOI22X2 U2171 ( .A0(n2058), .A1(N890), .B0(n2066), .B1(N927), .Y(n248) );
  AOI22X2 U2172 ( .A0(n2058), .A1(N891), .B0(n2066), .B1(N928), .Y(n245) );
  AOI22X2 U2173 ( .A0(n2058), .A1(N892), .B0(n2067), .B1(N929), .Y(n242) );
  AOI22X2 U2174 ( .A0(n2058), .A1(N893), .B0(n2067), .B1(N930), .Y(n239) );
  AOI22X2 U2175 ( .A0(n2058), .A1(N894), .B0(n2067), .B1(N931), .Y(n236) );
  AOI22X2 U2176 ( .A0(n2058), .A1(N895), .B0(n2068), .B1(N932), .Y(n233) );
  AOI22X2 U2177 ( .A0(n2058), .A1(N896), .B0(n2067), .B1(N933), .Y(n230) );
  AOI22X2 U2178 ( .A0(n2058), .A1(N897), .B0(n2068), .B1(N934), .Y(n227) );
  CLKBUFX3 U2179 ( .A(n1771), .Y(n1862) );
  CLKBUFX3 U2180 ( .A(n1865), .Y(n1866) );
  CLKBUFX3 U2181 ( .A(n1860), .Y(n1861) );
  CLKBUFX3 U2182 ( .A(n1855), .Y(n1865) );
  CLKBUFX3 U2183 ( .A(n1779), .Y(n1942) );
  CLKBUFX3 U2184 ( .A(n1931), .Y(n1936) );
  AO22X1 U2185 ( .A0(N565), .A1(n2050), .B0(N541), .B1(n2054), .Y(s_mul_out[3]) );
  NOR2BX1 U2186 ( .AN(N1518), .B(N602), .Y(N604) );
  AO22X1 U2187 ( .A0(N563), .A1(n2049), .B0(N539), .B1(n2053), .Y(s_mul_out[1]) );
  NOR2X1 U2188 ( .A(n1947), .B(n330), .Y(n291) );
  BUFX4 U2189 ( .A(n457), .Y(n1950) );
  OAI22XL U2190 ( .A0(n1997), .A1(n479), .B0(n291), .B1(n2157), .Y(n457) );
  CLKINVX1 U2191 ( .A(n570), .Y(n2154) );
  CLKBUFX3 U2192 ( .A(n295), .Y(n2033) );
  CLKBUFX3 U2193 ( .A(n372), .Y(n2019) );
  NAND2BX1 U2194 ( .AN(n2033), .B(n1947), .Y(n292) );
  NAND2BX1 U2195 ( .AN(n2019), .B(n1947), .Y(n369) );
  NAND2BX1 U2196 ( .AN(n2011), .B(n1947), .Y(n406) );
  CLKBUFX3 U2197 ( .A(n409), .Y(n2011) );
  AOI2BB2X2 U2198 ( .B0(n2153), .B1(n550), .A0N(n1947), .A1N(n547), .Y(n560)
         );
  NOR2X1 U2199 ( .A(n1997), .B(n190), .Y(n550) );
  NOR2X1 U2200 ( .A(N1518), .B(n2056), .Y(n494) );
  NAND2X1 U2201 ( .A(n1947), .B(n1950), .Y(n444) );
  CLKINVX1 U2202 ( .A(n188), .Y(n2157) );
  NAND2X1 U2203 ( .A(n190), .B(n330), .Y(n556) );
  NOR2X1 U2204 ( .A(N1518), .B(n2045), .Y(n566) );
  NAND2X1 U2205 ( .A(n1947), .B(n2157), .Y(n558) );
  CLKBUFX3 U2206 ( .A(n184), .Y(n2046) );
  CLKBUFX3 U2207 ( .A(n184), .Y(n2045) );
  CLKBUFX3 U2208 ( .A(n184), .Y(n2047) );
  CLKBUFX3 U2209 ( .A(n2107), .Y(n1951) );
  CLKBUFX3 U2210 ( .A(n2107), .Y(n1952) );
  CLKBUFX3 U2211 ( .A(n2107), .Y(n1953) );
  CLKBUFX3 U2212 ( .A(n2107), .Y(n1954) );
  CLKBUFX3 U2213 ( .A(n2107), .Y(n1955) );
  AO22X1 U2214 ( .A0(dis_a_square_ff[0]), .A1(n2056), .B0(n181), .B1(
        s_mul_out[0]), .Y(radicand_in[0]) );
  AO22X1 U2215 ( .A0(dis_a_square_ff[1]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[1]), .Y(radicand_in[1]) );
  AOI222XL U2216 ( .A0(s2_ff[9]), .A1(n2002), .B0(s2[9]), .B1(n1780), .C0(N755), .C1(n509), .Y(n518) );
  AOI222XL U2217 ( .A0(s2_ff[8]), .A1(n2002), .B0(s2[8]), .B1(n1780), .C0(N754), .C1(n509), .Y(n517) );
  AOI222XL U2218 ( .A0(s2_ff[7]), .A1(n2002), .B0(s2[7]), .B1(n1780), .C0(N753), .C1(n509), .Y(n516) );
  AOI222XL U2219 ( .A0(s2_ff[6]), .A1(n2002), .B0(s2[6]), .B1(n1780), .C0(N752), .C1(n509), .Y(n515) );
  AOI222XL U2220 ( .A0(s2_ff[5]), .A1(n2002), .B0(s2[5]), .B1(n1780), .C0(N751), .C1(n509), .Y(n514) );
  AOI222XL U2221 ( .A0(s2_ff[4]), .A1(n2002), .B0(s2[4]), .B1(n1780), .C0(N750), .C1(n509), .Y(n513) );
  AOI222XL U2222 ( .A0(s2_ff[3]), .A1(n2002), .B0(s2[3]), .B1(n1780), .C0(N749), .C1(n509), .Y(n512) );
  AOI222XL U2223 ( .A0(s2_ff[2]), .A1(n2002), .B0(s2[2]), .B1(n1780), .C0(N748), .C1(n509), .Y(n511) );
  AOI222XL U2224 ( .A0(s2_ff[1]), .A1(n2002), .B0(s2[1]), .B1(n1780), .C0(N747), .C1(n509), .Y(n510) );
  AOI222XL U2225 ( .A0(n1769), .A1(n2001), .B0(s2[0]), .B1(n1780), .C0(N746), 
        .C1(n509), .Y(n507) );
  OAI211X1 U2226 ( .A0(n2049), .A1(n2149), .B0(n542), .C0(n543), .Y(n771) );
  INVXL U2227 ( .A(dis_a[10]), .Y(n2149) );
  NAND2X1 U2228 ( .A(s0[10]), .B(n1768), .Y(n542) );
  AOI22X1 U2229 ( .A0(N682), .A1(n1949), .B0(s0_ff[10]), .B1(n524), .Y(n543)
         );
  OAI211X1 U2230 ( .A0(n2049), .A1(n2140), .B0(n545), .C0(n546), .Y(n772) );
  NAND2X1 U2231 ( .A(s0[0]), .B(n1768), .Y(n545) );
  OAI211X1 U2232 ( .A0(n2049), .A1(n2145), .B0(n532), .C0(n533), .Y(n766) );
  NAND2X1 U2233 ( .A(s0[5]), .B(n1768), .Y(n532) );
  OAI211X1 U2234 ( .A0(n2049), .A1(n2144), .B0(n530), .C0(n531), .Y(n765) );
  NAND2X1 U2235 ( .A(s0[4]), .B(n1768), .Y(n530) );
  OAI211X1 U2236 ( .A0(n2049), .A1(n2143), .B0(n528), .C0(n529), .Y(n764) );
  NAND2X1 U2237 ( .A(s0[3]), .B(n1768), .Y(n528) );
  OAI211X1 U2238 ( .A0(n2050), .A1(n2142), .B0(n526), .C0(n527), .Y(n763) );
  NAND2X1 U2239 ( .A(s0[2]), .B(n1768), .Y(n526) );
  OAI211X1 U2240 ( .A0(n2049), .A1(n2147), .B0(n540), .C0(n541), .Y(n770) );
  NAND2X1 U2241 ( .A(s0[9]), .B(n1768), .Y(n540) );
  OAI211X1 U2242 ( .A0(n2049), .A1(n2148), .B0(n538), .C0(n539), .Y(n769) );
  NAND2X1 U2243 ( .A(s0[8]), .B(n1768), .Y(n538) );
  OAI211X1 U2244 ( .A0(n2049), .A1(n2139), .B0(n536), .C0(n537), .Y(n768) );
  NAND2X1 U2245 ( .A(s0[7]), .B(n1768), .Y(n536) );
  OAI211X1 U2246 ( .A0(n2049), .A1(n2146), .B0(n534), .C0(n535), .Y(n767) );
  NAND2X1 U2247 ( .A(s0[6]), .B(n1768), .Y(n534) );
  OAI211X1 U2248 ( .A0(n2049), .A1(n2141), .B0(n521), .C0(n522), .Y(n762) );
  NAND2X1 U2249 ( .A(s0[1]), .B(n1768), .Y(n521) );
  AOI222XL U2250 ( .A0(s1_ff[9]), .A1(n2001), .B0(s1[9]), .B1(n496), .C0(N718), 
        .C1(n497), .Y(n505) );
  AOI222XL U2251 ( .A0(s1_ff[8]), .A1(n2001), .B0(s1[8]), .B1(n496), .C0(N717), 
        .C1(n497), .Y(n504) );
  AOI222XL U2252 ( .A0(s1_ff[7]), .A1(n2001), .B0(s1[7]), .B1(n496), .C0(N716), 
        .C1(n497), .Y(n503) );
  AOI222XL U2253 ( .A0(s1_ff[6]), .A1(n2002), .B0(s1[6]), .B1(n496), .C0(N715), 
        .C1(n497), .Y(n502) );
  AOI222XL U2254 ( .A0(s1_ff[5]), .A1(n2001), .B0(s1[5]), .B1(n496), .C0(N714), 
        .C1(n497), .Y(n501) );
  AOI222XL U2255 ( .A0(s1_ff[4]), .A1(n2001), .B0(s1[4]), .B1(n496), .C0(N713), 
        .C1(n497), .Y(n500) );
  AOI222XL U2256 ( .A0(s1_ff[3]), .A1(n2001), .B0(s1[3]), .B1(n496), .C0(N712), 
        .C1(n497), .Y(n499) );
  AOI222XL U2257 ( .A0(s1_ff[2]), .A1(n2001), .B0(s1[2]), .B1(n496), .C0(N711), 
        .C1(n497), .Y(n498) );
  AOI222XL U2258 ( .A0(s1_ff[1]), .A1(n2001), .B0(s1[1]), .B1(n496), .C0(N710), 
        .C1(n497), .Y(n495) );
  CLKINVX1 U2259 ( .A(n483), .Y(n2096) );
  AOI222XL U2260 ( .A0(s_ff[10]), .A1(n482), .B0(n1770), .B1(n2056), .C0(
        dis_a[10]), .C1(n481), .Y(n483) );
  CLKINVX1 U2261 ( .A(n486), .Y(n2099) );
  AOI222XL U2262 ( .A0(s_ff[7]), .A1(n482), .B0(n1785), .B1(n2056), .C0(
        dis_a[7]), .C1(n481), .Y(n486) );
  CLKINVX1 U2263 ( .A(n485), .Y(n2098) );
  AOI222XL U2264 ( .A0(s_ff[8]), .A1(n482), .B0(s[8]), .B1(n2056), .C0(
        dis_a[8]), .C1(n481), .Y(n485) );
  CLKINVX1 U2265 ( .A(n484), .Y(n2097) );
  AOI222XL U2266 ( .A0(s_ff[9]), .A1(n482), .B0(n1786), .B1(n2056), .C0(
        dis_a[9]), .C1(n481), .Y(n484) );
  CLKINVX1 U2267 ( .A(n491), .Y(n2104) );
  AOI222XL U2268 ( .A0(s_ff[2]), .A1(n482), .B0(s[2]), .B1(n2056), .C0(
        dis_a[2]), .C1(n481), .Y(n491) );
  CLKINVX1 U2269 ( .A(n490), .Y(n2103) );
  AOI222XL U2270 ( .A0(s_ff[3]), .A1(n482), .B0(s[3]), .B1(n2056), .C0(
        dis_a[3]), .C1(n481), .Y(n490) );
  CLKINVX1 U2271 ( .A(n489), .Y(n2102) );
  AOI222XL U2272 ( .A0(s_ff[4]), .A1(n482), .B0(s[4]), .B1(n2056), .C0(
        dis_a[4]), .C1(n481), .Y(n489) );
  CLKINVX1 U2273 ( .A(n488), .Y(n2101) );
  AOI222XL U2274 ( .A0(s_ff[5]), .A1(n482), .B0(s[5]), .B1(n2056), .C0(
        dis_a[5]), .C1(n481), .Y(n488) );
  CLKINVX1 U2275 ( .A(n487), .Y(n2100) );
  AOI222XL U2276 ( .A0(s_ff[6]), .A1(n482), .B0(s[6]), .B1(n2056), .C0(
        dis_a[6]), .C1(n481), .Y(n487) );
  CLKINVX1 U2277 ( .A(n493), .Y(n2106) );
  AOI222XL U2278 ( .A0(s_ff[0]), .A1(n482), .B0(s[0]), .B1(n2056), .C0(
        dis_a[0]), .C1(n481), .Y(n493) );
  CLKINVX1 U2279 ( .A(n492), .Y(n2105) );
  AOI222XL U2280 ( .A0(s_ff[1]), .A1(n482), .B0(s[1]), .B1(n2056), .C0(
        dis_a[1]), .C1(n481), .Y(n492) );
  AO22X1 U2281 ( .A0(dis_a_square_ff[15]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[15]), .Y(radicand_in[15]) );
  NAND2X1 U2282 ( .A(curr_state[0]), .B(n116), .Y(n186) );
  NAND2X1 U2283 ( .A(curr_state[1]), .B(n117), .Y(n187) );
  AO22X1 U2284 ( .A0(dis_a_square_ff[14]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[14]), .Y(radicand_in[14]) );
  AO22X1 U2285 ( .A0(dis_a_square_ff[12]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[12]), .Y(radicand_in[12]) );
  AO22X1 U2286 ( .A0(dis_a_square_ff[13]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[13]), .Y(radicand_in[13]) );
  AO22X1 U2287 ( .A0(dis_a_square_ff[10]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[10]), .Y(radicand_in[10]) );
  AO22X1 U2288 ( .A0(dis_a_square_ff[11]), .A1(n2057), .B0(n181), .B1(
        s_mul_out[11]), .Y(radicand_in[11]) );
  AO22X1 U2289 ( .A0(dis_a_square_ff[8]), .A1(n2056), .B0(n2055), .B1(
        s_mul_out[8]), .Y(radicand_in[8]) );
  AO22X1 U2290 ( .A0(dis_a_square_ff[9]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[9]), .Y(radicand_in[9]) );
  OAI221XL U2291 ( .A0(n2137), .A1(n2029), .B0(n195), .B1(n2028), .C0(n333), 
        .Y(n635) );
  AOI2BB2X1 U2292 ( .B0(\loc_r[2][1] ), .B1(n1993), .A0N(n192), .A1N(n2026), 
        .Y(n333) );
  OAI221XL U2293 ( .A0(n2137), .A1(n292), .B0(n195), .B1(n2036), .C0(n294), 
        .Y(n604) );
  AOI2BB2X1 U2294 ( .B0(\loc_r[1][1] ), .B1(n2033), .A0N(n192), .A1N(n296), 
        .Y(n294) );
  OAI221XL U2295 ( .A0(n2137), .A1(n2007), .B0(n195), .B1(n2006), .C0(n446), 
        .Y(n728) );
  AOI2BB2X1 U2296 ( .B0(\loc_r[5][1] ), .B1(n2155), .A0N(n192), .A1N(n2004), 
        .Y(n446) );
  OAI221XL U2297 ( .A0(n2137), .A1(n369), .B0(n195), .B1(n2022), .C0(n371), 
        .Y(n666) );
  AOI2BB2X1 U2298 ( .B0(\loc_r[3][1] ), .B1(n2019), .A0N(n192), .A1N(n373), 
        .Y(n371) );
  OAI221XL U2299 ( .A0(n2137), .A1(n406), .B0(n195), .B1(n2014), .C0(n408), 
        .Y(n697) );
  AOI2BB2X1 U2300 ( .B0(\loc_r[4][1] ), .B1(n2011), .A0N(n192), .A1N(n410), 
        .Y(n408) );
  OAI221XL U2301 ( .A0(n2117), .A1(n2029), .B0(n256), .B1(n2028), .C0(n354), 
        .Y(n655) );
  AOI2BB2X1 U2302 ( .B0(\loc_x[2][0] ), .B1(n1992), .A0N(n254), .A1N(n2025), 
        .Y(n354) );
  OAI221XL U2303 ( .A0(n2127), .A1(n2030), .B0(n226), .B1(n2027), .C0(n344), 
        .Y(n645) );
  AOI2BB2X1 U2304 ( .B0(\loc_y[2][0] ), .B1(n1993), .A0N(n224), .A1N(n2026), 
        .Y(n344) );
  OAI221XL U2305 ( .A0(n2117), .A1(n2037), .B0(n256), .B1(n2036), .C0(n316), 
        .Y(n624) );
  AOI2BB2X1 U2306 ( .B0(\loc_x[1][0] ), .B1(n2033), .A0N(n254), .A1N(n2031), 
        .Y(n316) );
  OAI221XL U2307 ( .A0(n2127), .A1(n2038), .B0(n226), .B1(n2035), .C0(n306), 
        .Y(n614) );
  AOI2BB2X1 U2308 ( .B0(\loc_y[1][0] ), .B1(n2034), .A0N(n224), .A1N(n2032), 
        .Y(n306) );
  OAI221XL U2309 ( .A0(n2117), .A1(n2023), .B0(n256), .B1(n2022), .C0(n393), 
        .Y(n686) );
  AOI2BB2X1 U2310 ( .B0(\loc_x[3][0] ), .B1(n2019), .A0N(n254), .A1N(n2017), 
        .Y(n393) );
  OAI221XL U2311 ( .A0(n2127), .A1(n2024), .B0(n226), .B1(n2021), .C0(n383), 
        .Y(n676) );
  AOI2BB2X1 U2312 ( .B0(\loc_y[3][0] ), .B1(n2020), .A0N(n224), .A1N(n2018), 
        .Y(n383) );
  OAI221XL U2313 ( .A0(n2117), .A1(n2015), .B0(n256), .B1(n2014), .C0(n430), 
        .Y(n717) );
  AOI2BB2X1 U2314 ( .B0(\loc_x[4][0] ), .B1(n2011), .A0N(n254), .A1N(n2009), 
        .Y(n430) );
  OAI221XL U2315 ( .A0(n2127), .A1(n2016), .B0(n226), .B1(n2013), .C0(n420), 
        .Y(n707) );
  AOI2BB2X1 U2316 ( .B0(\loc_y[4][0] ), .B1(n2012), .A0N(n224), .A1N(n2010), 
        .Y(n420) );
  OAI221XL U2317 ( .A0(n2043), .A1(n2117), .B0(n254), .B1(n2042), .C0(n255), 
        .Y(n593) );
  AOI2BB2X1 U2318 ( .B0(\loc_x[0][0] ), .B1(n1994), .A0N(n256), .A1N(n2039), 
        .Y(n255) );
  OAI221XL U2319 ( .A0(n2044), .A1(n2127), .B0(n224), .B1(n2041), .C0(n225), 
        .Y(n583) );
  AOI2BB2X1 U2320 ( .B0(\loc_y[0][0] ), .B1(n1995), .A0N(n226), .A1N(n2040), 
        .Y(n225) );
  OAI221XL U2321 ( .A0(n2138), .A1(n2029), .B0(n286), .B1(n2028), .C0(n364), 
        .Y(n665) );
  AOI2BB2X1 U2322 ( .B0(\loc_r[2][0] ), .B1(n1992), .A0N(n284), .A1N(n2025), 
        .Y(n364) );
  OAI221XL U2323 ( .A0(n2138), .A1(n2037), .B0(n286), .B1(n2036), .C0(n326), 
        .Y(n634) );
  AOI2BB2X1 U2324 ( .B0(\loc_r[1][0] ), .B1(n2033), .A0N(n284), .A1N(n2031), 
        .Y(n326) );
  OAI221XL U2325 ( .A0(n2138), .A1(n2007), .B0(n286), .B1(n2006), .C0(n478), 
        .Y(n758) );
  AOI2BB2X1 U2326 ( .B0(\loc_r[5][0] ), .B1(n2155), .A0N(n284), .A1N(n2003), 
        .Y(n478) );
  OAI221XL U2327 ( .A0(n2138), .A1(n2023), .B0(n286), .B1(n2022), .C0(n403), 
        .Y(n696) );
  AOI2BB2X1 U2328 ( .B0(\loc_r[3][0] ), .B1(n2019), .A0N(n284), .A1N(n2017), 
        .Y(n403) );
  OAI221XL U2329 ( .A0(n2138), .A1(n2015), .B0(n286), .B1(n2014), .C0(n440), 
        .Y(n727) );
  AOI2BB2X1 U2330 ( .B0(\loc_r[4][0] ), .B1(n2011), .A0N(n284), .A1N(n2009), 
        .Y(n440) );
  OAI221XL U2331 ( .A0(n2043), .A1(n2137), .B0(n192), .B1(n2042), .C0(n194), 
        .Y(n573) );
  AOI2BB2X1 U2332 ( .B0(\loc_r[0][1] ), .B1(n1995), .A0N(n195), .A1N(n2040), 
        .Y(n194) );
  OAI221XL U2333 ( .A0(n2043), .A1(n2138), .B0(n284), .B1(n2042), .C0(n285), 
        .Y(n603) );
  AOI2BB2X1 U2334 ( .B0(\loc_r[0][0] ), .B1(n1994), .A0N(n286), .A1N(n2039), 
        .Y(n285) );
  OAI221XL U2335 ( .A0(n2128), .A1(n2030), .B0(n223), .B1(n2027), .C0(n343), 
        .Y(n644) );
  AOI2BB2X1 U2336 ( .B0(\loc_r[2][10] ), .B1(n1993), .A0N(n221), .A1N(n2026), 
        .Y(n343) );
  OAI221XL U2337 ( .A0(n2129), .A1(n2030), .B0(n220), .B1(n2027), .C0(n342), 
        .Y(n643) );
  AOI2BB2X1 U2338 ( .B0(\loc_r[2][9] ), .B1(n1993), .A0N(n218), .A1N(n2026), 
        .Y(n342) );
  OAI221XL U2339 ( .A0(n2130), .A1(n2030), .B0(n217), .B1(n2027), .C0(n341), 
        .Y(n642) );
  AOI2BB2X1 U2340 ( .B0(\loc_r[2][8] ), .B1(n1993), .A0N(n215), .A1N(n2026), 
        .Y(n341) );
  OAI221XL U2341 ( .A0(n2131), .A1(n2029), .B0(n214), .B1(n2027), .C0(n340), 
        .Y(n641) );
  AOI2BB2X1 U2342 ( .B0(\loc_r[2][7] ), .B1(n1993), .A0N(n212), .A1N(n2026), 
        .Y(n340) );
  OAI221XL U2343 ( .A0(n2132), .A1(n2030), .B0(n211), .B1(n2027), .C0(n339), 
        .Y(n640) );
  AOI2BB2X1 U2344 ( .B0(\loc_r[2][6] ), .B1(n1993), .A0N(n209), .A1N(n2026), 
        .Y(n339) );
  OAI221XL U2345 ( .A0(n2133), .A1(n2030), .B0(n208), .B1(n2028), .C0(n338), 
        .Y(n639) );
  AOI2BB2X1 U2346 ( .B0(\loc_r[2][5] ), .B1(n1993), .A0N(n206), .A1N(n2026), 
        .Y(n338) );
  OAI221XL U2347 ( .A0(n2134), .A1(n2029), .B0(n205), .B1(n2028), .C0(n337), 
        .Y(n638) );
  AOI2BB2X1 U2348 ( .B0(\loc_r[2][4] ), .B1(n1993), .A0N(n203), .A1N(n2026), 
        .Y(n337) );
  OAI221XL U2349 ( .A0(n2135), .A1(n2030), .B0(n202), .B1(n2028), .C0(n336), 
        .Y(n637) );
  AOI2BB2X1 U2350 ( .B0(\loc_r[2][3] ), .B1(n1993), .A0N(n200), .A1N(n2026), 
        .Y(n336) );
  OAI221XL U2351 ( .A0(n2136), .A1(n331), .B0(n199), .B1(n2028), .C0(n335), 
        .Y(n636) );
  AOI2BB2X1 U2352 ( .B0(\loc_r[2][2] ), .B1(n1993), .A0N(n197), .A1N(n2026), 
        .Y(n335) );
  OAI221XL U2353 ( .A0(n2128), .A1(n2038), .B0(n223), .B1(n2035), .C0(n305), 
        .Y(n613) );
  AOI2BB2X1 U2354 ( .B0(\loc_r[1][10] ), .B1(n2034), .A0N(n221), .A1N(n2032), 
        .Y(n305) );
  OAI221XL U2355 ( .A0(n2129), .A1(n2038), .B0(n220), .B1(n2035), .C0(n304), 
        .Y(n612) );
  AOI2BB2X1 U2356 ( .B0(\loc_r[1][9] ), .B1(n2034), .A0N(n218), .A1N(n2032), 
        .Y(n304) );
  OAI221XL U2357 ( .A0(n2130), .A1(n2038), .B0(n217), .B1(n2035), .C0(n303), 
        .Y(n611) );
  AOI2BB2X1 U2358 ( .B0(\loc_r[1][8] ), .B1(n2034), .A0N(n215), .A1N(n2032), 
        .Y(n303) );
  OAI221XL U2359 ( .A0(n2131), .A1(n2037), .B0(n214), .B1(n2035), .C0(n302), 
        .Y(n610) );
  AOI2BB2X1 U2360 ( .B0(\loc_r[1][7] ), .B1(n2034), .A0N(n212), .A1N(n2032), 
        .Y(n302) );
  OAI221XL U2361 ( .A0(n2132), .A1(n2038), .B0(n211), .B1(n2035), .C0(n301), 
        .Y(n609) );
  AOI2BB2X1 U2362 ( .B0(\loc_r[1][6] ), .B1(n2034), .A0N(n209), .A1N(n2031), 
        .Y(n301) );
  OAI221XL U2363 ( .A0(n2133), .A1(n292), .B0(n208), .B1(n2036), .C0(n300), 
        .Y(n608) );
  AOI2BB2X1 U2364 ( .B0(\loc_r[1][5] ), .B1(n2034), .A0N(n206), .A1N(n2032), 
        .Y(n300) );
  OAI221XL U2365 ( .A0(n2134), .A1(n292), .B0(n205), .B1(n2036), .C0(n299), 
        .Y(n607) );
  AOI2BB2X1 U2366 ( .B0(\loc_r[1][4] ), .B1(n2034), .A0N(n203), .A1N(n2031), 
        .Y(n299) );
  OAI221XL U2367 ( .A0(n2135), .A1(n292), .B0(n202), .B1(n2036), .C0(n298), 
        .Y(n606) );
  AOI2BB2X1 U2368 ( .B0(\loc_r[1][3] ), .B1(n2034), .A0N(n200), .A1N(n296), 
        .Y(n298) );
  OAI221XL U2369 ( .A0(n2136), .A1(n292), .B0(n199), .B1(n2036), .C0(n297), 
        .Y(n605) );
  AOI2BB2X1 U2370 ( .B0(\loc_r[1][2] ), .B1(n2034), .A0N(n197), .A1N(n296), 
        .Y(n297) );
  OAI221XL U2371 ( .A0(n2128), .A1(n2007), .B0(n223), .B1(n2006), .C0(n456), 
        .Y(n737) );
  AOI2BB2X1 U2372 ( .B0(\loc_r[5][10] ), .B1(n2155), .A0N(n221), .A1N(n2004), 
        .Y(n456) );
  OAI221XL U2373 ( .A0(n2129), .A1(n2007), .B0(n220), .B1(n2006), .C0(n455), 
        .Y(n736) );
  AOI2BB2X1 U2374 ( .B0(\loc_r[5][9] ), .B1(n2155), .A0N(n218), .A1N(n2004), 
        .Y(n455) );
  OAI221XL U2375 ( .A0(n2130), .A1(n2007), .B0(n217), .B1(n2006), .C0(n454), 
        .Y(n735) );
  AOI2BB2X1 U2376 ( .B0(\loc_r[5][8] ), .B1(n2155), .A0N(n215), .A1N(n2004), 
        .Y(n454) );
  OAI221XL U2377 ( .A0(n2131), .A1(n2007), .B0(n214), .B1(n2006), .C0(n453), 
        .Y(n734) );
  AOI2BB2X1 U2378 ( .B0(\loc_r[5][7] ), .B1(n2155), .A0N(n212), .A1N(n2004), 
        .Y(n453) );
  OAI221XL U2379 ( .A0(n2132), .A1(n2007), .B0(n211), .B1(n2006), .C0(n452), 
        .Y(n733) );
  AOI2BB2X1 U2380 ( .B0(\loc_r[5][6] ), .B1(n2155), .A0N(n209), .A1N(n2003), 
        .Y(n452) );
  OAI221XL U2381 ( .A0(n2133), .A1(n2007), .B0(n208), .B1(n2006), .C0(n451), 
        .Y(n732) );
  AOI2BB2X1 U2382 ( .B0(\loc_r[5][5] ), .B1(n2155), .A0N(n206), .A1N(n2003), 
        .Y(n451) );
  OAI221XL U2383 ( .A0(n2134), .A1(n2007), .B0(n205), .B1(n2005), .C0(n450), 
        .Y(n731) );
  AOI2BB2X1 U2384 ( .B0(\loc_r[5][4] ), .B1(n2155), .A0N(n203), .A1N(n2003), 
        .Y(n450) );
  OAI221XL U2385 ( .A0(n2135), .A1(n2007), .B0(n202), .B1(n2006), .C0(n449), 
        .Y(n730) );
  AOI2BB2X1 U2386 ( .B0(\loc_r[5][3] ), .B1(n2155), .A0N(n200), .A1N(n2004), 
        .Y(n449) );
  OAI221XL U2387 ( .A0(n2136), .A1(n2007), .B0(n199), .B1(n2005), .C0(n448), 
        .Y(n729) );
  AOI2BB2X1 U2388 ( .B0(\loc_r[5][2] ), .B1(n2155), .A0N(n197), .A1N(n2003), 
        .Y(n448) );
  OAI221XL U2389 ( .A0(n2128), .A1(n2024), .B0(n223), .B1(n2021), .C0(n382), 
        .Y(n675) );
  AOI2BB2X1 U2390 ( .B0(\loc_r[3][10] ), .B1(n2020), .A0N(n221), .A1N(n2018), 
        .Y(n382) );
  OAI221XL U2391 ( .A0(n2129), .A1(n2024), .B0(n220), .B1(n2021), .C0(n381), 
        .Y(n674) );
  AOI2BB2X1 U2392 ( .B0(\loc_r[3][9] ), .B1(n2020), .A0N(n218), .A1N(n2018), 
        .Y(n381) );
  OAI221XL U2393 ( .A0(n2130), .A1(n2024), .B0(n217), .B1(n2021), .C0(n380), 
        .Y(n673) );
  AOI2BB2X1 U2394 ( .B0(\loc_r[3][8] ), .B1(n2020), .A0N(n215), .A1N(n2018), 
        .Y(n380) );
  OAI221XL U2395 ( .A0(n2131), .A1(n2023), .B0(n214), .B1(n2021), .C0(n379), 
        .Y(n672) );
  AOI2BB2X1 U2396 ( .B0(\loc_r[3][7] ), .B1(n2020), .A0N(n212), .A1N(n2018), 
        .Y(n379) );
  OAI221XL U2397 ( .A0(n2132), .A1(n2024), .B0(n211), .B1(n2021), .C0(n378), 
        .Y(n671) );
  AOI2BB2X1 U2398 ( .B0(\loc_r[3][6] ), .B1(n2020), .A0N(n209), .A1N(n2017), 
        .Y(n378) );
  OAI221XL U2399 ( .A0(n2133), .A1(n369), .B0(n208), .B1(n2022), .C0(n377), 
        .Y(n670) );
  AOI2BB2X1 U2400 ( .B0(\loc_r[3][5] ), .B1(n2020), .A0N(n206), .A1N(n2018), 
        .Y(n377) );
  OAI221XL U2401 ( .A0(n2134), .A1(n369), .B0(n205), .B1(n2022), .C0(n376), 
        .Y(n669) );
  AOI2BB2X1 U2402 ( .B0(\loc_r[3][4] ), .B1(n2020), .A0N(n203), .A1N(n2017), 
        .Y(n376) );
  OAI221XL U2403 ( .A0(n2135), .A1(n369), .B0(n202), .B1(n2022), .C0(n375), 
        .Y(n668) );
  AOI2BB2X1 U2404 ( .B0(\loc_r[3][3] ), .B1(n2020), .A0N(n200), .A1N(n373), 
        .Y(n375) );
  OAI221XL U2405 ( .A0(n2136), .A1(n369), .B0(n199), .B1(n2022), .C0(n374), 
        .Y(n667) );
  AOI2BB2X1 U2406 ( .B0(\loc_r[3][2] ), .B1(n2020), .A0N(n197), .A1N(n373), 
        .Y(n374) );
  OAI221XL U2407 ( .A0(n2128), .A1(n2016), .B0(n223), .B1(n2013), .C0(n419), 
        .Y(n706) );
  AOI2BB2X1 U2408 ( .B0(\loc_r[4][10] ), .B1(n2012), .A0N(n221), .A1N(n2010), 
        .Y(n419) );
  OAI221XL U2409 ( .A0(n2129), .A1(n2016), .B0(n220), .B1(n2013), .C0(n418), 
        .Y(n705) );
  AOI2BB2X1 U2410 ( .B0(\loc_r[4][9] ), .B1(n2012), .A0N(n218), .A1N(n2010), 
        .Y(n418) );
  OAI221XL U2411 ( .A0(n2130), .A1(n2016), .B0(n217), .B1(n2013), .C0(n417), 
        .Y(n704) );
  AOI2BB2X1 U2412 ( .B0(\loc_r[4][8] ), .B1(n2012), .A0N(n215), .A1N(n2010), 
        .Y(n417) );
  OAI221XL U2413 ( .A0(n2131), .A1(n2015), .B0(n214), .B1(n2013), .C0(n416), 
        .Y(n703) );
  AOI2BB2X1 U2414 ( .B0(\loc_r[4][7] ), .B1(n2012), .A0N(n212), .A1N(n2010), 
        .Y(n416) );
  OAI221XL U2415 ( .A0(n2132), .A1(n2016), .B0(n211), .B1(n2013), .C0(n415), 
        .Y(n702) );
  AOI2BB2X1 U2416 ( .B0(\loc_r[4][6] ), .B1(n2012), .A0N(n209), .A1N(n2009), 
        .Y(n415) );
  OAI221XL U2417 ( .A0(n2133), .A1(n406), .B0(n208), .B1(n2014), .C0(n414), 
        .Y(n701) );
  AOI2BB2X1 U2418 ( .B0(\loc_r[4][5] ), .B1(n2012), .A0N(n206), .A1N(n2010), 
        .Y(n414) );
  OAI221XL U2419 ( .A0(n2134), .A1(n406), .B0(n205), .B1(n2014), .C0(n413), 
        .Y(n700) );
  AOI2BB2X1 U2420 ( .B0(\loc_r[4][4] ), .B1(n2012), .A0N(n203), .A1N(n2009), 
        .Y(n413) );
  OAI221XL U2421 ( .A0(n2135), .A1(n406), .B0(n202), .B1(n2014), .C0(n412), 
        .Y(n699) );
  AOI2BB2X1 U2422 ( .B0(\loc_r[4][3] ), .B1(n2012), .A0N(n200), .A1N(n410), 
        .Y(n412) );
  OAI221XL U2423 ( .A0(n2136), .A1(n406), .B0(n199), .B1(n2014), .C0(n411), 
        .Y(n698) );
  AOI2BB2X1 U2424 ( .B0(\loc_r[4][2] ), .B1(n2012), .A0N(n197), .A1N(n410), 
        .Y(n411) );
  OAI221XL U2425 ( .A0(n2044), .A1(n2128), .B0(n221), .B1(n2041), .C0(n222), 
        .Y(n582) );
  AOI2BB2X1 U2426 ( .B0(\loc_r[0][10] ), .B1(n1995), .A0N(n223), .A1N(n2040), 
        .Y(n222) );
  OAI221XL U2427 ( .A0(n2044), .A1(n2129), .B0(n218), .B1(n2041), .C0(n219), 
        .Y(n581) );
  AOI2BB2X1 U2428 ( .B0(\loc_r[0][9] ), .B1(n1995), .A0N(n220), .A1N(n2040), 
        .Y(n219) );
  OAI221XL U2429 ( .A0(n2044), .A1(n2130), .B0(n215), .B1(n2041), .C0(n216), 
        .Y(n580) );
  AOI2BB2X1 U2430 ( .B0(\loc_r[0][8] ), .B1(n1995), .A0N(n217), .A1N(n2040), 
        .Y(n216) );
  OAI221XL U2431 ( .A0(n2043), .A1(n2131), .B0(n212), .B1(n2041), .C0(n213), 
        .Y(n579) );
  AOI2BB2X1 U2432 ( .B0(\loc_r[0][7] ), .B1(n1995), .A0N(n214), .A1N(n2040), 
        .Y(n213) );
  OAI221XL U2433 ( .A0(n2044), .A1(n2132), .B0(n209), .B1(n2041), .C0(n210), 
        .Y(n578) );
  AOI2BB2X1 U2434 ( .B0(\loc_r[0][6] ), .B1(n1995), .A0N(n211), .A1N(n2040), 
        .Y(n210) );
  OAI221XL U2435 ( .A0(n2044), .A1(n2133), .B0(n206), .B1(n2042), .C0(n207), 
        .Y(n577) );
  AOI2BB2X1 U2436 ( .B0(\loc_r[0][5] ), .B1(n1995), .A0N(n208), .A1N(n2040), 
        .Y(n207) );
  OAI221XL U2437 ( .A0(n191), .A1(n2134), .B0(n203), .B1(n2042), .C0(n204), 
        .Y(n576) );
  AOI2BB2X1 U2438 ( .B0(\loc_r[0][4] ), .B1(n1995), .A0N(n205), .A1N(n2040), 
        .Y(n204) );
  OAI221XL U2439 ( .A0(n191), .A1(n2135), .B0(n200), .B1(n2042), .C0(n201), 
        .Y(n575) );
  AOI2BB2X1 U2440 ( .B0(\loc_r[0][3] ), .B1(n1995), .A0N(n202), .A1N(n2040), 
        .Y(n201) );
  OAI221XL U2441 ( .A0(n191), .A1(n2136), .B0(n197), .B1(n2042), .C0(n198), 
        .Y(n574) );
  AOI2BB2X1 U2442 ( .B0(\loc_r[0][2] ), .B1(n1995), .A0N(n199), .A1N(n2040), 
        .Y(n198) );
  OAI221XL U2443 ( .A0(n2108), .A1(n2029), .B0(n283), .B1(n2028), .C0(n363), 
        .Y(n664) );
  AOI2BB2X1 U2444 ( .B0(\loc_x[2][9] ), .B1(n1992), .A0N(n281), .A1N(n2025), 
        .Y(n363) );
  OAI221XL U2445 ( .A0(n2109), .A1(n2029), .B0(n280), .B1(n2028), .C0(n362), 
        .Y(n663) );
  AOI2BB2X1 U2446 ( .B0(\loc_x[2][8] ), .B1(n1992), .A0N(n278), .A1N(n2025), 
        .Y(n362) );
  OAI221XL U2447 ( .A0(n2110), .A1(n2029), .B0(n277), .B1(n2028), .C0(n361), 
        .Y(n662) );
  AOI2BB2X1 U2448 ( .B0(\loc_x[2][7] ), .B1(n1992), .A0N(n275), .A1N(n2025), 
        .Y(n361) );
  OAI221XL U2449 ( .A0(n2111), .A1(n2029), .B0(n274), .B1(n2028), .C0(n360), 
        .Y(n661) );
  AOI2BB2X1 U2450 ( .B0(\loc_x[2][6] ), .B1(n1992), .A0N(n272), .A1N(n2025), 
        .Y(n360) );
  OAI221XL U2451 ( .A0(n2112), .A1(n2029), .B0(n271), .B1(n2028), .C0(n359), 
        .Y(n660) );
  AOI2BB2X1 U2452 ( .B0(\loc_x[2][5] ), .B1(n1992), .A0N(n269), .A1N(n2025), 
        .Y(n359) );
  OAI221XL U2453 ( .A0(n2113), .A1(n2029), .B0(n268), .B1(n2028), .C0(n358), 
        .Y(n659) );
  AOI2BB2X1 U2454 ( .B0(\loc_x[2][4] ), .B1(n1992), .A0N(n266), .A1N(n2025), 
        .Y(n358) );
  OAI221XL U2455 ( .A0(n2114), .A1(n2029), .B0(n265), .B1(n2027), .C0(n357), 
        .Y(n658) );
  AOI2BB2X1 U2456 ( .B0(\loc_x[2][3] ), .B1(n1992), .A0N(n263), .A1N(n2025), 
        .Y(n357) );
  OAI221XL U2457 ( .A0(n2115), .A1(n2029), .B0(n262), .B1(n2028), .C0(n356), 
        .Y(n657) );
  AOI2BB2X1 U2458 ( .B0(\loc_x[2][2] ), .B1(n1992), .A0N(n260), .A1N(n2025), 
        .Y(n356) );
  OAI221XL U2459 ( .A0(n2116), .A1(n2029), .B0(n259), .B1(n2027), .C0(n355), 
        .Y(n656) );
  AOI2BB2X1 U2460 ( .B0(\loc_x[2][1] ), .B1(n1992), .A0N(n257), .A1N(n2025), 
        .Y(n355) );
  OAI221XL U2461 ( .A0(n2118), .A1(n2029), .B0(n253), .B1(n2028), .C0(n353), 
        .Y(n654) );
  AOI2BB2X1 U2462 ( .B0(\loc_y[2][9] ), .B1(n1992), .A0N(n251), .A1N(n2025), 
        .Y(n353) );
  OAI221XL U2463 ( .A0(n2119), .A1(n2030), .B0(n250), .B1(n332), .C0(n352), 
        .Y(n653) );
  AOI2BB2X1 U2464 ( .B0(\loc_y[2][8] ), .B1(n1992), .A0N(n248), .A1N(n334), 
        .Y(n352) );
  OAI221XL U2465 ( .A0(n2120), .A1(n2030), .B0(n247), .B1(n2027), .C0(n351), 
        .Y(n652) );
  AOI2BB2X1 U2466 ( .B0(\loc_y[2][7] ), .B1(n1992), .A0N(n245), .A1N(n334), 
        .Y(n351) );
  OAI221XL U2467 ( .A0(n2121), .A1(n2030), .B0(n244), .B1(n2027), .C0(n350), 
        .Y(n651) );
  AOI2BB2X1 U2468 ( .B0(\loc_y[2][6] ), .B1(n1993), .A0N(n242), .A1N(n2026), 
        .Y(n350) );
  OAI221XL U2469 ( .A0(n2122), .A1(n2030), .B0(n241), .B1(n2027), .C0(n349), 
        .Y(n650) );
  AOI2BB2X1 U2470 ( .B0(\loc_y[2][5] ), .B1(n1993), .A0N(n239), .A1N(n2025), 
        .Y(n349) );
  OAI221XL U2471 ( .A0(n2123), .A1(n2030), .B0(n238), .B1(n2027), .C0(n348), 
        .Y(n649) );
  AOI2BB2X1 U2472 ( .B0(\loc_y[2][4] ), .B1(n1993), .A0N(n236), .A1N(n2026), 
        .Y(n348) );
  OAI221XL U2473 ( .A0(n2124), .A1(n2030), .B0(n235), .B1(n2027), .C0(n347), 
        .Y(n648) );
  AOI2BB2X1 U2474 ( .B0(\loc_y[2][3] ), .B1(n1993), .A0N(n233), .A1N(n2025), 
        .Y(n347) );
  OAI221XL U2475 ( .A0(n2125), .A1(n2030), .B0(n232), .B1(n2027), .C0(n346), 
        .Y(n647) );
  AOI2BB2X1 U2476 ( .B0(\loc_y[2][2] ), .B1(n1993), .A0N(n230), .A1N(n2026), 
        .Y(n346) );
  OAI221XL U2477 ( .A0(n2126), .A1(n2030), .B0(n229), .B1(n2027), .C0(n345), 
        .Y(n646) );
  AOI2BB2X1 U2478 ( .B0(\loc_y[2][1] ), .B1(n1993), .A0N(n227), .A1N(n334), 
        .Y(n345) );
  OAI221XL U2479 ( .A0(n2108), .A1(n2037), .B0(n283), .B1(n2036), .C0(n325), 
        .Y(n633) );
  AOI2BB2X1 U2480 ( .B0(\loc_x[1][9] ), .B1(n2033), .A0N(n281), .A1N(n2031), 
        .Y(n325) );
  OAI221XL U2481 ( .A0(n2109), .A1(n2037), .B0(n280), .B1(n2036), .C0(n324), 
        .Y(n632) );
  AOI2BB2X1 U2482 ( .B0(\loc_x[1][8] ), .B1(n2033), .A0N(n278), .A1N(n2031), 
        .Y(n324) );
  OAI221XL U2483 ( .A0(n2110), .A1(n2037), .B0(n277), .B1(n2036), .C0(n323), 
        .Y(n631) );
  AOI2BB2X1 U2484 ( .B0(\loc_x[1][7] ), .B1(n2033), .A0N(n275), .A1N(n2031), 
        .Y(n323) );
  OAI221XL U2485 ( .A0(n2111), .A1(n2037), .B0(n274), .B1(n2036), .C0(n322), 
        .Y(n630) );
  AOI2BB2X1 U2486 ( .B0(\loc_x[1][6] ), .B1(n2033), .A0N(n272), .A1N(n2031), 
        .Y(n322) );
  OAI221XL U2487 ( .A0(n2112), .A1(n2037), .B0(n271), .B1(n2036), .C0(n321), 
        .Y(n629) );
  AOI2BB2X1 U2488 ( .B0(\loc_x[1][5] ), .B1(n2033), .A0N(n269), .A1N(n2031), 
        .Y(n321) );
  OAI221XL U2489 ( .A0(n2113), .A1(n2037), .B0(n268), .B1(n2036), .C0(n320), 
        .Y(n628) );
  AOI2BB2X1 U2490 ( .B0(\loc_x[1][4] ), .B1(n2033), .A0N(n266), .A1N(n2031), 
        .Y(n320) );
  OAI221XL U2491 ( .A0(n2114), .A1(n2037), .B0(n265), .B1(n2035), .C0(n319), 
        .Y(n627) );
  AOI2BB2X1 U2492 ( .B0(\loc_x[1][3] ), .B1(n2033), .A0N(n263), .A1N(n2031), 
        .Y(n319) );
  OAI221XL U2493 ( .A0(n2115), .A1(n2037), .B0(n262), .B1(n2036), .C0(n318), 
        .Y(n626) );
  AOI2BB2X1 U2494 ( .B0(\loc_x[1][2] ), .B1(n2033), .A0N(n260), .A1N(n2031), 
        .Y(n318) );
  OAI221XL U2495 ( .A0(n2116), .A1(n2037), .B0(n259), .B1(n2035), .C0(n317), 
        .Y(n625) );
  AOI2BB2X1 U2496 ( .B0(\loc_x[1][1] ), .B1(n2033), .A0N(n257), .A1N(n2031), 
        .Y(n317) );
  OAI221XL U2497 ( .A0(n2118), .A1(n2037), .B0(n253), .B1(n2036), .C0(n315), 
        .Y(n623) );
  AOI2BB2X1 U2498 ( .B0(\loc_y[1][9] ), .B1(n2033), .A0N(n251), .A1N(n2031), 
        .Y(n315) );
  OAI221XL U2499 ( .A0(n2119), .A1(n2038), .B0(n250), .B1(n293), .C0(n314), 
        .Y(n622) );
  AOI2BB2X1 U2500 ( .B0(\loc_y[1][8] ), .B1(n2033), .A0N(n248), .A1N(n2032), 
        .Y(n314) );
  OAI221XL U2501 ( .A0(n2120), .A1(n2038), .B0(n247), .B1(n2035), .C0(n313), 
        .Y(n621) );
  AOI2BB2X1 U2502 ( .B0(\loc_y[1][7] ), .B1(n2033), .A0N(n245), .A1N(n2032), 
        .Y(n313) );
  OAI221XL U2503 ( .A0(n2121), .A1(n2038), .B0(n244), .B1(n2035), .C0(n312), 
        .Y(n620) );
  AOI2BB2X1 U2504 ( .B0(\loc_y[1][6] ), .B1(n2033), .A0N(n242), .A1N(n2032), 
        .Y(n312) );
  OAI221XL U2505 ( .A0(n2122), .A1(n2038), .B0(n241), .B1(n2035), .C0(n311), 
        .Y(n619) );
  AOI2BB2X1 U2506 ( .B0(\loc_y[1][5] ), .B1(n2033), .A0N(n239), .A1N(n2032), 
        .Y(n311) );
  OAI221XL U2507 ( .A0(n2123), .A1(n2038), .B0(n238), .B1(n2035), .C0(n310), 
        .Y(n618) );
  AOI2BB2X1 U2508 ( .B0(\loc_y[1][4] ), .B1(n2034), .A0N(n236), .A1N(n2032), 
        .Y(n310) );
  OAI221XL U2509 ( .A0(n2124), .A1(n2038), .B0(n235), .B1(n2035), .C0(n309), 
        .Y(n617) );
  AOI2BB2X1 U2510 ( .B0(\loc_y[1][3] ), .B1(n2034), .A0N(n233), .A1N(n2032), 
        .Y(n309) );
  OAI221XL U2511 ( .A0(n2125), .A1(n2038), .B0(n232), .B1(n2035), .C0(n308), 
        .Y(n616) );
  AOI2BB2X1 U2512 ( .B0(\loc_y[1][2] ), .B1(n2034), .A0N(n230), .A1N(n2032), 
        .Y(n308) );
  OAI221XL U2513 ( .A0(n2126), .A1(n2038), .B0(n229), .B1(n2035), .C0(n307), 
        .Y(n615) );
  AOI2BB2X1 U2514 ( .B0(\loc_y[1][1] ), .B1(n2034), .A0N(n227), .A1N(n2032), 
        .Y(n307) );
  OAI221XL U2515 ( .A0(n2108), .A1(n2023), .B0(n283), .B1(n2022), .C0(n402), 
        .Y(n695) );
  AOI2BB2X1 U2516 ( .B0(\loc_x[3][9] ), .B1(n2019), .A0N(n281), .A1N(n2017), 
        .Y(n402) );
  OAI221XL U2517 ( .A0(n2109), .A1(n2023), .B0(n280), .B1(n2022), .C0(n401), 
        .Y(n694) );
  AOI2BB2X1 U2518 ( .B0(\loc_x[3][8] ), .B1(n2019), .A0N(n278), .A1N(n2017), 
        .Y(n401) );
  OAI221XL U2519 ( .A0(n2110), .A1(n2023), .B0(n277), .B1(n2022), .C0(n400), 
        .Y(n693) );
  AOI2BB2X1 U2520 ( .B0(\loc_x[3][7] ), .B1(n2019), .A0N(n275), .A1N(n2017), 
        .Y(n400) );
  OAI221XL U2521 ( .A0(n2111), .A1(n2023), .B0(n274), .B1(n2022), .C0(n399), 
        .Y(n692) );
  AOI2BB2X1 U2522 ( .B0(\loc_x[3][6] ), .B1(n2019), .A0N(n272), .A1N(n2017), 
        .Y(n399) );
  OAI221XL U2523 ( .A0(n2112), .A1(n2023), .B0(n271), .B1(n2022), .C0(n398), 
        .Y(n691) );
  AOI2BB2X1 U2524 ( .B0(\loc_x[3][5] ), .B1(n2019), .A0N(n269), .A1N(n2017), 
        .Y(n398) );
  OAI221XL U2525 ( .A0(n2113), .A1(n2023), .B0(n268), .B1(n2022), .C0(n397), 
        .Y(n690) );
  AOI2BB2X1 U2526 ( .B0(\loc_x[3][4] ), .B1(n2019), .A0N(n266), .A1N(n2017), 
        .Y(n397) );
  OAI221XL U2527 ( .A0(n2114), .A1(n2023), .B0(n265), .B1(n2021), .C0(n396), 
        .Y(n689) );
  AOI2BB2X1 U2528 ( .B0(\loc_x[3][3] ), .B1(n2019), .A0N(n263), .A1N(n2017), 
        .Y(n396) );
  OAI221XL U2529 ( .A0(n2115), .A1(n2023), .B0(n262), .B1(n2022), .C0(n395), 
        .Y(n688) );
  AOI2BB2X1 U2530 ( .B0(\loc_x[3][2] ), .B1(n2019), .A0N(n260), .A1N(n2017), 
        .Y(n395) );
  OAI221XL U2531 ( .A0(n2116), .A1(n2023), .B0(n259), .B1(n2021), .C0(n394), 
        .Y(n687) );
  AOI2BB2X1 U2532 ( .B0(\loc_x[3][1] ), .B1(n2019), .A0N(n257), .A1N(n2017), 
        .Y(n394) );
  OAI221XL U2533 ( .A0(n2118), .A1(n2023), .B0(n253), .B1(n2022), .C0(n392), 
        .Y(n685) );
  AOI2BB2X1 U2534 ( .B0(\loc_y[3][9] ), .B1(n2019), .A0N(n251), .A1N(n2017), 
        .Y(n392) );
  OAI221XL U2535 ( .A0(n2119), .A1(n2024), .B0(n250), .B1(n370), .C0(n391), 
        .Y(n684) );
  AOI2BB2X1 U2536 ( .B0(\loc_y[3][8] ), .B1(n2019), .A0N(n248), .A1N(n2018), 
        .Y(n391) );
  OAI221XL U2537 ( .A0(n2120), .A1(n2024), .B0(n247), .B1(n2021), .C0(n390), 
        .Y(n683) );
  AOI2BB2X1 U2538 ( .B0(\loc_y[3][7] ), .B1(n2019), .A0N(n245), .A1N(n2018), 
        .Y(n390) );
  OAI221XL U2539 ( .A0(n2121), .A1(n2024), .B0(n244), .B1(n2021), .C0(n389), 
        .Y(n682) );
  AOI2BB2X1 U2540 ( .B0(\loc_y[3][6] ), .B1(n2019), .A0N(n242), .A1N(n2018), 
        .Y(n389) );
  OAI221XL U2541 ( .A0(n2122), .A1(n2024), .B0(n241), .B1(n2021), .C0(n388), 
        .Y(n681) );
  AOI2BB2X1 U2542 ( .B0(\loc_y[3][5] ), .B1(n2019), .A0N(n239), .A1N(n2018), 
        .Y(n388) );
  OAI221XL U2543 ( .A0(n2123), .A1(n2024), .B0(n238), .B1(n2021), .C0(n387), 
        .Y(n680) );
  AOI2BB2X1 U2544 ( .B0(\loc_y[3][4] ), .B1(n2020), .A0N(n236), .A1N(n2018), 
        .Y(n387) );
  OAI221XL U2545 ( .A0(n2124), .A1(n2024), .B0(n235), .B1(n2021), .C0(n386), 
        .Y(n679) );
  AOI2BB2X1 U2546 ( .B0(\loc_y[3][3] ), .B1(n2020), .A0N(n233), .A1N(n2018), 
        .Y(n386) );
  OAI221XL U2547 ( .A0(n2125), .A1(n2024), .B0(n232), .B1(n2021), .C0(n385), 
        .Y(n678) );
  AOI2BB2X1 U2548 ( .B0(\loc_y[3][2] ), .B1(n2020), .A0N(n230), .A1N(n2018), 
        .Y(n385) );
  OAI221XL U2549 ( .A0(n2126), .A1(n2024), .B0(n229), .B1(n2021), .C0(n384), 
        .Y(n677) );
  AOI2BB2X1 U2550 ( .B0(\loc_y[3][1] ), .B1(n2020), .A0N(n227), .A1N(n2018), 
        .Y(n384) );
  OAI221XL U2551 ( .A0(n2108), .A1(n2015), .B0(n283), .B1(n2014), .C0(n439), 
        .Y(n726) );
  AOI2BB2X1 U2552 ( .B0(\loc_x[4][9] ), .B1(n2011), .A0N(n281), .A1N(n2009), 
        .Y(n439) );
  OAI221XL U2553 ( .A0(n2109), .A1(n2015), .B0(n280), .B1(n2014), .C0(n438), 
        .Y(n725) );
  AOI2BB2X1 U2554 ( .B0(\loc_x[4][8] ), .B1(n2011), .A0N(n278), .A1N(n2009), 
        .Y(n438) );
  OAI221XL U2555 ( .A0(n2110), .A1(n2015), .B0(n277), .B1(n2014), .C0(n437), 
        .Y(n724) );
  AOI2BB2X1 U2556 ( .B0(\loc_x[4][7] ), .B1(n2011), .A0N(n275), .A1N(n2009), 
        .Y(n437) );
  OAI221XL U2557 ( .A0(n2111), .A1(n2015), .B0(n274), .B1(n2014), .C0(n436), 
        .Y(n723) );
  AOI2BB2X1 U2558 ( .B0(\loc_x[4][6] ), .B1(n2011), .A0N(n272), .A1N(n2009), 
        .Y(n436) );
  OAI221XL U2559 ( .A0(n2112), .A1(n2015), .B0(n271), .B1(n2014), .C0(n435), 
        .Y(n722) );
  AOI2BB2X1 U2560 ( .B0(\loc_x[4][5] ), .B1(n2011), .A0N(n269), .A1N(n2009), 
        .Y(n435) );
  OAI221XL U2561 ( .A0(n2113), .A1(n2015), .B0(n268), .B1(n2014), .C0(n434), 
        .Y(n721) );
  AOI2BB2X1 U2562 ( .B0(\loc_x[4][4] ), .B1(n2011), .A0N(n266), .A1N(n2009), 
        .Y(n434) );
  OAI221XL U2563 ( .A0(n2114), .A1(n2015), .B0(n265), .B1(n2013), .C0(n433), 
        .Y(n720) );
  AOI2BB2X1 U2564 ( .B0(\loc_x[4][3] ), .B1(n2011), .A0N(n263), .A1N(n2009), 
        .Y(n433) );
  OAI221XL U2565 ( .A0(n2115), .A1(n2015), .B0(n262), .B1(n2014), .C0(n432), 
        .Y(n719) );
  AOI2BB2X1 U2566 ( .B0(\loc_x[4][2] ), .B1(n2011), .A0N(n260), .A1N(n2009), 
        .Y(n432) );
  OAI221XL U2567 ( .A0(n2116), .A1(n2015), .B0(n259), .B1(n2013), .C0(n431), 
        .Y(n718) );
  AOI2BB2X1 U2568 ( .B0(\loc_x[4][1] ), .B1(n2011), .A0N(n257), .A1N(n2009), 
        .Y(n431) );
  OAI221XL U2569 ( .A0(n2118), .A1(n2015), .B0(n253), .B1(n2014), .C0(n429), 
        .Y(n716) );
  AOI2BB2X1 U2570 ( .B0(\loc_y[4][9] ), .B1(n2011), .A0N(n251), .A1N(n2009), 
        .Y(n429) );
  OAI221XL U2571 ( .A0(n2119), .A1(n2016), .B0(n250), .B1(n407), .C0(n428), 
        .Y(n715) );
  AOI2BB2X1 U2572 ( .B0(\loc_y[4][8] ), .B1(n2011), .A0N(n248), .A1N(n2010), 
        .Y(n428) );
  OAI221XL U2573 ( .A0(n2120), .A1(n2016), .B0(n247), .B1(n2013), .C0(n427), 
        .Y(n714) );
  AOI2BB2X1 U2574 ( .B0(\loc_y[4][7] ), .B1(n2011), .A0N(n245), .A1N(n2010), 
        .Y(n427) );
  OAI221XL U2575 ( .A0(n2121), .A1(n2016), .B0(n244), .B1(n2013), .C0(n426), 
        .Y(n713) );
  AOI2BB2X1 U2576 ( .B0(\loc_y[4][6] ), .B1(n2011), .A0N(n242), .A1N(n2010), 
        .Y(n426) );
  OAI221XL U2577 ( .A0(n2122), .A1(n2016), .B0(n241), .B1(n2013), .C0(n425), 
        .Y(n712) );
  AOI2BB2X1 U2578 ( .B0(\loc_y[4][5] ), .B1(n2011), .A0N(n239), .A1N(n2010), 
        .Y(n425) );
  OAI221XL U2579 ( .A0(n2123), .A1(n2016), .B0(n238), .B1(n2013), .C0(n424), 
        .Y(n711) );
  AOI2BB2X1 U2580 ( .B0(\loc_y[4][4] ), .B1(n2012), .A0N(n236), .A1N(n2010), 
        .Y(n424) );
  OAI221XL U2581 ( .A0(n2124), .A1(n2016), .B0(n235), .B1(n2013), .C0(n423), 
        .Y(n710) );
  AOI2BB2X1 U2582 ( .B0(\loc_y[4][3] ), .B1(n2012), .A0N(n233), .A1N(n2010), 
        .Y(n423) );
  OAI221XL U2583 ( .A0(n2125), .A1(n2016), .B0(n232), .B1(n2013), .C0(n422), 
        .Y(n709) );
  AOI2BB2X1 U2584 ( .B0(\loc_y[4][2] ), .B1(n2012), .A0N(n230), .A1N(n2010), 
        .Y(n422) );
  OAI221XL U2585 ( .A0(n2126), .A1(n2016), .B0(n229), .B1(n2013), .C0(n421), 
        .Y(n708) );
  AOI2BB2X1 U2586 ( .B0(\loc_y[4][1] ), .B1(n2012), .A0N(n227), .A1N(n2010), 
        .Y(n421) );
  OAI221XL U2587 ( .A0(n2043), .A1(n2108), .B0(n281), .B1(n2042), .C0(n282), 
        .Y(n602) );
  AOI2BB2X1 U2588 ( .B0(\loc_x[0][9] ), .B1(n1994), .A0N(n283), .A1N(n2039), 
        .Y(n282) );
  OAI221XL U2589 ( .A0(n2043), .A1(n2109), .B0(n278), .B1(n2042), .C0(n279), 
        .Y(n601) );
  AOI2BB2X1 U2590 ( .B0(\loc_x[0][8] ), .B1(n1994), .A0N(n280), .A1N(n2039), 
        .Y(n279) );
  OAI221XL U2591 ( .A0(n2043), .A1(n2110), .B0(n275), .B1(n2042), .C0(n276), 
        .Y(n600) );
  AOI2BB2X1 U2592 ( .B0(\loc_x[0][7] ), .B1(n1994), .A0N(n277), .A1N(n2039), 
        .Y(n276) );
  OAI221XL U2593 ( .A0(n2043), .A1(n2111), .B0(n272), .B1(n2042), .C0(n273), 
        .Y(n599) );
  AOI2BB2X1 U2594 ( .B0(\loc_x[0][6] ), .B1(n1994), .A0N(n274), .A1N(n2039), 
        .Y(n273) );
  OAI221XL U2595 ( .A0(n2043), .A1(n2112), .B0(n269), .B1(n2042), .C0(n270), 
        .Y(n598) );
  AOI2BB2X1 U2596 ( .B0(\loc_x[0][5] ), .B1(n1994), .A0N(n271), .A1N(n2039), 
        .Y(n270) );
  OAI221XL U2597 ( .A0(n2043), .A1(n2113), .B0(n266), .B1(n2042), .C0(n267), 
        .Y(n597) );
  AOI2BB2X1 U2598 ( .B0(\loc_x[0][4] ), .B1(n1994), .A0N(n268), .A1N(n2039), 
        .Y(n267) );
  OAI221XL U2599 ( .A0(n2043), .A1(n2114), .B0(n263), .B1(n2041), .C0(n264), 
        .Y(n596) );
  AOI2BB2X1 U2600 ( .B0(\loc_x[0][3] ), .B1(n1994), .A0N(n265), .A1N(n2039), 
        .Y(n264) );
  OAI221XL U2601 ( .A0(n2043), .A1(n2115), .B0(n260), .B1(n2042), .C0(n261), 
        .Y(n595) );
  AOI2BB2X1 U2602 ( .B0(\loc_x[0][2] ), .B1(n1994), .A0N(n262), .A1N(n2039), 
        .Y(n261) );
  OAI221XL U2603 ( .A0(n2043), .A1(n2116), .B0(n257), .B1(n2041), .C0(n258), 
        .Y(n594) );
  AOI2BB2X1 U2604 ( .B0(\loc_x[0][1] ), .B1(n1994), .A0N(n259), .A1N(n2039), 
        .Y(n258) );
  OAI221XL U2605 ( .A0(n2043), .A1(n2118), .B0(n251), .B1(n2042), .C0(n252), 
        .Y(n592) );
  AOI2BB2X1 U2606 ( .B0(\loc_y[0][9] ), .B1(n1994), .A0N(n253), .A1N(n2039), 
        .Y(n252) );
  OAI221XL U2607 ( .A0(n2044), .A1(n2119), .B0(n248), .B1(n193), .C0(n249), 
        .Y(n591) );
  AOI2BB2X1 U2608 ( .B0(\loc_y[0][8] ), .B1(n1994), .A0N(n250), .A1N(n196), 
        .Y(n249) );
  OAI221XL U2609 ( .A0(n2044), .A1(n2120), .B0(n245), .B1(n2041), .C0(n246), 
        .Y(n590) );
  AOI2BB2X1 U2610 ( .B0(\loc_y[0][7] ), .B1(n1994), .A0N(n247), .A1N(n196), 
        .Y(n246) );
  OAI221XL U2611 ( .A0(n2044), .A1(n2121), .B0(n242), .B1(n2041), .C0(n243), 
        .Y(n589) );
  AOI2BB2X1 U2612 ( .B0(\loc_y[0][6] ), .B1(n1995), .A0N(n244), .A1N(n2040), 
        .Y(n243) );
  OAI221XL U2613 ( .A0(n2044), .A1(n2122), .B0(n239), .B1(n2041), .C0(n240), 
        .Y(n588) );
  AOI2BB2X1 U2614 ( .B0(\loc_y[0][5] ), .B1(n1995), .A0N(n241), .A1N(n2039), 
        .Y(n240) );
  OAI221XL U2615 ( .A0(n2044), .A1(n2123), .B0(n236), .B1(n2041), .C0(n237), 
        .Y(n587) );
  AOI2BB2X1 U2616 ( .B0(\loc_y[0][4] ), .B1(n1995), .A0N(n238), .A1N(n2040), 
        .Y(n237) );
  OAI221XL U2617 ( .A0(n2044), .A1(n2124), .B0(n233), .B1(n2041), .C0(n234), 
        .Y(n586) );
  AOI2BB2X1 U2618 ( .B0(\loc_y[0][3] ), .B1(n1995), .A0N(n235), .A1N(n2039), 
        .Y(n234) );
  OAI221XL U2619 ( .A0(n2044), .A1(n2125), .B0(n230), .B1(n2041), .C0(n231), 
        .Y(n585) );
  AOI2BB2X1 U2620 ( .B0(\loc_y[0][2] ), .B1(n1995), .A0N(n232), .A1N(n2040), 
        .Y(n231) );
  OAI221XL U2621 ( .A0(n2044), .A1(n2126), .B0(n227), .B1(n2041), .C0(n228), 
        .Y(n584) );
  AOI2BB2X1 U2622 ( .B0(\loc_y[0][1] ), .B1(n1995), .A0N(n229), .A1N(n196), 
        .Y(n228) );
  OAI221XL U2623 ( .A0(n281), .A1(n2004), .B0(n118), .B1(n1950), .C0(n477), 
        .Y(n757) );
  OA22X1 U2624 ( .A0(n2007), .A1(n2108), .B0(n283), .B1(n2006), .Y(n477) );
  OAI221XL U2625 ( .A0(n278), .A1(n2004), .B0(n119), .B1(n1950), .C0(n476), 
        .Y(n756) );
  OA22X1 U2626 ( .A0(n444), .A1(n2109), .B0(n280), .B1(n2006), .Y(n476) );
  OAI221XL U2627 ( .A0(n275), .A1(n2004), .B0(n120), .B1(n1950), .C0(n475), 
        .Y(n755) );
  OA22X1 U2628 ( .A0(n2007), .A1(n2110), .B0(n277), .B1(n2006), .Y(n475) );
  OAI221XL U2629 ( .A0(n272), .A1(n2004), .B0(n121), .B1(n1950), .C0(n474), 
        .Y(n754) );
  OA22X1 U2630 ( .A0(n2007), .A1(n2111), .B0(n274), .B1(n2006), .Y(n474) );
  OAI221XL U2631 ( .A0(n269), .A1(n2004), .B0(n122), .B1(n1950), .C0(n473), 
        .Y(n753) );
  OA22X1 U2632 ( .A0(n2008), .A1(n2112), .B0(n271), .B1(n2006), .Y(n473) );
  OAI221XL U2633 ( .A0(n266), .A1(n2003), .B0(n123), .B1(n1950), .C0(n472), 
        .Y(n752) );
  OA22X1 U2634 ( .A0(n2008), .A1(n2113), .B0(n268), .B1(n2005), .Y(n472) );
  OAI221XL U2635 ( .A0(n263), .A1(n2004), .B0(n124), .B1(n1950), .C0(n471), 
        .Y(n751) );
  OA22X1 U2636 ( .A0(n2008), .A1(n2114), .B0(n265), .B1(n2005), .Y(n471) );
  OAI221XL U2637 ( .A0(n260), .A1(n2004), .B0(n125), .B1(n1950), .C0(n470), 
        .Y(n750) );
  OA22X1 U2638 ( .A0(n2008), .A1(n2115), .B0(n262), .B1(n2005), .Y(n470) );
  OAI221XL U2639 ( .A0(n257), .A1(n2004), .B0(n126), .B1(n1950), .C0(n469), 
        .Y(n749) );
  OA22X1 U2640 ( .A0(n2008), .A1(n2116), .B0(n259), .B1(n2005), .Y(n469) );
  OAI221XL U2641 ( .A0(n254), .A1(n2003), .B0(n127), .B1(n1950), .C0(n468), 
        .Y(n748) );
  OA22X1 U2642 ( .A0(n2008), .A1(n2117), .B0(n256), .B1(n2005), .Y(n468) );
  OAI221XL U2643 ( .A0(n251), .A1(n2003), .B0(n128), .B1(n1950), .C0(n467), 
        .Y(n747) );
  OA22X1 U2644 ( .A0(n2008), .A1(n2118), .B0(n253), .B1(n2005), .Y(n467) );
  OAI221XL U2645 ( .A0(n248), .A1(n2003), .B0(n129), .B1(n1950), .C0(n466), 
        .Y(n746) );
  OA22X1 U2646 ( .A0(n2008), .A1(n2119), .B0(n250), .B1(n2005), .Y(n466) );
  OAI221XL U2647 ( .A0(n245), .A1(n2003), .B0(n130), .B1(n1950), .C0(n465), 
        .Y(n745) );
  OA22X1 U2648 ( .A0(n2008), .A1(n2120), .B0(n247), .B1(n2005), .Y(n465) );
  OAI221XL U2649 ( .A0(n242), .A1(n2003), .B0(n131), .B1(n1950), .C0(n464), 
        .Y(n744) );
  OA22X1 U2650 ( .A0(n2008), .A1(n2121), .B0(n244), .B1(n2005), .Y(n464) );
  OAI221XL U2651 ( .A0(n239), .A1(n2003), .B0(n132), .B1(n1950), .C0(n463), 
        .Y(n743) );
  OA22X1 U2652 ( .A0(n2008), .A1(n2122), .B0(n241), .B1(n2005), .Y(n463) );
  OAI221XL U2653 ( .A0(n236), .A1(n2003), .B0(n133), .B1(n1950), .C0(n462), 
        .Y(n742) );
  OA22X1 U2654 ( .A0(n2008), .A1(n2123), .B0(n238), .B1(n2005), .Y(n462) );
  OAI221XL U2655 ( .A0(n233), .A1(n2003), .B0(n134), .B1(n1950), .C0(n461), 
        .Y(n741) );
  OA22X1 U2656 ( .A0(n2008), .A1(n2124), .B0(n235), .B1(n2005), .Y(n461) );
  OAI221XL U2657 ( .A0(n230), .A1(n2003), .B0(n135), .B1(n1950), .C0(n460), 
        .Y(n740) );
  OA22X1 U2658 ( .A0(n2008), .A1(n2125), .B0(n232), .B1(n2005), .Y(n460) );
  OAI221XL U2659 ( .A0(n227), .A1(n2003), .B0(n136), .B1(n1950), .C0(n459), 
        .Y(n739) );
  OA22X1 U2660 ( .A0(n2008), .A1(n2126), .B0(n229), .B1(n2005), .Y(n459) );
  OAI221XL U2661 ( .A0(n224), .A1(n2003), .B0(n137), .B1(n1950), .C0(n458), 
        .Y(n738) );
  OA22X1 U2662 ( .A0(n2007), .A1(n2127), .B0(n226), .B1(n2006), .Y(n458) );
  AO22X1 U2663 ( .A0(dis_a_square_ff[6]), .A1(n2056), .B0(n2055), .B1(
        s_mul_out[6]), .Y(radicand_in[6]) );
  AO22X1 U2664 ( .A0(dis_a_square_ff[7]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[7]), .Y(radicand_in[7]) );
  AO22X1 U2665 ( .A0(dis_a_square_ff[5]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[5]), .Y(radicand_in[5]) );
  AO22X1 U2666 ( .A0(dis_a_square_ff[4]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[4]), .Y(radicand_in[4]) );
  CLKINVX1 U2667 ( .A(loc_ff_cnt[2]), .Y(n1858) );
  AO22X1 U2668 ( .A0(n2000), .A1(polygon_area[23]), .B0(polygon_area_temp[23]), 
        .B1(n2046), .Y(n801) );
  NAND2X1 U2669 ( .A(n1793), .B(n141), .Y(n1789) );
  CLKINVX1 U2670 ( .A(n1789), .Y(n1855) );
  NAND2BX1 U2671 ( .AN(n1858), .B(n1859), .Y(n1790) );
  CLKINVX1 U2672 ( .A(n1790), .Y(n1854) );
  NAND2BX1 U2673 ( .AN(n1934), .B(n1935), .Y(n1791) );
  CLKINVX1 U2674 ( .A(n1791), .Y(n1931) );
  AO22X1 U2675 ( .A0(dis_a_square_ff[3]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[3]), .Y(radicand_in[3]) );
  AO22X1 U2676 ( .A0(polygon_area[22]), .A1(n1999), .B0(polygon_area_temp[22]), 
        .B1(n2046), .Y(n802) );
  AO22X1 U2677 ( .A0(polygon_area[21]), .A1(n1999), .B0(polygon_area_temp[21]), 
        .B1(n2046), .Y(n803) );
  AO22X1 U2678 ( .A0(polygon_area[20]), .A1(n1999), .B0(polygon_area_temp[20]), 
        .B1(n2046), .Y(n804) );
  NOR2X2 U2679 ( .A(n187), .B(curr_state[2]), .Y(n330) );
  NOR2X1 U2680 ( .A(n1996), .B(n127), .Y(ref_x[0]) );
  NOR2X1 U2681 ( .A(n1996), .B(n126), .Y(ref_x[1]) );
  NOR2X1 U2682 ( .A(n1996), .B(n125), .Y(ref_x[2]) );
  NOR2X1 U2683 ( .A(n1996), .B(n124), .Y(ref_x[3]) );
  NOR2X1 U2684 ( .A(n1996), .B(n123), .Y(ref_x[4]) );
  NOR2X1 U2685 ( .A(n1997), .B(n137), .Y(ref_y[0]) );
  NOR2X1 U2686 ( .A(n1997), .B(n136), .Y(ref_y[1]) );
  NOR2X1 U2687 ( .A(n1997), .B(n135), .Y(ref_y[2]) );
  NOR2X1 U2688 ( .A(n1997), .B(n134), .Y(ref_y[3]) );
  AO22X1 U2689 ( .A0(dis_a_square_ff[2]), .A1(n2057), .B0(n2055), .B1(
        s_mul_out[2]), .Y(radicand_in[2]) );
  AO22X1 U2690 ( .A0(polygon_area[19]), .A1(n1999), .B0(polygon_area_temp[19]), 
        .B1(n2046), .Y(n805) );
  AO22X1 U2691 ( .A0(polygon_area[18]), .A1(n1999), .B0(polygon_area_temp[18]), 
        .B1(n2045), .Y(n806) );
  NOR2X1 U2692 ( .A(n1996), .B(n122), .Y(ref_x[5]) );
  NOR2X1 U2693 ( .A(n1996), .B(n121), .Y(ref_x[6]) );
  NOR2X1 U2694 ( .A(n1997), .B(n133), .Y(ref_y[4]) );
  NOR2X1 U2695 ( .A(n1997), .B(n132), .Y(ref_y[5]) );
  AO22X1 U2696 ( .A0(polygon_area[17]), .A1(n1999), .B0(polygon_area_temp[17]), 
        .B1(n2045), .Y(n807) );
  AO22X1 U2697 ( .A0(polygon_area[16]), .A1(n1999), .B0(polygon_area_temp[16]), 
        .B1(n2045), .Y(n808) );
  NOR2X1 U2698 ( .A(n1996), .B(n120), .Y(ref_x[7]) );
  NOR2X1 U2699 ( .A(n1997), .B(n119), .Y(ref_x[8]) );
  NOR2X1 U2700 ( .A(n1997), .B(n118), .Y(ref_x[9]) );
  NOR2X1 U2701 ( .A(n1997), .B(n131), .Y(ref_y[6]) );
  NOR2X1 U2702 ( .A(n1997), .B(n130), .Y(ref_y[7]) );
  NOR2X1 U2703 ( .A(n1997), .B(n129), .Y(ref_y[8]) );
  AO22X1 U2704 ( .A0(n481), .A1(dis_a[11]), .B0(s_ff[11]), .B1(n482), .Y(n759)
         );
  AO22X1 U2705 ( .A0(polygon_area[15]), .A1(n1999), .B0(polygon_area_temp[15]), 
        .B1(n2045), .Y(n809) );
  AO22X1 U2706 ( .A0(polygon_area[14]), .A1(n1999), .B0(polygon_area_temp[14]), 
        .B1(n2045), .Y(n810) );
  NOR2X1 U2707 ( .A(n1996), .B(n128), .Y(ref_y[9]) );
  AO22X1 U2708 ( .A0(polygon_area[13]), .A1(n1999), .B0(polygon_area_temp[13]), 
        .B1(n2045), .Y(n811) );
  AO22X1 U2709 ( .A0(polygon_area[12]), .A1(n1999), .B0(polygon_area_temp[12]), 
        .B1(n2045), .Y(n812) );
  AO22X1 U2710 ( .A0(hero_area[23]), .A1(n1999), .B0(hero_area_temp[23]), .B1(
        n2047), .Y(n777) );
  AO22X1 U2711 ( .A0(hero_area[22]), .A1(n1998), .B0(hero_area_temp[22]), .B1(
        n2047), .Y(n778) );
  AO22X1 U2712 ( .A0(polygon_area[11]), .A1(n1999), .B0(polygon_area_temp[11]), 
        .B1(n2045), .Y(n813) );
  AO22X1 U2713 ( .A0(polygon_area[10]), .A1(n2000), .B0(polygon_area_temp[10]), 
        .B1(n2045), .Y(n814) );
  AO22X1 U2714 ( .A0(hero_area[21]), .A1(n1998), .B0(hero_area_temp[21]), .B1(
        n2047), .Y(n779) );
  AO22X1 U2715 ( .A0(hero_area[20]), .A1(n1998), .B0(hero_area_temp[20]), .B1(
        n2047), .Y(n780) );
  AO22X1 U2716 ( .A0(polygon_area[9]), .A1(n2000), .B0(polygon_area_temp[9]), 
        .B1(n2045), .Y(n815) );
  AO22X1 U2717 ( .A0(polygon_area[8]), .A1(n2000), .B0(polygon_area_temp[8]), 
        .B1(n2045), .Y(n816) );
  AO22X1 U2718 ( .A0(hero_area[19]), .A1(n1998), .B0(hero_area_temp[19]), .B1(
        n2047), .Y(n781) );
  AO22X1 U2719 ( .A0(hero_area[18]), .A1(n1998), .B0(hero_area_temp[18]), .B1(
        n2047), .Y(n782) );
  AO22X1 U2720 ( .A0(polygon_area[7]), .A1(n2000), .B0(polygon_area_temp[7]), 
        .B1(n2045), .Y(n817) );
  AO22X1 U2721 ( .A0(polygon_area[6]), .A1(n2000), .B0(polygon_area_temp[6]), 
        .B1(n2045), .Y(n818) );
  AO22X1 U2722 ( .A0(hero_area[17]), .A1(n1998), .B0(hero_area_temp[17]), .B1(
        n2047), .Y(n783) );
  AO22X1 U2723 ( .A0(hero_area[16]), .A1(n1998), .B0(hero_area_temp[16]), .B1(
        n2047), .Y(n784) );
  AND2X2 U2724 ( .A(polygon_area[23]), .B(polygon_area[0]), .Y(N586) );
  AO22X1 U2725 ( .A0(polygon_area[5]), .A1(n2000), .B0(polygon_area_temp[5]), 
        .B1(n2045), .Y(n819) );
  AO22X1 U2726 ( .A0(polygon_area[4]), .A1(n2000), .B0(polygon_area_temp[4]), 
        .B1(n2045), .Y(n820) );
  AO22X1 U2727 ( .A0(hero_area[14]), .A1(n1998), .B0(hero_area_temp[14]), .B1(
        n2046), .Y(n786) );
  AO22X1 U2728 ( .A0(hero_area[15]), .A1(n1998), .B0(hero_area_temp[15]), .B1(
        n2046), .Y(n785) );
  AO22X1 U2729 ( .A0(polygon_area[3]), .A1(n2000), .B0(polygon_area_temp[3]), 
        .B1(n2045), .Y(n821) );
  AO22X1 U2730 ( .A0(hero_area[12]), .A1(n1998), .B0(hero_area_temp[12]), .B1(
        n2046), .Y(n788) );
  AO22X1 U2731 ( .A0(hero_area[13]), .A1(n1998), .B0(hero_area_temp[13]), .B1(
        n2046), .Y(n787) );
  AO22X1 U2732 ( .A0(polygon_area[2]), .A1(n2000), .B0(polygon_area_temp[2]), 
        .B1(n2045), .Y(n822) );
  AO22X1 U2733 ( .A0(polygon_area[1]), .A1(n2000), .B0(polygon_area_temp[1]), 
        .B1(n2045), .Y(n823) );
  AO22X1 U2734 ( .A0(hero_area[11]), .A1(n1998), .B0(hero_area_temp[11]), .B1(
        n2046), .Y(n789) );
  AO22X1 U2735 ( .A0(hero_area[10]), .A1(n1998), .B0(hero_area_temp[10]), .B1(
        n2046), .Y(n790) );
  AO22X1 U2736 ( .A0(hero_area[8]), .A1(n1999), .B0(hero_area_temp[8]), .B1(
        n2046), .Y(n792) );
  AO22X1 U2737 ( .A0(hero_area[9]), .A1(n2000), .B0(hero_area_temp[9]), .B1(
        n2046), .Y(n791) );
  AO22X1 U2738 ( .A0(n2000), .A1(polygon_area[0]), .B0(polygon_area_temp[0]), 
        .B1(n2045), .Y(n824) );
  AO22X1 U2739 ( .A0(hero_area[5]), .A1(n1998), .B0(hero_area_temp[5]), .B1(
        n2046), .Y(n795) );
  AO22X1 U2740 ( .A0(hero_area[7]), .A1(n1999), .B0(hero_area_temp[7]), .B1(
        n2046), .Y(n793) );
  AO22X1 U2741 ( .A0(hero_area[6]), .A1(n2000), .B0(hero_area_temp[6]), .B1(
        n2046), .Y(n794) );
  AO22X1 U2742 ( .A0(hero_area[4]), .A1(n1998), .B0(hero_area_temp[4]), .B1(
        n2046), .Y(n796) );
  AO22X1 U2743 ( .A0(hero_area[3]), .A1(n1999), .B0(hero_area_temp[3]), .B1(
        n2046), .Y(n797) );
  NOR2X2 U2744 ( .A(n2154), .B(loc_ff_pt[2]), .Y(n288) );
  NOR2X1 U2745 ( .A(loc_ff_cnt[1]), .B(loc_ff_cnt[0]), .Y(n443) );
  NOR2X1 U2746 ( .A(loc_ff_pt[1]), .B(loc_ff_pt[0]), .Y(n570) );
  CLKBUFX3 U2747 ( .A(n290), .Y(n1947) );
  AO22X1 U2748 ( .A0(hero_area[2]), .A1(n2000), .B0(hero_area_temp[2]), .B1(
        n2046), .Y(n798) );
  AO22X1 U2749 ( .A0(hero_area[1]), .A1(n566), .B0(hero_area_temp[1]), .B1(
        n2046), .Y(n799) );
  AOI32X1 U2750 ( .A0(n329), .A1(n141), .A2(n2161), .B0(n330), .B1(n328), .Y(
        n295) );
  AOI32X1 U2751 ( .A0(loc_ff_cnt[1]), .A1(n2161), .A2(n329), .B0(n330), .B1(
        n405), .Y(n372) );
  AOI32X1 U2752 ( .A0(loc_ff_cnt[2]), .A1(n2161), .A2(n443), .B0(n330), .B1(
        n442), .Y(n409) );
  OAI222XL U2753 ( .A0(n571), .A1(n2050), .B0(n572), .B1(n2152), .C0(n1935), 
        .C1(n547), .Y(n826) );
  AOI2BB2X1 U2754 ( .B0(loc_ff_cnt[0]), .B1(n288), .A0N(n288), .A1N(
        loc_ff_pt[0]), .Y(n572) );
  NOR2BX1 U2755 ( .AN(n185), .B(n1935), .Y(n571) );
  OAI222XL U2756 ( .A0(n567), .A1(n1997), .B0(n568), .B1(n564), .C0(n1934), 
        .C1(n547), .Y(n825) );
  AOI2BB2X1 U2757 ( .B0(n569), .B1(n288), .A0N(n568), .A1N(n288), .Y(n567) );
  AOI2BB1X1 U2758 ( .A0N(n570), .A1N(n1934), .B0(n288), .Y(n568) );
  XNOR2X1 U2759 ( .A(n554), .B(n562), .Y(n569) );
  AOI21X1 U2760 ( .A0(loc_ff_cnt[0]), .A1(loc_ff_cnt[1]), .B0(n443), .Y(n553)
         );
  OAI221XL U2761 ( .A0(n2050), .A1(n185), .B0(n146), .B1(n547), .C0(n548), .Y(
        n773) );
  AOI33X1 U2762 ( .A0(n288), .A1(n549), .A2(n550), .B0(n551), .B1(n2153), .B2(
        n552), .Y(n548) );
  OAI21XL U2763 ( .A0(n1935), .A1(n146), .B0(n2154), .Y(n551) );
  OAI21XL U2764 ( .A0(loc_ff_cnt[0]), .A1(n553), .B0(n554), .Y(n549) );
  OAI221XL U2765 ( .A0(n2159), .A1(n558), .B0(n560), .B1(n141), .C0(n563), .Y(
        n775) );
  OAI211X1 U2766 ( .A0(n550), .A1(n561), .B0(n2159), .C0(n560), .Y(n563) );
  CLKINVX1 U2767 ( .A(n553), .Y(n2159) );
  CLKINVX1 U2768 ( .A(n329), .Y(n2156) );
  NOR2X1 U2769 ( .A(n1859), .B(loc_ff_cnt[2]), .Y(n329) );
  OAI211X1 U2770 ( .A0(n560), .A1(n1859), .B0(n565), .C0(n556), .Y(n776) );
  OAI211X1 U2771 ( .A0(n2158), .A1(n2161), .B0(n1859), .C0(n560), .Y(n565) );
  CLKINVX1 U2772 ( .A(n564), .Y(n2158) );
  OAI31XL U2773 ( .A0(n188), .A1(curr_state[2]), .A2(curr_state[1]), .B0(n189), 
        .Y(next_state[0]) );
  OAI31XL U2774 ( .A0(n116), .A1(curr_state[2]), .A2(n190), .B0(n117), .Y(n189) );
  NOR3X1 U2775 ( .A(loc_ff_pt[1]), .B(loc_ff_pt[2]), .C(n1935), .Y(n328) );
  NOR3X1 U2776 ( .A(n1935), .B(loc_ff_pt[2]), .C(n146), .Y(n405) );
  NAND3X1 U2777 ( .A(n1935), .B(n1934), .C(loc_ff_pt[1]), .Y(n365) );
  NOR2X1 U2778 ( .A(n1934), .B(n2154), .Y(n442) );
  NAND3X1 U2779 ( .A(loc_ff_pt[0]), .B(n146), .C(loc_ff_pt[2]), .Y(n479) );
  NAND2X1 U2780 ( .A(n553), .B(loc_ff_cnt[0]), .Y(n554) );
  NAND3X1 U2781 ( .A(n555), .B(n556), .C(n557), .Y(n774) );
  OA22X1 U2782 ( .A0(n558), .A1(n559), .B0(n560), .B1(n140), .Y(n557) );
  OAI211X1 U2783 ( .A0(n330), .A1(n561), .B0(n562), .C0(n560), .Y(n555) );
  AOI2BB2X1 U2784 ( .B0(n329), .B1(loc_ff_cnt[1]), .A0N(loc_ff_cnt[0]), .A1N(
        n140), .Y(n559) );
  AO22X1 U2785 ( .A0(hero_area[0]), .A1(n1998), .B0(hero_area_temp[0]), .B1(
        n2046), .Y(n800) );
  AO21X1 U2786 ( .A0(curr_state[2]), .A1(n183), .B0(n2047), .Y(next_state[2])
         );
  OAI21XL U2787 ( .A0(curr_state[0]), .A1(n185), .B0(curr_state[1]), .Y(n183)
         );
  NOR2X1 U2788 ( .A(n1859), .B(loc_ff_cnt[2]), .Y(n1793) );
  AOI222XL U2789 ( .A0(\loc_r[5][0] ), .A1(n1863), .B0(\loc_r[3][0] ), .B1(
        n1862), .C0(\loc_r[4][0] ), .C1(n1861), .Y(n1795) );
  NOR2X1 U2790 ( .A(loc_ff_cnt[2]), .B(loc_ff_cnt[0]), .Y(n1792) );
  AOI222XL U2791 ( .A0(\loc_r[2][0] ), .A1(n1773), .B0(\loc_r[0][0] ), .B1(
        n1776), .C0(\loc_r[1][0] ), .C1(n1866), .Y(n1794) );
  NAND2X1 U2792 ( .A(n1795), .B(n1794), .Y(N946) );
  AOI222XL U2793 ( .A0(\loc_r[5][1] ), .A1(n1863), .B0(\loc_r[3][1] ), .B1(
        n1862), .C0(\loc_r[4][1] ), .C1(n1861), .Y(n1797) );
  AOI222XL U2794 ( .A0(\loc_r[2][1] ), .A1(n1773), .B0(\loc_r[0][1] ), .B1(
        n1776), .C0(\loc_r[1][1] ), .C1(n1866), .Y(n1796) );
  NAND2X1 U2795 ( .A(n1797), .B(n1796), .Y(N945) );
  AOI222XL U2796 ( .A0(\loc_r[5][2] ), .A1(n1863), .B0(\loc_r[3][2] ), .B1(
        n1862), .C0(\loc_r[4][2] ), .C1(n1861), .Y(n1799) );
  AOI222XL U2797 ( .A0(\loc_r[2][2] ), .A1(n1773), .B0(\loc_r[0][2] ), .B1(
        n1776), .C0(\loc_r[1][2] ), .C1(n1866), .Y(n1798) );
  NAND2X1 U2798 ( .A(n1799), .B(n1798), .Y(N944) );
  AOI222XL U2799 ( .A0(\loc_r[5][3] ), .A1(n1863), .B0(\loc_r[3][3] ), .B1(
        n1862), .C0(\loc_r[4][3] ), .C1(n1861), .Y(n1801) );
  AOI222XL U2800 ( .A0(\loc_r[2][3] ), .A1(n1773), .B0(\loc_r[0][3] ), .B1(
        n1776), .C0(\loc_r[1][3] ), .C1(n1866), .Y(n1800) );
  NAND2X1 U2801 ( .A(n1801), .B(n1800), .Y(N943) );
  AOI222XL U2802 ( .A0(\loc_r[5][4] ), .A1(n1863), .B0(\loc_r[3][4] ), .B1(
        n1862), .C0(\loc_r[4][4] ), .C1(n1861), .Y(n1803) );
  AOI222XL U2803 ( .A0(\loc_r[2][4] ), .A1(n1773), .B0(\loc_r[0][4] ), .B1(
        n1776), .C0(\loc_r[1][4] ), .C1(n1866), .Y(n1802) );
  NAND2X1 U2804 ( .A(n1803), .B(n1802), .Y(N942) );
  AOI222XL U2805 ( .A0(\loc_r[5][5] ), .A1(n1863), .B0(\loc_r[3][5] ), .B1(
        n1862), .C0(\loc_r[4][5] ), .C1(n1861), .Y(n1805) );
  AOI222XL U2806 ( .A0(\loc_r[2][5] ), .A1(n1773), .B0(\loc_r[0][5] ), .B1(
        n1776), .C0(\loc_r[1][5] ), .C1(n1866), .Y(n1804) );
  NAND2X1 U2807 ( .A(n1805), .B(n1804), .Y(N941) );
  AOI222XL U2808 ( .A0(\loc_r[5][6] ), .A1(n1863), .B0(\loc_r[3][6] ), .B1(
        n1862), .C0(\loc_r[4][6] ), .C1(n1861), .Y(n1807) );
  AOI222XL U2809 ( .A0(\loc_r[2][6] ), .A1(n1773), .B0(\loc_r[0][6] ), .B1(
        n1776), .C0(\loc_r[1][6] ), .C1(n1866), .Y(n1806) );
  NAND2X1 U2810 ( .A(n1807), .B(n1806), .Y(N940) );
  AOI222XL U2811 ( .A0(\loc_r[5][7] ), .A1(n1863), .B0(\loc_r[3][7] ), .B1(
        n1862), .C0(\loc_r[4][7] ), .C1(n1861), .Y(n1809) );
  AOI222XL U2812 ( .A0(\loc_r[2][7] ), .A1(n1868), .B0(\loc_r[0][7] ), .B1(
        n1867), .C0(\loc_r[1][7] ), .C1(n1866), .Y(n1808) );
  NAND2X1 U2813 ( .A(n1809), .B(n1808), .Y(N939) );
  AOI222XL U2814 ( .A0(\loc_r[5][8] ), .A1(n1863), .B0(\loc_r[3][8] ), .B1(
        n1862), .C0(\loc_r[4][8] ), .C1(n1861), .Y(n1811) );
  AOI222XL U2815 ( .A0(\loc_r[2][8] ), .A1(n1868), .B0(\loc_r[0][8] ), .B1(
        n1867), .C0(\loc_r[1][8] ), .C1(n1866), .Y(n1810) );
  NAND2X1 U2816 ( .A(n1811), .B(n1810), .Y(N938) );
  AOI222XL U2817 ( .A0(\loc_r[5][9] ), .A1(n1863), .B0(\loc_r[3][9] ), .B1(
        n1862), .C0(\loc_r[4][9] ), .C1(n1861), .Y(n1813) );
  AOI222XL U2818 ( .A0(\loc_r[2][9] ), .A1(n1868), .B0(\loc_r[0][9] ), .B1(
        n1867), .C0(\loc_r[1][9] ), .C1(n1866), .Y(n1812) );
  NAND2X1 U2819 ( .A(n1813), .B(n1812), .Y(N937) );
  AOI222XL U2820 ( .A0(\loc_r[5][10] ), .A1(n1863), .B0(\loc_r[3][10] ), .B1(
        n1862), .C0(\loc_r[4][10] ), .C1(n1861), .Y(n1815) );
  AOI222XL U2821 ( .A0(\loc_r[2][10] ), .A1(n1868), .B0(\loc_r[0][10] ), .B1(
        n1867), .C0(\loc_r[1][10] ), .C1(n1866), .Y(n1814) );
  NAND2X1 U2822 ( .A(n1815), .B(n1814), .Y(N936) );
  AOI222XL U2823 ( .A0(\loc_y[5][0] ), .A1(n1863), .B0(\loc_y[3][0] ), .B1(
        n1862), .C0(\loc_y[4][0] ), .C1(n1861), .Y(n1817) );
  AOI222XL U2824 ( .A0(\loc_y[2][0] ), .A1(n1868), .B0(\loc_y[0][0] ), .B1(
        n1867), .C0(\loc_y[1][0] ), .C1(n1866), .Y(n1816) );
  NAND2X1 U2825 ( .A(n1817), .B(n1816), .Y(N935) );
  AOI222XL U2826 ( .A0(\loc_y[5][1] ), .A1(n1863), .B0(\loc_y[3][1] ), .B1(
        n1862), .C0(\loc_y[4][1] ), .C1(n1861), .Y(n1819) );
  AOI222XL U2827 ( .A0(\loc_y[2][1] ), .A1(n1773), .B0(\loc_y[0][1] ), .B1(
        n1776), .C0(\loc_y[1][1] ), .C1(n1866), .Y(n1818) );
  NAND2X1 U2828 ( .A(n1819), .B(n1818), .Y(N934) );
  AOI222XL U2829 ( .A0(\loc_y[5][2] ), .A1(n1864), .B0(\loc_y[3][2] ), .B1(
        n1771), .C0(\loc_y[4][2] ), .C1(n1860), .Y(n1821) );
  AOI222XL U2830 ( .A0(\loc_y[2][2] ), .A1(n1868), .B0(\loc_y[0][2] ), .B1(
        n1867), .C0(\loc_y[1][2] ), .C1(n1865), .Y(n1820) );
  NAND2X1 U2831 ( .A(n1821), .B(n1820), .Y(N933) );
  AOI222XL U2832 ( .A0(\loc_y[5][3] ), .A1(n1864), .B0(\loc_y[3][3] ), .B1(
        n1771), .C0(\loc_y[4][3] ), .C1(n1860), .Y(n1823) );
  AOI222XL U2833 ( .A0(\loc_y[2][3] ), .A1(n1868), .B0(\loc_y[0][3] ), .B1(
        n1867), .C0(\loc_y[1][3] ), .C1(n1865), .Y(n1822) );
  NAND2X1 U2834 ( .A(n1823), .B(n1822), .Y(N932) );
  AOI222XL U2835 ( .A0(\loc_y[5][4] ), .A1(n1864), .B0(\loc_y[3][4] ), .B1(
        n1771), .C0(\loc_y[4][4] ), .C1(n1860), .Y(n1825) );
  AOI222XL U2836 ( .A0(\loc_y[2][4] ), .A1(n1868), .B0(\loc_y[0][4] ), .B1(
        n1867), .C0(\loc_y[1][4] ), .C1(n1855), .Y(n1824) );
  NAND2X1 U2837 ( .A(n1825), .B(n1824), .Y(N931) );
  AOI222XL U2838 ( .A0(\loc_y[5][5] ), .A1(n1864), .B0(\loc_y[3][5] ), .B1(
        n1771), .C0(\loc_y[4][5] ), .C1(n1860), .Y(n1827) );
  AOI222XL U2839 ( .A0(\loc_y[2][5] ), .A1(n1868), .B0(\loc_y[0][5] ), .B1(
        n1867), .C0(\loc_y[1][5] ), .C1(n1855), .Y(n1826) );
  NAND2X1 U2840 ( .A(n1827), .B(n1826), .Y(N930) );
  AOI222XL U2841 ( .A0(\loc_y[5][6] ), .A1(n1864), .B0(\loc_y[3][6] ), .B1(
        n1771), .C0(\loc_y[4][6] ), .C1(n1860), .Y(n1829) );
  AOI222XL U2842 ( .A0(\loc_y[2][6] ), .A1(n1868), .B0(\loc_y[0][6] ), .B1(
        n1867), .C0(\loc_y[1][6] ), .C1(n1865), .Y(n1828) );
  NAND2X1 U2843 ( .A(n1829), .B(n1828), .Y(N929) );
  AOI222XL U2844 ( .A0(\loc_y[5][7] ), .A1(n1864), .B0(\loc_y[3][7] ), .B1(
        n1771), .C0(\loc_y[4][7] ), .C1(n1860), .Y(n1831) );
  AOI222XL U2845 ( .A0(\loc_y[2][7] ), .A1(n1868), .B0(\loc_y[0][7] ), .B1(
        n1867), .C0(\loc_y[1][7] ), .C1(n1865), .Y(n1830) );
  NAND2X1 U2846 ( .A(n1831), .B(n1830), .Y(N928) );
  AOI222XL U2847 ( .A0(\loc_y[5][8] ), .A1(n1864), .B0(\loc_y[3][8] ), .B1(
        n1771), .C0(\loc_y[4][8] ), .C1(n1860), .Y(n1833) );
  AOI222XL U2848 ( .A0(\loc_y[2][8] ), .A1(n1868), .B0(\loc_y[0][8] ), .B1(
        n1867), .C0(\loc_y[1][8] ), .C1(n1865), .Y(n1832) );
  NAND2X1 U2849 ( .A(n1833), .B(n1832), .Y(N927) );
  AOI222XL U2850 ( .A0(\loc_y[5][9] ), .A1(n1864), .B0(\loc_y[3][9] ), .B1(
        n1771), .C0(\loc_y[4][9] ), .C1(n1860), .Y(n1835) );
  AOI222XL U2851 ( .A0(\loc_y[2][9] ), .A1(n1868), .B0(\loc_y[0][9] ), .B1(
        n1867), .C0(\loc_y[1][9] ), .C1(n1865), .Y(n1834) );
  NAND2X1 U2852 ( .A(n1835), .B(n1834), .Y(N926) );
  AOI222XL U2853 ( .A0(\loc_x[5][0] ), .A1(n1864), .B0(\loc_x[3][0] ), .B1(
        n1771), .C0(\loc_x[4][0] ), .C1(n1860), .Y(n1837) );
  AOI222XL U2854 ( .A0(\loc_x[2][0] ), .A1(n1868), .B0(\loc_x[0][0] ), .B1(
        n1867), .C0(\loc_x[1][0] ), .C1(n1855), .Y(n1836) );
  NAND2X1 U2855 ( .A(n1837), .B(n1836), .Y(N925) );
  AOI222XL U2856 ( .A0(\loc_x[5][1] ), .A1(n1864), .B0(\loc_x[3][1] ), .B1(
        n1771), .C0(\loc_x[4][1] ), .C1(n1860), .Y(n1839) );
  AOI222XL U2857 ( .A0(\loc_x[2][1] ), .A1(n1868), .B0(\loc_x[0][1] ), .B1(
        n1867), .C0(\loc_x[1][1] ), .C1(n1865), .Y(n1838) );
  NAND2X1 U2858 ( .A(n1839), .B(n1838), .Y(N924) );
  AOI222XL U2859 ( .A0(\loc_x[5][2] ), .A1(n1864), .B0(\loc_x[3][2] ), .B1(
        n1862), .C0(\loc_x[4][2] ), .C1(n1860), .Y(n1841) );
  AOI222XL U2860 ( .A0(\loc_x[2][2] ), .A1(n1868), .B0(\loc_x[0][2] ), .B1(
        n1867), .C0(\loc_x[1][2] ), .C1(n1865), .Y(n1840) );
  NAND2X1 U2861 ( .A(n1841), .B(n1840), .Y(N923) );
  AOI222XL U2862 ( .A0(\loc_x[5][3] ), .A1(n1864), .B0(\loc_x[3][3] ), .B1(
        n1862), .C0(\loc_x[4][3] ), .C1(n1860), .Y(n1843) );
  AOI222XL U2863 ( .A0(\loc_x[2][3] ), .A1(n1868), .B0(\loc_x[0][3] ), .B1(
        n1867), .C0(\loc_x[1][3] ), .C1(n1865), .Y(n1842) );
  NAND2X1 U2864 ( .A(n1843), .B(n1842), .Y(N922) );
  AOI222XL U2865 ( .A0(\loc_x[5][4] ), .A1(n1864), .B0(\loc_x[3][4] ), .B1(
        n1862), .C0(\loc_x[4][4] ), .C1(n1860), .Y(n1845) );
  AOI222XL U2866 ( .A0(\loc_x[2][4] ), .A1(n1868), .B0(\loc_x[0][4] ), .B1(
        n1867), .C0(\loc_x[1][4] ), .C1(n1865), .Y(n1844) );
  NAND2X1 U2867 ( .A(n1845), .B(n1844), .Y(N921) );
  AOI222XL U2868 ( .A0(\loc_x[5][5] ), .A1(n1863), .B0(\loc_x[3][5] ), .B1(
        n1862), .C0(\loc_x[4][5] ), .C1(n1861), .Y(n1847) );
  AOI222XL U2869 ( .A0(\loc_x[2][5] ), .A1(n1773), .B0(\loc_x[0][5] ), .B1(
        n1776), .C0(\loc_x[1][5] ), .C1(n1866), .Y(n1846) );
  NAND2X1 U2870 ( .A(n1847), .B(n1846), .Y(N920) );
  AOI222XL U2871 ( .A0(\loc_x[5][6] ), .A1(n1863), .B0(\loc_x[3][6] ), .B1(
        n1862), .C0(\loc_x[4][6] ), .C1(n1860), .Y(n1849) );
  AOI222XL U2872 ( .A0(\loc_x[2][6] ), .A1(n1773), .B0(\loc_x[0][6] ), .B1(
        n1776), .C0(\loc_x[1][6] ), .C1(n1865), .Y(n1848) );
  NAND2X1 U2873 ( .A(n1849), .B(n1848), .Y(N919) );
  AOI222XL U2874 ( .A0(\loc_x[5][7] ), .A1(n1863), .B0(\loc_x[3][7] ), .B1(
        n1862), .C0(\loc_x[4][7] ), .C1(n1854), .Y(n1851) );
  AOI222XL U2875 ( .A0(\loc_x[2][7] ), .A1(n1773), .B0(\loc_x[0][7] ), .B1(
        n1776), .C0(\loc_x[1][7] ), .C1(n1855), .Y(n1850) );
  NAND2X1 U2876 ( .A(n1851), .B(n1850), .Y(N918) );
  AOI222XL U2877 ( .A0(\loc_x[5][8] ), .A1(n1863), .B0(\loc_x[3][8] ), .B1(
        n1862), .C0(\loc_x[4][8] ), .C1(n1854), .Y(n1853) );
  AOI222XL U2878 ( .A0(\loc_x[2][8] ), .A1(n1773), .B0(\loc_x[0][8] ), .B1(
        n1776), .C0(\loc_x[1][8] ), .C1(n1855), .Y(n1852) );
  NAND2X1 U2879 ( .A(n1853), .B(n1852), .Y(N917) );
  AOI222XL U2880 ( .A0(\loc_x[5][9] ), .A1(n1863), .B0(\loc_x[3][9] ), .B1(
        n1862), .C0(\loc_x[4][9] ), .C1(n1854), .Y(n1857) );
  AOI222XL U2881 ( .A0(\loc_x[2][9] ), .A1(n1773), .B0(\loc_x[0][9] ), .B1(
        n1776), .C0(\loc_x[1][9] ), .C1(n1855), .Y(n1856) );
  NAND2X1 U2882 ( .A(n1857), .B(n1856), .Y(N916) );
  NOR2X1 U2883 ( .A(n1935), .B(loc_ff_pt[2]), .Y(n1870) );
  AOI222XL U2884 ( .A0(\loc_r[5][0] ), .A1(n1939), .B0(\loc_r[3][0] ), .B1(
        n1775), .C0(\loc_r[4][0] ), .C1(n1931), .Y(n1872) );
  NOR2X1 U2885 ( .A(loc_ff_pt[2]), .B(loc_ff_pt[0]), .Y(n1869) );
  AOI222XL U2886 ( .A0(\loc_r[2][0] ), .A1(n1772), .B0(\loc_r[0][0] ), .B1(
        n1779), .C0(\loc_r[1][0] ), .C1(n1941), .Y(n1871) );
  NAND2X1 U2887 ( .A(n1872), .B(n1871), .Y(N909) );
  AOI222XL U2888 ( .A0(\loc_r[5][1] ), .A1(n1939), .B0(\loc_r[3][1] ), .B1(
        n1775), .C0(\loc_r[4][1] ), .C1(n1931), .Y(n1874) );
  AOI222XL U2889 ( .A0(\loc_r[2][1] ), .A1(n1772), .B0(\loc_r[0][1] ), .B1(
        n1779), .C0(\loc_r[1][1] ), .C1(n1941), .Y(n1873) );
  NAND2X1 U2890 ( .A(n1874), .B(n1873), .Y(N908) );
  AOI222XL U2891 ( .A0(\loc_r[5][2] ), .A1(n1939), .B0(\loc_r[3][2] ), .B1(
        n1775), .C0(\loc_r[4][2] ), .C1(n1936), .Y(n1876) );
  AOI222XL U2892 ( .A0(\loc_r[2][2] ), .A1(n1772), .B0(\loc_r[0][2] ), .B1(
        n1779), .C0(\loc_r[1][2] ), .C1(n1941), .Y(n1875) );
  NAND2X1 U2893 ( .A(n1876), .B(n1875), .Y(N907) );
  AOI222XL U2894 ( .A0(\loc_r[5][3] ), .A1(n1939), .B0(\loc_r[3][3] ), .B1(
        n1775), .C0(\loc_r[4][3] ), .C1(n1936), .Y(n1878) );
  AOI222XL U2895 ( .A0(\loc_r[2][3] ), .A1(n1772), .B0(\loc_r[0][3] ), .B1(
        n1779), .C0(\loc_r[1][3] ), .C1(n1941), .Y(n1877) );
  NAND2X1 U2896 ( .A(n1878), .B(n1877), .Y(N906) );
  AOI222XL U2897 ( .A0(\loc_r[5][4] ), .A1(n1939), .B0(\loc_r[3][4] ), .B1(
        n1775), .C0(\loc_r[4][4] ), .C1(n1936), .Y(n1880) );
  AOI222XL U2898 ( .A0(\loc_r[2][4] ), .A1(n1772), .B0(\loc_r[0][4] ), .B1(
        n1779), .C0(\loc_r[1][4] ), .C1(n1941), .Y(n1879) );
  NAND2X1 U2899 ( .A(n1880), .B(n1879), .Y(N905) );
  AOI222XL U2900 ( .A0(\loc_r[5][5] ), .A1(n1939), .B0(\loc_r[3][5] ), .B1(
        n1775), .C0(\loc_r[4][5] ), .C1(n1936), .Y(n1882) );
  AOI222XL U2901 ( .A0(\loc_r[2][5] ), .A1(n1772), .B0(\loc_r[0][5] ), .B1(
        n1779), .C0(\loc_r[1][5] ), .C1(n1941), .Y(n1881) );
  NAND2X1 U2902 ( .A(n1882), .B(n1881), .Y(N904) );
  AOI222XL U2903 ( .A0(\loc_r[5][6] ), .A1(n1939), .B0(\loc_r[3][6] ), .B1(
        n1775), .C0(\loc_r[4][6] ), .C1(n1936), .Y(n1884) );
  AOI222XL U2904 ( .A0(\loc_r[2][6] ), .A1(n1772), .B0(\loc_r[0][6] ), .B1(
        n1779), .C0(\loc_r[1][6] ), .C1(n1941), .Y(n1883) );
  NAND2X1 U2905 ( .A(n1884), .B(n1883), .Y(N903) );
  AOI222XL U2906 ( .A0(\loc_r[5][7] ), .A1(n1939), .B0(\loc_r[3][7] ), .B1(
        n1938), .C0(\loc_r[4][7] ), .C1(n1936), .Y(n1886) );
  AOI222XL U2907 ( .A0(\loc_r[2][7] ), .A1(n1944), .B0(\loc_r[0][7] ), .B1(
        n1779), .C0(\loc_r[1][7] ), .C1(n1941), .Y(n1885) );
  NAND2X1 U2908 ( .A(n1886), .B(n1885), .Y(N902) );
  AOI222XL U2909 ( .A0(\loc_r[5][8] ), .A1(n1939), .B0(\loc_r[3][8] ), .B1(
        n1938), .C0(\loc_r[4][8] ), .C1(n1936), .Y(n1888) );
  AOI222XL U2910 ( .A0(\loc_r[2][8] ), .A1(n1944), .B0(\loc_r[0][8] ), .B1(
        n1779), .C0(\loc_r[1][8] ), .C1(n1941), .Y(n1887) );
  NAND2X1 U2911 ( .A(n1888), .B(n1887), .Y(N901) );
  AOI222XL U2912 ( .A0(\loc_r[5][9] ), .A1(n1939), .B0(\loc_r[3][9] ), .B1(
        n1938), .C0(\loc_r[4][9] ), .C1(n1936), .Y(n1890) );
  AOI222XL U2913 ( .A0(\loc_r[2][9] ), .A1(n1944), .B0(\loc_r[0][9] ), .B1(
        n1942), .C0(\loc_r[1][9] ), .C1(n1941), .Y(n1889) );
  NAND2X1 U2914 ( .A(n1890), .B(n1889), .Y(N900) );
  AOI222XL U2915 ( .A0(\loc_r[5][10] ), .A1(n1939), .B0(\loc_r[3][10] ), .B1(
        n1938), .C0(\loc_r[4][10] ), .C1(n1936), .Y(n1892) );
  AOI222XL U2916 ( .A0(\loc_r[2][10] ), .A1(n1944), .B0(\loc_r[0][10] ), .B1(
        n1942), .C0(\loc_r[1][10] ), .C1(n1941), .Y(n1891) );
  NAND2X1 U2917 ( .A(n1892), .B(n1891), .Y(N899) );
  AOI222XL U2918 ( .A0(\loc_y[5][0] ), .A1(n1939), .B0(\loc_y[3][0] ), .B1(
        n1775), .C0(\loc_y[4][0] ), .C1(n1937), .Y(n1894) );
  AOI222XL U2919 ( .A0(\loc_y[2][0] ), .A1(n1772), .B0(\loc_y[0][0] ), .B1(
        n1943), .C0(\loc_y[1][0] ), .C1(n1941), .Y(n1893) );
  NAND2X1 U2920 ( .A(n1894), .B(n1893), .Y(N898) );
  AOI222XL U2921 ( .A0(\loc_y[5][1] ), .A1(n1939), .B0(\loc_y[3][1] ), .B1(
        n1775), .C0(\loc_y[4][1] ), .C1(n1931), .Y(n1896) );
  AOI222XL U2922 ( .A0(\loc_y[2][1] ), .A1(n1772), .B0(\loc_y[0][1] ), .B1(
        n1779), .C0(\loc_y[1][1] ), .C1(n1941), .Y(n1895) );
  NAND2X1 U2923 ( .A(n1896), .B(n1895), .Y(N897) );
  AOI222XL U2924 ( .A0(\loc_y[5][2] ), .A1(n1940), .B0(\loc_y[3][2] ), .B1(
        n1938), .C0(\loc_y[4][2] ), .C1(n1937), .Y(n1898) );
  AOI222XL U2925 ( .A0(\loc_y[2][2] ), .A1(n1944), .B0(\loc_y[0][2] ), .B1(
        n1943), .C0(\loc_y[1][2] ), .C1(n1941), .Y(n1897) );
  NAND2X1 U2926 ( .A(n1898), .B(n1897), .Y(N896) );
  AOI222XL U2927 ( .A0(\loc_y[5][3] ), .A1(n1940), .B0(\loc_y[3][3] ), .B1(
        n1938), .C0(\loc_y[4][3] ), .C1(n1937), .Y(n1900) );
  AOI222XL U2928 ( .A0(\loc_y[2][3] ), .A1(n1944), .B0(\loc_y[0][3] ), .B1(
        n1943), .C0(\loc_y[1][3] ), .C1(n1774), .Y(n1899) );
  NAND2X1 U2929 ( .A(n1900), .B(n1899), .Y(N895) );
  AOI222XL U2930 ( .A0(\loc_y[5][4] ), .A1(n1940), .B0(\loc_y[3][4] ), .B1(
        n1938), .C0(\loc_y[4][4] ), .C1(n1937), .Y(n1902) );
  AOI222XL U2931 ( .A0(\loc_y[2][4] ), .A1(n1944), .B0(\loc_y[0][4] ), .B1(
        n1943), .C0(\loc_y[1][4] ), .C1(n1774), .Y(n1901) );
  NAND2X1 U2932 ( .A(n1902), .B(n1901), .Y(N894) );
  AOI222XL U2933 ( .A0(\loc_y[5][5] ), .A1(n1940), .B0(\loc_y[3][5] ), .B1(
        n1938), .C0(\loc_y[4][5] ), .C1(n1937), .Y(n1904) );
  AOI222XL U2934 ( .A0(\loc_y[2][5] ), .A1(n1944), .B0(\loc_y[0][5] ), .B1(
        n1943), .C0(\loc_y[1][5] ), .C1(n1774), .Y(n1903) );
  NAND2X1 U2935 ( .A(n1904), .B(n1903), .Y(N893) );
  AOI222XL U2936 ( .A0(\loc_y[5][6] ), .A1(n1940), .B0(\loc_y[3][6] ), .B1(
        n1938), .C0(\loc_y[4][6] ), .C1(n1937), .Y(n1906) );
  AOI222XL U2937 ( .A0(\loc_y[2][6] ), .A1(n1944), .B0(\loc_y[0][6] ), .B1(
        n1943), .C0(\loc_y[1][6] ), .C1(n1774), .Y(n1905) );
  NAND2X1 U2938 ( .A(n1906), .B(n1905), .Y(N892) );
  AOI222XL U2939 ( .A0(\loc_y[5][7] ), .A1(n1940), .B0(\loc_y[3][7] ), .B1(
        n1938), .C0(\loc_y[4][7] ), .C1(n1937), .Y(n1908) );
  AOI222XL U2940 ( .A0(\loc_y[2][7] ), .A1(n1944), .B0(\loc_y[0][7] ), .B1(
        n1943), .C0(\loc_y[1][7] ), .C1(n1774), .Y(n1907) );
  NAND2X1 U2941 ( .A(n1908), .B(n1907), .Y(N891) );
  AOI222XL U2942 ( .A0(\loc_y[5][8] ), .A1(n1940), .B0(\loc_y[3][8] ), .B1(
        n1938), .C0(\loc_y[4][8] ), .C1(n1937), .Y(n1910) );
  AOI222XL U2943 ( .A0(\loc_y[2][8] ), .A1(n1944), .B0(\loc_y[0][8] ), .B1(
        n1943), .C0(\loc_y[1][8] ), .C1(n1774), .Y(n1909) );
  NAND2X1 U2944 ( .A(n1910), .B(n1909), .Y(N890) );
  AOI222XL U2945 ( .A0(\loc_y[5][9] ), .A1(n1940), .B0(\loc_y[3][9] ), .B1(
        n1938), .C0(\loc_y[4][9] ), .C1(n1937), .Y(n1912) );
  AOI222XL U2946 ( .A0(\loc_y[2][9] ), .A1(n1944), .B0(\loc_y[0][9] ), .B1(
        n1943), .C0(\loc_y[1][9] ), .C1(n1774), .Y(n1911) );
  NAND2X1 U2947 ( .A(n1912), .B(n1911), .Y(N889) );
  AOI222XL U2948 ( .A0(\loc_x[5][0] ), .A1(n1940), .B0(\loc_x[3][0] ), .B1(
        n1938), .C0(\loc_x[4][0] ), .C1(n1937), .Y(n1914) );
  AOI222XL U2949 ( .A0(\loc_x[2][0] ), .A1(n1944), .B0(\loc_x[0][0] ), .B1(
        n1943), .C0(\loc_x[1][0] ), .C1(n1774), .Y(n1913) );
  NAND2X1 U2950 ( .A(n1914), .B(n1913), .Y(N888) );
  AOI222XL U2951 ( .A0(\loc_x[5][1] ), .A1(n1940), .B0(\loc_x[3][1] ), .B1(
        n1938), .C0(\loc_x[4][1] ), .C1(n1937), .Y(n1916) );
  AOI222XL U2952 ( .A0(\loc_x[2][1] ), .A1(n1944), .B0(\loc_x[0][1] ), .B1(
        n1943), .C0(\loc_x[1][1] ), .C1(n1774), .Y(n1915) );
  NAND2X1 U2953 ( .A(n1916), .B(n1915), .Y(N887) );
  AOI222XL U2954 ( .A0(\loc_x[5][2] ), .A1(n1940), .B0(\loc_x[3][2] ), .B1(
        n1938), .C0(\loc_x[4][2] ), .C1(n1937), .Y(n1918) );
  AOI222XL U2955 ( .A0(\loc_x[2][2] ), .A1(n1944), .B0(\loc_x[0][2] ), .B1(
        n1943), .C0(\loc_x[1][2] ), .C1(n1774), .Y(n1917) );
  NAND2X1 U2956 ( .A(n1918), .B(n1917), .Y(N886) );
  AOI222XL U2957 ( .A0(\loc_x[5][3] ), .A1(n1940), .B0(\loc_x[3][3] ), .B1(
        n1938), .C0(\loc_x[4][3] ), .C1(n1937), .Y(n1920) );
  AOI222XL U2958 ( .A0(\loc_x[2][3] ), .A1(n1944), .B0(\loc_x[0][3] ), .B1(
        n1943), .C0(\loc_x[1][3] ), .C1(n1941), .Y(n1919) );
  NAND2X1 U2959 ( .A(n1920), .B(n1919), .Y(N885) );
  AOI222XL U2960 ( .A0(\loc_x[5][4] ), .A1(n1940), .B0(\loc_x[3][4] ), .B1(
        n1938), .C0(\loc_x[4][4] ), .C1(n1937), .Y(n1922) );
  AOI222XL U2961 ( .A0(\loc_x[2][4] ), .A1(n1944), .B0(\loc_x[0][4] ), .B1(
        n1943), .C0(\loc_x[1][4] ), .C1(n1941), .Y(n1921) );
  NAND2X1 U2962 ( .A(n1922), .B(n1921), .Y(N884) );
  AOI222XL U2963 ( .A0(\loc_x[5][5] ), .A1(n1939), .B0(\loc_x[3][5] ), .B1(
        n1938), .C0(\loc_x[4][5] ), .C1(n1937), .Y(n1924) );
  AOI222XL U2964 ( .A0(\loc_x[2][5] ), .A1(n1944), .B0(\loc_x[0][5] ), .B1(
        n1943), .C0(\loc_x[1][5] ), .C1(n1941), .Y(n1923) );
  NAND2X1 U2965 ( .A(n1924), .B(n1923), .Y(N883) );
  AOI222XL U2966 ( .A0(\loc_x[5][6] ), .A1(n1939), .B0(\loc_x[3][6] ), .B1(
        n1775), .C0(\loc_x[4][6] ), .C1(n1931), .Y(n1926) );
  AOI222XL U2967 ( .A0(\loc_x[2][6] ), .A1(n1772), .B0(\loc_x[0][6] ), .B1(
        n1942), .C0(\loc_x[1][6] ), .C1(n1941), .Y(n1925) );
  NAND2X1 U2968 ( .A(n1926), .B(n1925), .Y(N882) );
  AOI222XL U2969 ( .A0(\loc_x[5][7] ), .A1(n1939), .B0(\loc_x[3][7] ), .B1(
        n1775), .C0(\loc_x[4][7] ), .C1(n1936), .Y(n1928) );
  AOI222XL U2970 ( .A0(\loc_x[2][7] ), .A1(n1772), .B0(\loc_x[0][7] ), .B1(
        n1779), .C0(\loc_x[1][7] ), .C1(n1941), .Y(n1927) );
  NAND2X1 U2971 ( .A(n1928), .B(n1927), .Y(N881) );
  AOI222XL U2972 ( .A0(\loc_x[5][8] ), .A1(n1939), .B0(\loc_x[3][8] ), .B1(
        n1775), .C0(\loc_x[4][8] ), .C1(n1931), .Y(n1930) );
  AOI222XL U2973 ( .A0(\loc_x[2][8] ), .A1(n1772), .B0(\loc_x[0][8] ), .B1(
        n1779), .C0(\loc_x[1][8] ), .C1(n1941), .Y(n1929) );
  NAND2X1 U2974 ( .A(n1930), .B(n1929), .Y(N880) );
  AOI222XL U2975 ( .A0(\loc_x[5][9] ), .A1(n1939), .B0(\loc_x[3][9] ), .B1(
        n1775), .C0(\loc_x[4][9] ), .C1(n1931), .Y(n1933) );
  AOI222XL U2976 ( .A0(\loc_x[2][9] ), .A1(n1772), .B0(\loc_x[0][9] ), .B1(
        n1779), .C0(\loc_x[1][9] ), .C1(n1941), .Y(n1932) );
  NAND2X1 U2977 ( .A(n1933), .B(n1932), .Y(N879) );
endmodule

