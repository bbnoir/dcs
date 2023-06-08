module inter(
  // Input signals
  clk,
  rst_n,
  in_valid_1,
  in_valid_2,
  data_in_1,
  data_in_2,
  ready_slave1,
  ready_slave2,
  // Output signals
  valid_slave1,
  valid_slave2,
  addr_out,
  value_out,
  handshake_slave1,
  handshake_slave2
);

//---------------------------------------------------------------------
//   PORT DECLARATION
//---------------------------------------------------------------------
input clk, rst_n, in_valid_1, in_valid_2;
input [6:0] data_in_1, data_in_2;
input ready_slave1, ready_slave2;

output logic valid_slave1, valid_slave2;
output logic [2:0] addr_out, value_out;
output logic handshake_slave1, handshake_slave2;

logic in1, in2;
logic in1_nxt, in2_nxt;
logic handshake_slave1_nxt, handshake_slave2_nxt;
typedef enum logic [2:0] {S_idle, S_master1, S_master2, S_handshake} STATE;
STATE state, state_nxt;
logic valid_slave1_nxt, valid_slave2_nxt;
logic [6:0] data_1_reg, data_1_nxt;
logic [6:0] data_2_reg, data_2_nxt;
logic [3:0] addr_out_nxt, value_out_nxt;

always_ff @( posedge clk, negedge rst_n) begin
  if(!rst_n) begin
    in1 <= 'b0;
    in2 <= 'b0;
    data_1_reg <= 7'd0;
    data_2_reg <= 7'd0;
    valid_slave1 <= 'b0;
    valid_slave2 <= 'b0;
    handshake_slave1 <= 'b0;
    handshake_slave2 <= 'b0;
    addr_out <= 3'd0;
    value_out <= 3'd0;
  end else begin
    in1 <= in1_nxt;
    in2 <= in2_nxt;
    data_1_reg <= data_1_nxt;
    data_2_reg <= data_2_nxt;
    valid_slave1 <= valid_slave1_nxt;
    valid_slave2 <= valid_slave2_nxt;
    handshake_slave1 <= handshake_slave1_nxt;
    handshake_slave2 <= handshake_slave2_nxt;
    addr_out <= addr_out_nxt;
    value_out <= value_out_nxt;
  end
end

always_ff @( posedge clk, negedge rst_n ) begin
  if(!rst_n) state <= S_idle;
  else state <= state_nxt;
end

always_comb begin
  in1_nxt = in1;
  in2_nxt = in2;
  if(in_valid_1 | in_valid_2) begin
    in1_nxt = in_valid_1;
    in2_nxt = in_valid_2;
  end
  data_1_nxt = data_1_reg;
  data_2_nxt = data_2_reg;
  addr_out_nxt = 3'd0;
  value_out_nxt = 3'd0;
  valid_slave1_nxt = 0;
  valid_slave2_nxt = 0;
  handshake_slave1_nxt = 0;
  handshake_slave2_nxt = 0;
  state_nxt = state;
  case(state)
    S_idle: begin
      if(in_valid_1) begin
        state_nxt = S_master1;
        data_1_nxt = data_in_1;
        data_2_nxt = data_in_2;
      end
      if(!in_valid_1 & in_valid_2) begin
        state_nxt = S_master2;
        data_1_nxt = data_in_1;
        data_2_nxt = data_in_2;
      end
    end
    S_master1: begin
      if(data_1_reg[6] == 0) valid_slave1_nxt = 1;
      else valid_slave2_nxt = 1;
      if(valid_slave1 && ready_slave1) begin
        state_nxt = S_handshake;
        handshake_slave1_nxt = 1;
        in1_nxt = 'b0;
      end
      if(valid_slave2 && ready_slave2) begin
        state_nxt = S_handshake;
        handshake_slave2_nxt = 1;
        in1_nxt = 'b0;
      end
      addr_out_nxt = data_1_reg[5:3];
      value_out_nxt = data_1_reg[2:0];
    end
    S_master2: begin
      if(data_2_reg[6] == 0) valid_slave1_nxt = 1;
      else valid_slave2_nxt = 1;
      if(valid_slave1 && ready_slave1) begin
        state_nxt = S_handshake;
        handshake_slave1_nxt = 1;
        in2_nxt = 'b0;
      end
      if(valid_slave2 && ready_slave2) begin
        state_nxt = S_handshake;
        handshake_slave2_nxt = 1;
        in2_nxt = 'b0;
      end
      addr_out_nxt = data_2_reg[5:3];
      value_out_nxt = data_2_reg[2:0];
    end
    S_handshake: begin
      if(in2) state_nxt = S_master2;
      else state_nxt = S_idle;
    end
    default: begin
    end
  endcase
end

endmodule
