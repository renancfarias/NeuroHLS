set moduleName lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
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
set C_modelName {lif_layer<10, 128, stream<ap_uint<10>, 0>, stream<ap_uint<10>, 0>, 1>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ out1 int 10 regular {fifo 0 volatile }  }
	{ out2 int 10 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "out1", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "out2", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out1_dout sc_in sc_lv 10 signal 0 } 
	{ out1_empty_n sc_in sc_logic 1 signal 0 } 
	{ out1_read sc_out sc_logic 1 signal 0 } 
	{ out2_din sc_out sc_lv 10 signal 1 } 
	{ out2_full_n sc_in sc_logic 1 signal 1 } 
	{ out2_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out1", "role": "dout" }} , 
 	{ "name": "out1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "empty_n" }} , 
 	{ "name": "out1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out1", "role": "read" }} , 
 	{ "name": "out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out2", "role": "din" }} , 
 	{ "name": "out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out2", "role": "full_n" }} , 
 	{ "name": "out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "272",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "out1", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "out2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_1", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_2", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_5", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_6", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_7", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_8", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_9", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_3_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_4_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_5_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_6_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_7_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_8_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_9_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s {
		out1 {Type I LastRead 10 FirstWrite -1}
		out2 {Type O LastRead -1 FirstWrite 1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_9 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_8 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_7 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_6 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_5 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_4 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_3 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_2 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_1 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials {Type IO LastRead -1 FirstWrite -1}
		weights_1_0 {Type I LastRead -1 FirstWrite -1}
		weights_1_1 {Type I LastRead -1 FirstWrite -1}
		weights_1_2 {Type I LastRead -1 FirstWrite -1}
		weights_1_3 {Type I LastRead -1 FirstWrite -1}
		weights_1_4 {Type I LastRead -1 FirstWrite -1}
		weights_1_5 {Type I LastRead -1 FirstWrite -1}
		weights_1_6 {Type I LastRead -1 FirstWrite -1}
		weights_1_7 {Type I LastRead -1 FirstWrite -1}
		weights_1_8 {Type I LastRead -1 FirstWrite -1}
		weights_1_9 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "11", "Max" : "272"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "272"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	out1 { ap_fifo {  { out1_dout fifo_data_in 0 10 }  { out1_empty_n fifo_status 0 1 }  { out1_read fifo_port_we 1 1 } } }
	out2 { ap_fifo {  { out2_din fifo_data_in 1 10 }  { out2_full_n fifo_status 0 1 }  { out2_write fifo_port_we 1 1 } } }
}
