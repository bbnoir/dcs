//Reduce some register
//Area: 2730.97
module TL(
  // Input signals
  clk,
  rst_n,
  in_valid,
  car_main_s,
  car_main_lt,
  car_side_s,
  car_side_lt,
  // Output signals
  out_valid,
  light_main,
  light_side
);

//---------------------------------------------------------------------
//   PORT DECLARATION
//---------------------------------------------------------------------
input clk, rst_n, in_valid;
input [2:0] car_main_s, car_main_lt, car_side_s, car_side_lt;
output logic out_valid;
output logic [1:0]light_main, light_side;

typedef enum logic [1:0] {RED, YELLOW, GREEN, LEFT} LIGHT;
LIGHT light_main_nxt, light_side_nxt;
logic out_valid_nxt;

//Master
typedef enum logic [3:0] {IDLE, MS, ML, MY, MR, SS, SL, SY, SR, DEFAULT} STATE;
STATE state, state_nxt;

logic car_main_s_reg, car_main_s_nxt;
logic [1:0] car_main_lt_reg, car_side_s_reg;
logic [1:0] car_main_lt_nxt, car_side_s_nxt;
logic [2:0] car_side_lt_reg, car_side_lt_nxt;

//Timer
logic t_load, t_done;
logic [1:0] t_in;
Timer t1(.*);

//store when in_valid
always_ff @( posedge clk) begin
  car_main_lt_reg <= car_main_lt_nxt;
  car_main_s_reg <= car_main_s_nxt;
  car_side_lt_reg <= car_side_lt_nxt;
  car_side_s_reg <= car_side_s_nxt;
end

always_ff @( posedge clk, negedge rst_n ) begin
  if(!rst_n) {out_valid, light_main, light_side} <= {1'b0, GREEN, RED};
  else {out_valid, light_main, light_side} <= {out_valid_nxt, light_main_nxt, light_side_nxt};
end

//Master
always_ff @( posedge clk, negedge rst_n ) begin
  if(!rst_n) state <= IDLE;
  else state <= state_nxt;
end

always_comb begin
  car_main_lt_nxt = car_main_lt_reg;
  car_main_s_nxt = car_main_s_reg;
  car_side_lt_nxt = car_side_lt_reg;
  car_side_s_nxt = car_side_s_reg;

  state_nxt = IDLE;
  {t_load, t_in} = {1'b0, 2'd0};
  {out_valid_nxt, light_main_nxt, light_side_nxt} = 5'd0;

  case (state)
    IDLE: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b0, GREEN, RED};
      if(in_valid) begin
        if(car_main_s > 3'd4) car_main_s_nxt = 1'd1;
        else car_main_s_nxt = 1'd0;
        case(car_main_lt)
          3'd0: car_main_lt_nxt = 2'd0;
          3'd1, 3'd2, 3'd3: car_main_lt_nxt = 2'd1;
          3'd4, 3'd5, 3'd6: car_main_lt_nxt = 2'd2;
          default: car_main_lt_nxt = 2'd3;
        endcase
        case(car_side_s)
          3'd0: car_side_s_nxt = 2'd0;
          3'd1, 3'd2, 3'd3: car_side_s_nxt = 2'd1;
          3'd4, 3'd5, 3'd6: car_side_s_nxt = 2'd2;
          default: car_side_s_nxt = 2'd3;
        endcase
        car_side_lt_nxt = car_side_lt;

        if(!(|car_main_s || |car_main_lt_nxt || |car_side_s_nxt || |car_side_lt_nxt)) state_nxt = DEFAULT;
        else state_nxt = MS;
      end else begin
        state_nxt = IDLE;
        car_main_s_nxt = 0;
        car_main_lt_nxt = 0;
        car_side_s_nxt = 0;
        car_side_lt_nxt = 0;
      end
    end
    MS: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b1, GREEN, RED};
      if(!t_done) state_nxt = MS;
      else if(car_main_s_reg) begin
        state_nxt = MS;
        car_main_s_nxt = 1'b0;
      end
      else if(|car_main_lt_reg || |car_side_s_reg || |car_side_lt_reg) state_nxt = MY;
      else state_nxt = DEFAULT;
    end
    ML: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b1, LEFT, RED};
      if(!t_done) state_nxt = ML;
      else if(car_main_lt_reg != 2'd1) begin
        state_nxt = ML;
        if(car_main_lt_reg == 2'd3) car_main_lt_nxt = 2'd2;
        else car_main_lt_nxt = 2'd1;
      end
      else begin
        car_main_lt_nxt = 2'd0;
        state_nxt = MY;
      end
    end
    MY: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b1, YELLOW, RED};
      if(|car_main_lt_reg || !(|car_side_s_reg || |car_side_lt_reg)) state_nxt = MR;
      else state_nxt = SR;
    end
    MR: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b1, RED, RED};
      if(!t_done) state_nxt = MR;
      else if(|car_main_lt_reg) state_nxt = ML;
      else if(|car_side_s_reg) state_nxt = SS;
      else if(|car_side_lt_reg) state_nxt = SL;
      else state_nxt = DEFAULT;
    end
    SS: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b1, RED, GREEN};
      if(!t_done) state_nxt = SS;
      else if(car_side_s_reg != 2'd1) begin
        state_nxt = SS;
        if(car_side_s_reg == 2'd3) car_side_s_nxt = 2'd2;
        else car_side_s_nxt = 2'd1;
      end
      else begin
        state_nxt = SY;
        car_side_s_nxt = 2'd0;
      end
    end
    SL: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b1, RED, LEFT};
      if(!t_done) state_nxt = SL;
      else if(car_side_lt_reg > 3'd2) begin
        state_nxt = SL;
        car_side_lt_nxt = car_side_lt_reg-2'd2;
      end
      else begin
        car_side_lt_nxt = 2'd0;
        state_nxt = SY;
      end
    end
    SY: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b1, RED, YELLOW};
      state_nxt = SR;
    end
    SR: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b1, RED, RED};
      if(!t_done) state_nxt = SR;
      else if(|car_side_s_reg) state_nxt = SS;
      else if(|car_side_lt_reg) state_nxt = SL;
      else state_nxt = DEFAULT;
    end
    DEFAULT: begin
      {out_valid_nxt, light_main_nxt, light_side_nxt} = {1'b1, GREEN, RED};
      state_nxt = IDLE;
    end
  endcase

  if(t_done) begin
    case(state_nxt)
      IDLE: {t_load, t_in} = {1'b0, 2'd0};
      MS: {t_load, t_in} = {1'b1, 2'd3};
      ML: {t_load, t_in} = {1'b1, 2'd2};
      MY: {t_load, t_in} = {1'b0, 2'd2};
      MR: {t_load, t_in} = {1'b1, 2'd1};
      SS: {t_load, t_in} = {1'b1, 2'd2};
      SL: {t_load, t_in} = {1'b1, 2'd1};
      SY: {t_load, t_in} = {1'b0, 2'd2};
      SR: begin
        if(state == MY) {t_load, t_in} = {1'b1, 2'd0};
        else {t_load, t_in} = {1'b1, 2'd1};
      end
      DEFAULT: {t_load, t_in} = {1'b1, 2'd2};
    endcase
  end
  else {t_load, t_in} = {1'b0, 2'd2};

end

endmodule

module Timer(clk, rst_n, t_load, t_in, t_done);
input clk, t_load, rst_n;
input [1:0] t_in;
output logic t_done;

logic [1:0] count, count_nxt;

always_ff @( posedge clk, negedge rst_n ) begin
  if(!rst_n) count <= 0;
  else count <= count_nxt;
end

always_comb begin
  if(t_load) count_nxt = t_in;
  else if(t_done) count_nxt = 0;
  else count_nxt = count-1'b1;
end

assign t_done = (count == 0);
endmodule
