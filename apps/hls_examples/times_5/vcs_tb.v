`timescale 1ns/1ns

module test();

integer i;

reg ap_clk;
reg ap_start;
reg ap_rst;
wire ap_idle;
wire ap_ready;
wire ap_done;

reg hw_input_V_value_V_ap_vld;
wire hw_input_V_value_V_ap_ack;
reg hw_input_V_last_V_ap_vld;
wire hw_input_V_last_V_ap_ack;
wire hw_output_V_value_V_ap_vld;
reg hw_output_V_value_V_ap_ack;
wire hw_output_V_last_V_ap_vld;
reg hw_output_V_last_V_ap_ack;

initial begin

  ap_clk = 0;
  ap_rst = 0;
  ap_start = 0;

  #1 ap_clk = 1;
  #1 ap_clk = 0;

  hw_input_V_value_V_ap_vld = 0;
  hw_input_V_last_V_ap_vld = 0;

  hw_output_V_value_V_ap_ack = 0;
  hw_output_V_last_V_ap_ack = 0;

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

  hw_input_V_value_V_ap_vld = 1;
  hw_input_V_last_V_ap_vld = 1;
  for (i = 0; i < 500; i = i + 1) begin

    //hw_output_V_value_V_ap_ack = 1;
    //hw_output_V_last_V_ap_ack = 1;

    $display("input ack   ? %d", dut.hw_input_V_value_V_ap_ack);
    $display("output vld  ? %d", dut.hw_output_V_value_V_ap_vld);

    #1 ap_clk = 1;
    #1 ap_clk = 0;

    if (hw_input_V_value_V_ap_ack) begin
      hw_input_V_value_V_ap_vld = 0;
    end

    if (hw_input_V_last_V_ap_ack) begin
      hw_input_V_last_V_ap_vld = 0;
    end
  end

  $display("Done ? %d", ap_done);
  $display("PASSED!!!");

  #20 $finish;

end


top dut(.ap_clk(ap_clk),
  .ap_rst(ap_rst),
  .ap_start(ap_start),
  .ap_done(ap_done),
  .ap_idle(ap_idle),
  .ap_ready(ap_ready),
  .hw_input_V_value_V_ap_vld(hw_input_V_value_V_ap_vld),
  .hw_input_V_last_V_ap_vld(hw_input_V_last_V_ap_vld),

  .hw_input_V_value_V_ap_ack(hw_input_V_value_V_ap_ack),
  .hw_input_V_last_V_ap_ack(hw_input_V_value_V_ap_ack),
  
  .hw_output_V_value_V_ap_ack(hw_output_V_value_V_ap_ack),
  .hw_output_V_last_V_ap_ack(hw_output_V_value_V_ap_ack),

  .hw_output_V_value_V_ap_vld(hw_output_V_value_V_ap_vld),
  .hw_output_V_last_V_ap_vld(hw_output_V_last_V_ap_vld));

//.p_hw_input_stencil_stream_to_hw_output_V_value_V_empty_n(1'b1));
//.p_hw_input_stencil_stream_to_hw_output_V_value_V_empty_n(p_hw_input_stencil_stream_to_hw_output_V_value_V_empty_n));
//.p_hw_input_stencil_stream_to_hw_output_V_last_V_empty_n(p_hw_input_stencil_stream_to_hw_output_V_last_V_empty_n));

//.ap_continue(ap_continue),
//.ap_idle(ap_idle),
//.ap_ready(ap_ready));


//adder add(.in0(in0), .in1(in1), .out(out));


endmodule
