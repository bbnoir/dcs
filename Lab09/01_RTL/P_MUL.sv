module P_MUL(
    // input signals
	in_1,
	in_2,
	in_3,
	in_4,
	in_valid,
	rst_n,
	clk,
	
    // output signals
    out_valid,
	out
);

//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION                         
//---------------------------------------------------------------------
input [46:0] in_1, in_2;
input [46:0] in_3, in_4;
input in_valid, rst_n, clk;
output logic out_valid;
output logic [95:0] out;

//---------------------------------------------------------------------
//   LOGIC DECLARATION
//---------------------------------------------------------------------

logic [46:0] in_1_reg, in_2_reg, in_3_reg, in_4_reg;
logic [46:0] in_1_nxt, in_2_nxt, in_3_nxt, in_4_nxt;
logic [47:0] A_reg, B_reg;
logic [47:0] A_nxt, B_nxt;
logic [31:0] P1_reg, P2_reg, P3_reg, P4_reg, P5_reg, P6_reg, P7_reg, P8_reg, P9_reg;
logic [31:0] P1_nxt, P2_nxt, P3_nxt, P4_nxt, P5_nxt, P6_nxt, P7_nxt, P8_nxt, P9_nxt;
logic [95:0] S1, S2, S3, S4, S5, S6, S7, S8, S9;
logic [95:0] out_nxt;
logic out_valid_reg_1, out_valid_reg_2, out_valid_reg_3, out_valid_reg_4;
logic out_valid_nxt_1, out_valid_nxt_2, out_valid_nxt_3, out_valid_nxt_4;

//---------------------------------------------------------------------
//   Your design                        
//---------------------------------------------------------------------

always_comb begin : INREG
  if(in_valid) {in_1_nxt, in_2_nxt, in_3_nxt, in_4_nxt} = {in_1, in_2, in_3, in_4};
  else {in_1_nxt, in_2_nxt, in_3_nxt, in_4_nxt} = 0;
end

// assign {in_1_nxt, in_2_nxt, in_3_nxt, in_4_nxt} = {in_1, in_2, in_3, in_4};

assign A_nxt = in_1_reg + in_2_reg;
assign B_nxt = in_3_reg + in_4_reg;

assign P1_nxt = A_reg[15:0] * B_reg[15:0];
assign P2_nxt = A_reg[15:0] * B_reg[31:16];
assign P3_nxt = A_reg[31:16] * B_reg[15:0];
assign P4_nxt = A_reg[31:16] * B_reg[31:16];
assign P5_nxt = A_reg[47:32] * B_reg[15:0];
assign P6_nxt = A_reg[15:0] * B_reg[47:32];
assign P7_nxt = A_reg[47:32] * B_reg[31:16];
assign P8_nxt = A_reg[31:16] * B_reg[47:32];
assign P9_nxt = A_reg[47:32] * B_reg[47:32];

assign S1 = P1_reg;
assign S2 = P2_reg << 16;
assign S3 = P3_reg << 16;
assign S4 = P4_reg << 32;
assign S5 = P5_reg << 32;
assign S6 = P6_reg << 32;
assign S7 = P7_reg << 48;
assign S8 = P8_reg << 48;
assign S9 = P9_reg << 64;

assign out_nxt = S1 + S2 + S3 + S4 + S5 + S6 + S7 + S8 + S9;

always_comb begin : OUTVALID
  out_valid_nxt_1 = in_valid;
  out_valid_nxt_2 = out_valid_reg_1;
  out_valid_nxt_3 = out_valid_reg_2;
  out_valid_nxt_4 = out_valid_reg_3;
end

assign out_valid = out_valid_reg_4;

always_ff @( negedge rst_n, posedge clk ) begin
  if(!rst_n) begin
    {in_1_reg, in_2_reg, in_3_reg, in_4_reg} <= 0;
    {A_reg, B_reg} <= 0;
    {P1_reg, P2_reg, P3_reg, P4_reg, P5_reg, P6_reg, P7_reg, P8_reg, P9_reg} <= 0;
    out <= 0;
    {out_valid_reg_1, out_valid_reg_2, out_valid_reg_3, out_valid_reg_4} <= 0;
  end
  else begin
    {in_1_reg, in_2_reg, in_3_reg, in_4_reg} <= {in_1_nxt, in_2_nxt, in_3_nxt, in_4_nxt};
    {A_reg, B_reg} <= {A_nxt, B_nxt};
    {P1_reg, P2_reg, P3_reg, P4_reg, P5_reg, P6_reg, P7_reg, P8_reg, P9_reg} <= {P1_nxt, P2_nxt, P3_nxt, P4_nxt, P5_nxt, P6_nxt, P7_nxt, P8_nxt, P9_nxt};
    out <= out_nxt;
    {out_valid_reg_1, out_valid_reg_2, out_valid_reg_3, out_valid_reg_4} <= {out_valid_nxt_1, out_valid_nxt_2, out_valid_nxt_3, out_valid_nxt_4};
  end
end


endmodule