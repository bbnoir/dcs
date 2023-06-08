module MIPS(
  //Input
  clk,
  rst_n,
  in_valid,
  instruction,
  output_reg,
  //OUTPUT
  out_valid,
  out_1,
  out_2,
  out_3,
  out_4,
  instruction_fail
);

//Input
input clk;
input rst_n;
input in_valid;
input [31:0] instruction;
input [19:0] output_reg;
//OUTPUT
output logic out_valid, instruction_fail;
output logic [15:0] out_1, out_2, out_3, out_4;

//Parameter
typedef enum logic [1:0] {READ, WRITE, FAIL, CALC} State;
State state, state_nxt;


//Logic

logic [15:0] out_1_nxt, out_2_nxt, out_3_nxt, out_4_nxt;


typedef struct packed {
  bit [5:0] Opcode;
  bit [4:0] Rs;
  bit [4:0] Rt;
  bit [4:0] Rd;
  bit [3:0] Shamt;
  bit [6:0] Funct;
} Rtype;
typedef struct packed {
  bit [5:0] Opcode;
  bit [4:0] Rs;
  bit [4:0] Rt;
  bit [15:0] Imm;
} Itype; 
typedef union packed {
  Rtype R;
  Itype I;
} Instr;
Instr instr, instr_next;

typedef struct packed {
  bit [15:0] Add;
  bit [15:0] And;
  bit [15:0] Or;
  bit [15:0] Nor;
  bit [15:0] Sl;
  bit [15:0] Sr;
  bit [15:0] AddImm;
} OpResult;
OpResult op_result;

logic [15:0] funct_result;


logic [15:0] Rs_val, Rt_val;

logic [15:0] registers [0:5];
logic [15:0] registers_nxt [0:5];


typedef struct packed {
  bit [2:0] reg4;
  bit [2:0] reg3;
  bit [2:0] reg2;
  bit [2:0] reg1;
} RegOut;
RegOut reg_out, reg_out_nxt;

logic cal_done;
logic fail;

typedef enum logic  {IDLE, RUN} GCD_STATE;
GCD_STATE gcd_state, gcd_state_nxt;

logic gcd_done, gcd_load;
logic [15:0] gcd_A, gcd_A_nxt;
logic [15:0] gcd_B, gcd_B_nxt;

always_ff @(negedge rst_n, posedge clk ) begin : STATE
  if(!rst_n) state <= READ;
  else state <= state_nxt;
end

always_comb begin : FSM
  state_nxt = READ;
  case(state)
    READ: begin
      if(in_valid) state_nxt = CALC;
      else state_nxt = READ;
    end
    CALC: begin
      if(fail) state_nxt = FAIL;
      else if(cal_done) state_nxt = WRITE;
      else state_nxt = CALC;
    end
    WRITE: state_nxt = READ;
    FAIL: state_nxt = READ;
  endcase
end

assign op_result.Add = Rs_val + Rt_val;
assign op_result.And = Rs_val & Rt_val;
assign op_result.Or = Rs_val | Rt_val;
assign op_result.Nor = ~(Rs_val | Rt_val);
assign op_result.Sl = Rt_val << instr.R.Shamt;
assign op_result.Sr = Rt_val >> instr.R.Shamt;
assign op_result.AddImm = Rs_val + instr.I.Imm;


integer j, k;
always_comb begin : CALC_COMB
  gcd_load = 0;
  cal_done = 1;
  for(j = 0; j < 6; j = j + 1) begin
    registers_nxt[j] = registers[j];
  end

  Rs_val = 0;
  case({instr.R.Rs[3], instr.R.Rs[1:0]})
    3'b001: Rs_val = registers[1];
    3'b010: Rs_val = registers[2];
    3'b100: Rs_val = registers[3];
    3'b011: Rs_val = registers[4];
    3'b111: Rs_val = registers[5];
    3'b000: Rs_val = registers[0];
  endcase

  Rt_val = 0;
  case({instr.R.Rt[3], instr.R.Rt[1:0]})
    3'b001: Rt_val = registers[1];
    3'b010: Rt_val = registers[2];
    3'b100: Rt_val = registers[3];
    3'b011: Rt_val = registers[4];
    3'b111: Rt_val = registers[5];
    3'b000: Rt_val = registers[0];
  endcase

  funct_result = 0;
  if(instr.I.Opcode[3]) begin
    case({instr.R.Rt[3], instr.R.Rt[1:0]})
      3'b001: registers_nxt[1] = op_result.AddImm;
      3'b010: registers_nxt[2] = op_result.AddImm;
      3'b100: registers_nxt[3] = op_result.AddImm;
      3'b011: registers_nxt[4] = op_result.AddImm;
      3'b111: registers_nxt[5] = op_result.AddImm;
      3'b000: registers_nxt[0] = op_result.AddImm;
    endcase
  end
  else begin
    if(instr.R.Funct == 7'b1111000) begin
      if(Rs_val != 0 && Rt_val != 0) begin
        gcd_load = 1;
        if(gcd_done) begin
          cal_done = 1;
          case({instr.R.Rd[3], instr.R.Rd[1:0]})
            3'b001: registers_nxt[1] = gcd_A_nxt;
            3'b010: registers_nxt[2] = gcd_A_nxt;
            3'b100: registers_nxt[3] = gcd_A_nxt;
            3'b011: registers_nxt[4] = gcd_A_nxt;
            3'b111: registers_nxt[5] = gcd_A_nxt;
            3'b000: registers_nxt[0] = gcd_A_nxt;
          endcase
        end
        else cal_done = 0;
      end
    end else begin
      case({instr.R.Funct[5], instr.R.Funct[2:0]})
        4'b1000: funct_result = op_result.Add;
        4'b1100: funct_result = op_result.And;
        4'b1101: funct_result = op_result.Or;
        4'b1111: funct_result = op_result.Nor;
        4'b0000: funct_result = op_result.Sl;
        4'b0010: funct_result = op_result.Sr;
      endcase
      case({instr.R.Rd[3], instr.R.Rd[1:0]})
        3'b001: registers_nxt[1] = funct_result;
        3'b010: registers_nxt[2] = funct_result;
        3'b100: registers_nxt[3] = funct_result;
        3'b011: registers_nxt[4] = funct_result;
        3'b111: registers_nxt[5] = funct_result;
        3'b000: registers_nxt[0] = funct_result;
      endcase
    end
  end
  if(fail) begin
    for(k = 0; k < 6; k = k + 1) begin
      registers_nxt[k] = registers[k];
    end
  end
end

logic [5:0] fail_bus;
assign fail = |fail_bus;

always_comb begin :CHECK_FAIL
  fail_bus = 0;
  if(|{instr.R.Opcode[5:4], instr.R.Opcode[2:0]}) fail_bus[0] = 1; 
  case(instr.R.Rs) 5'b10001, 5'b10010, 5'b01000, 5'b10111, 5'b11111, 5'b10000: fail_bus[1] = 0; default: fail_bus[1] = 1; endcase
  case(instr.R.Rt) 5'b10001, 5'b10010, 5'b01000, 5'b10111, 5'b11111, 5'b10000: fail_bus[2] = 0; default: fail_bus[2] = 1; endcase
  if(~instr.R.Opcode[3]) begin
    case(instr.R.Funct) 7'b0100000, 7'b0100100, 7'b0100101, 7'b0100111, 7'b0000000, 7'b0000010, 7'b1111000: fail_bus[3] = 0; default: fail_bus[3] = 1; endcase
    if(instr.R.Funct == 7'b1111000 && (Rs_val == 0 || Rt_val == 0)) fail_bus[4] = 1;
    case(instr.R.Rd) 5'b10001, 5'b10010, 5'b01000, 5'b10111, 5'b11111, 5'b10000: fail_bus[5] = 0; default: fail_bus[5] = 1; endcase
  end
end

always_comb begin : OUTPUT
  {out_valid, instruction_fail} = 0;
  case(state)
    WRITE: begin
      out_valid = 1;
      instruction_fail = 0;
    end
    FAIL: begin
      out_valid = 1;
      instruction_fail = 1;
    end
  endcase
  out_1_nxt = 0;
  out_2_nxt = 0;
  out_3_nxt = 0;
  out_4_nxt = 0;
  if(state_nxt == WRITE) begin
    case (reg_out.reg1)
      3'b001: out_1_nxt = registers_nxt[1];
      3'b010: out_1_nxt = registers_nxt[2];
      3'b100: out_1_nxt = registers_nxt[3];
      3'b011: out_1_nxt = registers_nxt[4];
      3'b111: out_1_nxt = registers_nxt[5];
      3'b000: out_1_nxt = registers_nxt[0];
    endcase
    case(reg_out.reg2)
      3'b001: out_2_nxt = registers_nxt[1];
      3'b010: out_2_nxt = registers_nxt[2];
      3'b100: out_2_nxt = registers_nxt[3];
      3'b011: out_2_nxt = registers_nxt[4];
      3'b111: out_2_nxt = registers_nxt[5];
      3'b000: out_2_nxt = registers_nxt[0];
    endcase
    case(reg_out.reg3)
      3'b001: out_3_nxt = registers_nxt[1];
      3'b010: out_3_nxt = registers_nxt[2];
      3'b100: out_3_nxt = registers_nxt[3];
      3'b011: out_3_nxt = registers_nxt[4];
      3'b111: out_3_nxt = registers_nxt[5];
      3'b000: out_3_nxt = registers_nxt[0];
    endcase
    case(reg_out.reg4)
      3'b001: out_4_nxt = registers_nxt[1];
      3'b010: out_4_nxt = registers_nxt[2];
      3'b100: out_4_nxt = registers_nxt[3];
      3'b011: out_4_nxt = registers_nxt[4];
      3'b111: out_4_nxt = registers_nxt[5];
      3'b000: out_4_nxt = registers_nxt[0];
    endcase
  end
end

always_ff @(posedge clk ) begin : INSTRUCTION
  instr= instr_next;
end

always_comb begin : INSTRUCTION_NEXT
  if(in_valid) instr_next = instruction;
  else instr_next = instr;
end

integer i;
always_ff @(negedge rst_n,  posedge clk ) begin : REGISTERS
  if(!rst_n) begin
    for(i = 0; i < 6; i = i + 1) begin
      registers[i] <= 0;
    end
  end
  else begin
    for(i = 0; i < 6; i = i + 1) begin
      registers[i] <= registers_nxt[i];
    end
  end
end

always_ff @( posedge clk ) begin : REG_OUT
  reg_out <= reg_out_nxt;
end

always_comb begin : REG_OUT_NEXT
  reg_out_nxt = reg_out;
  if(in_valid) begin
    reg_out_nxt.reg1 = {output_reg[3], output_reg[1:0]};
    reg_out_nxt.reg2 = {output_reg[8], output_reg[6:5]};
    reg_out_nxt.reg3 = {output_reg[13], output_reg[11:10]};
    reg_out_nxt.reg4 = {output_reg[18], output_reg[16:15]};
  end
end

always_ff @(posedge clk) begin : GCD_FF
  gcd_state <= gcd_state_nxt;
  gcd_A <= gcd_A_nxt;
  gcd_B <= gcd_B_nxt;
end

always_comb begin : GCD_COMB
  gcd_done = 0;
  gcd_A_nxt = 0;
  gcd_B_nxt = 0;
  gcd_state_nxt = IDLE;
  case(gcd_state)
    IDLE: begin
      if(gcd_load) begin
        gcd_A_nxt = Rs_val;
        gcd_B_nxt = Rt_val;
        gcd_state_nxt = RUN;
      end
    end
    RUN: begin
      gcd_A_nxt = gcd_B;
      gcd_B_nxt = gcd_A % gcd_B;
      if(gcd_A % gcd_B == 0) gcd_done = 1;
      else gcd_state_nxt = RUN;
    end
  endcase
end

always_ff @ (negedge rst_n, posedge clk) begin : OUTPUT_REG
  if(!rst_n) begin
    {out_1, out_2, out_3, out_4} <= 0;
  end
  else begin
    {out_1, out_2, out_3, out_4} <= {out_1_nxt, out_2_nxt, out_3_nxt, out_4_nxt};
  end
end


endmodule

