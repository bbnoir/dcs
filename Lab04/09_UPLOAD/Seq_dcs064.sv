
module Seq(
	// Input signals
	clk,
	rst_n,
	in_valid,
	in_data,
	// Output signals
	out_valid,
	out_data
);

//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION
//---------------------------------------------------------------------
input clk, rst_n, in_valid;
input [3:0] in_data;
output logic out_valid;
output logic out_data;

//---------------------------------------------------------------------
//   REG AND WIRE DECLARATION
//---------------------------------------------------------------------
  logic out_data_nxt;
  logic [3:0] n0_reg;
  logic [3:0] n1_reg;
  logic [3:0] n2_reg;
  logic out_valid_nxt;
  logic [1:0] count, count_nxt;

//---------------------------------------------------------------------
//   YOUR DESIGN
//---------------------------------------------------------------------
//shift reg
  always_ff @( posedge clk, negedge rst_n) begin
		if(!rst_n) begin
			n0_reg <= 4'b0;
			n1_reg <= 4'b0;
			n2_reg <= 4'b0;
		end else begin
			n0_reg <= in_data;
			n1_reg <= n0_reg;
			n2_reg <= n1_reg;
		end
  end

  /*
  logic [11:0] num, num_nxt;
  always_comb begin
    num_nxt = {num[7:0], in_data};
  end

  always_ff @( posedge clk, negedge rst_n) begin : Count
    if(!rst_n) num <= 12'b0;
    else num <= num_nxt;
  end
  */

//out_data
  always_comb begin
    out_data_nxt = 1'd0;
    if(out_valid_nxt)
      //if(((n0_reg > n1_reg) && (n1_reg > n2_reg)) || ((n0_reg < n1_reg) && (n1_reg < n2_reg)) )
      if(((in_data > n0_reg) && (n0_reg > n1_reg)) || ((in_data < n0_reg) && (n0_reg < n1_reg)) )
        out_data_nxt = 1'b1;
  end

  always_ff @( posedge clk, negedge rst_n) begin : outData
    if(!rst_n) out_data <= 1'b0;
    else out_data <= out_data_nxt;
  end

//count
  always_comb begin
    count_nxt = count;
    if(in_valid &&  count < 2'b10) count_nxt = count+1;
    else if(!in_valid) count_nxt = 2'b00;
  end

  always_ff @( posedge clk, negedge rst_n) begin : Count
    if(!rst_n) count <= 2'b0;
    else count <= count_nxt;
  end

//out_valid
  always_comb begin
    out_valid_nxt = (count == 2'b10);
    if(!in_valid) out_valid_nxt = 1'b0;
  end

  always_ff @( posedge clk, negedge rst_n) begin : outValid
    if(!rst_n) out_valid <= 1'b0;
    else out_valid <= out_valid_nxt;
  end


endmodule
