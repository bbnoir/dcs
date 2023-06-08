module HE(
	// Input signals
	clk,
	rst_n,
	in_valid,
	in_image,
  // Output signals
	out_valid,
	out_image
);
//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION
//---------------------------------------------------------------------
input				clk,rst_n,in_valid;
input [7:0]			in_image;
output logic 		out_valid;
output logic [7:0]	out_image;

//---------------------------------------------------------------------
// PARAMETER DECLARATION
//---------------------------------------------------------------------
typedef enum logic [1:0] { IDLE, LOAD, OUT, CDF } STATE;

//---------------------------------------------------------------------
//   LOGIC DECLARATION
//---------------------------------------------------------------------
STATE state, state_nxt;
logic [7:0][7:0] image_reg, image_reg_nxt;
logic [7:0][9:0] cdf_reg, cdf_reg_nxt;
logic [7:0] out_image_nxt;
logic [9:0] cal_in;
logic [7:0] cal_out;
logic addedge;
logic t_load, t_done;
logic [9:0] t_in;

transform t1(.*);
Timer T1(.*);

always_ff @( posedge clk, negedge rst_n ) begin : LOGIC
	if( !rst_n ) out_image <= 0;
	else out_image <= out_image_nxt;
end

//---------------------------------------------------------------------
//   Finite-State Mechine
//---------------------------------------------------------------------
always_ff @( posedge clk, negedge rst_n ) begin : FSM
	if( !rst_n ) state <= IDLE;
	else state <= state_nxt;
end

always_comb begin : FSM_COMB
	out_valid= 0;
	out_image_nxt = 0;
  cdf_reg_nxt = 0;
  t_load = 0;
  t_in = 0;

	case (state)
		IDLE: begin
			if(in_valid) begin
				state_nxt = LOAD;
        t_in = 6;
        t_load = 1;
			end
      else begin
        state_nxt = IDLE;
      end
		end
		LOAD: begin
			if(!t_done) begin
				state_nxt = LOAD;
			end
			else begin
				state_nxt = CDF;
        t_in = 1023;
        t_load = 1;
			end
		end
		CDF: begin
			if(!t_done) begin
				state_nxt = CDF;
				if(in_image > image_reg[0]) cdf_reg_nxt[0] = cdf_reg[0]; else cdf_reg_nxt[0] = cdf_reg[0] + 1;
				if(in_image > image_reg[1]) cdf_reg_nxt[1] = cdf_reg[1]; else cdf_reg_nxt[1] = cdf_reg[1] + 1;
				if(in_image > image_reg[2]) cdf_reg_nxt[2] = cdf_reg[2]; else cdf_reg_nxt[2] = cdf_reg[2] + 1;
				if(in_image > image_reg[3]) cdf_reg_nxt[3] = cdf_reg[3]; else cdf_reg_nxt[3] = cdf_reg[3] + 1;
				if(in_image > image_reg[4]) cdf_reg_nxt[4] = cdf_reg[4]; else cdf_reg_nxt[4] = cdf_reg[4] + 1;
				if(in_image > image_reg[5]) cdf_reg_nxt[5] = cdf_reg[5]; else cdf_reg_nxt[5] = cdf_reg[5] + 1;
				if(in_image > image_reg[6]) cdf_reg_nxt[6] = cdf_reg[6]; else cdf_reg_nxt[6] = cdf_reg[6] + 1;
				if(in_image > image_reg[7]) cdf_reg_nxt[7] = cdf_reg[7]; else cdf_reg_nxt[7] = cdf_reg[7] + 1;
			end
			else begin
				state_nxt = OUT;
				if(in_image <= image_reg[7]) out_image_nxt = cal_out+addedge;
        else out_image_nxt = cal_out;

				if(&cdf_reg[0] || in_image > image_reg[0]) cdf_reg_nxt[1] = cdf_reg[0];
        else cdf_reg_nxt[1] = cdf_reg[0] + 1;
				if(&cdf_reg[1] || in_image > image_reg[1]) cdf_reg_nxt[2] = cdf_reg[1];
        else cdf_reg_nxt[2] = cdf_reg[1] + 1;
				if(&cdf_reg[2] || in_image > image_reg[2]) cdf_reg_nxt[3] = cdf_reg[2];
        else cdf_reg_nxt[3] = cdf_reg[2] + 1;
				if(&cdf_reg[3] || in_image > image_reg[3]) cdf_reg_nxt[4] = cdf_reg[3];
        else cdf_reg_nxt[4] = cdf_reg[3] + 1;
				if(&cdf_reg[4] || in_image > image_reg[4]) cdf_reg_nxt[5] = cdf_reg[4];
        else cdf_reg_nxt[5] = cdf_reg[4] + 1;
				if(&cdf_reg[5] || in_image > image_reg[5]) cdf_reg_nxt[6] = cdf_reg[5];
        else cdf_reg_nxt[6] = cdf_reg[5] + 1;
				if(&cdf_reg[6] || in_image > image_reg[6]) cdf_reg_nxt[7] = cdf_reg[6];
        else cdf_reg_nxt[7] = cdf_reg[6] + 1;


        t_in = 7;
        t_load = 1;
			end
		end
		OUT: begin
      out_valid= 1;
			if(!t_done) begin
				state_nxt = OUT;
				out_image_nxt = cal_out;
        cdf_reg_nxt[7:1] = cdf_reg[6:0];
			end
			else begin
        state_nxt = IDLE;
        cdf_reg_nxt = 0;
			end
		end
	endcase
end

always_comb begin : SHIFT
  image_reg_nxt = 0;
  case(state)
    IDLE: if(in_valid) image_reg_nxt[7] = in_image;
    LOAD: image_reg_nxt = {image_reg[7], image_reg[5:0], in_image};
    CDF: image_reg_nxt = image_reg;
  endcase
end

always_ff @( posedge clk) begin : COUNT
		image_reg <= image_reg_nxt;
		cdf_reg <= cdf_reg_nxt;
end

assign cal_in = cdf_reg[7];
always_comb begin : ADDEDGE
  case(cal_in)
    8, 13, 17, 21, 26, 30, 34, 39, 43, 48, 52, 56, 61, 65, 69, 74, 78, 82, 87, 91, 96, 100, 104, 109, 113, 117, 122, 126, 131, 135, 139, 144, 148, 152, 157, 161, 165, 170, 174, 179, 183, 187, 192, 196, 200, 205, 209, 214, 218, 222, 227, 231, 235, 240, 244, 248, 253, 257, 262, 266, 270, 275, 279, 283, 288, 292, 297, 301, 305, 310, 314, 318, 323, 327, 331, 336, 340, 345, 349, 353, 358, 362, 366, 371, 375, 380, 384, 388, 393, 397, 401, 406, 410, 414, 419, 423, 428, 432, 436, 441, 445, 449, 454, 458, 463, 467, 471, 476, 480, 484, 489, 493, 497, 502, 506, 511, 515, 519, 524, 528, 532, 537, 541, 546, 550, 554, 559, 563, 567, 572, 576, 580, 585, 589, 594, 598, 602, 607, 611, 615, 620, 624, 629, 633, 637, 642, 646, 650, 655, 659, 663, 668, 672, 677, 681, 685, 690, 694, 698, 703, 707, 712, 716, 720, 725, 729, 733, 738, 742, 746, 751, 755, 760, 764, 768, 773, 777, 781, 786, 790, 795, 799, 803, 808, 812, 816, 821, 825, 829, 834, 838, 843, 847, 851, 856, 860, 864, 869, 873, 878, 882, 886, 891, 895, 899, 904, 908, 912, 917, 921, 926, 930, 934, 939, 943, 947, 952, 956, 961, 965, 969, 974, 978, 982, 987, 991, 995, 1000, 1004, 1009, 1013, 1017, 1022: addedge = 1;
    default: addedge = 0;
  endcase
end

endmodule

module transform (
  cal_in,
  cal_out
);
  input [9:0] cal_in;
  output logic [7:0] cal_out;

always_comb begin : CALCULATION
  case(cal_in)
    9, 10, 11, 12, 13: cal_out = 1;
    14, 15, 16, 17: cal_out = 2;
    18, 19, 20, 21: cal_out = 3;
    22, 23, 24, 25, 26: cal_out = 4;
    27, 28, 29, 30: cal_out = 5;
    31, 32, 33, 34: cal_out = 6;
    35, 36, 37, 38, 39: cal_out = 7;
    40, 41, 42, 43: cal_out = 8;
    44, 45, 46, 47, 48: cal_out = 9;
    49, 50, 51, 52: cal_out = 10;
    53, 54, 55, 56: cal_out = 11;
    57, 58, 59, 60, 61: cal_out = 12;
    62, 63, 64, 65: cal_out = 13;
    66, 67, 68, 69: cal_out = 14;
    70, 71, 72, 73, 74: cal_out = 15;
    75, 76, 77, 78: cal_out = 16;
    79, 80, 81, 82: cal_out = 17;
    83, 84, 85, 86, 87: cal_out = 18;
    88, 89, 90, 91: cal_out = 19;
    92, 93, 94, 95, 96: cal_out = 20;
    97, 98, 99, 100: cal_out = 21;
    101, 102, 103, 104: cal_out = 22;
    105, 106, 107, 108, 109: cal_out = 23;
    110, 111, 112, 113: cal_out = 24;
    114, 115, 116, 117: cal_out = 25;
    118, 119, 120, 121, 122: cal_out = 26;
    123, 124, 125, 126: cal_out = 27;
    127, 128, 129, 130, 131: cal_out = 28;
    132, 133, 134, 135: cal_out = 29;
    136, 137, 138, 139: cal_out = 30;
    140, 141, 142, 143, 144: cal_out = 31;
    145, 146, 147, 148: cal_out = 32;
    149, 150, 151, 152: cal_out = 33;
    153, 154, 155, 156, 157: cal_out = 34;
    158, 159, 160, 161: cal_out = 35;
    162, 163, 164, 165: cal_out = 36;
    166, 167, 168, 169, 170: cal_out = 37;
    171, 172, 173, 174: cal_out = 38;
    175, 176, 177, 178, 179: cal_out = 39;
    180, 181, 182, 183: cal_out = 40;
    184, 185, 186, 187: cal_out = 41;
    188, 189, 190, 191, 192: cal_out = 42;
    193, 194, 195, 196: cal_out = 43;
    197, 198, 199, 200: cal_out = 44;
    201, 202, 203, 204, 205: cal_out = 45;
    206, 207, 208, 209: cal_out = 46;
    210, 211, 212, 213, 214: cal_out = 47;
    215, 216, 217, 218: cal_out = 48;
    219, 220, 221, 222: cal_out = 49;
    223, 224, 225, 226, 227: cal_out = 50;
    228, 229, 230, 231: cal_out = 51;
    232, 233, 234, 235: cal_out = 52;
    236, 237, 238, 239, 240: cal_out = 53;
    241, 242, 243, 244: cal_out = 54;
    245, 246, 247, 248: cal_out = 55;
    249, 250, 251, 252, 253: cal_out = 56;
    254, 255, 256, 257: cal_out = 57;
    258, 259, 260, 261, 262: cal_out = 58;
    263, 264, 265, 266: cal_out = 59;
    267, 268, 269, 270: cal_out = 60;
    271, 272, 273, 274, 275: cal_out = 61;
    276, 277, 278, 279: cal_out = 62;
    280, 281, 282, 283: cal_out = 63;
    284, 285, 286, 287, 288: cal_out = 64;
    289, 290, 291, 292: cal_out = 65;
    293, 294, 295, 296, 297: cal_out = 66;
    298, 299, 300, 301: cal_out = 67;
    302, 303, 304, 305: cal_out = 68;
    306, 307, 308, 309, 310: cal_out = 69;
    311, 312, 313, 314: cal_out = 70;
    315, 316, 317, 318: cal_out = 71;
    319, 320, 321, 322, 323: cal_out = 72;
    324, 325, 326, 327: cal_out = 73;
    328, 329, 330, 331: cal_out = 74;
    332, 333, 334, 335, 336: cal_out = 75;
    337, 338, 339, 340: cal_out = 76;
    341, 342, 343, 344, 345: cal_out = 77;
    346, 347, 348, 349: cal_out = 78;
    350, 351, 352, 353: cal_out = 79;
    354, 355, 356, 357, 358: cal_out = 80;
    359, 360, 361, 362: cal_out = 81;
    363, 364, 365, 366: cal_out = 82;
    367, 368, 369, 370, 371: cal_out = 83;
    372, 373, 374, 375: cal_out = 84;
    376, 377, 378, 379, 380: cal_out = 85;
    381, 382, 383, 384: cal_out = 86;
    385, 386, 387, 388: cal_out = 87;
    389, 390, 391, 392, 393: cal_out = 88;
    394, 395, 396, 397: cal_out = 89;
    398, 399, 400, 401: cal_out = 90;
    402, 403, 404, 405, 406: cal_out = 91;
    407, 408, 409, 410: cal_out = 92;
    411, 412, 413, 414: cal_out = 93;
    415, 416, 417, 418, 419: cal_out = 94;
    420, 421, 422, 423: cal_out = 95;
    424, 425, 426, 427, 428: cal_out = 96;
    429, 430, 431, 432: cal_out = 97;
    433, 434, 435, 436: cal_out = 98;
    437, 438, 439, 440, 441: cal_out = 99;
    442, 443, 444, 445: cal_out = 100;
    446, 447, 448, 449: cal_out = 101;
    450, 451, 452, 453, 454: cal_out = 102;
    455, 456, 457, 458: cal_out = 103;
    459, 460, 461, 462, 463: cal_out = 104;
    464, 465, 466, 467: cal_out = 105;
    468, 469, 470, 471: cal_out = 106;
    472, 473, 474, 475, 476: cal_out = 107;
    477, 478, 479, 480: cal_out = 108;
    481, 482, 483, 484: cal_out = 109;
    485, 486, 487, 488, 489: cal_out = 110;
    490, 491, 492, 493: cal_out = 111;
    494, 495, 496, 497: cal_out = 112;
    498, 499, 500, 501, 502: cal_out = 113;
    503, 504, 505, 506: cal_out = 114;
    507, 508, 509, 510, 511: cal_out = 115;
    512, 513, 514, 515: cal_out = 116;
    516, 517, 518, 519: cal_out = 117;
    520, 521, 522, 523, 524: cal_out = 118;
    525, 526, 527, 528: cal_out = 119;
    529, 530, 531, 532: cal_out = 120;
    533, 534, 535, 536, 537: cal_out = 121;
    538, 539, 540, 541: cal_out = 122;
    542, 543, 544, 545, 546: cal_out = 123;
    547, 548, 549, 550: cal_out = 124;
    551, 552, 553, 554: cal_out = 125;
    555, 556, 557, 558, 559: cal_out = 126;
    560, 561, 562, 563: cal_out = 127;
    564, 565, 566, 567: cal_out = 128;
    568, 569, 570, 571, 572: cal_out = 129;
    573, 574, 575, 576: cal_out = 130;
    577, 578, 579, 580: cal_out = 131;
    581, 582, 583, 584, 585: cal_out = 132;
    586, 587, 588, 589: cal_out = 133;
    590, 591, 592, 593, 594: cal_out = 134;
    595, 596, 597, 598: cal_out = 135;
    599, 600, 601, 602: cal_out = 136;
    603, 604, 605, 606, 607: cal_out = 137;
    608, 609, 610, 611: cal_out = 138;
    612, 613, 614, 615: cal_out = 139;
    616, 617, 618, 619, 620: cal_out = 140;
    621, 622, 623, 624: cal_out = 141;
    625, 626, 627, 628, 629: cal_out = 142;
    630, 631, 632, 633: cal_out = 143;
    634, 635, 636, 637: cal_out = 144;
    638, 639, 640, 641, 642: cal_out = 145;
    643, 644, 645, 646: cal_out = 146;
    647, 648, 649, 650: cal_out = 147;
    651, 652, 653, 654, 655: cal_out = 148;
    656, 657, 658, 659: cal_out = 149;
    660, 661, 662, 663: cal_out = 150;
    664, 665, 666, 667, 668: cal_out = 151;
    669, 670, 671, 672: cal_out = 152;
    673, 674, 675, 676, 677: cal_out = 153;
    678, 679, 680, 681: cal_out = 154;
    682, 683, 684, 685: cal_out = 155;
    686, 687, 688, 689, 690: cal_out = 156;
    691, 692, 693, 694: cal_out = 157;
    695, 696, 697, 698: cal_out = 158;
    699, 700, 701, 702, 703: cal_out = 159;
    704, 705, 706, 707: cal_out = 160;
    708, 709, 710, 711, 712: cal_out = 161;
    713, 714, 715, 716: cal_out = 162;
    717, 718, 719, 720: cal_out = 163;
    721, 722, 723, 724, 725: cal_out = 164;
    726, 727, 728, 729: cal_out = 165;
    730, 731, 732, 733: cal_out = 166;
    734, 735, 736, 737, 738: cal_out = 167;
    739, 740, 741, 742: cal_out = 168;
    743, 744, 745, 746: cal_out = 169;
    747, 748, 749, 750, 751: cal_out = 170;
    752, 753, 754, 755: cal_out = 171;
    756, 757, 758, 759, 760: cal_out = 172;
    761, 762, 763, 764: cal_out = 173;
    765, 766, 767, 768: cal_out = 174;
    769, 770, 771, 772, 773: cal_out = 175;
    774, 775, 776, 777: cal_out = 176;
    778, 779, 780, 781: cal_out = 177;
    782, 783, 784, 785, 786: cal_out = 178;
    787, 788, 789, 790: cal_out = 179;
    791, 792, 793, 794, 795: cal_out = 180;
    796, 797, 798, 799: cal_out = 181;
    800, 801, 802, 803: cal_out = 182;
    804, 805, 806, 807, 808: cal_out = 183;
    809, 810, 811, 812: cal_out = 184;
    813, 814, 815, 816: cal_out = 185;
    817, 818, 819, 820, 821: cal_out = 186;
    822, 823, 824, 825: cal_out = 187;
    826, 827, 828, 829: cal_out = 188;
    830, 831, 832, 833, 834: cal_out = 189;
    835, 836, 837, 838: cal_out = 190;
    839, 840, 841, 842, 843: cal_out = 191;
    844, 845, 846, 847: cal_out = 192;
    848, 849, 850, 851: cal_out = 193;
    852, 853, 854, 855, 856: cal_out = 194;
    857, 858, 859, 860: cal_out = 195;
    861, 862, 863, 864: cal_out = 196;
    865, 866, 867, 868, 869: cal_out = 197;
    870, 871, 872, 873: cal_out = 198;
    874, 875, 876, 877, 878: cal_out = 199;
    879, 880, 881, 882: cal_out = 200;
    883, 884, 885, 886: cal_out = 201;
    887, 888, 889, 890, 891: cal_out = 202;
    892, 893, 894, 895: cal_out = 203;
    896, 897, 898, 899: cal_out = 204;
    900, 901, 902, 903, 904: cal_out = 205;
    905, 906, 907, 908: cal_out = 206;
    909, 910, 911, 912: cal_out = 207;
    913, 914, 915, 916, 917: cal_out = 208;
    918, 919, 920, 921: cal_out = 209;
    922, 923, 924, 925, 926: cal_out = 210;
    927, 928, 929, 930: cal_out = 211;
    931, 932, 933, 934: cal_out = 212;
    935, 936, 937, 938, 939: cal_out = 213;
    940, 941, 942, 943: cal_out = 214;
    944, 945, 946, 947: cal_out = 215;
    948, 949, 950, 951, 952: cal_out = 216;
    953, 954, 955, 956: cal_out = 217;
    957, 958, 959, 960, 961: cal_out = 218;
    962, 963, 964, 965: cal_out = 219;
    966, 967, 968, 969: cal_out = 220;
    970, 971, 972, 973, 974: cal_out = 221;
    975, 976, 977, 978: cal_out = 222;
    979, 980, 981, 982: cal_out = 223;
    983, 984, 985, 986, 987: cal_out = 224;
    988, 989, 990, 991: cal_out = 225;
    992, 993, 994, 995: cal_out = 226;
    996, 997, 998, 999, 1000: cal_out = 227;
    1001, 1002, 1003, 1004: cal_out = 228;
    1005, 1006, 1007, 1008, 1009: cal_out = 229;
    1010, 1011, 1012, 1013: cal_out = 230;
    1014, 1015, 1016, 1017: cal_out = 231;
    1018, 1019, 1020, 1021, 1022: cal_out = 232;
    1023: cal_out = 233;
    default: cal_out = 0;
  endcase
end

endmodule

module Timer(clk, t_load, t_in, t_done);
input clk, t_load;
input [9:0] t_in;
output logic t_done;

logic [9:0] count, count_nxt;

always_ff @( posedge clk) begin
  count <= count_nxt;
end

always_comb begin
  if(t_load) count_nxt = t_in;
  else if(t_done) count_nxt = 0;
  else count_nxt = count-1'b1;
end

assign t_done = (count == 0);
endmodule
