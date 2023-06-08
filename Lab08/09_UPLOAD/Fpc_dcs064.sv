module Fpc(
// input signals
clk,
rst_n,
in_valid,
in_a,
in_b,
mode,
// output signals
out_valid,
out
);

//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION                         
//---------------------------------------------------------------------
input clk, rst_n, in_valid, mode;
input [15:0] in_a, in_b;
output logic out_valid;
output logic [15:0] out;

//---------------------------------------------------------------------
//   Your design                       
//---------------------------------------------------------------------
logic [15:0] out_nxt;
logic sign_a, sign_b;
logic [6:0] fraction_a, fraction_b;
logic [7:0] exponent_a, exponent_b;
logic [15:0] out_add, out_mul;

// for FSM
typedef enum logic [1:0] {IDLE, ADD, MUL, OUT} STATE;
STATE state, state_nxt;

// for add
logic [7:0] shift_a, shift_b;
logic signed [8:0] cpl_a, cpl_b;
logic signed [9:0] sum;
logic [8:0] sum_fraction;
logic [7:0] exponent_max;
logic [7:0] out_add_exponent;
logic [6:0] out_add_fraction;

// for mul
logic [15:0] product;
logic [7:0] out_mul_exponent;
logic [6:0] out_mul_fraction;


always_ff @(posedge clk) begin
  sign_a <= in_a[15];
  sign_b <= in_b[15];
  exponent_a <= in_a[14:7];
  exponent_b <= in_b[14:7];
  fraction_a <= in_a[6:0];
  fraction_b <= in_b[6:0];
end

always_ff @(negedge rst_n, posedge clk) begin
  if(!rst_n)  state <= IDLE;
  else  state <= state_nxt;
end

always_comb begin : FSM
  state_nxt = IDLE;
  out_valid = 0;
  out_nxt = 0;
  case(state)
    IDLE: begin
      if(in_valid) begin
        if(mode) state_nxt = MUL;
        else state_nxt = ADD;
      end
    end
    ADD: begin
      state_nxt = OUT;
      out_nxt = out_add;
    end
    MUL: begin
      state_nxt = OUT;
      out_nxt = out_mul;
    end
    OUT: begin
      out_valid = 1;
    end
  endcase
end

always_comb begin : ADD_COMB
  out_add_exponent = 0;
  out_add_fraction = 0;
  if(exponent_a < exponent_b) begin
    shift_a = {1'b1, fraction_a} >> (exponent_b - exponent_a);
    shift_b = {1'b1, fraction_b};
    exponent_max = exponent_b;
  end else begin
    shift_a = {1'b1, fraction_a};
    shift_b = {1'b1, fraction_b} >> (exponent_a - exponent_b);
    exponent_max = exponent_a;
  end
  if(sign_a) cpl_a = {1'b1, ~shift_a + 1'b1};
  else cpl_a = {1'b0, shift_a};
  if(sign_b) cpl_b = {1'b1, ~shift_b + 1'b1};
  else cpl_b = {1'b0, shift_b};
  sum = cpl_a + cpl_b;

  out_add[15] = sum[9];
  if(out_add[15]) sum_fraction = ~sum[8:0] + 1'b1;
  else sum_fraction = sum[8:0];
  casex(sum_fraction)
    9'b1xxxxxxxx: {out_add_exponent, out_add_fraction} = {8'd1, sum_fraction[7:1]};
    9'b01xxxxxxx: {out_add_exponent, out_add_fraction} = {8'd0, sum_fraction[6:0]};
    9'b001xxxxxx: {out_add_exponent, out_add_fraction} = {-8'd1, sum_fraction[5:0], 1'd0};
    9'b0001xxxxx: {out_add_exponent, out_add_fraction} = {-8'd2, sum_fraction[4:0], 2'd0};
    9'b00001xxxx: {out_add_exponent, out_add_fraction} = {-8'd3, sum_fraction[3:0], 3'd0};
    9'b000001xxx: {out_add_exponent, out_add_fraction} = {-8'd4, sum_fraction[2:0], 4'd0};
    9'b0000001xx: {out_add_exponent, out_add_fraction} = {-8'd5, sum_fraction[1:0], 5'd0};
    9'b00000001x: {out_add_exponent, out_add_fraction} = {-8'd6, sum_fraction[0], 6'd0};
    9'b000000001: {out_add_exponent, out_add_fraction} = {-8'd7, 7'd0};
  endcase
  out_add[14:7] = out_add_exponent + exponent_max;
  out_add[6:0] = out_add_fraction;

end

always_comb begin : MUL_COMB
  out_mul_exponent = 0;
  out_mul_fraction = 0;
  product = {1'b1, fraction_a} * {1'b1, fraction_b};
  casex(product)
    16'b1xxxxxxxxxxxxxxx: {out_mul_exponent, out_mul_fraction} = {8'd1, product[14:8]};
    16'b01xxxxxxxxxxxxxx: {out_mul_exponent, out_mul_fraction} = {8'd0, product[13:7]};
    16'b001xxxxxxxxxxxxx: {out_mul_exponent, out_mul_fraction} = {-8'd1, product[12:6]};
    16'b0001xxxxxxxxxxxx: {out_mul_exponent, out_mul_fraction} = {-8'd2, product[11:5]};
    16'b00001xxxxxxxxxxx: {out_mul_exponent, out_mul_fraction} = {-8'd3, product[10:4]};
    16'b000001xxxxxxxxxx: {out_mul_exponent, out_mul_fraction} = {-8'd4, product[9:3]};
    16'b0000001xxxxxxxxx: {out_mul_exponent, out_mul_fraction} = {-8'd5, product[8:2]};
    16'b00000001xxxxxxxx: {out_mul_exponent, out_mul_fraction} = {-8'd6, product[7:1]};
    16'b000000001xxxxxxx: {out_mul_exponent, out_mul_fraction} = {-8'd7, product[6:0]};
    16'b0000000001xxxxxx: {out_mul_exponent, out_mul_fraction} = {-8'd8, product[5:0], 1'd0};
    16'b00000000001xxxxx: {out_mul_exponent, out_mul_fraction} = {-8'd9, product[4:0], 2'd0};
    16'b000000000001xxxx: {out_mul_exponent, out_mul_fraction} = {-8'd10, product[3:0], 3'd0};
    16'b0000000000001xxx: {out_mul_exponent, out_mul_fraction} = {-8'd11, product[2:0], 4'd0};
    16'b00000000000001xx: {out_mul_exponent, out_mul_fraction} = {-8'd12, product[1:0], 5'd0};
    16'b000000000000001x: {out_mul_exponent, out_mul_fraction} = {-8'd13, product[0], 6'd0};
    16'b0000000000000001: {out_mul_exponent, out_mul_fraction} = {-8'd14, 7'd0};
  endcase
  out_mul[15] = sign_a ^ sign_b;
  out_mul[14:7] = out_mul_exponent + exponent_a + exponent_b - 127;
  out_mul[6:0] = out_mul_fraction;
end

always_ff @(negedge rst_n, posedge clk) begin
  if(!rst_n) out <= 0;
  else out <= out_nxt;
end



endmodule

