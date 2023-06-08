module I2S(
  // Input signals
  clk,
  rst_n,
  in_valid,
  SD,
  WS,
  // Output signals
  out_valid,
  out_left,
  out_right
);

//---------------------------------------------------------------------
//   PORT DECLARATION
//---------------------------------------------------------------------
input clk, rst_n, in_valid;
input SD, WS;

output logic        out_valid;
output logic [31:0] out_left, out_right;

logic [32:0] data, data_nxt;

  /*
typedef enum logic [2:0] {IDLE, WL, WR, OUTL,  OUTR} STATE;
STATE state, state_nxt;
  */

logic [3:0] state, state_nxt;
parameter IDLE = 4'b0000;
parameter WL = 4'b0001;
parameter WR = 4'b0010;
parameter OUTL = 4'b0011;
parameter OUTR = 4'b0110;

//state
always_ff @( posedge clk, negedge rst_n ) begin
  if(~rst_n) state <= IDLE;
  else state <= state_nxt;
end

always@(posedge clk) begin
    data <= data_nxt;
end

//state
always_comb begin
  out_valid = 'b0;
  out_left = 32'd0;
  out_right = 32'd0;
  data_nxt = 33'd0;
  state_nxt = 4'd0;

  case (state)
    IDLE: begin
      if(in_valid & WS) begin
        state_nxt = WR;
        data_nxt = {data[31:0], SD};
      end
      else if(in_valid & ~WS) begin
        state_nxt = WL;
        data_nxt = {data[31:0], SD};
      end
      else state_nxt = IDLE;
    end
    WL: begin
      if(in_valid & ~WS) state_nxt = WL;
      else state_nxt = OUTL;
      data_nxt = {data[31:0], SD};
    end
    WR: begin
      if(in_valid & WS) state_nxt = WR;
      else state_nxt = OUTR;
      data_nxt = {data[31:0], SD};
    end
    OUTL: begin
      if(in_valid) state_nxt = WR;
      else state_nxt = IDLE;
      out_valid = 'b1;
      out_left = data[32:1];
      data_nxt = {31'd0, data[0], SD};
    end
    OUTR: begin
      if(in_valid) state_nxt = WL;
      else state_nxt = IDLE;
      out_valid = 'b1;
      out_right = data[32:1];
      data_nxt = {31'd0, data[0], SD};
    end
  endcase
end

endmodule
