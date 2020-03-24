set moduleName Loop_3_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Loop_3_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_hw_input_stencil_stream_to_mul_V_value_V int 288 regular {fifo 0 volatile }  }
	{ p_mul_stencil_stream_V_value_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_hw_input_stencil_stream_to_mul_V_value_V", "interface" : "fifo", "bitwidth" : 288, "direction" : "READONLY"} , 
 	{ "Name" : "p_mul_stencil_stream_V_value_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_hw_input_stencil_stream_to_mul_V_value_V_dout sc_in sc_lv 288 signal 0 } 
	{ p_hw_input_stencil_stream_to_mul_V_value_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_hw_input_stencil_stream_to_mul_V_value_V_read sc_out sc_logic 1 signal 0 } 
	{ p_mul_stencil_stream_V_value_V_din sc_out sc_lv 32 signal 1 } 
	{ p_mul_stencil_stream_V_value_V_full_n sc_in sc_logic 1 signal 1 } 
	{ p_mul_stencil_stream_V_value_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_hw_input_stencil_stream_to_mul_V_value_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":288, "type": "signal", "bundle":{"name": "p_hw_input_stencil_stream_to_mul_V_value_V", "role": "dout" }} , 
 	{ "name": "p_hw_input_stencil_stream_to_mul_V_value_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_hw_input_stencil_stream_to_mul_V_value_V", "role": "empty_n" }} , 
 	{ "name": "p_hw_input_stencil_stream_to_mul_V_value_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_hw_input_stencil_stream_to_mul_V_value_V", "role": "read" }} , 
 	{ "name": "p_mul_stencil_stream_V_value_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_mul_stencil_stream_V_value_V", "role": "din" }} , 
 	{ "name": "p_mul_stencil_stream_V_value_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_mul_stencil_stream_V_value_V", "role": "full_n" }} , 
 	{ "name": "p_mul_stencil_stream_V_value_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_mul_stencil_stream_V_value_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_3_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_hw_input_stencil_stream_to_mul_V_value_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_hw_input_stencil_stream_to_mul_V_value_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_mul_stencil_stream_V_value_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "p_mul_stencil_stream_V_value_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_3_proc {
		p_hw_input_stencil_stream_to_mul_V_value_V {Type I LastRead 2 FirstWrite -1}
		p_mul_stencil_stream_V_value_V {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2067610", "Max" : "2067610"}
	, {"Name" : "Interval", "Min" : "2067610", "Max" : "2067610"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_hw_input_stencil_stream_to_mul_V_value_V { ap_fifo {  { p_hw_input_stencil_stream_to_mul_V_value_V_dout fifo_data 0 288 }  { p_hw_input_stencil_stream_to_mul_V_value_V_empty_n fifo_status 0 1 }  { p_hw_input_stencil_stream_to_mul_V_value_V_read fifo_update 1 1 } } }
	p_mul_stencil_stream_V_value_V { ap_fifo {  { p_mul_stencil_stream_V_value_V_din fifo_data 1 32 }  { p_mul_stencil_stream_V_value_V_full_n fifo_status 0 1 }  { p_mul_stencil_stream_V_value_V_write fifo_update 1 1 } } }
}