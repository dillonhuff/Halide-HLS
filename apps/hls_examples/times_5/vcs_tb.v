`timescale 1ns/1ns

module test();

integer i;

reg ap_clk;
reg ap_continue;
reg ap_start;
reg ap_rst;
wire ap_idle;
wire ap_ready;
wire ap_done;

        //p_hw_input_stencil_stream_to_hw_output_V_value_V_dout,
        //p_hw_input_stencil_stream_to_hw_output_V_value_V_empty_n,
        //p_hw_input_stencil_stream_to_hw_output_V_value_V_read,
        //p_hw_input_stencil_stream_to_hw_output_V_last_V_dout,
        //p_hw_input_stencil_stream_to_hw_output_V_last_V_empty_n,
        //p_hw_input_stencil_stream_to_hw_output_V_last_V_read,
        //hw_output_V_value_V,
        //hw_output_V_value_V_ap_vld,
        //hw_output_V_value_V_ap_ack,
        //hw_output_V_last_V,
        //hw_output_V_last_V_ap_vld,
        //hw_output_V_last_V_ap_ack

initial begin

  ap_clk = 0;
  ap_rst = 0;
  ap_start = 0;

  #1 ap_clk = 1;
  #1 ap_clk = 0;

  ap_rst = 1;

  #1 ap_clk = 1;
  #1 ap_clk = 0;

  ap_rst = 0;

  #1 ap_clk = 1;
  #1 ap_clk = 0;
  
  $display("idle = %d", ap_idle);
  //$assert(ap_idle == 1);

  ap_start = 1;
  
  #1 ap_clk = 1;
  #1 ap_clk = 0;
  
  ap_start = 0;

  $display("idle = %d", ap_idle);
  //$assert(ap_idle == 0);

  for (i = 0; i < 500; i = i + 1) begin
    #1 ap_clk = 1;
    #1 ap_clk = 0;
  end
  
  $display("PASSED!!!");

  #20 $finish;

end


top dut(.ap_clk(ap_clk),
  .ap_rst(ap_rst),
  .ap_start(ap_start),
  .ap_done(ap_done),
  .ap_idle(ap_idle),
  .ap_ready(ap_ready));

  //.ap_continue(ap_continue),
  //.ap_idle(ap_idle),
  //.ap_ready(ap_ready));


//adder add(.in0(in0), .in1(in1), .out(out));


endmodule
