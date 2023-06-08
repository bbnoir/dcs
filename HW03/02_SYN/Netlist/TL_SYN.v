/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu May  4 20:17:45 2023
/////////////////////////////////////////////////////////////


module TL ( clk, rst_n, in_valid, car_main_s, car_main_lt, car_side_s, 
        car_side_lt, out_valid, light_main, light_side );
  input [2:0] car_main_s;
  input [2:0] car_main_lt;
  input [2:0] car_side_s;
  input [2:0] car_side_lt;
  output [1:0] light_main;
  output [1:0] light_side;
  input clk, rst_n, in_valid;
  output out_valid;
  wire   car_main_s_reg, light_main_nxt_0_, light_side_nxt_0_, n99, n101, n102,
         n103, n105, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211;
  wire   [1:0] car_main_lt_reg;
  wire   [2:0] car_side_lt_reg;
  wire   [1:0] car_side_s_reg;
  wire   [3:0] state;
  wire   [1:0] t1_count;

  DFFHQX1 car_side_s_reg_reg_1_ ( .D(n99), .CK(clk), .Q(car_side_s_reg[1]) );
  DFFHQX1 car_side_lt_reg_reg_2_ ( .D(n101), .CK(clk), .Q(car_side_lt_reg[2])
         );
  DFFHQX1 car_main_lt_reg_reg_1_ ( .D(n105), .CK(clk), .Q(car_main_lt_reg[1])
         );
  DFFHQX1 car_side_lt_reg_reg_0_ ( .D(n103), .CK(clk), .Q(car_side_lt_reg[0])
         );
  DFFTRX1 car_side_s_reg_reg_0_ ( .D(n211), .RN(n210), .CK(clk), .Q(n209), 
        .QN(car_side_s_reg[0]) );
  DFFTRX1 car_main_s_reg_reg ( .D(n203), .RN(n202), .CK(clk), .QN(
        car_main_s_reg) );
  DFFTRX1 car_main_lt_reg_reg_0_ ( .D(n206), .RN(n205), .CK(clk), .Q(n204), 
        .QN(car_main_lt_reg[0]) );
  DFFX1 car_side_lt_reg_reg_1_ ( .D(n102), .CK(clk), .Q(car_side_lt_reg[1]), 
        .QN(n208) );
  DFFSX1 state_reg_2_ ( .D(n197), .CK(clk), .SN(rst_n), .Q(n199) );
  DFFSX1 state_reg_1_ ( .D(n196), .CK(clk), .SN(rst_n), .Q(n201), .QN(state[1]) );
  DFFSX1 state_reg_0_ ( .D(n198), .CK(clk), .SN(rst_n), .Q(n207), .QN(state[0]) );
  DFFSX1 state_reg_3_ ( .D(n195), .CK(clk), .SN(rst_n), .Q(n200), .QN(state[3]) );
  DFFSX1 t1_count_reg_1_ ( .D(n194), .CK(clk), .SN(rst_n), .QN(t1_count[1]) );
  DFFSX1 t1_count_reg_0_ ( .D(n193), .CK(clk), .SN(rst_n), .QN(t1_count[0]) );
  DFFRHQXL light_side_reg_1_ ( .D(n112), .CK(clk), .RN(rst_n), .Q(
        light_side[1]) );
  DFFSHQXL light_main_reg_1_ ( .D(n113), .CK(clk), .SN(rst_n), .Q(
        light_main[1]) );
  DFFRHQXL light_side_reg_0_ ( .D(light_side_nxt_0_), .CK(clk), .RN(rst_n), 
        .Q(light_side[0]) );
  DFFRHQXL out_valid_reg ( .D(n111), .CK(clk), .RN(rst_n), .Q(out_valid) );
  DFFRHQXL light_main_reg_0_ ( .D(light_main_nxt_0_), .CK(clk), .RN(rst_n), 
        .Q(light_main[0]) );
  NOR2XL U120 ( .A(state[1]), .B(n162), .Y(n114) );
  NOR2XL U121 ( .A(car_main_s_reg), .B(n168), .Y(n142) );
  NOR2XL U122 ( .A(n177), .B(n141), .Y(n127) );
  NOR2XL U123 ( .A(n199), .B(state[3]), .Y(n135) );
  NOR2XL U124 ( .A(state[1]), .B(n173), .Y(n170) );
  NOR2XL U125 ( .A(state[1]), .B(n207), .Y(n172) );
  NOR2XL U126 ( .A(state[0]), .B(n150), .Y(n166) );
  NOR2XL U127 ( .A(t1_count[0]), .B(t1_count[1]), .Y(n182) );
  NOR2XL U128 ( .A(n201), .B(n173), .Y(light_main_nxt_0_) );
  NOR2X1 U129 ( .A(state[0]), .B(n122), .Y(n192) );
  NOR2X1 U130 ( .A(n121), .B(n177), .Y(n133) );
  NOR2X1 U131 ( .A(n162), .B(n201), .Y(light_side_nxt_0_) );
  OAI211XL U132 ( .A0(n131), .A1(n160), .B0(n130), .C0(n129), .Y(n151) );
  AOI2BB2XL U133 ( .B0(n135), .B1(n127), .A0N(n133), .A1N(n132), .Y(n131) );
  OAI21XL U134 ( .A0(light_side_nxt_0_), .A1(n128), .B0(state[0]), .Y(n129) );
  NAND4XL U135 ( .A(n192), .B(n125), .C(n124), .D(n123), .Y(n130) );
  NAND2XL U136 ( .A(n118), .B(n122), .Y(n156) );
  AOI22XL U137 ( .A0(n182), .A1(n117), .B0(n172), .B1(n200), .Y(n118) );
  OAI211XL U138 ( .A0(car_main_lt_reg[1]), .A1(n174), .B0(n116), .C0(n115), 
        .Y(n117) );
  NOR2X1 U139 ( .A(car_side_s_reg[0]), .B(car_side_s_reg[1]), .Y(n119) );
  NOR3XL U140 ( .A(car_side_lt_reg[2]), .B(car_side_lt_reg[1]), .C(
        car_side_lt_reg[0]), .Y(n120) );
  NOR4XL U141 ( .A(car_side_s[0]), .B(car_side_lt[2]), .C(car_side_lt[1]), .D(
        car_side_lt[0]), .Y(n124) );
  NOR4XL U142 ( .A(car_main_lt[0]), .B(car_main_lt[2]), .C(car_main_lt[1]), 
        .D(car_main_s[2]), .Y(n123) );
  NOR4XL U143 ( .A(car_side_s[2]), .B(car_side_s[1]), .C(car_main_s[1]), .D(
        car_main_s[0]), .Y(n125) );
  OAI2BB2XL U144 ( .B0(n136), .B1(n149), .A0N(n142), .A1N(n127), .Y(n128) );
  NOR2X1 U145 ( .A(car_main_lt_reg[0]), .B(car_main_lt_reg[1]), .Y(n140) );
  NOR2BXL U146 ( .AN(n119), .B(n120), .Y(n146) );
  NOR2X1 U147 ( .A(n160), .B(n132), .Y(n147) );
  NAND2XL U148 ( .A(n170), .B(in_valid), .Y(n122) );
  AOI2BB1XL U149 ( .A0N(n170), .A1N(n112), .B0(n169), .Y(n180) );
  NOR2X1 U150 ( .A(n207), .B(n168), .Y(n169) );
  NAND2XL U151 ( .A(light_side_nxt_0_), .B(n207), .Y(n181) );
  NAND2XL U152 ( .A(n135), .B(n172), .Y(n179) );
  OAI22XL U153 ( .A0(state[0]), .A1(n149), .B0(n148), .B1(n177), .Y(n157) );
  AOI211XL U154 ( .A0(n147), .A1(n146), .B0(n145), .C0(n144), .Y(n148) );
  OAI21XL U155 ( .A0(n138), .A1(n160), .B0(n137), .Y(n153) );
  AOI22XL U156 ( .A0(n135), .A1(n134), .B0(n161), .B1(n133), .Y(n138) );
  AOI31XL U157 ( .A0(state[0]), .A1(light_main_nxt_0_), .A2(n136), .B0(n112), 
        .Y(n137) );
  INVXL U158 ( .A(n170), .Y(n168) );
  INVXL U159 ( .A(n182), .Y(n177) );
  NAND2XL U160 ( .A(n201), .B(n207), .Y(n160) );
  INVXL U161 ( .A(n135), .Y(n162) );
  NAND2XL U162 ( .A(n200), .B(n199), .Y(n173) );
  NOR3XL U163 ( .A(n178), .B(n177), .C(n181), .Y(n186) );
  OAI211XL U164 ( .A0(n182), .A1(n181), .B0(n180), .C0(n179), .Y(n185) );
  NAND2XL U165 ( .A(n179), .B(n181), .Y(n112) );
  AOI2BB1XL U166 ( .A0N(t1_count[1]), .A1N(n154), .B0(t1_count[0]), .Y(n155)
         );
  OAI32XL U167 ( .A0(n153), .A1(n157), .A2(n152), .B0(n197), .B1(n156), .Y(
        n154) );
  AOI32XL U168 ( .A0(n198), .A1(n151), .A2(n150), .B0(n156), .B1(n195), .Y(
        n152) );
  OAI2BB2XL U169 ( .B0(n177), .B1(n158), .A0N(t1_count[0]), .A1N(t1_count[1]), 
        .Y(n159) );
  AOI32XL U170 ( .A0(n198), .A1(n157), .A2(n197), .B0(n156), .B1(n196), .Y(
        n158) );
  INVXL U171 ( .A(n156), .Y(n198) );
  INVXL U172 ( .A(n157), .Y(n196) );
  INVXL U173 ( .A(n153), .Y(n197) );
  OAI2BB1XL U174 ( .A0N(car_side_lt_reg[1]), .A1N(n185), .B0(n184), .Y(n102)
         );
  AOI22XL U175 ( .A0(car_side_lt[1]), .A1(n192), .B0(n186), .B1(n208), .Y(n184) );
  OAI211XL U176 ( .A0(car_main_lt[0]), .A1(car_main_lt[1]), .B0(n192), .C0(
        n164), .Y(n205) );
  OAI2BB1XL U177 ( .A0N(car_main_lt[0]), .A1N(car_main_lt[1]), .B0(
        car_main_lt[2]), .Y(n164) );
  OAI211XL U178 ( .A0(car_main_s[1]), .A1(car_main_s[0]), .B0(n192), .C0(
        car_main_s[2]), .Y(n203) );
  OAI211XL U179 ( .A0(car_side_s[1]), .A1(car_side_s[0]), .B0(n192), .C0(n167), 
        .Y(n210) );
  OAI2BB1XL U180 ( .A0N(car_side_s[1]), .A1N(car_side_s[0]), .B0(car_side_s[2]), .Y(n167) );
  OAI2BB1XL U181 ( .A0N(car_side_lt[0]), .A1N(n192), .B0(n183), .Y(n103) );
  OAI21XL U182 ( .A0(n186), .A1(n185), .B0(car_side_lt_reg[0]), .Y(n183) );
  OAI2BB1XL U183 ( .A0N(car_main_lt[2]), .A1N(n192), .B0(n176), .Y(n105) );
  OAI2BB1XL U184 ( .A0N(car_side_lt[2]), .A1N(n192), .B0(n187), .Y(n101) );
  AOI32XL U185 ( .A0(car_side_lt_reg[1]), .A1(car_side_lt_reg[2]), .A2(n186), 
        .B0(n185), .B1(car_side_lt_reg[2]), .Y(n187) );
  OAI2BB1XL U186 ( .A0N(car_side_s[2]), .A1N(n192), .B0(n191), .Y(n99) );
  OAI2BB1XL U187 ( .A0N(n190), .A1N(n189), .B0(car_side_s_reg[1]), .Y(n191) );
  INVXL U188 ( .A(n175), .Y(n165) );
  INVXL U189 ( .A(n151), .Y(n195) );
  INVXL U190 ( .A(light_main_nxt_0_), .Y(n150) );
  NAND2XL U191 ( .A(car_main_lt_reg[0]), .B(n166), .Y(n174) );
  INVXL U192 ( .A(n146), .Y(n139) );
  NAND2XL U193 ( .A(n199), .B(state[3]), .Y(n132) );
  AOI32XL U194 ( .A0(n140), .A1(n139), .A2(n114), .B0(n147), .B1(n139), .Y(
        n116) );
  AOI21XL U195 ( .A0(car_side_lt_reg[1]), .A1(car_side_lt_reg[0]), .B0(
        car_side_lt_reg[2]), .Y(n178) );
  NAND2BXL U196 ( .AN(n181), .B(n178), .Y(n115) );
  NAND2XL U197 ( .A(n120), .B(n119), .Y(n126) );
  INVXL U198 ( .A(n126), .Y(n121) );
  NAND2XL U199 ( .A(n121), .B(n140), .Y(n141) );
  NAND2XL U200 ( .A(n140), .B(n126), .Y(n136) );
  NAND2XL U201 ( .A(state[1]), .B(n200), .Y(n149) );
  NAND2XL U202 ( .A(n182), .B(n136), .Y(n134) );
  INVXL U203 ( .A(n132), .Y(n161) );
  AOI211XL U204 ( .A0(n140), .A1(n139), .B0(state[0]), .C0(n162), .Y(n145) );
  INVXL U205 ( .A(n179), .Y(n171) );
  NAND2XL U206 ( .A(n171), .B(car_side_s_reg[0]), .Y(n189) );
  NAND2XL U207 ( .A(n142), .B(n141), .Y(n143) );
  OAI22XL U208 ( .A0(car_side_s_reg[1]), .A1(n189), .B0(n207), .B1(n143), .Y(
        n144) );
  INVXL U209 ( .A(n155), .Y(n193) );
  INVXL U210 ( .A(n159), .Y(n194) );
  AOI22XL U211 ( .A0(n161), .A1(n201), .B0(n200), .B1(n160), .Y(n163) );
  NAND2XL U212 ( .A(n163), .B(n162), .Y(n111) );
  AOI32XL U213 ( .A0(state[0]), .A1(car_main_s_reg), .A2(n177), .B0(n168), 
        .B1(car_main_s_reg), .Y(n202) );
  AOI211XL U214 ( .A0(state[1]), .A1(n177), .B0(state[0]), .C0(n173), .Y(n175)
         );
  AOI32XL U215 ( .A0(n182), .A1(n204), .A2(n166), .B0(car_main_lt_reg[0]), 
        .B1(n165), .Y(n206) );
  OAI211XL U216 ( .A0(n179), .A1(n182), .B0(n181), .C0(n180), .Y(n188) );
  AOI32XL U217 ( .A0(n171), .A1(n209), .A2(n182), .B0(car_side_s_reg[0]), .B1(
        n188), .Y(n211) );
  OAI2BB2XL U218 ( .B0(state[0]), .B1(n173), .A0N(n172), .A1N(n199), .Y(n113)
         );
  OAI2BB1XL U219 ( .A0N(n175), .A1N(n174), .B0(car_main_lt_reg[1]), .Y(n176)
         );
  INVXL U220 ( .A(n188), .Y(n190) );
endmodule

