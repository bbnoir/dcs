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
  parameter OUT_0_0 = 2'b00;
  parameter OUT_0_1 = 2'b01;
  parameter OUT_1_0 = 2'b11;
  parameter OUT_1_1 = 2'b10;
  logic [1:0] state, next;
  always_ff @( posedge clk, negedge rst_n ) begin : state_ff
    if(!rst_n) state <= OUT_0_1;
    else state <= next;
  end

  always_comb begin : counter_comb
    next = 'bx;
    case (state)
      OUT_0_0: begin
        clk2 = 1'b0;
        next = OUT_0_1;
      end
      OUT_0_1: begin
        clk2 = 1'b0;
        next = OUT_1_0;
      end
      OUT_1_0: begin
        clk2 = 1'b1;
        next = OUT_1_1;
      end
      OUT_1_1: begin
        clk2 = 1'b1;
        next = OUT_0_0;
      end
    endcase
  end

endmodule
