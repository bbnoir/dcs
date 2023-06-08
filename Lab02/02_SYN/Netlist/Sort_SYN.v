/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu Jun  1 21:06:33 2023
/////////////////////////////////////////////////////////////


module Sort ( in_num0, in_num1, in_num2, in_num3, in_num4, out_num );
  input [5:0] in_num0;
  input [5:0] in_num1;
  input [5:0] in_num2;
  input [5:0] in_num3;
  input [5:0] in_num4;
  output [5:0] out_num;
  wire   n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432;

  ADDFX1 U203 ( .A(n403), .B(n419), .CI(n418), .CO(n404) );
  NOR2XL U204 ( .A(n313), .B(n311), .Y(n312) );
  NOR2XL U205 ( .A(n399), .B(n312), .Y(n319) );
  INVXL U206 ( .A(in_num1[5]), .Y(n221) );
  NOR2XL U207 ( .A(n306), .B(in_num4[3]), .Y(n389) );
  MXI2XL U208 ( .A(n348), .B(n347), .S0(n360), .Y(n368) );
  AOI2BB2XL U209 ( .B0(n273), .B1(n349), .A0N(n272), .A1N(n282), .Y(n274) );
  OAI2BB1XL U210 ( .A0N(n218), .A1N(n217), .B0(n216), .Y(n219) );
  NAND2XL U211 ( .A(n345), .B(in_num2[5]), .Y(n378) );
  INVX1 U212 ( .A(n409), .Y(n414) );
  MXI2X1 U213 ( .A(n392), .B(n391), .S0(n410), .Y(n422) );
  INVX1 U214 ( .A(n330), .Y(n331) );
  NAND2XL U215 ( .A(n394), .B(n393), .Y(n317) );
  MXI2X1 U216 ( .A(n314), .B(n351), .S0(n360), .Y(n394) );
  INVX1 U217 ( .A(n357), .Y(n304) );
  MXI2X1 U218 ( .A(n298), .B(n297), .S0(n363), .Y(n305) );
  OAI2BB1X1 U219 ( .A0N(n276), .A1N(n275), .B0(n274), .Y(n277) );
  AOI21X1 U220 ( .A0(n232), .A1(n231), .B0(n230), .Y(n238) );
  MXI2X1 U221 ( .A(in_num2[3]), .B(n268), .S0(n267), .Y(n359) );
  MXI2X1 U222 ( .A(n268), .B(in_num2[3]), .S0(n267), .Y(n296) );
  MXI2X1 U223 ( .A(n256), .B(n255), .S0(n267), .Y(n350) );
  OAI21X2 U224 ( .A0(n224), .A1(n233), .B0(n223), .Y(n267) );
  NAND2X1 U225 ( .A(n222), .B(n234), .Y(n223) );
  OAI21X1 U226 ( .A0(in_num2[4]), .A1(n255), .B0(n219), .Y(n224) );
  INVX1 U227 ( .A(n271), .Y(n349) );
  NAND2X1 U228 ( .A(n209), .B(n208), .Y(n210) );
  INVX1 U229 ( .A(in_num2[2]), .Y(n263) );
  INVX1 U230 ( .A(in_num0[2]), .Y(n212) );
  INVX1 U231 ( .A(in_num0[5]), .Y(n220) );
  AOI2BB1X2 U232 ( .A0N(n432), .A1N(n431), .B0(n415), .Y(n428) );
  AOI222X1 U233 ( .A0(n432), .A1(n431), .B0(n430), .B1(n414), .C0(n413), .C1(
        n427), .Y(n415) );
  OAI21XL U234 ( .A0(n425), .A1(n424), .B0(n405), .Y(n407) );
  ADDFHX1 U235 ( .A(n422), .B(n421), .CI(n404), .CO(n405) );
  MXI2X1 U236 ( .A(n412), .B(n411), .S0(n410), .Y(n427) );
  OAI22X1 U237 ( .A0(n326), .A1(n325), .B0(n381), .B1(n382), .Y(n330) );
  MXI2X1 U238 ( .A(n324), .B(n323), .S0(n322), .Y(n381) );
  INVXL U239 ( .A(n411), .Y(n373) );
  OAI2BB2XL U240 ( .B0(n264), .B1(n365), .A0N(n291), .A1N(n355), .Y(n265) );
  MXI2X1 U241 ( .A(n263), .B(n262), .S0(n267), .Y(n355) );
  OAI21XL U242 ( .A0(n213), .A1(in_num2[1]), .B0(n257), .Y(n215) );
  INVXL U243 ( .A(n379), .Y(n375) );
  OAI2BB1XL U244 ( .A0N(n206), .A1N(n205), .B0(n204), .Y(n209) );
  NAND2X1 U245 ( .A(n234), .B(n233), .Y(n281) );
  NAND2X1 U246 ( .A(n254), .B(in_num2[5]), .Y(n283) );
  INVX1 U247 ( .A(n282), .Y(n345) );
  NAND2X1 U248 ( .A(n221), .B(n220), .Y(n254) );
  INVX2 U249 ( .A(in_num2[5]), .Y(n233) );
  NAND2XL U250 ( .A(n409), .B(n408), .Y(n413) );
  NAND2XL U251 ( .A(n424), .B(n425), .Y(n406) );
  INVX1 U252 ( .A(n408), .Y(n430) );
  MXI2X1 U253 ( .A(n395), .B(n394), .S0(n400), .Y(n421) );
  MXI2X1 U254 ( .A(n383), .B(n382), .S0(n400), .Y(n408) );
  MXI2X1 U255 ( .A(n389), .B(n388), .S0(n400), .Y(n424) );
  NAND2X2 U256 ( .A(n333), .B(n332), .Y(n400) );
  MXI2X1 U257 ( .A(n386), .B(n385), .S0(n410), .Y(n425) );
  OAI21X1 U258 ( .A0(n412), .A1(n373), .B0(n372), .Y(n374) );
  OAI2BB1XL U259 ( .A0N(n371), .A1N(n370), .B0(n369), .Y(n372) );
  OAI21XL U260 ( .A0(n335), .A1(n402), .B0(n317), .Y(n318) );
  INVX1 U261 ( .A(n368), .Y(n412) );
  MXI2X1 U262 ( .A(n321), .B(n346), .S0(n360), .Y(n382) );
  MXI2XL U263 ( .A(n308), .B(n307), .S0(n360), .Y(n399) );
  MXI2XL U264 ( .A(n362), .B(n361), .S0(n360), .Y(n396) );
  MXI2XL U265 ( .A(n357), .B(n356), .S0(n360), .Y(n384) );
  OAI22XL U266 ( .A0(n299), .A1(n352), .B0(n357), .B1(n305), .Y(n300) );
  INVXL U267 ( .A(n352), .Y(n314) );
  MXI2XL U268 ( .A(n340), .B(n341), .S0(n363), .Y(n337) );
  NOR2X1 U269 ( .A(n278), .B(n243), .Y(n245) );
  MXI2XL U270 ( .A(n354), .B(n355), .S0(n363), .Y(n352) );
  MXI2X1 U271 ( .A(n285), .B(n284), .S0(n294), .Y(n346) );
  AOI2BB2XL U272 ( .B0(n350), .B1(n271), .A0N(n270), .A1N(n359), .Y(n276) );
  OAI2BB1XL U273 ( .A0N(n359), .A1N(n270), .B0(n358), .Y(n275) );
  OAI2BB1XL U274 ( .A0N(in_num3[5]), .A1N(n236), .B0(n235), .Y(n237) );
  NOR2X1 U275 ( .A(n244), .B(in_num3[4]), .Y(n324) );
  OAI21XL U276 ( .A0(n260), .A1(n340), .B0(n364), .Y(n259) );
  AOI2BB2XL U277 ( .B0(n261), .B1(n263), .A0N(n228), .A1N(in_num2[3]), .Y(n218) );
  NAND2X1 U278 ( .A(n281), .B(in_num3[5]), .Y(n342) );
  NOR2X1 U279 ( .A(n281), .B(in_num3[5]), .Y(n250) );
  NAND2X1 U280 ( .A(n283), .B(n282), .Y(n343) );
  INVX1 U281 ( .A(n254), .Y(n234) );
  OAI211XL U282 ( .A0(n200), .A1(in_num0[1]), .B0(n199), .C0(n198), .Y(n206)
         );
  NAND2XL U283 ( .A(n212), .B(in_num1[2]), .Y(n198) );
  OAI21XL U284 ( .A0(n197), .A1(in_num1[1]), .B0(in_num1[0]), .Y(n199) );
  NAND2X1 U285 ( .A(in_num0[5]), .B(in_num1[5]), .Y(n282) );
  INVXL U286 ( .A(in_num1[2]), .Y(n211) );
  MXI2X1 U287 ( .A(n417), .B(n416), .S0(n428), .Y(out_num[0]) );
  OAI22X1 U288 ( .A0(n238), .A1(n237), .B0(n236), .B1(in_num3[5]), .Y(n294) );
  INVXL U289 ( .A(n281), .Y(n236) );
  AOI21XL U290 ( .A0(n278), .A1(in_num3[2]), .B0(n240), .Y(n316) );
  INVXL U291 ( .A(n261), .Y(n262) );
  INVXL U292 ( .A(in_num2[4]), .Y(n256) );
  INVXL U293 ( .A(n347), .Y(n321) );
  MXI2XL U294 ( .A(n293), .B(n292), .S0(n294), .Y(n351) );
  MXI2X1 U295 ( .A(in_num0[1]), .B(in_num1[1]), .S0(n269), .Y(n257) );
  MXI2XL U296 ( .A(n257), .B(n258), .S0(n267), .Y(n286) );
  INVXL U297 ( .A(n294), .Y(n278) );
  MXI2X1 U298 ( .A(n364), .B(n365), .S0(n363), .Y(n361) );
  OAI21X1 U299 ( .A0(in_num4[5]), .A1(n250), .B0(n249), .Y(n322) );
  OAI22XL U300 ( .A0(n248), .A1(n247), .B0(n323), .B1(n246), .Y(n249) );
  INVXL U301 ( .A(n358), .Y(n298) );
  MXI2XL U302 ( .A(n296), .B(n295), .S0(n294), .Y(n357) );
  INVXL U303 ( .A(in_num3[4]), .Y(n284) );
  INVXL U304 ( .A(n305), .Y(n356) );
  MXI2XL U305 ( .A(n353), .B(n352), .S0(n360), .Y(n392) );
  MXI2X1 U306 ( .A(in_num0[3]), .B(in_num1[3]), .S0(n269), .Y(n228) );
  MXI2XL U307 ( .A(in_num3[0]), .B(n239), .S0(n294), .Y(n252) );
  MXI2XL U308 ( .A(in_num3[1]), .B(n286), .S0(n294), .Y(n310) );
  OAI22XL U309 ( .A0(n245), .A1(in_num4[3]), .B0(in_num4[4]), .B1(n324), .Y(
        n247) );
  MXI2XL U310 ( .A(n253), .B(in_num2[0]), .S0(n267), .Y(n279) );
  MXI2XL U311 ( .A(in_num1[1]), .B(in_num0[1]), .S0(n269), .Y(n364) );
  INVXL U312 ( .A(n260), .Y(n365) );
  MXI2XL U313 ( .A(n288), .B(n287), .S0(n294), .Y(n362) );
  MXI2XL U314 ( .A(in_num1[3]), .B(in_num0[3]), .S0(n269), .Y(n358) );
  MXI2XL U315 ( .A(n365), .B(n364), .S0(n363), .Y(n397) );
  MXI2XL U316 ( .A(n316), .B(n315), .S0(n322), .Y(n393) );
  MXI2XL U317 ( .A(n355), .B(n354), .S0(n363), .Y(n390) );
  AOI21XL U318 ( .A0(n299), .A1(n352), .B0(n351), .Y(n301) );
  INVXL U319 ( .A(in_num0[1]), .Y(n197) );
  INVXL U320 ( .A(in_num2[1]), .Y(n258) );
  OAI211XL U321 ( .A0(n293), .A1(in_num3[2]), .B0(n227), .C0(n226), .Y(n232)
         );
  NAND2XL U322 ( .A(n225), .B(n286), .Y(n227) );
  NAND2XL U323 ( .A(n239), .B(n287), .Y(n226) );
  NAND2XL U324 ( .A(n279), .B(in_num3[1]), .Y(n225) );
  AOI22XL U325 ( .A0(n293), .A1(in_num3[2]), .B0(n296), .B1(in_num3[3]), .Y(
        n231) );
  OAI22XL U326 ( .A0(n296), .A1(in_num3[3]), .B0(n285), .B1(in_num3[4]), .Y(
        n230) );
  NAND2XL U327 ( .A(n285), .B(in_num3[4]), .Y(n235) );
  INVXL U328 ( .A(in_num1[4]), .Y(n207) );
  INVXL U329 ( .A(in_num1[1]), .Y(n200) );
  AOI22XL U330 ( .A0(in_num0[2]), .A1(n211), .B0(n201), .B1(in_num0[3]), .Y(
        n205) );
  INVXL U331 ( .A(in_num1[3]), .Y(n201) );
  AOI22XL U332 ( .A0(in_num1[3]), .A1(n203), .B0(n202), .B1(in_num1[4]), .Y(
        n204) );
  INVXL U333 ( .A(in_num0[3]), .Y(n203) );
  INVXL U334 ( .A(in_num0[4]), .Y(n202) );
  INVXL U335 ( .A(n340), .Y(n264) );
  OAI211XL U336 ( .A0(n261), .A1(n263), .B0(n215), .C0(n214), .Y(n217) );
  MXI2XL U337 ( .A(in_num0[0]), .B(in_num1[0]), .S0(n269), .Y(n213) );
  MXI2X1 U338 ( .A(n258), .B(n257), .S0(n267), .Y(n260) );
  INVXL U339 ( .A(in_num3[1]), .Y(n287) );
  MXI2X1 U340 ( .A(n212), .B(n211), .S0(n269), .Y(n261) );
  MXI2XL U341 ( .A(in_num1[2]), .B(in_num0[2]), .S0(n269), .Y(n291) );
  AOI2BB2XL U342 ( .B0(n316), .B1(in_num4[2]), .A0N(n242), .A1N(n241), .Y(n248) );
  AOI21XL U343 ( .A0(n252), .A1(in_num4[1]), .B0(n310), .Y(n241) );
  OAI22XL U344 ( .A0(in_num4[2]), .A1(n316), .B0(n252), .B1(in_num4[1]), .Y(
        n242) );
  INVXL U345 ( .A(n228), .Y(n268) );
  MXI2X1 U346 ( .A(in_num0[4]), .B(in_num1[4]), .S0(n269), .Y(n255) );
  MXI2XL U347 ( .A(in_num1[4]), .B(in_num0[4]), .S0(n269), .Y(n271) );
  INVXL U348 ( .A(in_num4[4]), .Y(n323) );
  MXI2X1 U349 ( .A(n229), .B(in_num2[4]), .S0(n267), .Y(n285) );
  INVXL U350 ( .A(n255), .Y(n229) );
  MXI2XL U351 ( .A(n261), .B(in_num2[2]), .S0(n267), .Y(n293) );
  MXI2XL U352 ( .A(n252), .B(n251), .S0(n322), .Y(n311) );
  OAI21X2 U353 ( .A0(in_num0[5]), .A1(n221), .B0(n210), .Y(n269) );
  AOI22XL U354 ( .A0(in_num0[5]), .A1(n221), .B0(n207), .B1(in_num0[4]), .Y(
        n208) );
  OAI22XL U355 ( .A0(n266), .A1(n265), .B0(n355), .B1(n291), .Y(n270) );
  INVXL U356 ( .A(n259), .Y(n266) );
  INVXL U357 ( .A(n350), .Y(n273) );
  MXI2XL U358 ( .A(n310), .B(n309), .S0(n322), .Y(n313) );
  AND2XL U359 ( .A(n382), .B(n381), .Y(n325) );
  OAI22X1 U360 ( .A0(n319), .A1(n318), .B0(n394), .B1(n393), .Y(n320) );
  OAI21XL U361 ( .A0(n361), .A1(n337), .B0(n290), .Y(n299) );
  NAND2XL U362 ( .A(n289), .B(n362), .Y(n290) );
  NAND2XL U363 ( .A(n361), .B(n337), .Y(n289) );
  INVXL U364 ( .A(n311), .Y(n335) );
  MXI2XL U365 ( .A(n280), .B(n279), .S0(n278), .Y(n336) );
  AOI2BB2XL U366 ( .B0(n384), .B1(n385), .A0N(n368), .A1N(n411), .Y(n369) );
  AOI2BB2XL U367 ( .B0(n392), .B1(n390), .A0N(n384), .A1N(n385), .Y(n371) );
  MXI2XL U368 ( .A(in_num1[0]), .B(in_num0[0]), .S0(n269), .Y(n340) );
  MXI2XL U369 ( .A(in_num2[0]), .B(n253), .S0(n267), .Y(n341) );
  INVXL U370 ( .A(n313), .Y(n402) );
  INVXL U371 ( .A(n362), .Y(n307) );
  INVXL U372 ( .A(n361), .Y(n308) );
  MXI2XL U373 ( .A(n359), .B(n358), .S0(n363), .Y(n385) );
  MXI2XL U374 ( .A(n350), .B(n349), .S0(n363), .Y(n411) );
  NAND2XL U375 ( .A(n344), .B(n343), .Y(n379) );
  INVXL U376 ( .A(n342), .Y(n344) );
  NAND2XL U377 ( .A(n327), .B(n342), .Y(n380) );
  MXI2XL U378 ( .A(n335), .B(n334), .S0(n400), .Y(n403) );
  MXI2XL U379 ( .A(n337), .B(n336), .S0(n360), .Y(n334) );
  MXI2XL U380 ( .A(n341), .B(n340), .S0(n363), .Y(n376) );
  MXI2XL U381 ( .A(n398), .B(n397), .S0(n410), .Y(n419) );
  MXI2XL U382 ( .A(n402), .B(n401), .S0(n400), .Y(n418) );
  INVXL U383 ( .A(n399), .Y(n401) );
  INVXL U384 ( .A(n384), .Y(n386) );
  NAND2XL U385 ( .A(n379), .B(n378), .Y(n432) );
  NAND2XL U386 ( .A(n380), .B(in_num4[5]), .Y(n431) );
  MXI2XL U387 ( .A(n377), .B(n376), .S0(n410), .Y(n416) );
  INVXL U388 ( .A(n403), .Y(n417) );
  MXI2XL U389 ( .A(n339), .B(n338), .S0(n360), .Y(n377) );
  MXI2X1 U390 ( .A(n420), .B(n419), .S0(n428), .Y(out_num[1]) );
  INVXL U391 ( .A(n418), .Y(n420) );
  MXI2X1 U392 ( .A(n423), .B(n422), .S0(n428), .Y(out_num[2]) );
  INVXL U393 ( .A(n421), .Y(n423) );
  MXI2X1 U394 ( .A(n426), .B(n425), .S0(n428), .Y(out_num[3]) );
  INVXL U395 ( .A(n424), .Y(n426) );
  MXI2X1 U396 ( .A(n430), .B(n429), .S0(n428), .Y(out_num[4]) );
  INVXL U397 ( .A(n427), .Y(n429) );
  INVXL U398 ( .A(n279), .Y(n239) );
  INVXL U399 ( .A(n283), .Y(n272) );
  OAI22X1 U400 ( .A0(n301), .A1(n300), .B0(n356), .B1(n304), .Y(n302) );
  INVXL U401 ( .A(n380), .Y(n328) );
  NAND2X1 U402 ( .A(n407), .B(n406), .Y(n409) );
  INVXL U403 ( .A(n213), .Y(n253) );
  NAND2XL U404 ( .A(n213), .B(in_num2[1]), .Y(n214) );
  AOI22XL U405 ( .A0(in_num2[4]), .A1(n255), .B0(n228), .B1(in_num2[3]), .Y(
        n216) );
  NAND2X1 U406 ( .A(n224), .B(n233), .Y(n222) );
  INVXL U407 ( .A(in_num4[0]), .Y(n251) );
  INVXL U408 ( .A(n293), .Y(n240) );
  INVXL U409 ( .A(n296), .Y(n243) );
  INVXL U410 ( .A(n285), .Y(n244) );
  INVXL U411 ( .A(n324), .Y(n246) );
  OAI21X2 U412 ( .A0(n345), .A1(n283), .B0(n277), .Y(n363) );
  INVXL U413 ( .A(in_num3[0]), .Y(n280) );
  MXI2X1 U414 ( .A(n349), .B(n350), .S0(n363), .Y(n347) );
  INVXL U415 ( .A(n286), .Y(n288) );
  INVXL U416 ( .A(n291), .Y(n354) );
  INVXL U417 ( .A(in_num3[2]), .Y(n292) );
  INVXL U418 ( .A(in_num3[3]), .Y(n295) );
  INVXL U419 ( .A(n359), .Y(n297) );
  AFHCONX2 U420 ( .A(n347), .B(n346), .CI(n302), .CON(n303) );
  AFHCONX2 U421 ( .A(n342), .B(n343), .CI(n303), .CON(n360) );
  INVXL U422 ( .A(in_num4[5]), .Y(n329) );
  MXI2X1 U423 ( .A(n305), .B(n304), .S0(n360), .Y(n387) );
  INVXL U424 ( .A(n322), .Y(n306) );
  INVXL U425 ( .A(in_num4[1]), .Y(n309) );
  INVXL U426 ( .A(in_num4[2]), .Y(n315) );
  AFHCONX2 U427 ( .A(n387), .B(n389), .CI(n320), .CON(n326) );
  INVXL U428 ( .A(n343), .Y(n327) );
  OAI2BB1X2 U429 ( .A0N(n329), .A1N(n330), .B0(n328), .Y(n333) );
  NAND2X1 U430 ( .A(n331), .B(in_num4[5]), .Y(n332) );
  INVXL U431 ( .A(n336), .Y(n339) );
  INVXL U432 ( .A(n337), .Y(n338) );
  INVXL U433 ( .A(n346), .Y(n348) );
  INVXL U434 ( .A(n351), .Y(n353) );
  OAI21XL U435 ( .A0(n396), .A1(n376), .B0(n397), .Y(n367) );
  NAND2XL U436 ( .A(n396), .B(n376), .Y(n366) );
  OAI211XL U437 ( .A0(n392), .A1(n390), .B0(n367), .C0(n366), .Y(n370) );
  AFHCONX2 U438 ( .A(n375), .B(n378), .CI(n374), .CON(n410) );
  INVXL U439 ( .A(n381), .Y(n383) );
  INVXL U440 ( .A(n387), .Y(n388) );
  INVXL U441 ( .A(n390), .Y(n391) );
  INVXL U442 ( .A(n393), .Y(n395) );
  INVXL U443 ( .A(n396), .Y(n398) );
  NAND2BXL U444 ( .AN(n432), .B(n431), .Y(out_num[5]) );
endmodule

