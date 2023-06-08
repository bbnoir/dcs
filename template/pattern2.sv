`timescale 1ns/10ps
`define CYCLE_TIME 10
module PATTERN(
  // output signals
	clk,
	rst_n,
  in_valid,
  in_data,
  // input signals
	out_valid,
  out_data
);

output logic  clk,rst_n,in_valid;
output logic [3:0] in_data;
input out_valid, out_data;


//================================================================
// parameters & integer
//================================================================
integer golden_out;
integer PAT_NUM = 10;
integer patcount;
integer latency;
integer total_latency = 0;
integer k, input_file, output_file;
integer ans;
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
	input_file=$fopen("../00_TESTBED/input.txt","r");
  output_file=$fopen("../00_TESTBED/output.txt","r");
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
  in_data = 'd0;

  force clk = 0;

  #CYCLE; rst_n = 'd0;
  #CYCLE; rst_n = 'd1;
  if(out_valid !== 'b0 || out_data !== 'd0) begin
    show_fail_task(RST_FAIL);
    repeat(2) #CYCLE;
    $finish;
  end

  #CYCLE; release clk;
end endtask

task input_task; begin
  bit [3:0] exc[4];
  for(int i = 0; i < 4; i = i + 1)begin
    k = $fscanf(input_file,"%b",exc[i]);
  end

  //begin input
	in_valid = 1;
	for(int i = 0; i < 4; i = i + 1)begin
		in_data = exc[i];
    check_ovlap_task;
		@(negedge clk);
	end

  //set golden_out
  k = $fscanf(output_file,"%b",golden_out);

  //end input
	in_valid = 0;
	in_data = 0;
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
  //check ans
  ans = 0;
  for(int i = 0; i < 10; i = i+1) begin
    ans = ans + out_data*(2**(9-i));
    @(negedge clk);
  end
  if(ans !== golden_out) begin
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
    if(out_data !== 0) begin
      show_fail_task(OUTRESULT_RST_FAIL);
      repeat(2) #CYCLE;
      $finish ;
    end
end endtask

task show_fail_task(input integer fail_type);
  $display ("----------------------------------------------------------------------------------------------------");
  $display ("                                               FAIL!                                                ");
  $display ("                                               PAT: %d                                     ",patcount);
  case(fail_type)
    RST_FAIL: begin
      $display ("                                               SPEC1                                               ");
      $display ("                                               Reset                                                ");
    end
    OUTVALID_RST_FAIL: begin
      $display ("                                               SPEC2                                                ");
      $display ("                                  Outvalid should be zero after check                               ");
    end
    OUTVALID_OVERLAP: begin
      $display ("                                               SPEC3                                                ");
      $display ("                         Outvalid should not be overlapped with invalid                             ");
    end
    LATENCY_FAIL: begin
      $display ("                                               SPEC4                                                ");
      $display ("                            The execution latency are over 100  cycles                              ");
    end
    ANS_FAIL: begin
      $display ("                                               SPEC5                                                ");
      $display ("                                               YOUR:  %d                                ",ans);
      $display ("                                               golden_out: %d                           ",golden_out);
    end
    OUTRESULT_RST_FAIL: begin
      $display ("                                               SPEC6                                                ");
      $display ("                              Output should be zero when outvalid is zero                           ");
    end
    default: begin
      $display ("                                               Unknown                                              ");
    end
  endcase
      $display ("----------------------------------------------------------------------------------------------------");
endtask


endmodule

task YOU_PASS_task; begin
  $display ("----------------------------------------------------------------------------------------------------");
  $display ("                                               Congratulations!                                     ");
  $display ("                                               You have passed all patterns!						             ");
  $display ("----------------------------------------------------------------------------------------------------");

  $finish;	
end endtask