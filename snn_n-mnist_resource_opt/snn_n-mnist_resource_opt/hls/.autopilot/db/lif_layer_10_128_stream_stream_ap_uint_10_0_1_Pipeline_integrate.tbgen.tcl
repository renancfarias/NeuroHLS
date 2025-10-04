set moduleName lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 7
set C_modelName {lif_layer<10,128,stream,stream<ap_uint<10>,0>,1>_Pipeline_integrate}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_promoted22 int 9 regular  }
	{ p_promoted20 int 9 regular  }
	{ p_promoted18 int 9 regular  }
	{ p_promoted16 int 9 regular  }
	{ p_promoted14 int 9 regular  }
	{ p_promoted12 int 9 regular  }
	{ p_promoted10 int 9 regular  }
	{ p_promoted8 int 9 regular  }
	{ p_promoted6 int 9 regular  }
	{ p_promoted int 9 regular  }
	{ out1 int 10 regular {fifo 0 volatile }  }
	{ add_ln74_out int 16 regular {pointer 1}  }
	{ add_ln74_128_out int 16 regular {pointer 1}  }
	{ add_ln74_129_out int 16 regular {pointer 1}  }
	{ add_ln74_130_out int 16 regular {pointer 1}  }
	{ add_ln74_131_out int 16 regular {pointer 1}  }
	{ add_ln74_132_out int 16 regular {pointer 1}  }
	{ add_ln74_133_out int 16 regular {pointer 1}  }
	{ add_ln74_134_out int 16 regular {pointer 1}  }
	{ add_ln74_135_out int 16 regular {pointer 1}  }
	{ add_ln74_136_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_promoted22", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_promoted20", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_promoted18", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_promoted16", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_promoted14", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_promoted12", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_promoted10", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_promoted8", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_promoted6", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_promoted", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "out1", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln74_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln74_128_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln74_129_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln74_130_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln74_131_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln74_132_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln74_133_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln74_134_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln74_135_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "add_ln74_136_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_promoted22 sc_in sc_lv 9 signal 0 } 
	{ p_promoted20 sc_in sc_lv 9 signal 1 } 
	{ p_promoted18 sc_in sc_lv 9 signal 2 } 
	{ p_promoted16 sc_in sc_lv 9 signal 3 } 
	{ p_promoted14 sc_in sc_lv 9 signal 4 } 
	{ p_promoted12 sc_in sc_lv 9 signal 5 } 
	{ p_promoted10 sc_in sc_lv 9 signal 6 } 
	{ p_promoted8 sc_in sc_lv 9 signal 7 } 
	{ p_promoted6 sc_in sc_lv 9 signal 8 } 
	{ p_promoted sc_in sc_lv 9 signal 9 } 
	{ out1_dout sc_in sc_lv 10 signal 10 } 
	{ out1_empty_n sc_in sc_logic 1 signal 10 } 
	{ out1_read sc_out sc_logic 1 signal 10 } 
	{ add_ln74_out sc_out sc_lv 16 signal 11 } 
	{ add_ln74_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ add_ln74_128_out sc_out sc_lv 16 signal 12 } 
	{ add_ln74_128_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ add_ln74_129_out sc_out sc_lv 16 signal 13 } 
	{ add_ln74_129_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ add_ln74_130_out sc_out sc_lv 16 signal 14 } 
	{ add_ln74_130_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ add_ln74_131_out sc_out sc_lv 16 signal 15 } 
	{ add_ln74_131_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ add_ln74_132_out sc_out sc_lv 16 signal 16 } 
	{ add_ln74_132_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ add_ln74_133_out sc_out sc_lv 16 signal 17 } 
	{ add_ln74_133_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ add_ln74_134_out sc_out sc_lv 16 signal 18 } 
	{ add_ln74_134_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ add_ln74_135_out sc_out sc_lv 16 signal 19 } 
	{ add_ln74_135_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ add_ln74_136_out sc_out sc_lv 16 signal 20 } 
	{ add_ln74_136_out_ap_vld sc_out sc_logic 1 outvld 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_promoted22", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted22", "role": "default" }} , 
 	{ "name": "p_promoted20", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted20", "role": "default" }} , 
 	{ "name": "p_promoted18", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted18", "role": "default" }} , 
 	{ "name": "p_promoted16", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted16", "role": "default" }} , 
 	{ "name": "p_promoted14", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted14", "role": "default" }} , 
 	{ "name": "p_promoted12", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted12", "role": "default" }} , 
 	{ "name": "p_promoted10", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted10", "role": "default" }} , 
 	{ "name": "p_promoted8", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted8", "role": "default" }} , 
 	{ "name": "p_promoted6", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted6", "role": "default" }} , 
 	{ "name": "p_promoted", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_promoted", "role": "default" }} , 
 	{ "name": "out1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out1", "role": "dout" }} , 
 	{ "name": "out1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "empty_n" }} , 
 	{ "name": "out1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "read" }} , 
 	{ "name": "add_ln74_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_out", "role": "default" }} , 
 	{ "name": "add_ln74_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln74_128_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_128_out", "role": "default" }} , 
 	{ "name": "add_ln74_128_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_128_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln74_129_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_129_out", "role": "default" }} , 
 	{ "name": "add_ln74_129_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_129_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln74_130_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_130_out", "role": "default" }} , 
 	{ "name": "add_ln74_130_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_130_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln74_131_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_131_out", "role": "default" }} , 
 	{ "name": "add_ln74_131_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_131_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln74_132_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_132_out", "role": "default" }} , 
 	{ "name": "add_ln74_132_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_132_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln74_133_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_133_out", "role": "default" }} , 
 	{ "name": "add_ln74_133_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_133_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln74_134_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_134_out", "role": "default" }} , 
 	{ "name": "add_ln74_134_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_134_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln74_135_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_135_out", "role": "default" }} , 
 	{ "name": "add_ln74_135_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_135_out", "role": "ap_vld" }} , 
 	{ "name": "add_ln74_136_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "add_ln74_136_out", "role": "default" }} , 
 	{ "name": "add_ln74_136_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "add_ln74_136_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_promoted22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "out1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_128_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_129_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_130_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_131_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_132_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_133_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_134_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_135_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_136_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_1_9", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "integrate", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate {
		p_promoted22 {Type I LastRead 0 FirstWrite -1}
		p_promoted20 {Type I LastRead 0 FirstWrite -1}
		p_promoted18 {Type I LastRead 0 FirstWrite -1}
		p_promoted16 {Type I LastRead 0 FirstWrite -1}
		p_promoted14 {Type I LastRead 0 FirstWrite -1}
		p_promoted12 {Type I LastRead 0 FirstWrite -1}
		p_promoted10 {Type I LastRead 0 FirstWrite -1}
		p_promoted8 {Type I LastRead 0 FirstWrite -1}
		p_promoted6 {Type I LastRead 0 FirstWrite -1}
		p_promoted {Type I LastRead 0 FirstWrite -1}
		out1 {Type I LastRead 1 FirstWrite -1}
		add_ln74_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_128_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_129_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_130_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_131_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_132_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_133_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_134_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_135_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_136_out {Type O LastRead -1 FirstWrite 3}
		weights_1_0 {Type I LastRead -1 FirstWrite -1}
		weights_1_1 {Type I LastRead -1 FirstWrite -1}
		weights_1_2 {Type I LastRead -1 FirstWrite -1}
		weights_1_3 {Type I LastRead -1 FirstWrite -1}
		weights_1_4 {Type I LastRead -1 FirstWrite -1}
		weights_1_5 {Type I LastRead -1 FirstWrite -1}
		weights_1_6 {Type I LastRead -1 FirstWrite -1}
		weights_1_7 {Type I LastRead -1 FirstWrite -1}
		weights_1_8 {Type I LastRead -1 FirstWrite -1}
		weights_1_9 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "259"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "259"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_promoted22 { ap_none {  { p_promoted22 in_data 0 9 } } }
	p_promoted20 { ap_none {  { p_promoted20 in_data 0 9 } } }
	p_promoted18 { ap_none {  { p_promoted18 in_data 0 9 } } }
	p_promoted16 { ap_none {  { p_promoted16 in_data 0 9 } } }
	p_promoted14 { ap_none {  { p_promoted14 in_data 0 9 } } }
	p_promoted12 { ap_none {  { p_promoted12 in_data 0 9 } } }
	p_promoted10 { ap_none {  { p_promoted10 in_data 0 9 } } }
	p_promoted8 { ap_none {  { p_promoted8 in_data 0 9 } } }
	p_promoted6 { ap_none {  { p_promoted6 in_data 0 9 } } }
	p_promoted { ap_none {  { p_promoted in_data 0 9 } } }
	out1 { ap_fifo {  { out1_dout fifo_data_in 0 10 }  { out1_empty_n fifo_status 0 1 }  { out1_read fifo_port_we 1 1 } } }
	add_ln74_out { ap_vld {  { add_ln74_out out_data 1 16 }  { add_ln74_out_ap_vld out_vld 1 1 } } }
	add_ln74_128_out { ap_vld {  { add_ln74_128_out out_data 1 16 }  { add_ln74_128_out_ap_vld out_vld 1 1 } } }
	add_ln74_129_out { ap_vld {  { add_ln74_129_out out_data 1 16 }  { add_ln74_129_out_ap_vld out_vld 1 1 } } }
	add_ln74_130_out { ap_vld {  { add_ln74_130_out out_data 1 16 }  { add_ln74_130_out_ap_vld out_vld 1 1 } } }
	add_ln74_131_out { ap_vld {  { add_ln74_131_out out_data 1 16 }  { add_ln74_131_out_ap_vld out_vld 1 1 } } }
	add_ln74_132_out { ap_vld {  { add_ln74_132_out out_data 1 16 }  { add_ln74_132_out_ap_vld out_vld 1 1 } } }
	add_ln74_133_out { ap_vld {  { add_ln74_133_out out_data 1 16 }  { add_ln74_133_out_ap_vld out_vld 1 1 } } }
	add_ln74_134_out { ap_vld {  { add_ln74_134_out out_data 1 16 }  { add_ln74_134_out_ap_vld out_vld 1 1 } } }
	add_ln74_135_out { ap_vld {  { add_ln74_135_out out_data 1 16 }  { add_ln74_135_out_ap_vld out_vld 1 1 } } }
	add_ln74_136_out { ap_vld {  { add_ln74_136_out out_data 1 16 }  { add_ln74_136_out_ap_vld out_vld 1 1 } } }
}
