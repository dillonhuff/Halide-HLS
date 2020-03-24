set moduleName Block_preheader39_p
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Block_.preheader39.p}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_mul_stencil_stream_V_value_V int 128 regular {fifo 0 volatile }  }
	{ hw_output_V_value_V int 8 regular {pointer 1 volatile }  }
	{ hw_output_V_last_V int 1 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_mul_stencil_stream_V_value_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "hw_output_V_value_V", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "hw_output_V_last_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_mul_stencil_stream_V_value_V_dout sc_in sc_lv 128 signal 0 } 
	{ p_mul_stencil_stream_V_value_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_mul_stencil_stream_V_value_V_read sc_out sc_logic 1 signal 0 } 
	{ hw_output_V_value_V sc_out sc_lv 8 signal 1 } 
	{ hw_output_V_value_V_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ hw_output_V_value_V_ap_ack sc_in sc_logic 1 outacc 1 } 
	{ hw_output_V_last_V sc_out sc_lv 1 signal 2 } 
	{ hw_output_V_last_V_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ hw_output_V_last_V_ap_ack sc_in sc_logic 1 outacc 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_mul_stencil_stream_V_value_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "p_mul_stencil_stream_V_value_V", "role": "dout" }} , 
 	{ "name": "p_mul_stencil_stream_V_value_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_mul_stencil_stream_V_value_V", "role": "empty_n" }} , 
 	{ "name": "p_mul_stencil_stream_V_value_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_mul_stencil_stream_V_value_V", "role": "read" }} , 
 	{ "name": "hw_output_V_value_V", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hw_output_V_value_V", "role": "default" }} , 
 	{ "name": "hw_output_V_value_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hw_output_V_value_V", "role": "ap_vld" }} , 
 	{ "name": "hw_output_V_value_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "hw_output_V_value_V", "role": "ap_ack" }} , 
 	{ "name": "hw_output_V_last_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hw_output_V_last_V", "role": "default" }} , 
 	{ "name": "hw_output_V_last_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hw_output_V_last_V", "role": "ap_vld" }} , 
 	{ "name": "hw_output_V_last_V_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "hw_output_V_last_V", "role": "ap_ack" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Block_preheader39_p",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_mul_stencil_stream_V_value_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_mul_stencil_stream_V_value_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hw_output_V_value_V", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hw_output_V_value_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hw_output_V_last_V", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "hw_output_V_last_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_p2_mul1_stencil_str_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_preheader39_p {
		p_mul_stencil_stream_V_value_V {Type I LastRead 0 FirstWrite -1}
		hw_output_V_value_V {Type O LastRead -1 FirstWrite 2}
		hw_output_V_last_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_mul_stencil_stream_V_value_V { ap_fifo {  { p_mul_stencil_stream_V_value_V_dout fifo_data 0 128 }  { p_mul_stencil_stream_V_value_V_empty_n fifo_status 0 1 }  { p_mul_stencil_stream_V_value_V_read fifo_update 1 1 } } }
	hw_output_V_value_V { ap_hs {  { hw_output_V_value_V out_data 1 8 }  { hw_output_V_value_V_ap_vld out_vld 1 1 }  { hw_output_V_value_V_ap_ack out_acc 0 1 } } }
	hw_output_V_last_V { ap_hs {  { hw_output_V_last_V out_data 1 1 }  { hw_output_V_last_V_ap_vld out_vld 1 1 }  { hw_output_V_last_V_ap_ack out_acc 0 1 } } }
}
