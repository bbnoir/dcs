/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : R-2020.09
// Date      : Wed Mar  1 00:06:11 2023
/////////////////////////////////////////////////////////////


module BCD ( in_bin, out_hundred, out_ten, out_unit );
  input [8:0] in_bin;
  output [2:0] out_hundred;
  output [3:0] out_ten;
  output [3:0] out_unit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89;

  NOR2XL U8 ( .A(in_bin[4]), .B(n23), .Y(n28) );
  NOR2XL U9 ( .A(in_bin[4]), .B(n61), .Y(n30) );
  NOR2XL U10 ( .A(n57), .B(in_bin[3]), .Y(n44) );
  NOR2XL U11 ( .A(n54), .B(n18), .Y(n25) );
  NOR2XL U12 ( .A(out_hundred[2]), .B(n18), .Y(n6) );
  NOR2XL U13 ( .A(in_bin[1]), .B(n86), .Y(n85) );
  NOR2XL U14 ( .A(n83), .B(n78), .Y(n81) );
  NOR2X1 U15 ( .A(n33), .B(n29), .Y(n61) );
  NOR2X1 U16 ( .A(n28), .B(n34), .Y(n29) );
  NOR2X1 U17 ( .A(n14), .B(n12), .Y(n15) );
  NOR2X1 U18 ( .A(n19), .B(n11), .Y(n14) );
  NOR2X1 U19 ( .A(n21), .B(n25), .Y(n22) );
  NOR2X1 U20 ( .A(n17), .B(n16), .Y(n21) );
  NOR2X1 U21 ( .A(in_bin[6]), .B(n76), .Y(n17) );
  NOR2X1 U22 ( .A(out_hundred[2]), .B(n16), .Y(n13) );
  MXI2XL U23 ( .A(in_bin[4]), .B(n35), .S0(n60), .Y(n43) );
  OAI2BB1XL U24 ( .A0N(in_bin[5]), .A1N(n22), .B0(n20), .Y(n23) );
  NAND2XL U25 ( .A(n24), .B(n75), .Y(n20) );
  NAND2XL U26 ( .A(n43), .B(n45), .Y(n36) );
  OAI22XL U27 ( .A0(n32), .A1(in_bin[4]), .B0(n31), .B1(n30), .Y(n41) );
  NAND2XL U28 ( .A(n31), .B(n33), .Y(n32) );
  INVXL U29 ( .A(n23), .Y(n31) );
  AOI2BB1XL U30 ( .A0N(n77), .A1N(n26), .B0(n22), .Y(n33) );
  INVXL U31 ( .A(in_bin[8]), .Y(n18) );
  OAI21XL U32 ( .A0(n44), .A1(n43), .B0(n42), .Y(n46) );
  NAND2XL U33 ( .A(n44), .B(n43), .Y(n42) );
  XOR2XL U34 ( .A(n41), .B(n58), .Y(n47) );
  NAND2XL U35 ( .A(n49), .B(n83), .Y(n67) );
  AOI2BB1XL U36 ( .A0N(in_bin[7]), .A1N(in_bin[6]), .B0(n18), .Y(n54) );
  AOI22XL U37 ( .A0(in_bin[6]), .A1(in_bin[8]), .B0(n76), .B1(n19), .Y(n27) );
  INVXL U38 ( .A(n61), .Y(n60) );
  OAI211XL U39 ( .A0(n40), .A1(n39), .B0(n38), .C0(n37), .Y(n58) );
  NAND2XL U40 ( .A(n61), .B(n39), .Y(n37) );
  NAND2XL U41 ( .A(n41), .B(n36), .Y(n38) );
  INVXL U42 ( .A(in_bin[7]), .Y(n16) );
  AOI2BB1XL U43 ( .A0N(in_bin[4]), .A1N(n2), .B0(n24), .Y(n9) );
  NOR3XL U44 ( .A(n9), .B(in_bin[4]), .C(in_bin[3]), .Y(n7) );
  INVXL U45 ( .A(n7), .Y(n1) );
  OAI2BB1XL U46 ( .A0N(in_bin[2]), .A1N(n68), .B0(n67), .Y(n86) );
  OR2XL U47 ( .A(in_bin[1]), .B(n89), .Y(n88) );
  NAND2XL U48 ( .A(n48), .B(n49), .Y(n71) );
  INVXL U49 ( .A(n47), .Y(n70) );
  INVXL U50 ( .A(out_ten[0]), .Y(n89) );
  NAND2XL U51 ( .A(n46), .B(n71), .Y(n50) );
  INVXL U52 ( .A(in_bin[2]), .Y(n49) );
  MXI2XL U53 ( .A(n45), .B(in_bin[3]), .S0(n57), .Y(n48) );
  NOR2BXL U54 ( .AN(n67), .B(n48), .Y(n69) );
  NAND2XL U55 ( .A(n70), .B(n50), .Y(n83) );
  OR2XL U56 ( .A(n84), .B(n83), .Y(n82) );
  AOI22XL U57 ( .A0(n9), .A1(n8), .B0(n7), .B1(n6), .Y(n10) );
  OAI211XL U58 ( .A0(n45), .A1(n49), .B0(n5), .C0(n4), .Y(n8) );
  NAND2XL U59 ( .A(in_bin[4]), .B(n2), .Y(n5) );
  OAI2BB1XL U60 ( .A0N(n45), .A1N(n49), .B0(n3), .Y(n4) );
  NAND2XL U61 ( .A(n1), .B(out_hundred[1]), .Y(n11) );
  AOI31XL U62 ( .A0(n1), .A1(n13), .A2(in_bin[6]), .B0(n6), .Y(n3) );
  INVXL U63 ( .A(in_bin[4]), .Y(n35) );
  INVXL U64 ( .A(in_bin[5]), .Y(n24) );
  NAND2XL U65 ( .A(in_bin[7]), .B(in_bin[8]), .Y(n2) );
  INVXL U66 ( .A(in_bin[6]), .Y(n19) );
  AOI2BB1XL U67 ( .A0N(n71), .A1N(n70), .B0(n69), .Y(n72) );
  OAI2BB1XL U68 ( .A0N(n69), .A1N(in_bin[1]), .B0(n52), .Y(out_ten[0]) );
  NAND2XL U69 ( .A(n51), .B(n50), .Y(n52) );
  OAI21XL U70 ( .A0(n49), .A1(n48), .B0(n68), .Y(n51) );
  MXI2XL U71 ( .A(n15), .B(n14), .S0(n13), .Y(out_hundred[0]) );
  AOI21XL U72 ( .A0(n11), .A1(n19), .B0(n10), .Y(n12) );
  INVXL U73 ( .A(n3), .Y(out_hundred[1]) );
  AOI31XL U74 ( .A0(n19), .A1(n24), .A2(n35), .B0(n2), .Y(out_hundred[2]) );
  INVXL U75 ( .A(n58), .Y(n57) );
  INVXL U76 ( .A(in_bin[3]), .Y(n45) );
  NOR2XL U77 ( .A(n47), .B(n46), .Y(n68) );
  INVXL U78 ( .A(n54), .Y(n76) );
  BUFXL U79 ( .A(in_bin[0]), .Y(out_unit[0]) );
  AOI221XL U80 ( .A0(in_bin[5]), .A1(n21), .B0(n27), .B1(n21), .C0(n25), .Y(
        n77) );
  INVXL U81 ( .A(n77), .Y(n75) );
  INVXL U82 ( .A(n21), .Y(n26) );
  AOI222XL U83 ( .A0(n27), .A1(in_bin[5]), .B0(n27), .B1(n26), .C0(n25), .C1(
        n24), .Y(n34) );
  INVXL U84 ( .A(n33), .Y(n40) );
  INVXL U85 ( .A(n34), .Y(n39) );
  INVXL U86 ( .A(out_hundred[2]), .Y(n53) );
  NAND2XL U87 ( .A(n54), .B(n53), .Y(n59) );
  NAND2XL U88 ( .A(n77), .B(n59), .Y(n56) );
  NAND2XL U89 ( .A(n57), .B(out_hundred[1]), .Y(n55) );
  OAI21XL U90 ( .A0(n57), .A1(n56), .B0(n55), .Y(n78) );
  INVXL U91 ( .A(out_hundred[0]), .Y(n84) );
  INVXL U92 ( .A(n59), .Y(n63) );
  MXI2XL U93 ( .A(n61), .B(n60), .S0(out_hundred[2]), .Y(n62) );
  AOI21XL U94 ( .A0(n57), .A1(n63), .B0(n62), .Y(n64) );
  INVXL U95 ( .A(n64), .Y(n66) );
  NAND2XL U96 ( .A(n81), .B(n66), .Y(n65) );
  OAI31XL U97 ( .A0(n81), .A1(n84), .A2(n66), .B0(n65), .Y(out_ten[3]) );
  INVXL U98 ( .A(n72), .Y(n74) );
  NAND2XL U99 ( .A(n85), .B(n74), .Y(n73) );
  OAI31XL U100 ( .A0(n85), .A1(n89), .A2(n74), .B0(n73), .Y(out_unit[3]) );
  AOI221XL U101 ( .A0(n77), .A1(n76), .B0(n75), .B1(out_hundred[1]), .C0(
        out_hundred[2]), .Y(n80) );
  NAND2XL U102 ( .A(n82), .B(n78), .Y(n79) );
  OAI2BB1XL U103 ( .A0N(n81), .A1N(n80), .B0(n79), .Y(out_ten[2]) );
  OAI2BB1XL U104 ( .A0N(n84), .A1N(n83), .B0(n82), .Y(out_ten[1]) );
  INVXL U105 ( .A(n85), .Y(n87) );
  OAI2BB2XL U106 ( .B0(n89), .B1(n87), .A0N(n86), .A1N(n88), .Y(out_unit[2])
         );
  OAI2BB1XL U107 ( .A0N(n89), .A1N(in_bin[1]), .B0(n88), .Y(out_unit[1]) );
endmodule

