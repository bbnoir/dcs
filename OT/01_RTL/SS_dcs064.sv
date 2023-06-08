module SS(
// input signals
  clk,
  rst_n,
  in_valid,
  matrix,
  matrix_size,
// output signals
  out_valid,
  out_value
);
//================================================================
//   INPUT AND OUTPUT DECLARATION                         
//================================================================
input               clk, rst_n, in_valid;
input        [15:0] matrix;
input               matrix_size;

output logic        out_valid;
output logic [39:0] out_value;

typedef enum logic [2:0] {IDLE, INPUT_2, INPUT_4, CAL_2, CAL_4} STATE;
STATE cs, ns;

logic [39:0] D[0:3][0:3];
logic [39:0] D_nxt[0:3][0:3];
logic [15:0] R[0:3][0:3];
logic [15:0] R_nxt[0:3][0:3];
logic [15:0] X[0:3][0:3];
logic [15:0] X_nxt[0:3][0:3];
logic [15:0] W[0:3][0:3];
logic [15:0] W_nxt[0:3][0:3];
logic [15:0] buffer[0:3][0:6];
logic [15:0] buffer_nxt[0:3][0:6];

logic [5:0] cnt, cnt_nxt;
logic [39:0] out_value_nxt;
logic out_valid_nxt;

always_ff @( posedge clk, negedge rst_n ) begin : STATE_MACHINE
  if ( !rst_n ) begin
    cs <= IDLE;
  end else begin
    cs <= ns;
  end
end

always_comb begin : STATE_COMB
  cnt_nxt = 0;
  ns = cs;
  for(int i = 0; i < 4; i = i+1) begin
    for(int j = 0; j < 4; j = j+1) begin
      D_nxt[i][j] = D[i][j];
      R_nxt[i][j] = R[i][j];
      X_nxt[i][j] = X[i][j];
      W_nxt[i][j] = W[i][j];
    end
    for(int j = 0; j < 7; j = j+1) begin
      buffer_nxt[i][j] = buffer[i][j];
    end
  end
  out_valid_nxt = 0;
  out_value_nxt = 0;
  case(cs)
    IDLE: begin
      for(int i = 0; i < 4; i = i+1) begin
        for(int j = 0; j < 4; j = j+1) begin
          D_nxt[i][j] = 0;
          R_nxt[i][j] = 0;
          X_nxt[i][j] = 0;
          W_nxt[i][j] = 0;
        end
        for(int j = 0; j < 7; j = j+1) begin
          buffer_nxt[i][j] = 0;
        end
      end
      if ( in_valid ) begin
        if(matrix_size == 0) begin
          ns = INPUT_2;
        end else begin
          ns = INPUT_4;
        end
        W_nxt[0][0] = matrix;
        cnt_nxt = 1;
      end else begin
        ns = IDLE;
      end
    end
    INPUT_2: begin
      if(cnt == 7) begin
        ns = CAL_2;
      end else begin
        ns = INPUT_2;
        cnt_nxt = cnt + 1;
      end
      if(cnt <= 3) begin
        case(cnt)
          1: W_nxt[0][1] = matrix;
          2: W_nxt[1][0] = matrix;
          3: W_nxt[1][1] = matrix;
        endcase
      end else begin
        case(cnt)
          4: X_nxt[0][0] = matrix;
          5: X_nxt[0][1] = matrix;
          6: X_nxt[1][0] = matrix;
          7: X_nxt[1][1] = matrix;
        endcase
      end
      if(cnt == 7) begin
        for(int i = 0; i < 2; i = i+1) begin
          for(int j = 0; j < 2; j = j+1) begin
            buffer_nxt[i][j+i] = X_nxt[j][i];
          end
        end
        cnt_nxt = 0;
      end
    end
    INPUT_4: begin
      if(cnt == 31) begin
        ns = CAL_4;
      end else begin
        ns = INPUT_4;
        cnt_nxt = cnt + 1;
      end
      if(cnt <= 15) begin
        case(cnt)
          1: W_nxt[0][1] = matrix;
          2: W_nxt[0][2] = matrix;
          3: W_nxt[0][3] = matrix;
          4: W_nxt[1][0] = matrix;
          5: W_nxt[1][1] = matrix;
          6: W_nxt[1][2] = matrix;
          7: W_nxt[1][3] = matrix;
          8: W_nxt[2][0] = matrix;
          9: W_nxt[2][1] = matrix;
          10: W_nxt[2][2] = matrix;
          11: W_nxt[2][3] = matrix;
          12: W_nxt[3][0] = matrix;
          13: W_nxt[3][1] = matrix;
          14: W_nxt[3][2] = matrix;
          15: W_nxt[3][3] = matrix;
        endcase
      end else begin
        case(cnt)
          16: X_nxt[0][0] = matrix;
          17: X_nxt[0][1] = matrix;
          18: X_nxt[0][2] = matrix;
          19: X_nxt[0][3] = matrix;
          20: X_nxt[1][0] = matrix;
          21: X_nxt[1][1] = matrix;
          22: X_nxt[1][2] = matrix;
          23: X_nxt[1][3] = matrix;
          24: X_nxt[2][0] = matrix;
          25: X_nxt[2][1] = matrix;
          26: X_nxt[2][2] = matrix;
          27: X_nxt[2][3] = matrix;
          28: X_nxt[3][0] = matrix;
          29: X_nxt[3][1] = matrix;
          30: X_nxt[3][2] = matrix;
          31: X_nxt[3][3] = matrix;
        endcase
      end
      if(cnt == 31) begin
        for(int i = 0; i < 4; i = i+1) begin
          for(int j = 0; j < 4; j = j+1) begin
            buffer_nxt[i][j+i] = X_nxt[j][i];
          end
        end
        cnt_nxt = 0;
      end
    end
    CAL_2: begin
      D_nxt[0][0] = W[0][0] * buffer[0][0];
      D_nxt[0][1] = W[0][1] * R[0][0];
      D_nxt[1][0] = W[1][0] * buffer[1][0] + D[0][0];
      D_nxt[1][1] = W[1][1] * R[1][0] + D[0][1];
      R_nxt[0][0] = buffer[0][0];
      R_nxt[0][1] = R[0][0];
      R_nxt[1][0] = buffer[1][0];
      R_nxt[1][1] = R[1][0];
      for(int i = 0; i < 2; i = i+1) begin
        for(int j = 0; j < 3; j = j+1) begin
          buffer_nxt[i][j] = buffer[i][j+1];
        end
      end
      cnt_nxt = cnt + 1;
      ns = CAL_2;
      if(cnt == 4) begin
        ns = IDLE;
      end
      if(cnt >= 2) begin
        out_valid_nxt = 1;
        out_value_nxt = D[1][1] + D[1][0];
      end
    end
    CAL_4: begin
      D_nxt[0][0] = W[0][0] * buffer[0][0];
      D_nxt[0][1] = W[0][1] * R[0][0];
      D_nxt[0][2] = W[0][2] * R[0][1];
      D_nxt[0][3] = W[0][3] * R[0][2];
      D_nxt[1][0] = W[1][0] * buffer[1][0] + D[0][0];
      D_nxt[1][1] = W[1][1] * R[1][0] + D[0][1];
      D_nxt[1][2] = W[1][2] * R[1][1] + D[0][2];
      D_nxt[1][3] = W[1][3] * R[1][2] + D[0][3];
      D_nxt[2][0] = W[2][0] * buffer[2][0] + D[1][0];
      D_nxt[2][1] = W[2][1] * R[2][0] + D[1][1];
      D_nxt[2][2] = W[2][2] * R[2][1] + D[1][2];
      D_nxt[2][3] = W[2][3] * R[2][2] + D[1][3];
      D_nxt[3][0] = W[3][0] * buffer[3][0] + D[2][0];
      D_nxt[3][1] = W[3][1] * R[3][0] + D[2][1];
      D_nxt[3][2] = W[3][2] * R[3][1] + D[2][2];
      D_nxt[3][3] = W[3][3] * R[3][2] + D[2][3];
      for(int i = 0; i < 4; i = i+1) begin
        R_nxt[i][0] = buffer[i][0];
        for(int j = 0; j < 4; j = j+1) begin
          R_nxt[i][j+1] = R[i][j];
        end
      end
      for(int i = 0; i < 4; i = i+1) begin
        for(int j = 0; j < 6; j = j+1) begin
          buffer_nxt[i][j] = buffer[i][j+1];
        end
        buffer_nxt[i][6] = 0;
      end
      cnt_nxt = cnt + 1;
      ns = CAL_4;
      if(cnt == 10) begin
        ns = IDLE;
      end
      if(cnt >= 4) begin
        out_valid_nxt = 1;
        out_value_nxt = D[3][3] + D[3][2] + D[3][1] + D[3][0];
      end
    end
  endcase
end

always_ff @( posedge clk, negedge rst_n ) begin : SEQ
  if ( !rst_n ) begin
    out_valid <= 0;
    out_value <= 0;
    for(int i = 0; i < 4; i = i+1) begin
      for(int j = 0; j < 4; j = j+1) begin
        D[i][j] <= 0;
        R[i][j] <= 0;
        X[i][j] <= 0;
        W[i][j] <= 0;
      end
      for(int j = 0; j < 7; j = j+1) begin
        buffer[i][j] <= 0;
      end
    end
    cnt <= 0;
  end else begin
    out_valid <= out_valid_nxt;
    out_value <= out_value_nxt;
    for(int i = 0; i < 4; i = i+1) begin
      for(int j = 0; j < 4; j = j+1) begin
        D[i][j] <= D_nxt[i][j];
        R[i][j] <= R_nxt[i][j];
        X[i][j] <= X_nxt[i][j];
        W[i][j] <= W_nxt[i][j];
      end
      for(int j = 0; j < 7; j = j+1) begin
        buffer[i][j] <= buffer_nxt[i][j];
      end
    end
    cnt <= cnt_nxt;
  end
end



endmodule