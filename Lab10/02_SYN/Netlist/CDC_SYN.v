/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu Jun  1 10:57:00 2023
/////////////////////////////////////////////////////////////


module CDC ( clk_1, clk_2, in_valid, rst_n, in_a, mode, in_b, out_valid, out
 );
  input [3:0] in_a;
  input [3:0] in_b;
  output [7:0] out;
  input clk_1, clk_2, in_valid, rst_n, mode;
  output out_valid;
  wire   Y, P_nxt, Q, mode_reg, N19, N20, N21, N22, N23, N24, N25, N26, N27,
         N28, N29, N30, N31, n3, n4, n5, n6, n7, n8, n9, n10, n13, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;
  wire   [3:0] in_a_reg;
  wire   [3:0] in_b_reg;
  wire   [1:0] state;
  wire   [7:0] out_nxt;
  wire   [3:1] add_112_S2_carry;

  CDC_DW_mult_uns_0 mult_113 ( .a(in_a_reg), .b(in_b_reg), .product({N31, N30, 
        N29, N28, N27, N26, N25, N24}) );
  DFFRHQX1 in_b_reg_reg_0_ ( .D(n28), .CK(clk_1), .RN(rst_n), .Q(in_b_reg[0])
         );
  DFFRHQX1 in_a_reg_reg_0_ ( .D(n23), .CK(clk_1), .RN(rst_n), .Q(in_a_reg[0])
         );
  DFFRHQX1 mode_reg_reg ( .D(n27), .CK(clk_1), .RN(rst_n), .Q(mode_reg) );
  DFFRHQX1 in_a_reg_reg_3_ ( .D(n26), .CK(clk_1), .RN(rst_n), .Q(in_a_reg[3])
         );
  DFFRHQX1 in_a_reg_reg_2_ ( .D(n25), .CK(clk_1), .RN(rst_n), .Q(in_a_reg[2])
         );
  DFFRHQX1 in_a_reg_reg_1_ ( .D(n24), .CK(clk_1), .RN(rst_n), .Q(in_a_reg[1])
         );
  DFFRHQX1 in_b_reg_reg_3_ ( .D(n31), .CK(clk_1), .RN(rst_n), .Q(in_b_reg[3])
         );
  DFFRHQX1 in_b_reg_reg_2_ ( .D(n30), .CK(clk_1), .RN(rst_n), .Q(in_b_reg[2])
         );
  DFFRHQX1 in_b_reg_reg_1_ ( .D(n29), .CK(clk_1), .RN(rst_n), .Q(in_b_reg[1])
         );
  DFFRHQX1 P_reg ( .D(P_nxt), .CK(clk_1), .RN(rst_n), .Q(Y) );
  DFFRHQX1 state_reg_1_ ( .D(state[0]), .CK(clk_2), .RN(rst_n), .Q(state[1])
         );
  DFFRHQX1 Q_reg ( .D(Y), .CK(clk_2), .RN(rst_n), .Q(Q) );
  DFFRHQX1 state_reg_0_ ( .D(n32), .CK(clk_2), .RN(rst_n), .Q(state[0]) );
  DFFRHQX1 out_reg_0_ ( .D(out_nxt[0]), .CK(clk_2), .RN(rst_n), .Q(out[0]) );
  DFFRHQX1 out_valid_reg ( .D(n33), .CK(clk_2), .RN(rst_n), .Q(out_valid) );
  DFFRHQX1 out_reg_7_ ( .D(out_nxt[7]), .CK(clk_2), .RN(rst_n), .Q(out[7]) );
  DFFRHQX1 out_reg_6_ ( .D(out_nxt[6]), .CK(clk_2), .RN(rst_n), .Q(out[6]) );
  DFFRHQX1 out_reg_5_ ( .D(out_nxt[5]), .CK(clk_2), .RN(rst_n), .Q(out[5]) );
  DFFRHQX1 out_reg_4_ ( .D(out_nxt[4]), .CK(clk_2), .RN(rst_n), .Q(out[4]) );
  DFFRHQX1 out_reg_3_ ( .D(out_nxt[3]), .CK(clk_2), .RN(rst_n), .Q(out[3]) );
  DFFRHQX1 out_reg_2_ ( .D(out_nxt[2]), .CK(clk_2), .RN(rst_n), .Q(out[2]) );
  DFFRHQX1 out_reg_1_ ( .D(out_nxt[1]), .CK(clk_2), .RN(rst_n), .Q(out[1]) );
  AND2X1 U44 ( .A(n10), .B(n35), .Y(n5) );
  OAI2BB1X1 U45 ( .A0N(N25), .A1N(n3), .B0(n8), .Y(out_nxt[1]) );
  NAND2X1 U46 ( .A(N20), .B(n5), .Y(n8) );
  OAI2BB1X1 U47 ( .A0N(N26), .A1N(n3), .B0(n7), .Y(out_nxt[2]) );
  NAND2X1 U48 ( .A(N21), .B(n5), .Y(n7) );
  OAI2BB1X1 U49 ( .A0N(N27), .A1N(n3), .B0(n6), .Y(out_nxt[3]) );
  NAND2X1 U50 ( .A(N22), .B(n5), .Y(n6) );
  OAI2BB1X1 U51 ( .A0N(N28), .A1N(n3), .B0(n4), .Y(out_nxt[4]) );
  NAND2X1 U52 ( .A(N23), .B(n5), .Y(n4) );
  AND2X1 U53 ( .A(N29), .B(n3), .Y(out_nxt[5]) );
  AND2X1 U54 ( .A(N30), .B(n3), .Y(out_nxt[6]) );
  AND2X1 U55 ( .A(N31), .B(n3), .Y(out_nxt[7]) );
  XOR2X1 U56 ( .A(state[1]), .B(state[0]), .Y(n10) );
  OAI2BB1X1 U57 ( .A0N(N24), .A1N(n3), .B0(n9), .Y(out_nxt[0]) );
  NAND2X1 U58 ( .A(N19), .B(n5), .Y(n9) );
  AND2X1 U59 ( .A(mode_reg), .B(n10), .Y(n3) );
  OAI32X1 U60 ( .A0(n22), .A1(state[1]), .A2(state[0]), .B0(n36), .B1(n10), 
        .Y(n32) );
  XNOR2X1 U61 ( .A(Y), .B(Q), .Y(n22) );
  INVX2 U62 ( .A(state[0]), .Y(n36) );
  AND2X1 U63 ( .A(n36), .B(state[1]), .Y(n33) );
  INVX2 U64 ( .A(in_valid), .Y(n34) );
  OAI2BB1X1 U65 ( .A0N(in_b[1]), .A1N(in_valid), .B0(n19), .Y(n29) );
  NAND2X1 U66 ( .A(in_b_reg[1]), .B(n34), .Y(n19) );
  OAI2BB1X1 U67 ( .A0N(in_b[2]), .A1N(in_valid), .B0(n20), .Y(n30) );
  NAND2X1 U68 ( .A(in_b_reg[2]), .B(n34), .Y(n20) );
  OAI2BB1X1 U69 ( .A0N(in_b[3]), .A1N(in_valid), .B0(n21), .Y(n31) );
  NAND2X1 U70 ( .A(in_b_reg[3]), .B(n34), .Y(n21) );
  OAI2BB1X1 U71 ( .A0N(in_valid), .A1N(in_a[0]), .B0(n13), .Y(n23) );
  NAND2X1 U72 ( .A(in_a_reg[0]), .B(n34), .Y(n13) );
  OAI2BB1X1 U73 ( .A0N(in_a[1]), .A1N(in_valid), .B0(n15), .Y(n24) );
  NAND2X1 U74 ( .A(in_a_reg[1]), .B(n34), .Y(n15) );
  OAI2BB1X1 U75 ( .A0N(in_a[2]), .A1N(in_valid), .B0(n16), .Y(n25) );
  NAND2X1 U76 ( .A(in_a_reg[2]), .B(n34), .Y(n16) );
  OAI2BB1X1 U77 ( .A0N(in_a[3]), .A1N(in_valid), .B0(n17), .Y(n26) );
  NAND2X1 U78 ( .A(in_a_reg[3]), .B(n34), .Y(n17) );
  OAI2BB1X1 U79 ( .A0N(in_b[0]), .A1N(in_valid), .B0(n18), .Y(n28) );
  NAND2X1 U80 ( .A(in_b_reg[0]), .B(n34), .Y(n18) );
  OAI2BB2X1 U81 ( .B0(in_valid), .B1(n35), .A0N(mode), .A1N(in_valid), .Y(n27)
         );
  XOR2X1 U82 ( .A(in_valid), .B(Y), .Y(P_nxt) );
  INVX2 U83 ( .A(mode_reg), .Y(n35) );
  ADDFX2 U84 ( .A(in_a_reg[3]), .B(in_b_reg[3]), .CI(add_112_S2_carry[3]), 
        .CO(N23), .S(N22) );
  ADDFX2 U85 ( .A(in_a_reg[1]), .B(in_b_reg[1]), .CI(add_112_S2_carry[1]), 
        .CO(add_112_S2_carry[2]), .S(N20) );
  ADDFX2 U86 ( .A(in_a_reg[2]), .B(in_b_reg[2]), .CI(add_112_S2_carry[2]), 
        .CO(add_112_S2_carry[3]), .S(N21) );
  AND2X1 U87 ( .A(in_a_reg[0]), .B(in_b_reg[0]), .Y(add_112_S2_carry[1]) );
  XOR2X1 U88 ( .A(in_b_reg[0]), .B(in_a_reg[0]), .Y(N19) );
endmodule


module CDC_DW_mult_uns_0 ( a, b, product );
  input [3:0] a;
  input [3:0] b;
  output [7:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n62, n63, n64, n65, n66, n67, n68, n69;

  ADDFX2 U2 ( .A(n7), .B(n19), .CI(n2), .CO(product[7]), .S(product[6]) );
  ADDFX2 U3 ( .A(n9), .B(n8), .CI(n3), .CO(n2), .S(product[5]) );
  ADDFX2 U4 ( .A(n10), .B(n13), .CI(n4), .CO(n3), .S(product[4]) );
  ADDFX2 U5 ( .A(n14), .B(n16), .CI(n5), .CO(n4), .S(product[3]) );
  ADDFX2 U6 ( .A(n6), .B(n26), .CI(n18), .CO(n5), .S(product[2]) );
  ADDHXL U7 ( .A(n30), .B(n33), .CO(n6), .S(product[1]) );
  ADDFX2 U8 ( .A(n20), .B(n23), .CI(n11), .CO(n7), .S(n8) );
  ADDFX2 U9 ( .A(n15), .B(n24), .CI(n12), .CO(n9), .S(n10) );
  ADDHXL U10 ( .A(n27), .B(n21), .CO(n11), .S(n12) );
  ADDFX2 U11 ( .A(n28), .B(n31), .CI(n17), .CO(n13), .S(n14) );
  ADDHXL U12 ( .A(n25), .B(n22), .CO(n15), .S(n16) );
  ADDHXL U13 ( .A(n32), .B(n29), .CO(n17), .S(n18) );
  INVX2 U40 ( .A(b[1]), .Y(n64) );
  INVX2 U41 ( .A(b[2]), .Y(n63) );
  INVX2 U42 ( .A(b[3]), .Y(n62) );
  INVX2 U43 ( .A(a[1]), .Y(n68) );
  INVX2 U44 ( .A(a[3]), .Y(n66) );
  INVX2 U45 ( .A(a[2]), .Y(n67) );
  INVX2 U46 ( .A(a[0]), .Y(n69) );
  INVX2 U47 ( .A(b[0]), .Y(n65) );
  NOR2X1 U48 ( .A(n69), .B(n65), .Y(product[0]) );
  NOR2X1 U49 ( .A(n69), .B(n64), .Y(n33) );
  NOR2X1 U50 ( .A(n69), .B(n63), .Y(n32) );
  NOR2X1 U51 ( .A(n69), .B(n62), .Y(n31) );
  NOR2X1 U52 ( .A(n65), .B(n68), .Y(n30) );
  NOR2X1 U53 ( .A(n64), .B(n68), .Y(n29) );
  NOR2X1 U54 ( .A(n63), .B(n68), .Y(n28) );
  NOR2X1 U55 ( .A(n62), .B(n68), .Y(n27) );
  NOR2X1 U56 ( .A(n65), .B(n67), .Y(n26) );
  NOR2X1 U57 ( .A(n64), .B(n67), .Y(n25) );
  NOR2X1 U58 ( .A(n63), .B(n67), .Y(n24) );
  NOR2X1 U59 ( .A(n62), .B(n67), .Y(n23) );
  NOR2X1 U60 ( .A(n65), .B(n66), .Y(n22) );
  NOR2X1 U61 ( .A(n64), .B(n66), .Y(n21) );
  NOR2X1 U62 ( .A(n63), .B(n66), .Y(n20) );
  NOR2X1 U63 ( .A(n62), .B(n66), .Y(n19) );
endmodule

