/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : R-2020.09
// Date      : Thu Mar 30 23:45:51 2023
/////////////////////////////////////////////////////////////


module inter ( clk, rst_n, in_valid_1, in_valid_2, data_in_1, data_in_2, 
        ready_slave1, ready_slave2, valid_slave1, valid_slave2, addr_out, 
        value_out, handshake_slave1, handshake_slave2 );
  input [6:0] data_in_1;
  input [6:0] data_in_2;
  output [2:0] addr_out;
  output [2:0] value_out;
  input clk, rst_n, in_valid_1, in_valid_2, ready_slave1, ready_slave2;
  output valid_slave1, valid_slave2, handshake_slave1, handshake_slave2;
  wire   in2, in2_nxt, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110;
  wire   [6:0] data_1_reg;
  wire   [6:0] data_2_reg;
  wire   [1:0] state;

  DFFRHQXL state_reg_0_ ( .D(n58), .CK(clk), .RN(rst_n), .Q(state[0]) );
  DFFRHQXL data_1_reg_reg_6_ ( .D(n56), .CK(clk), .RN(rst_n), .Q(data_1_reg[6]) );
  DFFRHQXL data_1_reg_reg_5_ ( .D(n55), .CK(clk), .RN(rst_n), .Q(data_1_reg[5]) );
  DFFRHQXL data_1_reg_reg_4_ ( .D(n54), .CK(clk), .RN(rst_n), .Q(data_1_reg[4]) );
  DFFRHQXL data_1_reg_reg_3_ ( .D(n53), .CK(clk), .RN(rst_n), .Q(data_1_reg[3]) );
  DFFRHQXL data_1_reg_reg_2_ ( .D(n52), .CK(clk), .RN(rst_n), .Q(data_1_reg[2]) );
  DFFRHQXL data_1_reg_reg_1_ ( .D(n51), .CK(clk), .RN(rst_n), .Q(data_1_reg[1]) );
  DFFRHQXL data_1_reg_reg_0_ ( .D(n50), .CK(clk), .RN(rst_n), .Q(data_1_reg[0]) );
  DFFRHQXL data_2_reg_reg_6_ ( .D(n49), .CK(clk), .RN(rst_n), .Q(data_2_reg[6]) );
  DFFRHQXL state_reg_1_ ( .D(n57), .CK(clk), .RN(rst_n), .Q(state[1]) );
  DFFRHQXL in2_reg ( .D(in2_nxt), .CK(clk), .RN(rst_n), .Q(in2) );
  DFFRHQXL data_2_reg_reg_5_ ( .D(n48), .CK(clk), .RN(rst_n), .Q(data_2_reg[5]) );
  DFFRHQXL data_2_reg_reg_4_ ( .D(n47), .CK(clk), .RN(rst_n), .Q(data_2_reg[4]) );
  DFFRHQXL data_2_reg_reg_3_ ( .D(n46), .CK(clk), .RN(rst_n), .Q(data_2_reg[3]) );
  DFFRHQXL data_2_reg_reg_2_ ( .D(n45), .CK(clk), .RN(rst_n), .Q(data_2_reg[2]) );
  DFFRHQXL data_2_reg_reg_1_ ( .D(n44), .CK(clk), .RN(rst_n), .Q(data_2_reg[1]) );
  DFFRHQXL data_2_reg_reg_0_ ( .D(n43), .CK(clk), .RN(rst_n), .Q(data_2_reg[0]) );
  DFFRHQXL valid_slave1_reg ( .D(n60), .CK(clk), .RN(rst_n), .Q(valid_slave1)
         );
  DFFRHQXL handshake_slave2_reg ( .D(n68), .CK(clk), .RN(rst_n), .Q(
        handshake_slave2) );
  DFFRHQXL handshake_slave1_reg ( .D(n67), .CK(clk), .RN(rst_n), .Q(
        handshake_slave1) );
  DFFRHQXL addr_out_reg_2_ ( .D(n61), .CK(clk), .RN(rst_n), .Q(addr_out[2]) );
  DFFRHQXL addr_out_reg_1_ ( .D(n62), .CK(clk), .RN(rst_n), .Q(addr_out[1]) );
  DFFRHQXL addr_out_reg_0_ ( .D(n63), .CK(clk), .RN(rst_n), .Q(addr_out[0]) );
  DFFRHQXL value_out_reg_2_ ( .D(n64), .CK(clk), .RN(rst_n), .Q(value_out[2])
         );
  DFFRHQXL value_out_reg_1_ ( .D(n65), .CK(clk), .RN(rst_n), .Q(value_out[1])
         );
  DFFRHQXL value_out_reg_0_ ( .D(n66), .CK(clk), .RN(rst_n), .Q(value_out[0])
         );
  DFFRHQXL valid_slave2_reg ( .D(n59), .CK(clk), .RN(rst_n), .Q(valid_slave2)
         );
  NOR2XL U72 ( .A(in2), .B(n76), .Y(n79) );
  NOR2XL U73 ( .A(n82), .B(n81), .Y(n67) );
  OAI32XL U74 ( .A0(n70), .A1(state[0]), .A2(n76), .B0(state[1]), .B1(n69), 
        .Y(n58) );
  NOR2X1 U75 ( .A(n82), .B(n80), .Y(n68) );
  NOR2BXL U76 ( .AN(n94), .B(n93), .Y(n108) );
  NOR2X1 U77 ( .A(state[1]), .B(in_valid_1), .Y(n70) );
  OR2XL U78 ( .A(in_valid_1), .B(in_valid_2), .Y(n94) );
  NAND2XL U79 ( .A(n80), .B(n81), .Y(n73) );
  OAI22XL U80 ( .A0(n82), .A1(n73), .B0(n93), .B1(n94), .Y(n76) );
  OAI22XL U81 ( .A0(n79), .A1(n78), .B0(n77), .B1(n76), .Y(n57) );
  AOI21XL U82 ( .A0(n75), .A1(n78), .B0(n74), .Y(n77) );
  NAND2XL U83 ( .A(n78), .B(n69), .Y(n93) );
  NAND2XL U84 ( .A(state[0]), .B(n78), .Y(n83) );
  NAND2XL U85 ( .A(state[1]), .B(n69), .Y(n71) );
  INVXL U86 ( .A(n83), .Y(n92) );
  NAND2XL U87 ( .A(valid_slave1), .B(ready_slave1), .Y(n81) );
  NAND2XL U88 ( .A(valid_slave2), .B(ready_slave2), .Y(n80) );
  INVXL U89 ( .A(n74), .Y(n82) );
  INVXL U90 ( .A(n71), .Y(n90) );
  NAND2XL U91 ( .A(n71), .B(n83), .Y(n74) );
  INVXL U92 ( .A(in_valid_1), .Y(n75) );
  INVXL U93 ( .A(n108), .Y(n110) );
  OAI22XL U94 ( .A0(data_1_reg[6]), .A1(n83), .B0(data_2_reg[6]), .B1(n71), 
        .Y(n60) );
  OAI2BB1XL U95 ( .A0N(n92), .A1N(data_1_reg[6]), .B0(n91), .Y(n59) );
  NAND2XL U96 ( .A(data_2_reg[6]), .B(n90), .Y(n91) );
  OAI2BB1XL U97 ( .A0N(n92), .A1N(data_1_reg[0]), .B0(n84), .Y(n66) );
  NAND2XL U98 ( .A(data_2_reg[0]), .B(n90), .Y(n84) );
  OAI2BB1XL U99 ( .A0N(n92), .A1N(data_1_reg[1]), .B0(n85), .Y(n65) );
  NAND2XL U100 ( .A(data_2_reg[1]), .B(n90), .Y(n85) );
  OAI2BB1XL U101 ( .A0N(n92), .A1N(data_1_reg[2]), .B0(n86), .Y(n64) );
  NAND2XL U102 ( .A(data_2_reg[2]), .B(n90), .Y(n86) );
  OAI2BB1XL U103 ( .A0N(n92), .A1N(data_1_reg[3]), .B0(n87), .Y(n63) );
  NAND2XL U104 ( .A(data_2_reg[3]), .B(n90), .Y(n87) );
  OAI2BB1XL U105 ( .A0N(n92), .A1N(data_1_reg[4]), .B0(n88), .Y(n62) );
  NAND2XL U106 ( .A(data_2_reg[4]), .B(n90), .Y(n88) );
  OAI2BB1XL U107 ( .A0N(n92), .A1N(data_1_reg[5]), .B0(n89), .Y(n61) );
  NAND2XL U108 ( .A(data_2_reg[5]), .B(n90), .Y(n89) );
  OAI2BB1XL U109 ( .A0N(data_2_reg[0]), .A1N(n110), .B0(n109), .Y(n43) );
  NAND2XL U110 ( .A(n108), .B(data_in_2[0]), .Y(n109) );
  OAI2BB1XL U111 ( .A0N(data_2_reg[1]), .A1N(n110), .B0(n107), .Y(n44) );
  NAND2XL U112 ( .A(n108), .B(data_in_2[1]), .Y(n107) );
  OAI2BB1XL U113 ( .A0N(data_2_reg[2]), .A1N(n110), .B0(n106), .Y(n45) );
  NAND2XL U114 ( .A(n108), .B(data_in_2[2]), .Y(n106) );
  OAI2BB1XL U115 ( .A0N(data_2_reg[3]), .A1N(n110), .B0(n105), .Y(n46) );
  NAND2XL U116 ( .A(n108), .B(data_in_2[3]), .Y(n105) );
  OAI2BB1XL U117 ( .A0N(data_2_reg[4]), .A1N(n110), .B0(n104), .Y(n47) );
  NAND2XL U118 ( .A(n108), .B(data_in_2[4]), .Y(n104) );
  OAI2BB1XL U119 ( .A0N(data_2_reg[5]), .A1N(n110), .B0(n103), .Y(n48) );
  NAND2XL U120 ( .A(n108), .B(data_in_2[5]), .Y(n103) );
  AOI21XL U121 ( .A0(n90), .A1(n73), .B0(n72), .Y(in2_nxt) );
  AOI21XL U122 ( .A0(in2), .A1(n75), .B0(in_valid_2), .Y(n72) );
  OAI2BB1XL U123 ( .A0N(data_2_reg[6]), .A1N(n110), .B0(n102), .Y(n49) );
  NAND2XL U124 ( .A(n108), .B(data_in_2[6]), .Y(n102) );
  OAI2BB1XL U125 ( .A0N(data_1_reg[0]), .A1N(n110), .B0(n101), .Y(n50) );
  NAND2XL U126 ( .A(n108), .B(data_in_1[0]), .Y(n101) );
  OAI2BB1XL U127 ( .A0N(data_1_reg[1]), .A1N(n110), .B0(n100), .Y(n51) );
  NAND2XL U128 ( .A(n108), .B(data_in_1[1]), .Y(n100) );
  OAI2BB1XL U129 ( .A0N(data_1_reg[2]), .A1N(n110), .B0(n99), .Y(n52) );
  NAND2XL U130 ( .A(n108), .B(data_in_1[2]), .Y(n99) );
  OAI2BB1XL U131 ( .A0N(data_1_reg[3]), .A1N(n110), .B0(n98), .Y(n53) );
  NAND2XL U132 ( .A(n108), .B(data_in_1[3]), .Y(n98) );
  OAI2BB1XL U133 ( .A0N(data_1_reg[4]), .A1N(n110), .B0(n97), .Y(n54) );
  NAND2XL U134 ( .A(n108), .B(data_in_1[4]), .Y(n97) );
  OAI2BB1XL U135 ( .A0N(data_1_reg[5]), .A1N(n110), .B0(n96), .Y(n55) );
  NAND2XL U136 ( .A(n108), .B(data_in_1[5]), .Y(n96) );
  OAI2BB1XL U137 ( .A0N(data_1_reg[6]), .A1N(n110), .B0(n95), .Y(n56) );
  NAND2XL U138 ( .A(n108), .B(data_in_1[6]), .Y(n95) );
  INVXL U139 ( .A(state[0]), .Y(n69) );
  INVXL U140 ( .A(state[1]), .Y(n78) );
endmodule

