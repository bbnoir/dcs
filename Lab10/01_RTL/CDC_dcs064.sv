`include "synchronizer.v"
module CDC(// Input signals
			clk_1,
			clk_2,
			in_valid,
			rst_n,
			in_a,
			mode,
			in_b,
		  //  Output signals
			out_valid,
			out
			);		
input clk_1; 
input clk_2;			
input rst_n;
input in_valid;
input[3:0]in_a,in_b;
input mode;
output logic out_valid;
output logic [7:0]out; 			




//---------------------------------------------------------------------
//   your design  (Using synchronizer)       
// Example :
logic P,Q,Y;
synchronizer x5(.D(P),.Q(Y),.clk(clk_2),.rst_n(rst_n));           
//---------------------------------------------------------------------		

logic P_nxt;
logic CDC_res;
logic mode_reg, mode_nxt;
logic [3:0] in_a_reg, in_a_nxt;
logic [3:0] in_b_reg, in_b_nxt;
logic [7:0] out_nxt;

typedef enum logic [1:0] {IDLE, COMPUTE, OUT} STATE;
STATE state, state_nxt;

assign P_nxt = in_valid ^ P;

always_ff @(posedge clk_1, negedge rst_n) begin
    if(!rst_n)  P <= 0;
    else  P <= P_nxt;
end

always_ff @(posedge clk_2, negedge rst_n) begin
    if(!rst_n)  Q <= 0;
    else  Q <= Y;
end

assign CDC_res = Q ^ Y;

always_ff @(posedge clk_1, negedge rst_n) begin
    if(!rst_n)  begin
        mode_reg <= 0;
        in_a_reg <= 0;
        in_b_reg <= 0;
    end
    else begin
        mode_reg <= mode_nxt;
        in_a_reg <= in_a_nxt;
        in_b_reg <= in_b_nxt;
    end
end

always_comb begin
    if(in_valid) begin
        mode_nxt = mode;
        in_a_nxt = in_a;
        in_b_nxt = in_b;
    end
    else begin
        mode_nxt = mode_reg;
        in_a_nxt = in_a_reg;
        in_b_nxt = in_b_reg;
    end
end

always_ff @(posedge clk_2, negedge rst_n) begin
    if(!rst_n)  state <= IDLE;
    else  state <= state_nxt;
end

always_comb begin
    state_nxt = state;
    case(state)
        IDLE: begin
            if(CDC_res) state_nxt = COMPUTE;
        end
        COMPUTE: begin
            state_nxt = OUT;
        end
        OUT: begin
            state_nxt = IDLE;
        end
    endcase
end

always_comb begin
    if(state == OUT) out_valid = 1;
    else out_valid = 0;
end

always_comb begin
    if(state == COMPUTE) begin
        if(mode_reg == 0) out_nxt = in_a_reg + in_b_reg;
        else out_nxt = in_a_reg * in_b_reg;
    end
    else out_nxt = 0;
end

always_ff @(posedge clk_2, negedge rst_n) begin
    if(!rst_n)  out <= 0;
    else  out <= out_nxt;
end





		
endmodule