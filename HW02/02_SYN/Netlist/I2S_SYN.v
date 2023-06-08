/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : R-2020.09
// Date      : Thu Mar 30 12:39:48 2023
/////////////////////////////////////////////////////////////


module I2S ( clk, rst_n, in_valid, SD, WS, out_valid, out_left, out_right );
  output [31:0] out_left;
  output [31:0] out_right;
  input clk, rst_n, in_valid, SD, WS;
  output out_valid;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62;
  wire   [2:0] state;
  wire   [2:0] state_nxt;
  wire   [32:0] data;

  DFFRHQX1 state_reg_0_ ( .D(state_nxt[0]), .CK(clk), .RN(rst_n), .Q(state[0])
         );
  DFFRHQX1 state_reg_2_ ( .D(state_nxt[2]), .CK(clk), .RN(rst_n), .Q(state[2])
         );
  DFFRHQX1 state_reg_1_ ( .D(state_nxt[1]), .CK(clk), .RN(rst_n), .Q(state[1])
         );
  DFFTRX1 data_reg_32_ ( .D(data[31]), .RN(n31), .CK(clk), .Q(data[32]) );
  DFFTRX1 data_reg_31_ ( .D(data[30]), .RN(n31), .CK(clk), .Q(data[31]), .QN(
        n62) );
  DFFTRX1 data_reg_30_ ( .D(data[29]), .RN(n31), .CK(clk), .Q(data[30]), .QN(
        n61) );
  DFFTRX1 data_reg_29_ ( .D(data[28]), .RN(n31), .CK(clk), .Q(data[29]), .QN(
        n60) );
  DFFTRX1 data_reg_28_ ( .D(data[27]), .RN(n31), .CK(clk), .Q(data[28]), .QN(
        n59) );
  DFFTRX1 data_reg_27_ ( .D(data[26]), .RN(n31), .CK(clk), .Q(data[27]), .QN(
        n58) );
  DFFTRX1 data_reg_26_ ( .D(data[25]), .RN(n31), .CK(clk), .Q(data[26]), .QN(
        n57) );
  DFFTRX1 data_reg_25_ ( .D(data[24]), .RN(n31), .CK(clk), .Q(data[25]), .QN(
        n56) );
  DFFTRX1 data_reg_24_ ( .D(data[23]), .RN(n31), .CK(clk), .Q(data[24]), .QN(
        n55) );
  DFFTRX1 data_reg_23_ ( .D(data[22]), .RN(n31), .CK(clk), .Q(data[23]), .QN(
        n54) );
  DFFTRX1 data_reg_22_ ( .D(data[21]), .RN(n31), .CK(clk), .Q(data[22]), .QN(
        n53) );
  DFFTRX1 data_reg_21_ ( .D(data[20]), .RN(n31), .CK(clk), .Q(data[21]), .QN(
        n52) );
  DFFTRX1 data_reg_20_ ( .D(data[19]), .RN(n31), .CK(clk), .Q(data[20]), .QN(
        n51) );
  DFFTRX1 data_reg_19_ ( .D(data[18]), .RN(n31), .CK(clk), .Q(data[19]), .QN(
        n50) );
  DFFTRX1 data_reg_18_ ( .D(data[17]), .RN(n31), .CK(clk), .Q(data[18]), .QN(
        n49) );
  DFFTRX1 data_reg_17_ ( .D(data[16]), .RN(n31), .CK(clk), .Q(data[17]), .QN(
        n48) );
  DFFTRX1 data_reg_16_ ( .D(data[15]), .RN(n31), .CK(clk), .Q(data[16]), .QN(
        n47) );
  DFFTRX1 data_reg_15_ ( .D(data[14]), .RN(n31), .CK(clk), .Q(data[15]), .QN(
        n46) );
  DFFTRX1 data_reg_14_ ( .D(data[13]), .RN(n31), .CK(clk), .Q(data[14]), .QN(
        n45) );
  DFFTRX1 data_reg_13_ ( .D(data[12]), .RN(n31), .CK(clk), .Q(data[13]), .QN(
        n44) );
  DFFTRX1 data_reg_12_ ( .D(data[11]), .RN(n31), .CK(clk), .Q(data[12]), .QN(
        n43) );
  DFFTRX1 data_reg_11_ ( .D(data[10]), .RN(n31), .CK(clk), .Q(data[11]), .QN(
        n42) );
  DFFTRX1 data_reg_10_ ( .D(data[9]), .RN(n31), .CK(clk), .Q(data[10]), .QN(
        n41) );
  DFFTRX1 data_reg_9_ ( .D(data[8]), .RN(n31), .CK(clk), .Q(data[9]), .QN(n40)
         );
  DFFTRX1 data_reg_8_ ( .D(data[7]), .RN(n31), .CK(clk), .Q(data[8]), .QN(n39)
         );
  DFFTRX1 data_reg_7_ ( .D(data[6]), .RN(n31), .CK(clk), .Q(data[7]), .QN(n38)
         );
  DFFTRX1 data_reg_6_ ( .D(data[5]), .RN(n31), .CK(clk), .Q(data[6]), .QN(n37)
         );
  DFFTRX1 data_reg_5_ ( .D(data[4]), .RN(n31), .CK(clk), .Q(data[5]), .QN(n36)
         );
  DFFTRX1 data_reg_4_ ( .D(data[3]), .RN(n31), .CK(clk), .Q(data[4]), .QN(n35)
         );
  DFFTRX1 data_reg_3_ ( .D(data[2]), .RN(n31), .CK(clk), .Q(data[3]), .QN(n34)
         );
  DFFTRX1 data_reg_2_ ( .D(data[1]), .RN(n31), .CK(clk), .Q(data[2]), .QN(n33)
         );
  DFFTRX1 data_reg_1_ ( .D(data[0]), .RN(n30), .CK(clk), .Q(data[1]), .QN(n32)
         );
  DFFTRX1 data_reg_0_ ( .D(SD), .RN(n30), .CK(clk), .Q(data[0]) );
  OAI2BB1XL U121 ( .A0N(n19), .A1N(n22), .B0(n20), .Y(n26) );
  NOR2X1 U122 ( .A(WS), .B(n22), .Y(n27) );
  NAND2XL U123 ( .A(n18), .B(n19), .Y(n25) );
  INVXL U124 ( .A(in_valid), .Y(n22) );
  NAND2XL U125 ( .A(n29), .B(n28), .Y(out_valid) );
  OR2XL U126 ( .A(n31), .B(out_valid), .Y(n30) );
  NAND2X1 U127 ( .A(n25), .B(n26), .Y(n31) );
  OAI211XL U128 ( .A0(n27), .A1(n26), .B0(n25), .C0(n24), .Y(state_nxt[1]) );
  NAND2XL U129 ( .A(n23), .B(in_valid), .Y(n24) );
  AOI21XL U130 ( .A0(in_valid), .A1(WS), .B0(n25), .Y(state_nxt[2]) );
  OAI21XL U131 ( .A0(n28), .A1(n22), .B0(n21), .Y(state_nxt[0]) );
  OAI21XL U132 ( .A0(state[0]), .A1(n27), .B0(n20), .Y(n21) );
  NOR2BX1 U133 ( .AN(state[1]), .B(state[2]), .Y(n18) );
  INVXL U134 ( .A(state[0]), .Y(n19) );
  NOR2XL U135 ( .A(state[2]), .B(state[1]), .Y(n20) );
  NAND2X2 U136 ( .A(n18), .B(state[0]), .Y(n29) );
  INVXL U137 ( .A(n29), .Y(n23) );
  AND2X1 U138 ( .A(n23), .B(data[32]), .Y(out_left[31]) );
  NAND3X2 U139 ( .A(state[1]), .B(state[2]), .C(n19), .Y(n28) );
  NOR2X1 U140 ( .A(n28), .B(n32), .Y(out_right[0]) );
  NOR2X1 U141 ( .A(n28), .B(n33), .Y(out_right[1]) );
  NOR2X1 U142 ( .A(n28), .B(n34), .Y(out_right[2]) );
  NOR2X1 U143 ( .A(n28), .B(n35), .Y(out_right[3]) );
  NOR2X1 U144 ( .A(n28), .B(n36), .Y(out_right[4]) );
  NOR2X1 U145 ( .A(n28), .B(n37), .Y(out_right[5]) );
  NOR2X1 U146 ( .A(n28), .B(n38), .Y(out_right[6]) );
  NOR2X1 U147 ( .A(n28), .B(n39), .Y(out_right[7]) );
  NOR2X1 U148 ( .A(n28), .B(n40), .Y(out_right[8]) );
  NOR2X1 U149 ( .A(n28), .B(n41), .Y(out_right[9]) );
  NOR2X1 U150 ( .A(n28), .B(n42), .Y(out_right[10]) );
  NOR2X1 U151 ( .A(n28), .B(n43), .Y(out_right[11]) );
  NOR2X1 U152 ( .A(n28), .B(n44), .Y(out_right[12]) );
  NOR2X1 U153 ( .A(n28), .B(n45), .Y(out_right[13]) );
  NOR2X1 U154 ( .A(n28), .B(n46), .Y(out_right[14]) );
  NOR2X1 U155 ( .A(n28), .B(n47), .Y(out_right[15]) );
  NOR2X1 U156 ( .A(n28), .B(n48), .Y(out_right[16]) );
  NOR2X1 U157 ( .A(n28), .B(n49), .Y(out_right[17]) );
  NOR2X1 U158 ( .A(n28), .B(n50), .Y(out_right[18]) );
  NOR2X1 U159 ( .A(n28), .B(n51), .Y(out_right[19]) );
  NOR2X1 U160 ( .A(n28), .B(n52), .Y(out_right[20]) );
  NOR2X1 U161 ( .A(n28), .B(n53), .Y(out_right[21]) );
  NOR2X1 U162 ( .A(n28), .B(n54), .Y(out_right[22]) );
  NOR2X1 U163 ( .A(n28), .B(n55), .Y(out_right[23]) );
  NOR2X1 U164 ( .A(n28), .B(n56), .Y(out_right[24]) );
  NOR2X1 U165 ( .A(n28), .B(n57), .Y(out_right[25]) );
  NOR2X1 U166 ( .A(n28), .B(n58), .Y(out_right[26]) );
  NOR2X1 U167 ( .A(n28), .B(n59), .Y(out_right[27]) );
  NOR2X1 U168 ( .A(n28), .B(n60), .Y(out_right[28]) );
  NOR2X1 U169 ( .A(n28), .B(n61), .Y(out_right[29]) );
  NOR2X1 U170 ( .A(n28), .B(n62), .Y(out_right[30]) );
  NOR2BX1 U171 ( .AN(data[32]), .B(n28), .Y(out_right[31]) );
  NOR2X1 U172 ( .A(n29), .B(n32), .Y(out_left[0]) );
  NOR2X1 U173 ( .A(n29), .B(n33), .Y(out_left[1]) );
  NOR2X1 U174 ( .A(n29), .B(n34), .Y(out_left[2]) );
  NOR2X1 U175 ( .A(n29), .B(n35), .Y(out_left[3]) );
  NOR2X1 U176 ( .A(n29), .B(n36), .Y(out_left[4]) );
  NOR2X1 U177 ( .A(n29), .B(n37), .Y(out_left[5]) );
  NOR2X1 U178 ( .A(n29), .B(n38), .Y(out_left[6]) );
  NOR2X1 U179 ( .A(n29), .B(n39), .Y(out_left[7]) );
  NOR2X1 U180 ( .A(n29), .B(n40), .Y(out_left[8]) );
  NOR2X1 U181 ( .A(n29), .B(n41), .Y(out_left[9]) );
  NOR2X1 U182 ( .A(n29), .B(n42), .Y(out_left[10]) );
  NOR2X1 U183 ( .A(n29), .B(n43), .Y(out_left[11]) );
  NOR2X1 U184 ( .A(n29), .B(n44), .Y(out_left[12]) );
  NOR2X1 U185 ( .A(n29), .B(n45), .Y(out_left[13]) );
  NOR2X1 U186 ( .A(n29), .B(n46), .Y(out_left[14]) );
  NOR2X1 U187 ( .A(n29), .B(n47), .Y(out_left[15]) );
  NOR2X1 U188 ( .A(n29), .B(n48), .Y(out_left[16]) );
  NOR2X1 U189 ( .A(n29), .B(n49), .Y(out_left[17]) );
  NOR2X1 U190 ( .A(n29), .B(n50), .Y(out_left[18]) );
  NOR2X1 U191 ( .A(n29), .B(n51), .Y(out_left[19]) );
  NOR2X1 U192 ( .A(n29), .B(n52), .Y(out_left[20]) );
  NOR2X1 U193 ( .A(n29), .B(n53), .Y(out_left[21]) );
  NOR2X1 U194 ( .A(n29), .B(n54), .Y(out_left[22]) );
  NOR2X1 U195 ( .A(n29), .B(n55), .Y(out_left[23]) );
  NOR2X1 U196 ( .A(n29), .B(n56), .Y(out_left[24]) );
  NOR2X1 U197 ( .A(n29), .B(n57), .Y(out_left[25]) );
  NOR2X1 U198 ( .A(n29), .B(n58), .Y(out_left[26]) );
  NOR2X1 U199 ( .A(n29), .B(n59), .Y(out_left[27]) );
  NOR2X1 U200 ( .A(n29), .B(n60), .Y(out_left[28]) );
  NOR2X1 U201 ( .A(n29), .B(n61), .Y(out_left[29]) );
  NOR2X1 U202 ( .A(n29), .B(n62), .Y(out_left[30]) );
endmodule

