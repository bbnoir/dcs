/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : R-2020.09
// Date      : Thu Mar 23 15:48:50 2023
/////////////////////////////////////////////////////////////


module Seq ( clk, rst_n, in_valid, in_data, out_valid, out_data );
  input [3:0] in_data;
  input clk, rst_n, in_valid;
  output out_valid, out_data;
  wire   n0_reg_1_, out_data_nxt, out_valid_nxt, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78;
  wire   [3:0] n1_reg;
  wire   [1:0] count;

  DFFSX1 n1_reg_reg_3_ ( .D(n77), .CK(clk), .SN(rst_n), .QN(n1_reg[3]) );
  DFFSX1 n1_reg_reg_2_ ( .D(n74), .CK(clk), .SN(rst_n), .QN(n1_reg[2]) );
  DFFSX1 n1_reg_reg_0_ ( .D(n76), .CK(clk), .SN(rst_n), .QN(n1_reg[0]) );
  DFFSX1 n1_reg_reg_1_ ( .D(n75), .CK(clk), .SN(rst_n), .Q(n73) );
  DFFSX1 n0_reg_reg_3_ ( .D(n72), .CK(clk), .SN(rst_n), .Q(n77) );
  DFFSX1 n0_reg_reg_2_ ( .D(n71), .CK(clk), .SN(rst_n), .Q(n74) );
  DFFSX1 n0_reg_reg_1_ ( .D(n70), .CK(clk), .SN(rst_n), .Q(n75), .QN(n0_reg_1_) );
  DFFSX1 n0_reg_reg_0_ ( .D(n69), .CK(clk), .SN(rst_n), .Q(n76) );
  DFFSX1 count_reg_1_ ( .D(n68), .CK(clk), .SN(rst_n), .QN(count[1]) );
  DFFSX1 count_reg_0_ ( .D(n67), .CK(clk), .SN(rst_n), .Q(n78), .QN(count[0])
         );
  DFFRHQXL out_valid_reg ( .D(out_valid_nxt), .CK(clk), .RN(rst_n), .Q(
        out_valid) );
  DFFRHQXL out_data_reg ( .D(out_data_nxt), .CK(clk), .RN(rst_n), .Q(out_data)
         );
  NOR2XL U42 ( .A(in_data[2]), .B(n74), .Y(n51) );
  NOR2XL U43 ( .A(n1_reg[3]), .B(n77), .Y(n42) );
  NAND2XL U44 ( .A(in_valid), .B(count[1]), .Y(n41) );
  AOI31XL U45 ( .A0(n46), .A1(n49), .A2(n44), .B0(n51), .Y(n45) );
  OAI211XL U46 ( .A0(in_data[1]), .A1(n75), .B0(in_data[0]), .C0(n76), .Y(n44)
         );
  OAI211XL U47 ( .A0(n1_reg[3]), .A1(n77), .B0(n61), .C0(n60), .Y(n62) );
  OAI211XL U48 ( .A0(n59), .A1(n58), .B0(n57), .C0(n56), .Y(n60) );
  AOI22XL U49 ( .A0(n53), .A1(n52), .B0(in_data[3]), .B1(n77), .Y(n61) );
  NAND2XL U50 ( .A(in_data[1]), .B(n75), .Y(n46) );
  NAND2XL U51 ( .A(in_data[2]), .B(n74), .Y(n49) );
  NOR2X1 U52 ( .A(n0_reg_1_), .B(n73), .Y(n54) );
  AOI2BB2XL U53 ( .B0(n50), .B1(n49), .A0N(n77), .A1N(in_data[3]), .Y(n53) );
  OAI31XL U54 ( .A0(in_data[0]), .A1(n48), .A2(n76), .B0(n47), .Y(n50) );
  OR2XL U55 ( .A(n75), .B(in_data[1]), .Y(n47) );
  INVXL U56 ( .A(n46), .Y(n48) );
  INVXL U57 ( .A(n51), .Y(n52) );
  NOR2X1 U58 ( .A(n1_reg[2]), .B(n74), .Y(n59) );
  OAI32XL U59 ( .A0(count[0]), .A1(count[1]), .A2(n39), .B0(n41), .B1(n78), 
        .Y(n38) );
  AOI2BB1XL U60 ( .A0N(count[0]), .A1N(count[1]), .B0(n39), .Y(n40) );
  AND2XL U61 ( .A(out_valid_nxt), .B(n66), .Y(out_data_nxt) );
  OAI31XL U62 ( .A0(n65), .A1(n64), .A2(n63), .B0(n62), .Y(n66) );
  AOI211XL U63 ( .A0(n56), .A1(n43), .B0(n59), .C0(n42), .Y(n64) );
  INVXL U64 ( .A(in_valid), .Y(n39) );
  NOR2XL U65 ( .A(count[0]), .B(n41), .Y(out_valid_nxt) );
  INVXL U66 ( .A(n38), .Y(n67) );
  INVXL U67 ( .A(n40), .Y(n68) );
  INVXL U68 ( .A(in_data[0]), .Y(n69) );
  INVXL U69 ( .A(in_data[1]), .Y(n70) );
  INVXL U70 ( .A(in_data[2]), .Y(n71) );
  INVXL U71 ( .A(in_data[3]), .Y(n72) );
  NAND2XL U72 ( .A(n1_reg[3]), .B(n77), .Y(n57) );
  INVXL U73 ( .A(n57), .Y(n65) );
  NAND2XL U74 ( .A(n1_reg[2]), .B(n74), .Y(n56) );
  NAND2XL U75 ( .A(n0_reg_1_), .B(n73), .Y(n55) );
  OAI31XL U76 ( .A0(n1_reg[0]), .A1(n54), .A2(n76), .B0(n55), .Y(n43) );
  AOI222XL U77 ( .A0(in_data[3]), .A1(n45), .B0(in_data[3]), .B1(n77), .C0(n45), .C1(n77), .Y(n63) );
  AOI31XL U78 ( .A0(n1_reg[0]), .A1(n76), .A2(n55), .B0(n54), .Y(n58) );
endmodule

