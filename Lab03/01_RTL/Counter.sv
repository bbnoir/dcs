module Counter(
	// Input signals
	clk,
	rst_n,
	// Output signals
	clk2
);

//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION
//---------------------------------------------------------------------
input        clk, rst_n;
output logic clk2;

//---------------------------------------------------------------------
//   REG AND WIRE DECLARATION
//---------------------------------------------------------------------
  logic count;
  always_ff @( posedge clk, negedge rst_n ) begin : counter
    if(!rst_n) begin
      clk2 <= 1'b0;
//      count <= 1'b1;
    end
    else if (count) clk2 <= !clk2;
    else clk2 <= clk2;
    //count <= !count;
  end

  always_comb begin
    count = !count;
  end

endmodule
