/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu Jun  1 20:46:07 2023
/////////////////////////////////////////////////////////////


module Fpc ( clk, rst_n, in_valid, in_a, in_b, mode, out_valid, out );
  input [15:0] in_a;
  input [15:0] in_b;
  output [15:0] out;
  input clk, rst_n, in_valid, mode;
  output out_valid;
  wire   sign_a, sign_b, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263,
         DP_OP_61J1_123_6112_n167, DP_OP_61J1_123_6112_n165,
         DP_OP_61J1_123_6112_n160, DP_OP_61J1_123_6112_n159,
         DP_OP_61J1_123_6112_n158, DP_OP_61J1_123_6112_n157,
         DP_OP_61J1_123_6112_n153, DP_OP_61J1_123_6112_n152,
         DP_OP_61J1_123_6112_n151, DP_OP_61J1_123_6112_n150,
         DP_OP_61J1_123_6112_n144, DP_OP_61J1_123_6112_n143,
         DP_OP_61J1_123_6112_n137, DP_OP_61J1_123_6112_n135,
         DP_OP_61J1_123_6112_n134, DP_OP_61J1_123_6112_n133,
         DP_OP_61J1_123_6112_n128, DP_OP_61J1_123_6112_n126,
         DP_OP_61J1_123_6112_n120, DP_OP_61J1_123_6112_n119,
         DP_OP_61J1_123_6112_n117, DP_OP_61J1_123_6112_n105,
         DP_OP_61J1_123_6112_n102, DP_OP_61J1_123_6112_n100,
         DP_OP_61J1_123_6112_n99, DP_OP_61J1_123_6112_n98,
         DP_OP_61J1_123_6112_n97, DP_OP_61J1_123_6112_n96,
         DP_OP_61J1_123_6112_n95, DP_OP_61J1_123_6112_n94,
         DP_OP_61J1_123_6112_n93, DP_OP_61J1_123_6112_n92,
         DP_OP_61J1_123_6112_n91, DP_OP_61J1_123_6112_n90,
         DP_OP_61J1_123_6112_n89, DP_OP_61J1_123_6112_n88,
         DP_OP_61J1_123_6112_n87, DP_OP_61J1_123_6112_n86,
         DP_OP_61J1_123_6112_n85, DP_OP_61J1_123_6112_n84,
         DP_OP_61J1_123_6112_n83, DP_OP_61J1_123_6112_n82,
         DP_OP_61J1_123_6112_n81, DP_OP_61J1_123_6112_n80,
         DP_OP_61J1_123_6112_n79, DP_OP_61J1_123_6112_n78,
         DP_OP_61J1_123_6112_n77, DP_OP_61J1_123_6112_n76,
         DP_OP_61J1_123_6112_n75, DP_OP_61J1_123_6112_n74,
         DP_OP_61J1_123_6112_n73, DP_OP_61J1_123_6112_n72,
         DP_OP_61J1_123_6112_n71, DP_OP_61J1_123_6112_n70,
         DP_OP_61J1_123_6112_n69, DP_OP_61J1_123_6112_n68,
         DP_OP_61J1_123_6112_n67, DP_OP_61J1_123_6112_n66,
         DP_OP_61J1_123_6112_n65, DP_OP_61J1_123_6112_n64,
         DP_OP_61J1_123_6112_n63, DP_OP_61J1_123_6112_n62,
         DP_OP_61J1_123_6112_n61, DP_OP_61J1_123_6112_n60,
         DP_OP_61J1_123_6112_n59, DP_OP_61J1_123_6112_n58,
         DP_OP_61J1_123_6112_n57, DP_OP_61J1_123_6112_n56,
         DP_OP_61J1_123_6112_n55, DP_OP_61J1_123_6112_n54,
         DP_OP_61J1_123_6112_n53, DP_OP_61J1_123_6112_n52,
         DP_OP_61J1_123_6112_n51, DP_OP_61J1_123_6112_n50,
         DP_OP_61J1_123_6112_n49, DP_OP_61J1_123_6112_n48,
         DP_OP_61J1_123_6112_n47, DP_OP_61J1_123_6112_n46,
         DP_OP_61J1_123_6112_n45, DP_OP_61J1_123_6112_n44,
         DP_OP_61J1_123_6112_n43, DP_OP_61J1_123_6112_n42,
         DP_OP_61J1_123_6112_n41, intadd_0_B_6_, intadd_0_CI, intadd_0_SUM_6_,
         intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_,
         intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n7, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1,
         intadd_1_A_6_, intadd_1_A_5_, intadd_1_A_4_, intadd_1_A_3_,
         intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_, intadd_1_B_6_,
         intadd_1_B_5_, intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_,
         intadd_1_B_1_, intadd_1_B_0_, intadd_1_CI, intadd_1_SUM_6_,
         intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_, intadd_1_SUM_2_,
         intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n7, intadd_1_n6,
         intadd_1_n5, intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1, n265,
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
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685;
  wire   [7:0] exponent_a;
  wire   [7:0] exponent_b;
  wire   [6:0] fraction_a;
  wire   [6:0] fraction_b;
  wire   [1:0] state;

  CMPR42X1 DP_OP_61J1_123_6112_U58 ( .A(DP_OP_61J1_123_6112_n167), .B(
        DP_OP_61J1_123_6112_n153), .C(DP_OP_61J1_123_6112_n160), .D(
        DP_OP_61J1_123_6112_n105), .ICI(DP_OP_61J1_123_6112_n102), .S(
        DP_OP_61J1_123_6112_n100), .ICO(DP_OP_61J1_123_6112_n98), .CO(
        DP_OP_61J1_123_6112_n99) );
  CMPR42X1 DP_OP_61J1_123_6112_U55 ( .A(DP_OP_61J1_123_6112_n159), .B(
        DP_OP_61J1_123_6112_n152), .C(DP_OP_61J1_123_6112_n98), .D(
        DP_OP_61J1_123_6112_n97), .ICI(DP_OP_61J1_123_6112_n95), .S(
        DP_OP_61J1_123_6112_n93), .ICO(DP_OP_61J1_123_6112_n91), .CO(
        DP_OP_61J1_123_6112_n92) );
  CMPR42X1 DP_OP_61J1_123_6112_U53 ( .A(DP_OP_61J1_123_6112_n165), .B(
        DP_OP_61J1_123_6112_n137), .C(DP_OP_61J1_123_6112_n158), .D(
        DP_OP_61J1_123_6112_n96), .ICI(DP_OP_61J1_123_6112_n91), .S(
        DP_OP_61J1_123_6112_n88), .ICO(DP_OP_61J1_123_6112_n86), .CO(
        DP_OP_61J1_123_6112_n87) );
  CMPR42X1 DP_OP_61J1_123_6112_U52 ( .A(DP_OP_61J1_123_6112_n151), .B(
        DP_OP_61J1_123_6112_n144), .C(DP_OP_61J1_123_6112_n90), .D(
        DP_OP_61J1_123_6112_n94), .ICI(DP_OP_61J1_123_6112_n88), .S(
        DP_OP_61J1_123_6112_n85), .ICO(DP_OP_61J1_123_6112_n83), .CO(
        DP_OP_61J1_123_6112_n84) );
  CMPR42X1 DP_OP_61J1_123_6112_U49 ( .A(DP_OP_61J1_123_6112_n157), .B(
        DP_OP_61J1_123_6112_n143), .C(DP_OP_61J1_123_6112_n150), .D(
        DP_OP_61J1_123_6112_n82), .ICI(DP_OP_61J1_123_6112_n80), .S(
        DP_OP_61J1_123_6112_n78), .ICO(DP_OP_61J1_123_6112_n76), .CO(
        DP_OP_61J1_123_6112_n77) );
  CMPR42X1 DP_OP_61J1_123_6112_U48 ( .A(DP_OP_61J1_123_6112_n89), .B(
        DP_OP_61J1_123_6112_n86), .C(DP_OP_61J1_123_6112_n83), .D(
        DP_OP_61J1_123_6112_n87), .ICI(DP_OP_61J1_123_6112_n78), .S(
        DP_OP_61J1_123_6112_n75), .ICO(DP_OP_61J1_123_6112_n73), .CO(
        DP_OP_61J1_123_6112_n74) );
  CMPR42X1 DP_OP_61J1_123_6112_U45 ( .A(DP_OP_61J1_123_6112_n135), .B(
        DP_OP_61J1_123_6112_n128), .C(DP_OP_61J1_123_6112_n81), .D(
        DP_OP_61J1_123_6112_n72), .ICI(DP_OP_61J1_123_6112_n79), .S(
        DP_OP_61J1_123_6112_n68), .ICO(DP_OP_61J1_123_6112_n66), .CO(
        DP_OP_61J1_123_6112_n67) );
  CMPR42X1 DP_OP_61J1_123_6112_U44 ( .A(DP_OP_61J1_123_6112_n76), .B(
        DP_OP_61J1_123_6112_n70), .C(DP_OP_61J1_123_6112_n73), .D(
        DP_OP_61J1_123_6112_n77), .ICI(DP_OP_61J1_123_6112_n68), .S(
        DP_OP_61J1_123_6112_n65), .ICO(DP_OP_61J1_123_6112_n63), .CO(
        DP_OP_61J1_123_6112_n64) );
  CMPR42X1 DP_OP_61J1_123_6112_U42 ( .A(fraction_b[2]), .B(
        DP_OP_61J1_123_6112_n134), .C(DP_OP_61J1_123_6112_n120), .D(
        DP_OP_61J1_123_6112_n71), .ICI(DP_OP_61J1_123_6112_n69), .S(
        DP_OP_61J1_123_6112_n60), .ICO(DP_OP_61J1_123_6112_n58), .CO(
        DP_OP_61J1_123_6112_n59) );
  CMPR42X1 DP_OP_61J1_123_6112_U41 ( .A(DP_OP_61J1_123_6112_n66), .B(
        DP_OP_61J1_123_6112_n62), .C(DP_OP_61J1_123_6112_n67), .D(
        DP_OP_61J1_123_6112_n60), .ICI(DP_OP_61J1_123_6112_n63), .S(
        DP_OP_61J1_123_6112_n57), .ICO(DP_OP_61J1_123_6112_n55), .CO(
        DP_OP_61J1_123_6112_n56) );
  CMPR42X1 DP_OP_61J1_123_6112_U40 ( .A(fraction_b[3]), .B(
        DP_OP_61J1_123_6112_n119), .C(DP_OP_61J1_123_6112_n126), .D(
        DP_OP_61J1_123_6112_n133), .ICI(DP_OP_61J1_123_6112_n61), .S(
        DP_OP_61J1_123_6112_n54), .ICO(DP_OP_61J1_123_6112_n52), .CO(
        DP_OP_61J1_123_6112_n53) );
  CMPR42X1 DP_OP_61J1_123_6112_U39 ( .A(fraction_a[3]), .B(
        DP_OP_61J1_123_6112_n58), .C(DP_OP_61J1_123_6112_n59), .D(
        DP_OP_61J1_123_6112_n54), .ICI(DP_OP_61J1_123_6112_n55), .S(
        DP_OP_61J1_123_6112_n51), .ICO(DP_OP_61J1_123_6112_n49), .CO(
        DP_OP_61J1_123_6112_n50) );
  CMPR42X1 DP_OP_61J1_123_6112_U37 ( .A(fraction_b[4]), .B(
        DP_OP_61J1_123_6112_n52), .C(DP_OP_61J1_123_6112_n48), .D(
        DP_OP_61J1_123_6112_n53), .ICI(DP_OP_61J1_123_6112_n49), .S(
        DP_OP_61J1_123_6112_n46), .ICO(DP_OP_61J1_123_6112_n44), .CO(
        DP_OP_61J1_123_6112_n45) );
  CMPR42X1 DP_OP_61J1_123_6112_U36 ( .A(fraction_a[5]), .B(fraction_b[5]), .C(
        DP_OP_61J1_123_6112_n117), .D(DP_OP_61J1_123_6112_n47), .ICI(
        DP_OP_61J1_123_6112_n44), .S(DP_OP_61J1_123_6112_n43), .ICO(
        DP_OP_61J1_123_6112_n41), .CO(DP_OP_61J1_123_6112_n42) );
  ADDFXL intadd_0_U3 ( .A(DP_OP_61J1_123_6112_n43), .B(DP_OP_61J1_123_6112_n45), .CI(intadd_0_n3), .CO(intadd_0_n2), .S(intadd_0_SUM_5_) );
  ADDFXL intadd_0_U2 ( .A(DP_OP_61J1_123_6112_n42), .B(intadd_0_B_6_), .CI(
        intadd_0_n2), .CO(intadd_0_n1), .S(intadd_0_SUM_6_) );
  ADDFXL intadd_0_U5 ( .A(DP_OP_61J1_123_6112_n56), .B(DP_OP_61J1_123_6112_n51), .CI(intadd_0_n5), .CO(intadd_0_n4), .S(intadd_0_SUM_3_) );
  ADDFXL intadd_0_U4 ( .A(DP_OP_61J1_123_6112_n46), .B(DP_OP_61J1_123_6112_n50), .CI(intadd_0_n4), .CO(intadd_0_n3), .S(intadd_0_SUM_4_) );
  ADDFXL intadd_0_U6 ( .A(DP_OP_61J1_123_6112_n64), .B(DP_OP_61J1_123_6112_n57), .CI(intadd_0_n6), .CO(intadd_0_n5), .S(intadd_0_SUM_2_) );
  ADDFXL intadd_0_U7 ( .A(DP_OP_61J1_123_6112_n74), .B(DP_OP_61J1_123_6112_n65), .CI(intadd_0_n7), .CO(intadd_0_n6), .S(intadd_0_SUM_1_) );
  ADDFXL intadd_0_U8 ( .A(DP_OP_61J1_123_6112_n84), .B(DP_OP_61J1_123_6112_n75), .CI(intadd_0_CI), .CO(intadd_0_n7), .S(intadd_0_SUM_0_) );
  ADDFXL intadd_1_U8 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_0_) );
  ADDFXL intadd_1_U7 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_1_) );
  ADDFXL intadd_1_U6 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_2_) );
  ADDFXL intadd_1_U5 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n5), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_3_) );
  DFFX1 sign_b_reg ( .D(in_b[15]), .CK(clk), .Q(sign_b), .QN(n684) );
  DFFX1 sign_a_reg ( .D(in_a[15]), .CK(clk), .Q(sign_a), .QN(n683) );
  DFFX1 fraction_b_reg_6_ ( .D(in_b[6]), .CK(clk), .Q(fraction_b[6]), .QN(n680) );
  DFFX1 fraction_b_reg_5_ ( .D(in_b[5]), .CK(clk), .Q(fraction_b[5]), .QN(n679) );
  DFFX1 fraction_b_reg_4_ ( .D(in_b[4]), .CK(clk), .Q(fraction_b[4]), .QN(n682) );
  DFFX1 fraction_b_reg_3_ ( .D(in_b[3]), .CK(clk), .Q(fraction_b[3]), .QN(n681) );
  DFFX1 fraction_b_reg_2_ ( .D(in_b[2]), .CK(clk), .Q(fraction_b[2]), .QN(n661) );
  DFFX1 fraction_b_reg_1_ ( .D(in_b[1]), .CK(clk), .Q(fraction_b[1]), .QN(n662) );
  DFFX1 fraction_b_reg_0_ ( .D(in_b[0]), .CK(clk), .Q(fraction_b[0]), .QN(n664) );
  DFFX1 fraction_a_reg_6_ ( .D(in_a[6]), .CK(clk), .Q(fraction_a[6]), .QN(n673) );
  DFFX1 fraction_a_reg_5_ ( .D(in_a[5]), .CK(clk), .Q(fraction_a[5]), .QN(n674) );
  DFFX1 fraction_a_reg_4_ ( .D(in_a[4]), .CK(clk), .Q(fraction_a[4]), .QN(n675) );
  DFFX1 fraction_a_reg_3_ ( .D(in_a[3]), .CK(clk), .Q(fraction_a[3]), .QN(n676) );
  DFFX1 fraction_a_reg_2_ ( .D(in_a[2]), .CK(clk), .Q(fraction_a[2]), .QN(n677) );
  DFFX1 fraction_a_reg_1_ ( .D(in_a[1]), .CK(clk), .Q(fraction_a[1]), .QN(n678) );
  DFFX1 fraction_a_reg_0_ ( .D(in_a[0]), .CK(clk), .Q(fraction_a[0]), .QN(n663) );
  DFFX1 exponent_b_reg_7_ ( .D(in_b[14]), .CK(clk), .Q(exponent_b[7]), .QN(
        n668) );
  DFFX1 exponent_b_reg_6_ ( .D(in_b[13]), .CK(clk), .Q(exponent_b[6]) );
  DFFX1 exponent_b_reg_5_ ( .D(in_b[12]), .CK(clk), .Q(exponent_b[5]) );
  DFFX1 exponent_b_reg_4_ ( .D(in_b[11]), .CK(clk), .Q(exponent_b[4]), .QN(
        n665) );
  DFFX1 exponent_b_reg_3_ ( .D(in_b[10]), .CK(clk), .Q(exponent_b[3]), .QN(
        n672) );
  DFFX1 exponent_b_reg_2_ ( .D(in_b[9]), .CK(clk), .Q(exponent_b[2]), .QN(n671) );
  DFFX1 exponent_b_reg_1_ ( .D(in_b[8]), .CK(clk), .Q(exponent_b[1]), .QN(n670) );
  DFFX1 exponent_b_reg_0_ ( .D(in_b[7]), .CK(clk), .Q(exponent_b[0]), .QN(n685) );
  DFFX1 exponent_a_reg_7_ ( .D(in_a[14]), .CK(clk), .Q(exponent_a[7]) );
  DFFX1 exponent_a_reg_6_ ( .D(in_a[13]), .CK(clk), .Q(exponent_a[6]), .QN(
        n666) );
  DFFX1 exponent_a_reg_5_ ( .D(in_a[12]), .CK(clk), .Q(exponent_a[5]), .QN(
        n667) );
  DFFX1 exponent_a_reg_4_ ( .D(in_a[11]), .CK(clk), .Q(exponent_a[4]) );
  DFFX1 exponent_a_reg_3_ ( .D(in_a[10]), .CK(clk), .Q(exponent_a[3]) );
  DFFX1 exponent_a_reg_2_ ( .D(in_a[9]), .CK(clk), .Q(exponent_a[2]), .QN(n669) );
  DFFX1 exponent_a_reg_1_ ( .D(in_a[8]), .CK(clk), .Q(exponent_a[1]) );
  DFFX1 exponent_a_reg_0_ ( .D(in_a[7]), .CK(clk), .Q(exponent_a[0]) );
  DFFRHQXL out_reg_1_ ( .D(n252), .CK(clk), .RN(rst_n), .Q(out[1]) );
  DFFRHQXL state_reg_0_ ( .D(n262), .CK(clk), .RN(rst_n), .Q(state[0]) );
  DFFRHQXL out_reg_15_ ( .D(n246), .CK(clk), .RN(rst_n), .Q(out[15]) );
  DFFRHQXL out_reg_14_ ( .D(n254), .CK(clk), .RN(rst_n), .Q(out[14]) );
  DFFRHQXL out_reg_13_ ( .D(n255), .CK(clk), .RN(rst_n), .Q(out[13]) );
  DFFRHQXL out_reg_12_ ( .D(n256), .CK(clk), .RN(rst_n), .Q(out[12]) );
  DFFRHQXL out_reg_11_ ( .D(n257), .CK(clk), .RN(rst_n), .Q(out[11]) );
  DFFRHQXL out_reg_10_ ( .D(n258), .CK(clk), .RN(rst_n), .Q(out[10]) );
  DFFRHQXL out_reg_9_ ( .D(n259), .CK(clk), .RN(rst_n), .Q(out[9]) );
  DFFRHQXL out_reg_8_ ( .D(n260), .CK(clk), .RN(rst_n), .Q(out[8]) );
  DFFRHQXL out_reg_7_ ( .D(n261), .CK(clk), .RN(rst_n), .Q(out[7]) );
  DFFRHQXL out_reg_6_ ( .D(n247), .CK(clk), .RN(rst_n), .Q(out[6]) );
  DFFRHQXL out_reg_5_ ( .D(n248), .CK(clk), .RN(rst_n), .Q(out[5]) );
  DFFRHQXL out_reg_4_ ( .D(n249), .CK(clk), .RN(rst_n), .Q(out[4]) );
  DFFRHQXL out_reg_3_ ( .D(n250), .CK(clk), .RN(rst_n), .Q(out[3]) );
  DFFRHQXL out_reg_2_ ( .D(n251), .CK(clk), .RN(rst_n), .Q(out[2]) );
  DFFRHQXL out_reg_0_ ( .D(n253), .CK(clk), .RN(rst_n), .Q(out[0]) );
  DFFRHQXL state_reg_1_ ( .D(n263), .CK(clk), .RN(rst_n), .Q(state[1]) );
  ADDFXL intadd_1_U2 ( .A(intadd_1_A_6_), .B(intadd_1_B_6_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_1_SUM_6_) );
  ADDFXL intadd_1_U4 ( .A(intadd_1_A_4_), .B(intadd_1_B_4_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_4_) );
  ADDFXL intadd_1_U3 ( .A(intadd_1_A_5_), .B(intadd_1_B_5_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_5_) );
  NOR2XL U279 ( .A(fraction_b[5]), .B(n560), .Y(n470) );
  NOR2XL U280 ( .A(n663), .B(fraction_b[2]), .Y(n537) );
  NOR2XL U281 ( .A(n663), .B(n681), .Y(n533) );
  NOR2XL U282 ( .A(n524), .B(fraction_b[2]), .Y(n426) );
  NOR2XL U283 ( .A(n678), .B(n661), .Y(n546) );
  NOR2XL U284 ( .A(n469), .B(n468), .Y(n482) );
  NOR2XL U285 ( .A(n684), .B(n508), .Y(n500) );
  NOR2XL U286 ( .A(fraction_b[6]), .B(n560), .Y(n511) );
  NOR2XL U287 ( .A(n542), .B(n541), .Y(DP_OP_61J1_123_6112_n105) );
  NOR2XL U288 ( .A(n684), .B(n482), .Y(n480) );
  NOR2XL U289 ( .A(n683), .B(n554), .Y(n519) );
  NOR2XL U290 ( .A(n677), .B(n681), .Y(DP_OP_61J1_123_6112_n152) );
  NOR2XL U291 ( .A(n663), .B(n679), .Y(n339) );
  NOR2XL U292 ( .A(n675), .B(n680), .Y(DP_OP_61J1_123_6112_n133) );
  NOR2XL U293 ( .A(n678), .B(n679), .Y(DP_OP_61J1_123_6112_n158) );
  NOR2XL U294 ( .A(n677), .B(n679), .Y(DP_OP_61J1_123_6112_n150) );
  NOR2XL U295 ( .A(n564), .B(n491), .Y(n446) );
  NOR2XL U296 ( .A(DP_OP_61J1_123_6112_n85), .B(DP_OP_61J1_123_6112_n92), .Y(
        n552) );
  NOR2XL U297 ( .A(n676), .B(n681), .Y(DP_OP_61J1_123_6112_n144) );
  NOR2XL U298 ( .A(n674), .B(n680), .Y(n341) );
  NOR2XL U299 ( .A(n282), .B(n294), .Y(n399) );
  NOR2XL U300 ( .A(intadd_1_SUM_0_), .B(n360), .Y(n333) );
  NOR2XL U301 ( .A(n329), .B(n659), .Y(n330) );
  NOR2XL U302 ( .A(n673), .B(n680), .Y(DP_OP_61J1_123_6112_n117) );
  NOR2XL U303 ( .A(n415), .B(n632), .Y(n578) );
  NOR2XL U304 ( .A(n399), .B(n398), .Y(n606) );
  NOR2XL U305 ( .A(n333), .B(n659), .Y(n334) );
  NOR2XL U306 ( .A(n365), .B(n366), .Y(n637) );
  NOR2XL U307 ( .A(n384), .B(n396), .Y(n561) );
  NOR2XL U308 ( .A(n385), .B(n383), .Y(n564) );
  NOR2XL U309 ( .A(state[1]), .B(n529), .Y(n630) );
  NOR2XL U310 ( .A(n529), .B(n528), .Y(out_valid) );
  NOR2X1 U311 ( .A(n580), .B(n578), .Y(n594) );
  NOR2X1 U312 ( .A(n559), .B(n558), .Y(n557) );
  NOR2X1 U313 ( .A(n647), .B(n648), .Y(n388) );
  NOR2X1 U314 ( .A(n636), .B(n366), .Y(n377) );
  NOR2X1 U315 ( .A(n392), .B(n374), .Y(n641) );
  NOR2X1 U316 ( .A(n331), .B(n642), .Y(n332) );
  NOR2X1 U317 ( .A(n324), .B(n659), .Y(n325) );
  NOR2X1 U318 ( .A(n322), .B(n659), .Y(n323) );
  NOR2X1 U319 ( .A(n659), .B(n326), .Y(n328) );
  NOR2X1 U320 ( .A(n515), .B(n514), .Y(n554) );
  NOR2X1 U321 ( .A(n683), .B(n501), .Y(n494) );
  NOR2X1 U322 ( .A(n489), .B(n488), .Y(n501) );
  NOR2X1 U323 ( .A(n683), .B(n460), .Y(n450) );
  NOR2X1 U324 ( .A(n496), .B(n495), .Y(n508) );
  NOR2X1 U325 ( .A(n439), .B(n438), .Y(n460) );
  NOR2X1 U326 ( .A(n431), .B(n452), .Y(intadd_1_B_0_) );
  NOR2X1 U327 ( .A(n684), .B(n452), .Y(n430) );
  NOR2X1 U328 ( .A(n491), .B(n490), .Y(n517) );
  NOR2X1 U329 ( .A(n601), .B(n523), .Y(n484) );
  NOR2X1 U330 ( .A(n483), .B(n485), .Y(n311) );
  NOR2X1 U331 ( .A(n282), .B(n281), .Y(n283) );
  NOR2X1 U332 ( .A(n294), .B(n293), .Y(n295) );
  NOR2X1 U333 ( .A(n471), .B(n470), .Y(n473) );
  NOR2X1 U334 ( .A(n441), .B(n440), .Y(n516) );
  NOR2X1 U335 ( .A(exponent_b[3]), .B(n276), .Y(n273) );
  NOR2X1 U336 ( .A(n560), .B(n491), .Y(n443) );
  NOR2X1 U337 ( .A(n564), .B(n471), .Y(n427) );
  NOR2X1 U338 ( .A(n385), .B(n307), .Y(n422) );
  NOR2X1 U339 ( .A(n564), .B(n673), .Y(n432) );
  NOR2X1 U340 ( .A(n658), .B(n630), .Y(n531) );
  NOR2X1 U341 ( .A(exponent_a[7]), .B(n668), .Y(n280) );
  NOR2X1 U342 ( .A(exponent_a[0]), .B(n685), .Y(n385) );
  NOR2X1 U343 ( .A(n671), .B(n669), .Y(n405) );
  NOR2X1 U344 ( .A(exponent_a[4]), .B(n665), .Y(n272) );
  NOR2X1 U345 ( .A(exponent_b[5]), .B(n667), .Y(n294) );
  NOR2X1 U346 ( .A(exponent_b[6]), .B(n666), .Y(n278) );
  NOR2X1 U347 ( .A(exponent_b[7]), .B(exponent_a[7]), .Y(n628) );
  NAND2XL U348 ( .A(n302), .B(n292), .Y(n293) );
  OAI221XL U349 ( .A0(n590), .A1(n302), .B0(n585), .B1(n301), .C0(n300), .Y(
        n303) );
  INVXL U350 ( .A(n293), .Y(n306) );
  NAND2XL U351 ( .A(n484), .B(n483), .Y(n510) );
  INVXL U352 ( .A(n484), .Y(n476) );
  NAND2XL U353 ( .A(n461), .B(n460), .Y(n488) );
  NAND2XL U354 ( .A(n502), .B(n501), .Y(n514) );
  NOR2X1 U355 ( .A(n678), .B(n662), .Y(n539) );
  NOR2X1 U356 ( .A(fraction_a[6]), .B(n560), .Y(n440) );
  NAND2XL U357 ( .A(n273), .B(n274), .Y(n281) );
  OAI211XL U358 ( .A0(n622), .A1(n284), .B0(n283), .C0(n610), .Y(n285) );
  INVXL U359 ( .A(n270), .Y(n271) );
  INVXL U360 ( .A(n385), .Y(n308) );
  NOR2X1 U361 ( .A(n678), .B(n680), .Y(DP_OP_61J1_123_6112_n157) );
  OAI211XL U362 ( .A0(n399), .A1(n306), .B0(n305), .C0(n304), .Y(n523) );
  OAI21XL U363 ( .A0(n610), .A1(n298), .B0(n297), .Y(n305) );
  AOI21XL U364 ( .A0(n399), .A1(n306), .B0(n303), .Y(n304) );
  OAI211XL U365 ( .A0(n622), .A1(n296), .B0(n295), .C0(n610), .Y(n297) );
  NAND2XL U366 ( .A(n508), .B(n507), .Y(n520) );
  NOR2X1 U367 ( .A(n674), .B(n661), .Y(n347) );
  NOR2X1 U368 ( .A(n675), .B(n681), .Y(n348) );
  NOR2X1 U369 ( .A(n661), .B(n351), .Y(DP_OP_61J1_123_6112_n71) );
  AOI22XL U370 ( .A0(n383), .A1(n307), .B0(n401), .B1(n268), .Y(n441) );
  INVXL U371 ( .A(n441), .Y(n463) );
  NAND2XL U372 ( .A(n452), .B(n451), .Y(n469) );
  OAI31XL U373 ( .A0(n524), .A1(n511), .A2(n510), .B0(n509), .Y(n521) );
  NAND2XL U374 ( .A(n519), .B(n555), .Y(n518) );
  AOI22XL U375 ( .A0(n517), .A1(n516), .B0(fraction_a[6]), .B1(n600), .Y(n555)
         );
  NAND2XL U376 ( .A(n520), .B(sign_b), .Y(n513) );
  INVXL U377 ( .A(n510), .Y(n498) );
  NAND2XL U378 ( .A(n482), .B(n481), .Y(n495) );
  OAI2BB1XL U379 ( .A0N(n564), .A1N(n478), .B0(n477), .Y(n481) );
  OAI22XL U380 ( .A0(n600), .A1(n681), .B0(n476), .B1(n475), .Y(n477) );
  NAND2XL U381 ( .A(n488), .B(sign_a), .Y(n467) );
  OAI22XL U382 ( .A0(n601), .A1(n676), .B0(n465), .B1(n490), .Y(n489) );
  INVXL U383 ( .A(n431), .Y(n439) );
  XOR2XL U384 ( .A(n574), .B(n270), .Y(n491) );
  NOR2X1 U385 ( .A(fraction_b[4]), .B(n472), .Y(n455) );
  AOI22XL U386 ( .A0(n601), .A1(fraction_b[5]), .B0(n498), .B1(n497), .Y(n507)
         );
  NAND2XL U387 ( .A(n514), .B(sign_a), .Y(n506) );
  NAND2XL U388 ( .A(n506), .B(n515), .Y(n505) );
  OAI22XL U389 ( .A0(n601), .A1(n674), .B0(n504), .B1(n503), .Y(n515) );
  INVXL U390 ( .A(n517), .Y(n503) );
  INVXL U391 ( .A(n269), .Y(n282) );
  NOR2X1 U392 ( .A(n540), .B(n664), .Y(n544) );
  NOR2X1 U393 ( .A(n534), .B(n533), .Y(n547) );
  NOR2X1 U394 ( .A(n663), .B(n682), .Y(DP_OP_61J1_123_6112_n167) );
  NOR2X1 U395 ( .A(n676), .B(n661), .Y(n340) );
  NOR2X1 U396 ( .A(n675), .B(n661), .Y(DP_OP_61J1_123_6112_n137) );
  NOR2X1 U397 ( .A(n663), .B(n680), .Y(DP_OP_61J1_123_6112_n165) );
  NOR2X1 U398 ( .A(n664), .B(n351), .Y(DP_OP_61J1_123_6112_n81) );
  OAI21XL U399 ( .A0(n440), .A1(n463), .B0(n289), .Y(n492) );
  NAND4XL U400 ( .A(n601), .B(n288), .C(n287), .D(n286), .Y(n490) );
  OAI32XL U401 ( .A0(n585), .A1(n277), .A2(n276), .B0(n589), .B1(n275), .Y(
        n287) );
  OAI21XL U402 ( .A0(n610), .A1(n298), .B0(n285), .Y(n286) );
  XNOR2XL U403 ( .A(n399), .B(n281), .Y(n288) );
  AOI2BB1XL U404 ( .A0N(n401), .A1N(n308), .B0(n422), .Y(n524) );
  INVXL U405 ( .A(n524), .Y(n472) );
  NOR2X1 U406 ( .A(n676), .B(n682), .Y(DP_OP_61J1_123_6112_n143) );
  NOR2X1 U407 ( .A(n677), .B(n680), .Y(n345) );
  NOR2X1 U408 ( .A(n676), .B(n679), .Y(n346) );
  OAI31XL U409 ( .A0(n524), .A1(n523), .A2(n522), .B0(n600), .Y(n526) );
  AOI21XL U410 ( .A0(n555), .A1(n554), .B0(n683), .Y(n556) );
  OAI21XL U411 ( .A0(n521), .A1(n520), .B0(sign_b), .Y(n527) );
  NOR2X1 U412 ( .A(n674), .B(n682), .Y(n343) );
  NOR2X1 U413 ( .A(n676), .B(n680), .Y(n344) );
  NOR2X1 U414 ( .A(n674), .B(n681), .Y(DP_OP_61J1_123_6112_n128) );
  NOR2X1 U415 ( .A(n675), .B(n682), .Y(DP_OP_61J1_123_6112_n135) );
  NOR2X1 U416 ( .A(n673), .B(n681), .Y(DP_OP_61J1_123_6112_n120) );
  NOR2X1 U417 ( .A(n675), .B(n679), .Y(DP_OP_61J1_123_6112_n134) );
  OAI2BB1XL U418 ( .A0N(fraction_b[2]), .A1N(n601), .B0(n457), .Y(n468) );
  OAI211XL U419 ( .A0(n483), .A1(n472), .B0(n484), .C0(n456), .Y(n457) );
  AOI21XL U420 ( .A0(fraction_a[2]), .A1(n600), .B0(n448), .Y(n461) );
  AOI211XL U421 ( .A0(n447), .A1(n446), .B0(n490), .C0(n445), .Y(n448) );
  OAI21XL U422 ( .A0(n513), .A1(n521), .B0(n512), .Y(intadd_1_B_5_) );
  OAI21XL U423 ( .A0(n519), .A1(n555), .B0(n518), .Y(intadd_1_A_5_) );
  NAND2XL U424 ( .A(n513), .B(n521), .Y(n512) );
  NOR2BXL U425 ( .AN(n324), .B(intadd_1_SUM_4_), .Y(n322) );
  OAI2BB2XL U426 ( .B0(n600), .B1(n682), .A0N(n498), .A1N(n485), .Y(n496) );
  NAND2XL U427 ( .A(n494), .B(n502), .Y(n493) );
  AOI22XL U428 ( .A0(n517), .A1(n492), .B0(fraction_a[4]), .B1(n600), .Y(n502)
         );
  NAND2XL U429 ( .A(n495), .B(sign_b), .Y(n487) );
  NOR2X1 U430 ( .A(n674), .B(n679), .Y(DP_OP_61J1_123_6112_n126) );
  NOR2X1 U431 ( .A(n673), .B(n682), .Y(DP_OP_61J1_123_6112_n119) );
  OAI21XL U432 ( .A0(n480), .A1(n481), .B0(n479), .Y(intadd_1_A_2_) );
  OAI21XL U433 ( .A0(n467), .A1(n489), .B0(n466), .Y(intadd_1_B_2_) );
  NOR2BXL U434 ( .AN(n333), .B(intadd_1_SUM_1_), .Y(n326) );
  OAI22XL U435 ( .A0(n601), .A1(n678), .B0(n435), .B1(n490), .Y(n438) );
  AOI22XL U436 ( .A0(n601), .A1(fraction_b[1]), .B0(n484), .B1(n428), .Y(n451)
         );
  OAI21XL U437 ( .A0(n500), .A1(n507), .B0(n499), .Y(intadd_1_B_4_) );
  OAI21XL U438 ( .A0(n506), .A1(n515), .B0(n505), .Y(intadd_1_A_4_) );
  NAND2XL U439 ( .A(n500), .B(n507), .Y(n499) );
  NOR2BXL U440 ( .AN(n329), .B(intadd_1_SUM_3_), .Y(n324) );
  NOR2X1 U441 ( .A(n673), .B(n679), .Y(n342) );
  NAND2XL U442 ( .A(n685), .B(exponent_a[0]), .Y(n268) );
  NAND2XL U443 ( .A(exponent_b[5]), .B(n667), .Y(n269) );
  NAND2XL U444 ( .A(n666), .B(exponent_b[6]), .Y(n284) );
  NAND2XL U445 ( .A(n296), .B(n284), .Y(n610) );
  NAND2XL U446 ( .A(exponent_a[7]), .B(n668), .Y(n279) );
  NOR2X1 U447 ( .A(n678), .B(n681), .Y(DP_OP_61J1_123_6112_n160) );
  NOR2X1 U448 ( .A(n677), .B(n661), .Y(DP_OP_61J1_123_6112_n153) );
  NOR2X1 U449 ( .A(n678), .B(n682), .Y(DP_OP_61J1_123_6112_n159) );
  NOR2X1 U450 ( .A(n677), .B(n682), .Y(DP_OP_61J1_123_6112_n151) );
  AOI21XL U451 ( .A0(fraction_a[0]), .A1(n600), .B0(n291), .Y(n431) );
  AOI211XL U452 ( .A0(n446), .A1(n433), .B0(n490), .C0(n290), .Y(n291) );
  AOI22XL U453 ( .A0(n601), .A1(fraction_b[0]), .B0(n484), .B1(n313), .Y(n452)
         );
  OAI21XL U454 ( .A0(n527), .A1(n526), .B0(n525), .Y(intadd_1_B_6_) );
  MXI2XL U455 ( .A(n601), .B(n600), .S0(n556), .Y(intadd_1_A_6_) );
  NAND2XL U456 ( .A(n527), .B(n526), .Y(n525) );
  NAND2BXL U457 ( .AN(intadd_1_SUM_5_), .B(n322), .Y(n315) );
  XOR2XL U458 ( .A(n314), .B(intadd_1_SUM_6_), .Y(n331) );
  AND2XL U459 ( .A(n315), .B(n318), .Y(n314) );
  INVXL U460 ( .A(n637), .Y(n389) );
  NAND2XL U461 ( .A(n646), .B(n332), .Y(n366) );
  OAI21XL U462 ( .A0(n450), .A1(n461), .B0(n449), .Y(intadd_1_B_1_) );
  OR2XL U463 ( .A(n648), .B(n649), .Y(n387) );
  NAND2XL U464 ( .A(n638), .B(n377), .Y(n408) );
  XNOR2XL U465 ( .A(intadd_1_SUM_5_), .B(n323), .Y(n374) );
  OAI21XL U466 ( .A0(n487), .A1(n496), .B0(n486), .Y(intadd_1_B_3_) );
  OAI21XL U467 ( .A0(n494), .A1(n502), .B0(n493), .Y(intadd_1_A_3_) );
  NOR2BXL U468 ( .AN(n326), .B(intadd_1_SUM_2_), .Y(n329) );
  NAND2XL U469 ( .A(n641), .B(n645), .Y(n386) );
  OAI21XL U470 ( .A0(n328), .A1(intadd_1_SUM_2_), .B0(n327), .Y(n376) );
  NAND2XL U471 ( .A(n328), .B(intadd_1_SUM_2_), .Y(n327) );
  INVXL U472 ( .A(n408), .Y(n640) );
  XOR2XL U473 ( .A(n325), .B(intadd_1_SUM_4_), .Y(n642) );
  AND2XL U474 ( .A(n375), .B(n374), .Y(n646) );
  INVXL U475 ( .A(n331), .Y(n645) );
  NAND2XL U476 ( .A(n387), .B(n386), .Y(n391) );
  OAI31XL U477 ( .A0(n650), .A1(n648), .A2(n390), .B0(n389), .Y(n409) );
  OAI21XL U478 ( .A0(exponent_b[1]), .A1(exponent_a[1]), .B0(n402), .Y(n401)
         );
  INVXL U479 ( .A(n268), .Y(n383) );
  NOR2X1 U480 ( .A(intadd_0_n1), .B(n654), .Y(n384) );
  OR3XL U481 ( .A(n388), .B(n635), .C(n391), .Y(n410) );
  OAI2BB1XL U482 ( .A0N(n414), .A1N(n413), .B0(n412), .Y(n567) );
  NOR4XL U483 ( .A(n640), .B(n635), .C(n411), .D(n637), .Y(n565) );
  AOI21XL U484 ( .A0(n671), .A1(n669), .B0(n405), .Y(n404) );
  NOR2X1 U485 ( .A(n403), .B(n402), .Y(n571) );
  NAND2XL U486 ( .A(n415), .B(n632), .Y(n577) );
  INVXL U487 ( .A(n272), .Y(n274) );
  NAND2XL U488 ( .A(exponent_a[4]), .B(n665), .Y(n292) );
  OAI2BB1XL U489 ( .A0N(n580), .A1N(n577), .B0(n632), .Y(n593) );
  OAI2BB1XL U490 ( .A0N(n597), .A1N(n593), .B0(n632), .Y(n603) );
  NAND2BXL U491 ( .AN(n597), .B(n594), .Y(n602) );
  OAI31XL U492 ( .A0(n280), .A1(n267), .A2(n266), .B0(n279), .Y(n600) );
  INVXL U493 ( .A(n284), .Y(n267) );
  AOI211XL U494 ( .A0(n269), .A1(n265), .B0(n278), .C0(n294), .Y(n266) );
  OAI21XL U495 ( .A0(n272), .A1(n302), .B0(n292), .Y(n265) );
  INVXL U496 ( .A(n600), .Y(n601) );
  OAI2BB1XL U497 ( .A0N(n604), .A1N(n603), .B0(n632), .Y(n624) );
  AOI2BB1XL U498 ( .A0N(n604), .A1N(n602), .B0(n632), .Y(n623) );
  NOR3XL U499 ( .A(n410), .B(n409), .C(n640), .Y(n416) );
  NAND2BXL U500 ( .AN(n280), .B(n279), .Y(n298) );
  AOI21XL U501 ( .A0(n452), .A1(n431), .B0(intadd_1_B_0_), .Y(n360) );
  INVXL U502 ( .A(n647), .Y(n390) );
  NAND3XL U503 ( .A(n645), .B(n646), .C(n642), .Y(n364) );
  AOI211XL U504 ( .A0(intadd_1_n1), .A1(n317), .B0(n657), .C0(n316), .Y(n392)
         );
  NOR2XL U505 ( .A(intadd_1_n1), .B(n317), .Y(n316) );
  AOI2BB1XL U506 ( .A0N(intadd_1_SUM_6_), .A1N(n315), .B0(n659), .Y(n317) );
  INVXL U507 ( .A(n392), .Y(n375) );
  INVXL U508 ( .A(n636), .Y(n365) );
  XOR2XL U509 ( .A(intadd_1_SUM_1_), .B(n334), .Y(n639) );
  XOR2XL U510 ( .A(n330), .B(intadd_1_SUM_3_), .Y(n636) );
  INVXL U511 ( .A(n364), .Y(n635) );
  INVXL U512 ( .A(n386), .Y(n411) );
  INVXL U513 ( .A(n376), .Y(n638) );
  NAND2XL U514 ( .A(n377), .B(n376), .Y(n648) );
  INVXL U515 ( .A(n639), .Y(n649) );
  XOR2XL U516 ( .A(n319), .B(intadd_1_SUM_0_), .Y(n647) );
  NAND2XL U517 ( .A(n360), .B(n318), .Y(n319) );
  NOR3XL U518 ( .A(n392), .B(n391), .C(n409), .Y(n559) );
  AOI22XL U519 ( .A0(n601), .A1(exponent_b[0]), .B0(exponent_a[0]), .B1(n600), 
        .Y(n558) );
  AOI2BB1XL U520 ( .A0N(n385), .A1N(n384), .B0(n383), .Y(n400) );
  NAND2XL U521 ( .A(n557), .B(n410), .Y(n413) );
  OR2XL U522 ( .A(n410), .B(n557), .Y(n412) );
  MXI2XL U523 ( .A(n567), .B(n566), .S0(n565), .Y(n568) );
  AOI22XL U524 ( .A0(n601), .A1(exponent_b[2]), .B0(exponent_a[2]), .B1(n600), 
        .Y(n569) );
  NAND2BXL U525 ( .AN(n578), .B(n577), .Y(n579) );
  AOI22XL U526 ( .A0(n601), .A1(exponent_b[3]), .B0(exponent_a[3]), .B1(n600), 
        .Y(n580) );
  OAI21XL U527 ( .A0(exponent_b[3]), .A1(exponent_a[3]), .B0(n588), .Y(n585)
         );
  INVXL U528 ( .A(n589), .Y(n590) );
  OAI21XL U529 ( .A0(n594), .A1(n632), .B0(n593), .Y(n596) );
  NAND2XL U530 ( .A(n597), .B(n596), .Y(n595) );
  AOI22XL U531 ( .A0(n601), .A1(exponent_b[4]), .B0(exponent_a[4]), .B1(n600), 
        .Y(n597) );
  AOI2BB1XL U532 ( .A0N(n581), .A1N(n585), .B0(n582), .Y(n592) );
  OAI2BB1XL U533 ( .A0N(n416), .A1N(n602), .B0(n603), .Y(n418) );
  NAND2XL U534 ( .A(n604), .B(n418), .Y(n417) );
  AOI22XL U535 ( .A0(n601), .A1(exponent_b[5]), .B0(exponent_a[5]), .B1(n600), 
        .Y(n604) );
  NAND2BXL U536 ( .AN(n623), .B(n624), .Y(n605) );
  AOI22XL U537 ( .A0(n601), .A1(exponent_b[6]), .B0(exponent_a[6]), .B1(n600), 
        .Y(n625) );
  NOR2X1 U538 ( .A(n617), .B(n616), .Y(n618) );
  NOR2X1 U539 ( .A(n619), .B(n615), .Y(n620) );
  OAI21XL U540 ( .A0(n628), .A1(n627), .B0(n626), .Y(n631) );
  NAND2XL U541 ( .A(n628), .B(n627), .Y(n626) );
  AOI21XL U542 ( .A0(n625), .A1(n624), .B0(n623), .Y(n627) );
  NAND2XL U543 ( .A(n632), .B(n631), .Y(n629) );
  INVXL U544 ( .A(n416), .Y(n632) );
  INVXL U545 ( .A(n298), .Y(n622) );
  INVXL U546 ( .A(n318), .Y(n659) );
  NOR2X1 U547 ( .A(state[0]), .B(n528), .Y(n658) );
  AOI2BB1XL U548 ( .A0N(n652), .A1N(n651), .B0(n660), .Y(n653) );
  AOI21XL U549 ( .A0(n559), .A1(n558), .B0(n557), .Y(n562) );
  OAI21XL U550 ( .A0(n397), .A1(n396), .B0(n395), .Y(n260) );
  OAI211XL U551 ( .A0(n414), .A1(n394), .B0(n630), .C0(n393), .Y(n395) );
  NAND2XL U552 ( .A(n412), .B(n413), .Y(n394) );
  OAI2BB1XL U553 ( .A0N(n576), .A1N(n630), .B0(n575), .Y(n259) );
  AOI2BB2XL U554 ( .B0(n569), .B1(n568), .A0N(n569), .A1N(n568), .Y(n576) );
  OAI2BB1XL U555 ( .A0N(n587), .A1N(n630), .B0(n586), .Y(n258) );
  AOI2BB2XL U556 ( .B0(n580), .B1(n579), .A0N(n580), .A1N(n579), .Y(n587) );
  OAI2BB1XL U557 ( .A0N(n599), .A1N(n658), .B0(n598), .Y(n257) );
  OAI211XL U558 ( .A0(n597), .A1(n596), .B0(n630), .C0(n595), .Y(n598) );
  NAND2XL U559 ( .A(n420), .B(n419), .Y(n256) );
  OAI211XL U560 ( .A0(n604), .A1(n418), .B0(n630), .C0(n417), .Y(n419) );
  OAI2BB1XL U561 ( .A0N(n614), .A1N(n630), .B0(n613), .Y(n255) );
  AOI2BB2XL U562 ( .B0(n625), .B1(n605), .A0N(n625), .A1N(n605), .Y(n614) );
  OAI2BB1XL U563 ( .A0N(n634), .A1N(n658), .B0(n633), .Y(n254) );
  OAI211XL U564 ( .A0(n632), .A1(n631), .B0(n630), .C0(n629), .Y(n633) );
  MXI2XL U565 ( .A(n620), .B(n619), .S0(n618), .Y(n621) );
  XOR2XL U566 ( .A(n546), .B(n535), .Y(n545) );
  INVXL U567 ( .A(DP_OP_61J1_123_6112_n100), .Y(n549) );
  INVXL U568 ( .A(n471), .Y(n483) );
  INVXL U569 ( .A(n278), .Y(n296) );
  XOR2XL U570 ( .A(n350), .B(n349), .Y(DP_OP_61J1_123_6112_n90) );
  INVXL U571 ( .A(n360), .Y(n650) );
  INVXL U572 ( .A(n567), .Y(n566) );
  INVXL U573 ( .A(n564), .Y(n560) );
  INVXL U574 ( .A(n404), .Y(n574) );
  INVXL U575 ( .A(n338), .Y(n250) );
  AOI222XL U576 ( .A0(exponent_a[1]), .A1(n670), .B0(exponent_a[1]), .B1(n308), 
        .C0(n670), .C1(n308), .Y(n309) );
  AOI222XL U577 ( .A0(exponent_b[2]), .A1(n309), .B0(exponent_b[2]), .B1(n669), 
        .C0(n309), .C1(n669), .Y(n299) );
  AOI222XL U578 ( .A0(exponent_a[3]), .A1(n672), .B0(exponent_a[3]), .B1(n299), 
        .C0(n672), .C1(n299), .Y(n302) );
  AOI222XL U579 ( .A0(exponent_a[1]), .A1(n383), .B0(exponent_a[1]), .B1(n670), 
        .C0(n383), .C1(n670), .Y(n270) );
  NAND2XL U580 ( .A(exponent_b[1]), .B(exponent_a[1]), .Y(n402) );
  INVXL U581 ( .A(n401), .Y(n307) );
  AOI22XL U582 ( .A0(n441), .A1(fraction_a[3]), .B0(fraction_a[1]), .B1(n463), 
        .Y(n433) );
  AOI222XL U583 ( .A0(exponent_a[2]), .A1(n271), .B0(exponent_a[2]), .B1(n671), 
        .C0(n271), .C1(n671), .Y(n276) );
  NAND2XL U584 ( .A(exponent_b[3]), .B(exponent_a[3]), .Y(n588) );
  NAND2XL U585 ( .A(n292), .B(n274), .Y(n589) );
  OAI22XL U586 ( .A0(n589), .A1(exponent_b[3]), .B0(n590), .B1(n672), .Y(n277)
         );
  NAND2XL U587 ( .A(n276), .B(n585), .Y(n275) );
  AOI32XL U588 ( .A0(fraction_a[4]), .A1(n564), .A2(n463), .B0(fraction_a[5]), 
        .B1(n560), .Y(n289) );
  INVXL U589 ( .A(n491), .Y(n444) );
  OAI2BB2XL U590 ( .B0(n492), .B1(n444), .A0N(n677), .A1N(n443), .Y(n290) );
  INVXL U591 ( .A(n299), .Y(n301) );
  AOI22XL U592 ( .A0(n590), .A1(n302), .B0(n585), .B1(n301), .Y(n300) );
  AOI22XL U593 ( .A0(n524), .A1(fraction_b[3]), .B0(fraction_b[1]), .B1(n472), 
        .Y(n423) );
  XOR2XL U594 ( .A(n404), .B(n309), .Y(n471) );
  NAND2XL U595 ( .A(n564), .B(n483), .Y(n522) );
  AOI221XL U596 ( .A0(fraction_b[0]), .A1(n472), .B0(fraction_b[2]), .B1(n524), 
        .C0(n522), .Y(n312) );
  AOI32XL U597 ( .A0(fraction_b[4]), .A1(n564), .A2(n472), .B0(fraction_b[5]), 
        .B1(n560), .Y(n310) );
  OAI21XL U598 ( .A0(n511), .A1(n472), .B0(n310), .Y(n485) );
  AOI211XL U599 ( .A0(n423), .A1(n427), .B0(n312), .C0(n311), .Y(n313) );
  AOI222XL U600 ( .A0(intadd_1_n1), .A1(n684), .B0(intadd_1_n1), .B1(n683), 
        .C0(n684), .C1(n683), .Y(n318) );
  AOI22XL U601 ( .A0(sign_a), .A1(sign_b), .B0(n684), .B1(n683), .Y(n657) );
  NAND2XL U602 ( .A(n331), .B(n375), .Y(n372) );
  OAI22XL U603 ( .A0(n650), .A1(n372), .B0(n375), .B1(n647), .Y(n320) );
  INVXL U604 ( .A(state[0]), .Y(n529) );
  INVXL U605 ( .A(state[1]), .Y(n528) );
  AND2XL U606 ( .A(n658), .B(n384), .Y(n656) );
  INVXL U607 ( .A(n658), .Y(n396) );
  AOI222XL U608 ( .A0(n320), .A1(n630), .B0(n656), .B1(intadd_0_SUM_0_), .C0(
        n561), .C1(intadd_0_SUM_1_), .Y(n321) );
  INVXL U609 ( .A(n321), .Y(n253) );
  INVXL U610 ( .A(n372), .Y(n359) );
  AOI22XL U611 ( .A0(n638), .A1(n359), .B0(n392), .B1(n636), .Y(n336) );
  AOI22XL U612 ( .A0(n360), .A1(n637), .B0(n639), .B1(n411), .Y(n335) );
  OAI211XL U613 ( .A0(n647), .A1(n364), .B0(n336), .C0(n335), .Y(n337) );
  AOI222XL U614 ( .A0(n337), .A1(n630), .B0(n656), .B1(intadd_0_SUM_3_), .C0(
        n561), .C1(intadd_0_SUM_4_), .Y(n338) );
  NOR4XL U615 ( .A(n675), .B(n676), .C(n664), .D(n662), .Y(n354) );
  ADDFXL U616 ( .A(n354), .B(n340), .CI(n339), .CO(DP_OP_61J1_123_6112_n94), 
        .S(DP_OP_61J1_123_6112_n95) );
  ADDFXL U617 ( .A(DP_OP_61J1_123_6112_n41), .B(fraction_a[6]), .CI(
        fraction_b[6]), .CO(n654), .S(intadd_0_B_6_) );
  ADDFXL U618 ( .A(fraction_a[4]), .B(n342), .CI(n341), .CO(
        DP_OP_61J1_123_6112_n47), .S(DP_OP_61J1_123_6112_n48) );
  ADDFXL U619 ( .A(fraction_a[2]), .B(n344), .CI(n343), .CO(
        DP_OP_61J1_123_6112_n61), .S(DP_OP_61J1_123_6112_n62) );
  ADDFXL U620 ( .A(fraction_a[1]), .B(n346), .CI(n345), .CO(
        DP_OP_61J1_123_6112_n69), .S(DP_OP_61J1_123_6112_n70) );
  ADDFXL U621 ( .A(fraction_a[0]), .B(n348), .CI(n347), .CO(
        DP_OP_61J1_123_6112_n79), .S(DP_OP_61J1_123_6112_n80) );
  NAND2XL U622 ( .A(fraction_b[1]), .B(fraction_a[5]), .Y(n350) );
  NAND2XL U623 ( .A(fraction_b[0]), .B(fraction_a[6]), .Y(n349) );
  NAND2XL U624 ( .A(fraction_a[6]), .B(fraction_b[1]), .Y(n351) );
  NAND2XL U625 ( .A(fraction_a[2]), .B(fraction_b[1]), .Y(n542) );
  NAND2XL U626 ( .A(fraction_a[3]), .B(fraction_b[0]), .Y(n541) );
  AOI21XL U627 ( .A0(n664), .A1(n351), .B0(DP_OP_61J1_123_6112_n81), .Y(
        DP_OP_61J1_123_6112_n82) );
  NOR4XL U628 ( .A(n675), .B(n674), .C(n664), .D(n662), .Y(
        DP_OP_61J1_123_6112_n96) );
  NAND2XL U629 ( .A(fraction_a[4]), .B(fraction_b[1]), .Y(n353) );
  NAND2XL U630 ( .A(fraction_a[5]), .B(fraction_b[0]), .Y(n352) );
  AOI21XL U631 ( .A0(n353), .A1(n352), .B0(DP_OP_61J1_123_6112_n96), .Y(
        DP_OP_61J1_123_6112_n97) );
  NAND2XL U632 ( .A(fraction_a[3]), .B(fraction_b[1]), .Y(n356) );
  NAND2XL U633 ( .A(fraction_a[4]), .B(fraction_b[0]), .Y(n355) );
  AOI21XL U634 ( .A0(n356), .A1(n355), .B0(n354), .Y(DP_OP_61J1_123_6112_n102)
         );
  NAND2XL U635 ( .A(in_valid), .B(n529), .Y(n530) );
  OAI21XL U636 ( .A0(mode), .A1(n530), .B0(n531), .Y(n262) );
  AOI222XL U637 ( .A0(n360), .A1(n411), .B0(n392), .B1(n639), .C0(n390), .C1(
        n359), .Y(n358) );
  INVXL U638 ( .A(n630), .Y(n660) );
  AOI22XL U639 ( .A0(n561), .A1(intadd_0_SUM_2_), .B0(n656), .B1(
        intadd_0_SUM_1_), .Y(n357) );
  OAI21XL U640 ( .A0(n358), .A1(n660), .B0(n357), .Y(n252) );
  AOI22XL U641 ( .A0(n638), .A1(n392), .B0(n390), .B1(n411), .Y(n363) );
  AOI22XL U642 ( .A0(n561), .A1(intadd_0_SUM_3_), .B0(n656), .B1(
        intadd_0_SUM_2_), .Y(n362) );
  AOI22XL U643 ( .A0(n360), .A1(n635), .B0(n639), .B1(n359), .Y(n361) );
  AOI32XL U644 ( .A0(n363), .A1(n362), .A2(n361), .B0(n660), .B1(n362), .Y(
        n251) );
  AOI22XL U645 ( .A0(n561), .A1(intadd_0_SUM_5_), .B0(n656), .B1(
        intadd_0_SUM_4_), .Y(n371) );
  OAI22XL U646 ( .A0(n364), .A1(n649), .B0(n647), .B1(n389), .Y(n369) );
  INVXL U647 ( .A(n642), .Y(n373) );
  OAI22XL U648 ( .A0(n375), .A1(n373), .B0(n365), .B1(n372), .Y(n368) );
  OAI22XL U649 ( .A0(n650), .A1(n408), .B0(n376), .B1(n386), .Y(n367) );
  OAI31XL U650 ( .A0(n369), .A1(n368), .A2(n367), .B0(n630), .Y(n370) );
  NAND2XL U651 ( .A(n371), .B(n370), .Y(n249) );
  AOI22XL U652 ( .A0(n638), .A1(n635), .B0(n636), .B1(n411), .Y(n382) );
  AOI22XL U653 ( .A0(n561), .A1(intadd_0_SUM_6_), .B0(n656), .B1(
        intadd_0_SUM_5_), .Y(n381) );
  OAI22XL U654 ( .A0(n375), .A1(n374), .B0(n373), .B1(n372), .Y(n379) );
  OAI22XL U655 ( .A0(n650), .A1(n387), .B0(n408), .B1(n647), .Y(n378) );
  AOI211XL U656 ( .A0(n639), .A1(n637), .B0(n379), .C0(n378), .Y(n380) );
  AOI32XL U657 ( .A0(n382), .A1(n381), .A2(n380), .B0(n660), .B1(n381), .Y(
        n248) );
  AOI22XL U658 ( .A0(n601), .A1(exponent_b[1]), .B0(exponent_a[1]), .B1(n600), 
        .Y(n414) );
  NAND2XL U659 ( .A(n414), .B(n394), .Y(n393) );
  NAND2XL U660 ( .A(exponent_b[4]), .B(exponent_a[4]), .Y(n398) );
  NAND2XL U661 ( .A(n399), .B(n398), .Y(n608) );
  NOR2BXL U662 ( .AN(n608), .B(n606), .Y(n407) );
  ADDFXL U663 ( .A(n685), .B(n401), .CI(n400), .CO(n403), .S(n397) );
  NAND2XL U664 ( .A(n403), .B(n402), .Y(n570) );
  AOI211XL U665 ( .A0(n404), .A1(n570), .B0(n405), .C0(n571), .Y(n581) );
  AND2XL U666 ( .A(n405), .B(n571), .Y(n582) );
  AOI222XL U667 ( .A0(n590), .A1(n592), .B0(n590), .B1(n588), .C0(n592), .C1(
        n588), .Y(n607) );
  NAND2XL U668 ( .A(n407), .B(n607), .Y(n406) );
  OAI211XL U669 ( .A0(n407), .A1(n607), .B0(n658), .C0(n406), .Y(n420) );
  AOI222XL U670 ( .A0(n565), .A1(n569), .B0(n565), .B1(n567), .C0(n569), .C1(
        n567), .Y(n415) );
  NAND2XL U671 ( .A(fraction_b[6]), .B(n472), .Y(n421) );
  AOI32XL U672 ( .A0(n422), .A1(n564), .A2(n679), .B0(n560), .B1(n421), .Y(
        n497) );
  INVXL U673 ( .A(n423), .Y(n424) );
  OAI22XL U674 ( .A0(n497), .A1(n483), .B0(n522), .B1(n424), .Y(n425) );
  AOI221XL U675 ( .A0(n455), .A1(n427), .B0(n426), .B1(n427), .C0(n425), .Y(
        n428) );
  NAND2XL U676 ( .A(n430), .B(n451), .Y(n429) );
  OAI21XL U677 ( .A0(n430), .A1(n451), .B0(n429), .Y(intadd_1_CI) );
  NAND2XL U678 ( .A(n439), .B(sign_a), .Y(n437) );
  AOI222XL U679 ( .A0(n564), .A1(n441), .B0(n564), .B1(fraction_a[5]), .C0(
        n432), .C1(n463), .Y(n504) );
  OAI22XL U680 ( .A0(n463), .A1(fraction_a[4]), .B0(fraction_a[2]), .B1(n441), 
        .Y(n442) );
  AOI22XL U681 ( .A0(n443), .A1(n433), .B0(n446), .B1(n442), .Y(n434) );
  OAI2BB1XL U682 ( .A0N(n491), .A1N(n504), .B0(n434), .Y(n435) );
  NAND2XL U683 ( .A(n437), .B(n438), .Y(n436) );
  OAI21XL U684 ( .A0(n437), .A1(n438), .B0(n436), .Y(intadd_1_A_0_) );
  AOI22XL U685 ( .A0(n441), .A1(fraction_a[5]), .B0(fraction_a[3]), .B1(n463), 
        .Y(n447) );
  OAI2BB2XL U686 ( .B0(n516), .B1(n444), .A0N(n443), .A1N(n442), .Y(n445) );
  NAND2XL U687 ( .A(n450), .B(n461), .Y(n449) );
  NAND2XL U688 ( .A(n469), .B(sign_b), .Y(n459) );
  OAI32XL U689 ( .A0(n471), .A1(n524), .A2(fraction_b[2]), .B0(fraction_b[6]), 
        .B1(n483), .Y(n454) );
  OAI32XL U690 ( .A0(n524), .A1(n471), .A2(fraction_b[3]), .B0(fraction_b[5]), 
        .B1(n472), .Y(n453) );
  OAI32XL U691 ( .A0(n560), .A1(n455), .A2(n454), .B0(n564), .B1(n453), .Y(
        n456) );
  NAND2XL U692 ( .A(n459), .B(n468), .Y(n458) );
  OAI21XL U693 ( .A0(n459), .A1(n468), .B0(n458), .Y(intadd_1_A_1_) );
  AOI221XL U694 ( .A0(n564), .A1(n674), .B0(n560), .B1(n673), .C0(n491), .Y(
        n464) );
  AOI32XL U695 ( .A0(n675), .A1(n560), .A2(n463), .B0(n491), .B1(n560), .Y(
        n462) );
  OAI21XL U696 ( .A0(n464), .A1(n463), .B0(n462), .Y(n465) );
  NAND2XL U697 ( .A(n467), .B(n489), .Y(n466) );
  NOR3XL U698 ( .A(n524), .B(n471), .C(fraction_b[3]), .Y(n478) );
  AOI221XL U699 ( .A0(n524), .A1(n680), .B0(n472), .B1(n682), .C0(n471), .Y(
        n474) );
  OAI22XL U700 ( .A0(n564), .A1(n474), .B0(n473), .B1(n472), .Y(n475) );
  NAND2XL U701 ( .A(n480), .B(n481), .Y(n479) );
  NAND2XL U702 ( .A(n487), .B(n496), .Y(n486) );
  NAND2XL U703 ( .A(n601), .B(fraction_b[6]), .Y(n509) );
  AOI221XL U704 ( .A0(n661), .A1(n662), .B0(n673), .B1(n662), .C0(
        DP_OP_61J1_123_6112_n71), .Y(DP_OP_61J1_123_6112_n72) );
  AND2XL U705 ( .A(fraction_a[5]), .B(DP_OP_61J1_123_6112_n81), .Y(
        DP_OP_61J1_123_6112_n89) );
  INVXL U706 ( .A(n530), .Y(n532) );
  OAI2BB1XL U707 ( .A0N(mode), .A1N(n532), .B0(n531), .Y(n263) );
  NAND2XL U708 ( .A(fraction_a[0]), .B(fraction_b[2]), .Y(n536) );
  NOR2BXL U709 ( .AN(n539), .B(n536), .Y(n534) );
  AOI21XL U710 ( .A0(n534), .A1(fraction_b[3]), .B0(n547), .Y(n535) );
  INVXL U711 ( .A(n536), .Y(n538) );
  OAI22XL U712 ( .A0(n539), .A1(n538), .B0(n537), .B1(fraction_a[2]), .Y(n540)
         );
  AOI21XL U713 ( .A0(n542), .A1(n541), .B0(DP_OP_61J1_123_6112_n105), .Y(n543)
         );
  AOI222XL U714 ( .A0(n545), .A1(n544), .B0(n545), .B1(n543), .C0(n544), .C1(
        n543), .Y(n550) );
  NAND2BXL U715 ( .AN(n547), .B(n546), .Y(n548) );
  AOI222XL U716 ( .A0(n550), .A1(n549), .B0(n550), .B1(n548), .C0(n549), .C1(
        n548), .Y(n551) );
  AOI222XL U717 ( .A0(DP_OP_61J1_123_6112_n99), .A1(DP_OP_61J1_123_6112_n93), 
        .B0(DP_OP_61J1_123_6112_n99), .B1(n551), .C0(DP_OP_61J1_123_6112_n93), 
        .C1(n551), .Y(n553) );
  OAI2BB2XL U718 ( .B0(n553), .B1(n552), .A0N(DP_OP_61J1_123_6112_n85), .A1N(
        DP_OP_61J1_123_6112_n92), .Y(intadd_0_CI) );
  AOI22XL U719 ( .A0(n630), .A1(n562), .B0(n561), .B1(n560), .Y(n563) );
  OAI2BB1XL U720 ( .A0N(n564), .A1N(n656), .B0(n563), .Y(n261) );
  NAND2BXL U721 ( .AN(n571), .B(n570), .Y(n573) );
  NAND2XL U722 ( .A(n574), .B(n573), .Y(n572) );
  OAI211XL U723 ( .A0(n574), .A1(n573), .B0(n658), .C0(n572), .Y(n575) );
  OR2XL U724 ( .A(n582), .B(n581), .Y(n584) );
  NAND2XL U725 ( .A(n585), .B(n584), .Y(n583) );
  OAI211XL U726 ( .A0(n585), .A1(n584), .B0(n658), .C0(n583), .Y(n586) );
  MXI2XL U727 ( .A(n590), .B(n589), .S0(n588), .Y(n591) );
  AOI2BB2XL U728 ( .B0(n592), .B1(n591), .A0N(n592), .A1N(n591), .Y(n599) );
  AOI21XL U729 ( .A0(n608), .A1(n607), .B0(n606), .Y(n616) );
  NAND2XL U730 ( .A(exponent_a[5]), .B(exponent_b[5]), .Y(n609) );
  NOR2BXL U731 ( .AN(n610), .B(n609), .Y(n615) );
  AOI21XL U732 ( .A0(exponent_a[5]), .A1(exponent_b[5]), .B0(n610), .Y(n617)
         );
  OR2XL U733 ( .A(n615), .B(n617), .Y(n612) );
  NAND2XL U734 ( .A(n616), .B(n612), .Y(n611) );
  OAI211XL U735 ( .A0(n616), .A1(n612), .B0(n658), .C0(n611), .Y(n613) );
  AND2XL U736 ( .A(exponent_b[6]), .B(exponent_a[6]), .Y(n619) );
  AOI2BB2XL U737 ( .B0(n622), .B1(n621), .A0N(n622), .A1N(n621), .Y(n634) );
  AOI22XL U738 ( .A0(n638), .A1(n637), .B0(n636), .B1(n635), .Y(n644) );
  AOI22XL U739 ( .A0(n642), .A1(n641), .B0(n640), .B1(n639), .Y(n643) );
  OAI211XL U740 ( .A0(n646), .A1(n645), .B0(n644), .C0(n643), .Y(n652) );
  AOI211XL U741 ( .A0(n650), .A1(n649), .B0(n648), .C0(n647), .Y(n651) );
  AOI31XL U742 ( .A0(intadd_0_n1), .A1(n658), .A2(n654), .B0(n653), .Y(n655)
         );
  OAI2BB1XL U743 ( .A0N(n656), .A1N(intadd_0_SUM_6_), .B0(n655), .Y(n247) );
  OAI2BB2XL U744 ( .B0(n660), .B1(n659), .A0N(n658), .A1N(n657), .Y(n246) );
endmodule

