module DCT(
	// Input signals
	clk,
	rst_n,
	in_valid,
	in_data,
	// Output signals
	out_valid,
	out_data
);

//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION                         
//---------------------------------------------------------------------
input        clk, rst_n, in_valid;
input signed [7:0]in_data;
output logic out_valid;
output logic signed[9:0]out_data;

//---------------------------------------------------------------------
//   REG AND WIRE DECLARATION                         
//---------------------------------------------------------------------
integer i,j;
integer k,m;
parameter IDLE = 0;
parameter INPUT = 1;
parameter CAL1 = 2;
parameter CAL2 = 3;
parameter OUTPUT = 4;
logic signed [7:0]dctmtx[0:3][0:3];

logic [2:0]STATE,NS;
logic [3:0]input_cnt;
logic signed [7:0]inbuffer[0:3][0:3];
logic [3:0]output_cnt;
logic signed [9:0]outbuffer[0:3][0:3];
//finish your declaration
logic signed [9:0]outbuffer_nxt;
logic [3:0] cal_cnt;
logic signed [15:0] mul1[0:3];
logic signed [15:0] mul2[0:3];
logic signed [16:0] cal_out1;
logic signed [16:0] cal_out2;
logic signed [9:0]tmp_outbuffer[0:3][0:3];
logic signed [9:0]tmp_outbuffer_nxt;



//---------------------------------------------------------------------
//   YOUR DESIGN                         
//---------------------------------------------------------------------
assign dctmtx[0][0] = 8'b01000000;
assign dctmtx[0][1] = 8'b01000000;
assign dctmtx[0][2] = 8'b01000000;
assign dctmtx[0][3] = 8'b01000000;
assign dctmtx[1][0] = 8'b01010011;
assign dctmtx[1][1] = 8'b00100010;
assign dctmtx[1][2] = 8'b11011110;
assign dctmtx[1][3] = 8'b10101101;
assign dctmtx[2][0] = 8'b01000000;
assign dctmtx[2][1] = 8'b11000000;
assign dctmtx[2][2] = 8'b11000000;
assign dctmtx[2][3] = 8'b01000000;
assign dctmtx[3][0] = 8'b00100010;
assign dctmtx[3][1] = 8'b10101101;
assign dctmtx[3][2] = 8'b01010011;
assign dctmtx[3][3] = 8'b11011110;


always_ff@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		STATE<=0;
		out_valid<=0;
		out_data<=0;
	end
	else begin
		STATE<=NS;
		out_valid<= (STATE==OUTPUT);
		out_data<= (STATE==OUTPUT ? outbuffer[output_cnt[3:2]][output_cnt[1:0]] : 0);
	end
end

always_comb begin
	outbuffer_nxt = 0;
	tmp_outbuffer_nxt = 0;
	case(STATE)
		IDLE:begin
			if(in_valid)	NS = INPUT;
			else 			NS = STATE;
		end
		INPUT:begin
			if(~in_valid)	NS =  CAL1;
			else 			NS = STATE;
		end
		//next state start matrix multiplication
		//finish your FSM
		CAL1:begin
			if(cal_cnt==15)NS = CAL2;
			else 			NS = STATE;

			mul1[0] = dctmtx[cal_cnt[3:2]][0] * inbuffer[0][cal_cnt[1:0]];
			mul1[1] = dctmtx[cal_cnt[3:2]][1] * inbuffer[1][cal_cnt[1:0]];
			mul1[2] = dctmtx[cal_cnt[3:2]][2] * inbuffer[2][cal_cnt[1:0]];
			mul1[3] = dctmtx[cal_cnt[3:2]][3] * inbuffer[3][cal_cnt[1:0]];
			cal_out1 = (mul1[0] + mul1[1] + mul1[2] + mul1[3]) / $signed(128);
			tmp_outbuffer_nxt = cal_out1;

		end
		CAL2:begin
			if(cal_cnt==15)NS = OUTPUT;
			else 			NS = STATE;

			mul2[0] = tmp_outbuffer[cal_cnt[3:2]][0] * dctmtx[cal_cnt[1:0]][0];
			mul2[1] = tmp_outbuffer[cal_cnt[3:2]][1] * dctmtx[cal_cnt[1:0]][1];
			mul2[2] = tmp_outbuffer[cal_cnt[3:2]][2] * dctmtx[cal_cnt[1:0]][2];
			mul2[3] = tmp_outbuffer[cal_cnt[3:2]][3] * dctmtx[cal_cnt[1:0]][3];
			cal_out2 = (mul2[0] + mul2[1] + mul2[2] + mul2[3]) / $signed(128);
			outbuffer_nxt = cal_out2;

		end
		OUTPUT:begin
			if(output_cnt==15)NS = IDLE;
			else 			NS = STATE;
		end
		default:begin
			NS = STATE;
		end
	endcase
end

always_ff@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		input_cnt<=0;
	end
	else begin
		if(in_valid)begin
			input_cnt<=input_cnt+1;
		end
		else begin
			input_cnt<=0;
		end
	end
end

always_ff@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		for(i=0;i<4;i=i+1)begin
			for(j=0;j<4;j=j+1)begin
				inbuffer[i][j]<=0;
			end
		end
	end
	else begin
		if(in_valid)begin
			inbuffer[input_cnt[3:2]][input_cnt[1:0]]<=in_data;
		end
	end
end

always_ff@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		output_cnt<=0;
	end
	else begin
		if(STATE==OUTPUT)begin
			output_cnt<=output_cnt+1;
		end
		else begin
			output_cnt<=0;
		end
	end
end
//input matrix stored in inbuffer
//output matrix should store in outbuffer
//finish your matrix multiplier

always_ff@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		cal_cnt<=0;
	end
	else begin
		if(STATE==CAL1 || STATE==CAL2)begin
			cal_cnt<=cal_cnt+1;
		end
		else begin
			cal_cnt<=0;
		end
	end
end


always_ff@(posedge clk or negedge rst_n)begin
	if(~rst_n)begin
		for(k=0;k<4;k=k+1)begin
			for(m=0;m<4;m=m+1)begin
				outbuffer[k][m]<=0;
				tmp_outbuffer[k][m]<=0;
			end
		end
	end
	else begin
		if(STATE==CAL2)begin
			outbuffer[cal_cnt[3:2]][cal_cnt[1:0]]<=outbuffer_nxt;
		end
		if(STATE==CAL1)begin
			tmp_outbuffer[cal_cnt[3:2]][cal_cnt[1:0]]<=tmp_outbuffer_nxt;
		end
	end
end









endmodule