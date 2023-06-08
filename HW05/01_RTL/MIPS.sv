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
typedef enum logic [1:0] {READ, WRITE, FOOL, CALC} State;
State state, state_nxt;

typedef enum logic [2:0] {ADD, AND, OR, NOR, SL, SR, GCD, ADDI} FUNCT;
FUNCT funct_code, funct_code_nxt;


//Logic
typedef struct packed { bit [5:0] Opcode; bit [4:0] Rs; bit [4:0] Rt; bit [4:0] Rd; bit [3:0] Shamt; bit [6:0] Funct; } Rtype;
typedef struct packed { bit [5:0] Opcode; bit [4:0] Rs; bit [4:0] Rt; bit [15:0] Imm; } Itype; 
typedef union packed { Rtype R; Itype I; } Instr;
Instr instr;

logic [15:0] opA_reg, opA_nxt;
logic [15:0] funct_result;
logic [15:0] Rs_val, Rt_val;
logic [0:5][15:0] registers;
logic [0:5][15:0] registers_nxt;

typedef struct packed { bit [2:0] reg4; bit [2:0] reg3; bit [2:0] reg2; bit [2:0] reg1; } RegOut;
RegOut reg_out, reg_out_nxt;

logic fool, fool_reg, fool_nxt;

logic gcd_run, gcd_run_nxt;

logic gcd_done, gcd_load;
logic [15:0] gcd_A, gcd_A_nxt;
logic [15:0] gcd_B, gcd_B_nxt;
logic [3:0] gcd_shift, gcd_shift_nxt;
logic [15:0]gcd_result;

always_ff @(negedge rst_n, posedge clk ) begin : STATE
  if(!rst_n) state <= READ;
  else state <= state_nxt;
end

always_comb begin : FSM
  state_nxt = READ;
  case(state)
    READ: state_nxt = (in_valid)? CALC : READ;
    CALC: state_nxt = (gcd_done)? WRITE : CALC;
    WRITE: state_nxt = READ;
  endcase
end

logic [2:0] Rs_idx, Rs_idx_nxt;
logic [2:0] Rt_idx, Rt_idx_nxt;
logic [2:0] Rd_idx, Rd_idx_nxt;

assign Rs_val = registers[Rs_idx];
assign Rt_val = registers[Rt_idx];

always_ff @( posedge clk ) begin : READ_FF
  Rs_idx <= Rs_idx_nxt;
  Rt_idx <= Rt_idx_nxt;
  Rd_idx <= Rd_idx_nxt;
end

always_comb begin : READ_COMB
  gcd_load = 0;
  Rd_idx_nxt = Rd_idx;
  funct_code_nxt = funct_code;
  case({instr.R.Rs[3], instr.R.Rs[1:0]})
    3'b001: Rs_idx_nxt = 1;
    3'b010: Rs_idx_nxt = 2;
    3'b100: Rs_idx_nxt = 3;
    3'b011: Rs_idx_nxt = 4;
    3'b111: Rs_idx_nxt = 5;
    default: Rs_idx_nxt = 0;
  endcase
  case({instr.R.Rt[3], instr.R.Rt[1:0]})
    3'b001: Rt_idx_nxt = 1;
    3'b010: Rt_idx_nxt = 2;
    3'b100: Rt_idx_nxt = 3;
    3'b011: Rt_idx_nxt = 4;
    3'b111: Rt_idx_nxt = 5;
    default: Rt_idx_nxt = 0;
  endcase
  if(in_valid) begin
    if(~instr.R.Opcode[3]) begin
      case({instr.R.Rd[3], instr.R.Rd[1:0]})
        3'b001: Rd_idx_nxt = 1;
        3'b010: Rd_idx_nxt = 2;
        3'b100: Rd_idx_nxt = 3;
        3'b011: Rd_idx_nxt = 4;
        3'b111: Rd_idx_nxt = 5;
        default: Rd_idx_nxt = 0;
      endcase
      if(instr.R.Funct[6]) begin
        funct_code_nxt = GCD;
        gcd_load = ~fool;
      end else begin
        case({instr.R.Funct[5], instr.R.Funct[2:0]})
          4'b1000: funct_code_nxt = ADD;
          4'b1100: funct_code_nxt = AND;
          4'b1101: funct_code_nxt = OR;
          4'b1111: funct_code_nxt = NOR;
          4'b0000: funct_code_nxt = SL;
          default: funct_code_nxt = SR;
        endcase
      end
    end
    else begin
      funct_code_nxt = ADDI;
      Rd_idx_nxt = Rt_idx_nxt;
    end
  end
end

always_ff @( posedge clk ) begin : OPREG_FF
  opA_reg <= opA_nxt;
  funct_code <= funct_code_nxt;
end

assign opA_nxt = instr[15:0];
assign instr = instruction;

always_comb begin : CALC_COMB
  registers_nxt = registers;
  funct_result = 0;
  case(funct_code)
    ADD: funct_result = Rs_val + Rt_val;
    AND: funct_result = Rs_val & Rt_val;
    OR: funct_result = Rs_val | Rt_val;
    NOR: funct_result = ~(Rs_val | Rt_val);
    SL: funct_result = Rt_val << opA_reg[10:7];
    SR: funct_result = Rt_val >> opA_reg[10:7];
    ADDI: funct_result = Rs_val + opA_reg;
    GCD: funct_result = gcd_result;
  endcase
  if(state==CALC && gcd_done && ~fool_reg) registers_nxt[Rd_idx] = funct_result;
end

always_ff @(posedge clk) begin : FOOL_FF
  fool_reg <= fool_nxt;
end

always_comb begin : FOOL_CC
  fool = 0;
  if(instr.R.Opcode != 6'b000000 && instr.R.Opcode != 6'b001000) fool = 1;
  else if(instr.R.Rs != 5'b10001 && instr.R.Rs != 5'b10010 && instr.R.Rs != 5'b01000 && instr.R.Rs != 5'b10111 && instr.R.Rs != 5'b11111 && instr.R.Rs != 5'b10000) fool = 1;
  else if(instr.R.Rt != 5'b10001 && instr.R.Rt != 5'b10010 && instr.R.Rt != 5'b01000 && instr.R.Rt != 5'b10111 && instr.R.Rt != 5'b11111 && instr.R.Rt != 5'b10000) fool = 1;
  else if(~instr.R.Opcode[3]) begin
    if(instr.R.Rd != 5'b10001 && instr.R.Rd != 5'b10010 && instr.R.Rd != 5'b01000 && instr.R.Rd != 5'b10111 && instr.R.Rd != 5'b11111 && instr.R.Rd != 5'b10000) fool = 1;
    if(instr.R.Funct == 7'b1111000 && (registers[Rt_idx_nxt] == 0 || registers[Rs_idx_nxt] == 0)) fool = 1;
    if(instr.R.Funct != 7'b0100000 && instr.R.Funct != 7'b0100100 && instr.R.Funct != 7'b0100101 && instr.R.Funct != 7'b0100111 && instr.R.Funct != 7'b0000000 && instr.R.Funct != 7'b0000010 && instr.R.Funct != 7'b1111000) fool = 1;
  end
end

always_comb begin : FOOL_COMB
  if(in_valid) fool_nxt = fool;
  else fool_nxt = fool_reg;
end

logic [2:0] out_1_idx, out_2_idx, out_3_idx, out_4_idx;

always_comb begin : OUT_IDX_COMB
  case (reg_out.reg1)
    3'b001: out_1_idx = 1;
    3'b010: out_1_idx = 2;
    3'b100: out_1_idx = 3;
    3'b011: out_1_idx = 4;
    3'b111: out_1_idx = 5;
    default: out_1_idx = 0;
  endcase
  case(reg_out.reg2)
    3'b001: out_2_idx = 1;
    3'b010: out_2_idx = 2;
    3'b100: out_2_idx = 3;
    3'b011: out_2_idx = 4;
    3'b111: out_2_idx = 5;
    default: out_2_idx = 0;
  endcase
  case(reg_out.reg3)
    3'b001: out_3_idx = 1;
    3'b010: out_3_idx = 2;
    3'b100: out_3_idx = 3;
    3'b011: out_3_idx = 4;
    3'b111: out_3_idx = 5;
    default: out_3_idx = 0;
  endcase
  case(reg_out.reg4)
    3'b001: out_4_idx = 1;
    3'b010: out_4_idx = 2;
    3'b100: out_4_idx = 3;
    3'b011: out_4_idx = 4;
    3'b111: out_4_idx = 5;
    default: out_4_idx = 0;
  endcase
end

always_comb begin : OUTPUT
  out_valid = 0;
  instruction_fail = 0;
  if(state == WRITE) begin
    out_valid = 1;
    if(fool_reg) instruction_fail = 1;
  end
  if(state== WRITE && ~fool_reg) begin
    out_1 = registers[out_1_idx];
    out_2 = registers[out_2_idx];
    out_3 = registers[out_3_idx];
    out_4 = registers[out_4_idx];
  end
  else {out_1, out_2, out_3, out_4} = 0;
end

always_ff @(negedge rst_n,  posedge clk ) begin : REGISTERS
  if(!rst_n) registers <= 0;
  else registers <= registers_nxt;
end

always_ff @( posedge clk ) begin : REG_OUT
  reg_out <= reg_out_nxt;
end

always_comb begin : REG_OUT_NEXT
  reg_out_nxt = reg_out;
  if(in_valid) reg_out_nxt = {output_reg[18], output_reg[16:15], output_reg[13], output_reg[11:10], output_reg[8], output_reg[6:5], output_reg[3], output_reg[1:0]};
end

always_ff @(negedge rst_n,  posedge clk ) begin : GCD_STATE_FF
  if(!rst_n) gcd_run <= 0;
  else gcd_run <= gcd_run_nxt;
end

always_ff @(posedge clk) begin : GCD_FF
  gcd_A <= gcd_A_nxt;
  gcd_B <= gcd_B_nxt;
  gcd_shift <= gcd_shift_nxt;
end

logic a_even, b_even;
assign a_even = |gcd_A && !gcd_A[0];
assign b_even = |gcd_B && !gcd_B[0];

logic [15:0] shift_oprA, shift_oprB;
logic [3:0] a_shift, b_shift;

logic primeA;
logic [15:0] prA;
logic checkone;

assign checkone = (gcd_A > gcd_B)? gcd_B == 1 : gcd_A == 1;

assign prA = gcd_A > gcd_B ? gcd_A : gcd_B;

always_comb begin 
  case({prA[15:1], 1'b1})
    3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661,673,677,683,691,701,709,719,727,733,739,743,751,757,761,769,773,787,797,809,811,821,823,827,829,839,853,857,859,863,877,881,883,887,907,911,919,929,937,941,947,953,967,971,977,983,991,997,1009,1013,1019,1021,1031,1033,1039,1049,1051,1061,1063,1069,1087,1091,1093,1097,1103,1109,1117,1123,1129,1151,1153,1163,1171,1181,1187,1193,1201,1213,1217,1223,1229,1231,1237,1249,1259,1277,1279,1283,1289,1291,1297,1301,1303,1307,1319,1321,1327,1361,1367,1373,1381,1399,1409,1423,1427,1429,1433,1439,1447,1451,1453,1459,1471,1481,1483,1487,1489,1493,1499,1511,1523,1531,1543,1549,1553,1559,1567,1571,1579,1583,1597,1601,1607,1609,1613,1619,1621,1627,1637,1657,1663,1667,1669,1693,1697,1699,1709,1721,1723,1733,1741,1747,1753,1759,1777,1783,1787,1789,1801,1811,1823,1831,1847,1861,1867,1871,1873,1877,1879,1889,1901,1907,1913,1931,1933,1949,1951,1973,1979,1987,1993,1997,1999,2003,2011,2017,2027,2029,2039,2053,2063,2069,2081,2083,2087,2089,2099,2111,2113,2129,2131,2137,2141,2143,2153,2161,2179,2203,2207,2213,2221,2237,2239,2243,2251,2267,2269,2273,2281,2287,2293,2297,2309,2311,2333,2339,2341,2347,2351,2357,2371,2377,2381,2383,2389,2393,2399,2411,2417,2423,2437,2441,2447,2459,2467,2473,2477,2503,2521,2531,2539,2543,2549,2551,2557,2579,2591,2593,2609,2617,2621,2633,2647,2657,2659,2663,2671,2677,2683,2687,2689,2693,2699,2707,2711,2713,2719,2729,2731,2741,2749,2753,2767,2777,2789,2791,2797,2801,2803,2819,2833,2837,2843,2851,2857,2861,2879,2887,2897,2903,2909,2917,2927,2939,2953,2957,2963,2969,2971,2999,3001,3011,3019,3023,3037,3041,3049,3061,3067,3079,3083,3089,3109,3119,3121,3137,3163,3167,3169,3181,3187,3191,3203,3209,3217,3221,3229,3251,3253,3257,3259,3271,3299,3301,3307,3313,3319,3323,3329,3331,3343,3347,3359,3361,3371,3373,3389,3391,3407,3413,3433,3449,3457,3461,3463,3467,3469,3491,3499,3511,3517,3527,3529,3533,3539,3541,3547,3557,3559,3571,3581,3583,3593,3607,3613,3617,3623,3631,3637,3643,3659,3671,3673,3677,3691,3697,3701,3709,3719,3727,3733,3739,3761,3767,3769,3779,3793,3797,3803,3821,3823,3833,3847,3851,3853,3863,3877,3881,3889,3907,3911,3917,3919,3923,3929,3931,3943,3947,3967,3989,4001,4003,4007,4013,4019,4021,4027,4049,4051,4057,4073,4079,4091,4093: primeA = 1;
    default: primeA = 0;
  endcase
end



always_comb begin
  casez(shift_oprA)
    16'b1000_0000_0000_0000: a_shift = 15;
    16'bz100_0000_0000_0000: a_shift = 14;
    16'bzz10_0000_0000_0000: a_shift = 13;
    16'bzzz1_0000_0000_0000: a_shift = 12;
    16'bzzzz_1000_0000_0000: a_shift = 11;
    16'bzzzz_z100_0000_0000: a_shift = 10;
    16'bzzzz_zz10_0000_0000: a_shift = 9;
    16'bzzzz_zzz1_0000_0000: a_shift = 8;
    16'bzzzz_zzzz_1000_0000: a_shift = 7;
    16'bzzzz_zzzz_z100_0000: a_shift = 6;
    16'bzzzz_zzzz_zz10_0000: a_shift = 5;
    16'bzzzz_zzzz_zzz1_0000: a_shift = 4;
    16'bzzzz_zzzz_zzzz_1000: a_shift = 3;
    16'bzzzz_zzzz_zzzz_z100: a_shift = 2;
    16'bzzzz_zzzz_zzzz_zz10: a_shift = 1;
    default: a_shift = 0;
  endcase
  casez(shift_oprB)
    16'b1000_0000_0000_0000: b_shift = 15;
    16'bz100_0000_0000_0000: b_shift = 14;
    16'bzz10_0000_0000_0000: b_shift = 13;
    16'bzzz1_0000_0000_0000: b_shift = 12;
    16'bzzzz_1000_0000_0000: b_shift = 11;
    16'bzzzz_z100_0000_0000: b_shift = 10;
    16'bzzzz_zz10_0000_0000: b_shift = 9;
    16'bzzzz_zzz1_0000_0000: b_shift = 8;
    16'bzzzz_zzzz_1000_0000: b_shift = 7;
    16'bzzzz_zzzz_z100_0000: b_shift = 6;
    16'bzzzz_zzzz_zz10_0000: b_shift = 5;
    16'bzzzz_zzzz_zzz1_0000: b_shift = 4;
    16'bzzzz_zzzz_zzzz_1000: b_shift = 3;
    16'bzzzz_zzzz_zzzz_z100: b_shift = 2;
    16'bzzzz_zzzz_zzzz_zz10: b_shift = 1;
    default: b_shift = 0;
  endcase
end


always_comb begin : GCD_COMB
  gcd_shift_nxt = gcd_shift;
  gcd_A_nxt = 0;
  gcd_B_nxt = 0;
  gcd_run_nxt = 0;
  gcd_result = 0;
  if(~gcd_run) begin
    shift_oprA = registers[Rt_idx_nxt];
    shift_oprB = registers[Rs_idx_nxt];
    gcd_done = 1;
    if(gcd_load) begin
      gcd_run_nxt = 1;
      gcd_A_nxt = registers[Rt_idx_nxt] >> a_shift;
      gcd_B_nxt = registers[Rs_idx_nxt] >> b_shift;
      gcd_shift_nxt = (a_shift > b_shift)? b_shift : a_shift;
      if(primeA) begin
        gcd_result =  1 << gcd_shift_nxt;
        gcd_done = 1;
        gcd_run_nxt = 0;
      end
    end
  end else begin
    shift_oprA = gcd_A - gcd_B;
    shift_oprB = gcd_B - gcd_A;
    if(gcd_A > gcd_B) begin
      gcd_A_nxt = (gcd_A - gcd_B) >> a_shift;
      gcd_B_nxt = gcd_B;
    end else begin
      gcd_A_nxt = gcd_A;
      gcd_B_nxt = (gcd_B - gcd_A) >> b_shift;
    end
    if(~|gcd_B_nxt) begin
      gcd_result =  gcd_A_nxt << gcd_shift;
      gcd_done = 1;
      gcd_run_nxt = 0;
    end
    else if(primeA || checkone) begin
      gcd_result =  1 << gcd_shift;
      gcd_done = 1;
      gcd_run_nxt = 0;
    end
    // else if(~|gcd_A_nxt) begin
    //   gcd_result =  gcd_B_nxt << gcd_shift;
    //   gcd_done = 1;
    //   gcd_run_nxt = 0;
    // end
    else begin
      gcd_result =  0;
      gcd_done = 0;
      gcd_run_nxt = 1;
    end
  end
end

endmodule

