module SMJ(
    // Input signals
    hand_n0,
    hand_n1,
    hand_n2,
    hand_n3,
    hand_n4,
    // Output signals
    out_data
);
//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION
//---------------------------------------------------------------------
input [5:0] hand_n0;
input [5:0] hand_n1;
input [5:0] hand_n2;
input [5:0] hand_n3;
input [5:0] hand_n4;
output logic [1:0] out_data;

//---------------------------------------------------------------------
//   LOGIC DECLARATION
//---------------------------------------------------------------------
    logic [5:0] sorted_n0;
    logic [5:0] sorted_n1;
    logic [5:0] sorted_n2;
    logic [5:0] sorted_n3;
    logic [5:0] sorted_n4;
    logic pair01, pair12, pair23, pair34;
    logic trip012, trip234;
    logic seq012, seq234, seq014;

    parameter HONOR = 2'b00;
    parameter NOWINNING = 2'b00;
    parameter IMPOSSIBLE = 2'b01;
    parameter PAIR_SEQ = 2'b10;
    parameter PAIR_TRI = 2'b11;

//---------------------------------------------------------------------
//   Your design
//---------------------------------------------------------------------
    sorter s1(
        hand_n0,
        hand_n1,
        hand_n2,
        hand_n3,
        hand_n4,
        sorted_n0,
        sorted_n1,
        sorted_n2,
        sorted_n3,
        sorted_n4
    );

    always_comb begin : comb
        pair01 = sorted_n0 == sorted_n1;
        pair12 = sorted_n1 == sorted_n2;
        pair23 = sorted_n2 == sorted_n3;
        pair34 = sorted_n3 == sorted_n4;
        trip012 = pair01 && pair12;
        trip234 = pair23 && pair34;
        seq012 = sorted_n0[5:4] != HONOR && sorted_n0+1 == sorted_n1 && sorted_n1+1 == sorted_n2;
        seq234 = sorted_n2[5:4] != HONOR && sorted_n2+1 == sorted_n3 && sorted_n3+1 == sorted_n4;
        seq014 = sorted_n0[5:4] != HONOR && sorted_n0+1 == sorted_n1 && sorted_n1+1 == sorted_n4;

        out_data = NOWINNING;
        if(
        (sorted_n0[3:0] > 8) ||
        (sorted_n1[3:0] > 8) ||
        (sorted_n2[3:0] > 8) ||
        (sorted_n3[3:0] > 8) ||
        (sorted_n4[3:0] > 8) ||
        (sorted_n0[5:4] == HONOR && sorted_n0[3:0] > 6) ||
        (sorted_n1[5:4] == HONOR && sorted_n1[3:0] > 6) ||
        (sorted_n2[5:4] == HONOR && sorted_n2[3:0] > 6) ||
        (sorted_n3[5:4] == HONOR && sorted_n3[3:0] > 6) ||
        (sorted_n4[5:4] == HONOR && sorted_n4[3:0] > 6) ||
        (trip012 && trip234)) out_data = IMPOSSIBLE;
        else begin
            if (pair01) begin
                if(trip234) out_data = PAIR_TRI;
                else if(seq234) out_data = PAIR_SEQ;
            end
            if (pair34) begin
                if(trip012) out_data = PAIR_TRI;
                else if(seq012) out_data = PAIR_SEQ;
            end
            if(pair23 && seq014) out_data = PAIR_SEQ;
        end
    end
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
