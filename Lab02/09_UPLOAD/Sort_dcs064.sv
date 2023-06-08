module Sort(
    // Input signals
	in_num0,
	in_num1,
	in_num2,
	in_num3,
	in_num4,
    // Output signals
	out_num
);

//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION
//---------------------------------------------------------------------
input  [5:0] in_num0, in_num1, in_num2, in_num3, in_num4;
output logic [5:0] out_num;

//---------------------------------------------------------------------
//   LOGIC DECLARATION
//---------------------------------------------------------------------
    logic [5:0] sorted_n0;
    logic [5:0] sorted_n1;
    logic [5:0] sorted_n2;
    logic [5:0] sorted_n3;
    logic [5:0] sorted_n4;


//---------------------------------------------------------------------
//   Your design
//---------------------------------------------------------------------
    sorter s1(
        in_num0,
        in_num1,
        in_num2,
        in_num3,
        in_num4,
        sorted_n0,
        sorted_n1,
        sorted_n2,
        sorted_n3,
        sorted_n4
    );
    assign out_num = sorted_n2;
endmodule

module sorter (
    input [5:0] in_num0,
    input [5:0] in_num1,
    input [5:0] in_num2,
    input [5:0] in_num3,
    input [5:0] in_num4,
    output [5:0] num0,
    output [5:0] num1,
    output [5:0] num2,
    output [5:0] num3,
    output [5:0] num4
);
    logic [5:0]w[15];
    comp c1(in_num0, in_num1, w[0], w[1]);
    comp c2(in_num2, in_num3, w[2], w[3]);
    comp c3(w[1], w[2], w[4], w[5]);
    comp c4(w[3], in_num4, w[6], w[7]);
    comp c5(w[0], w[4], w[8], w[9]);
    comp c6(w[5], w[6], w[10], w[11]);
    comp c7(w[9], w[10], w[12], w[13]);
    comp c8(w[11], w[7], w[14], num4);
    comp c9(w[8], w[12], num0, num1);
    comp c10(w[13], w[14], num2, num3);
endmodule

module comp(
    input [5:0] a,
    input [5:0] b,
    output [5:0] out1,
    output [5:0] out2
);
    assign {out1, out2} = (a > b) ? {b,a}:{a,b};
endmodule
