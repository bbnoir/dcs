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
logic [5:0] sort_num [4:0];

//---------------------------------------------------------------------
//   Your design
//---------------------------------------------------------------------
always_comb begin
    sort_num[0] = in_num0;
    sort_num[1] = in_num1;
    sort_num[2] = in_num2;
    sort_num[3] = in_num3;
    sort_num[4] = in_num4;
    //bubble sort using ^ swap
    for (int i = 0; i < 5; i++) begin
        for (int j = 0; j < 5 - i - 1; j++) begin
            if (sort_num[j] > sort_num[j + 1]) begin
                sort_num[j] = sort_num[j] ^ sort_num[j + 1];
                sort_num[j + 1] = sort_num[j] ^ sort_num[j + 1];
                sort_num[j] = sort_num[j] ^ sort_num[j + 1];
            end
        end
    end
end

assign out_num = sort_num[2];
endmodule
