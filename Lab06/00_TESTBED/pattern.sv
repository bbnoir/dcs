`timescale 1ns/10ps
`define CYCLE_TIME 10
module pattern(
  // output signals
	clk,
	rst_n,
  in_number,
  mode,
  in_valid,
  // input signals
	out_valid,
	out_result
);

output logic  clk,rst_n,in_valid;
output logic signed [3:0] in_number ;
output logic [1:0] mode;
input out_valid;
input signed [5:0] out_result;


//================================================================
// parameters & integer
//================================================================
logic signed [3:0] in_sort[0:3];
logic signed [5:0] golden_out;
integer PAT_NUM = 500;
integer patcount;
integer latency;
integer total_latency = 0;
typedef enum integer {
  RST_FAIL,
  OUTVALID_OVERLAP,
  OUTVALID_RST_FAIL,
  LATENCY_FAIL,
  ANS_FAIL,
  OUTRESULT_RST_FAIL
} FAIL_TYPE;

integer CYCLE = `CYCLE_TIME;
always	#(CYCLE/2.0) clk = ~clk;

//================================================================
// initial
//================================================================
//main block
initial begin
  reset_task;
  for(patcount=0; patcount<PAT_NUM; patcount=patcount+1)
  begin
    input_task;
    wait_out_valid_task;
    check_ans_task;
  end
  YOU_PASS_task;
end

//================================================================
// tasks
//================================================================

task reset_task; begin
  rst_n = 'd1;
  in_valid = 'd0;
  in_number = 'd0;
  mode = 'dx;

  force clk = 0;

  #CYCLE; rst_n = 'd0;
  #CYCLE; rst_n = 'd1;
  if(out_valid !== 'b0 || out_result !== 'd0) begin
    show_fail_task(RST_FAIL);
    repeat(2) #CYCLE;
    $finish;
  end

  #CYCLE; release clk;
end endtask

task input_task; begin

  logic signed [3:0] temp;
  mode = $urandom_range(0, 3);

  //begin input
	in_valid = 1;
	for(int i = 0; i < 4; i = i + 1)begin
		in_number = $urandom_range(15, 0);
    in_sort[i] = in_number;
    check_ovlap_task;
		@(negedge clk);
	end

  //set golden_out
  //bubble sort
  for(int i = 0, len = 4; i < len-1; i = i + 1)begin
    for(int j = 0; j < len-1-i; j = j + 1) begin
      if(in_sort[j] > in_sort[j + 1]) begin
        temp = in_sort[j];
        in_sort[j] = in_sort[j + 1];
        in_sort[j + 1] = temp;
      end
    end
  end
  if(mode == 0)
      golden_out = in_sort[0] + in_sort[1];
  else if(mode == 1)
      golden_out = in_sort[1] - in_sort[0];
  else if(mode == 2)
      golden_out = in_sort[3] - in_sort[2];
  else if(mode == 3)
      golden_out = in_sort[0] - in_sort[3];

  //end input
	in_valid = 0;
	in_number = 0;
end endtask

task wait_out_valid_task; begin
  latency = 0;
  while(out_valid !== 'b1) begin
    latency = latency + 1;
    if(latency >= 100) begin
      show_fail_task(LATENCY_FAIL);
      repeat(2) #CYCLE;
      $finish;
    end
    @(negedge clk);
  end
  total_latency = total_latency + latency;
end endtask

task check_ans_task; begin
  if(out_result !== golden_out) begin
    show_fail_task(ANS_FAIL);
    $finish;
  end
  @(negedge clk);

  check_outvalidrst_task;
  check_outresultrst_task;
end endtask

task check_ovlap_task ; begin
    if(in_valid !== 0 && out_valid !== 0) begin
      show_fail_task(OUTVALID_OVERLAP);
      repeat(2) #CYCLE;
	    $finish ;
    end
end endtask

task check_outvalidrst_task ; begin
    if(out_valid !== 0) begin
      show_fail_task(OUTVALID_RST_FAIL);
      repeat(2) #CYCLE;
      $finish ;
    end
end endtask

task check_outresultrst_task ; begin
    if(out_result !== 0) begin
      show_fail_task(OUTRESULT_RST_FAIL);
      repeat(2) #CYCLE;
      $finish ;
    end
end endtask

task show_fail_task(input integer fail_type);
  case(fail_type)
    RST_FAIL: begin
      $display ("----------------------------------------------------------------------------------------------------");
      $display ("                                               FAIL!                                                ");
      $display ("                                               SPEC1                                               ");
      $display ("                                               Reset                                                ");
      $display ("----------------------------------------------------------------------------------------------------");
    end
    OUTVALID_RST_FAIL: begin
      $display ("----------------------------------------------------------------------------------------------------");
      $display ("                                               FAIL!                                                ");
      $display ("                                               SPEC2                                                ");
      $display ("                                  Outvalid should be zero after check                               ");
      $display ("----------------------------------------------------------------------------------------------------");
    end
    OUTVALID_OVERLAP: begin
      $display ("----------------------------------------------------------------------------------------------------");
      $display ("                                               FAIL!                                                ");
      $display ("                                               SPEC3                                                ");
      $display ("                         Outvalid should not be overlapped with invalid                             ");
      $display ("----------------------------------------------------------------------------------------------------");
    end
    LATENCY_FAIL: begin
      $display ("----------------------------------------------------------------------------------------------------");
      $display ("                                               FAIL!                                                ");
      $display ("                                               SPEC4                                                ");
      $display ("                            The execution latency are over 100  cycles                              ");
      $display ("----------------------------------------------------------------------------------------------------");
    end
    ANS_FAIL: begin
      $display ("----------------------------------------------------------------------------------------------------");
      $display ("                                               FAIL!                                                ");
      $display ("                                               SPEC5                                                ");
      $display ("                                               YOUR:  %d                                ",out_result);
      $display ("                                               golden_out: %d                           ",golden_out);
      $display ("----------------------------------------------------------------------------------------------------");
    end
    OUTRESULT_RST_FAIL: begin
      $display ("----------------------------------------------------------------------------------------------------");
      $display ("                                               FAIL!                                                ");
      $display ("                                               SPEC6                                                ");
      $display ("                              Output should be zero when outvalid is zero                           ");
      $display ("----------------------------------------------------------------------------------------------------");
    end
    default: begin
      $display ("----------------------------------------------------------------------------------------------------");
      $display ("                                               FAIL!                                                ");
      $display ("                                               Unknown                                              ");
      $display ("----------------------------------------------------------------------------------------------------");
    end
  endcase
endtask


endmodule

task YOU_PASS_task; begin
  $display ("----------------------------------------------------------------------------------------------------");
  $display ("                                               Congratulations!                                     ");
  $display ("                                               You have passed all patterns!						             ");
  $display ("----------------------------------------------------------------------------------------------------");

  $finish;	
end endtask