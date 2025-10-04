set moduleName snn_mnist_hls
set isTopModule 1
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
set C_modelName {snn_mnist_hls}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict output_r { MEM_WIDTH 1 MEM_SIZE 10 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ input_r int 10 regular {fifo 0 volatile }  }
	{ output_r int 1 regular {array 10 { 0 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_dout sc_in sc_lv 10 signal 0 } 
	{ input_r_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_r_read sc_out sc_logic 1 signal 0 } 
	{ output_r_address0 sc_out sc_lv 4 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 1 signal 1 } 
	{ output_r_address1 sc_out sc_lv 4 signal 1 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ output_r_we1 sc_out sc_logic 1 signal 1 } 
	{ output_r_d1 sc_out sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "input_r", "role": "dout" }} , 
 	{ "name": "input_r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "empty_n" }} , 
 	{ "name": "input_r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "read" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "132", "145", "146"],
		"CDFG" : "snn_mnist_hls",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "145", "EstimateLatencyMax" : "1998",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_117", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_117", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_128", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_128", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_95", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_95", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_86", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_86", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_85", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_85", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_84", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_84", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_83", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_83", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_82", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_82", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_81", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_81", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_80", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_80", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_79", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_79", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_78", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_78", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_77", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_77", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_76", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_76", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_75", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_75", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_74", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_74", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_73", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_73", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_72", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_72", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_71", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_70", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_69", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_68", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_67", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_66", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_65", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_64", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_63", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_62", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_61", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_60", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_59", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_58", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_57", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_56", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_55", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_54", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_53", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_52", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_51", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_50", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_49", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_48", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_47", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_46", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_45", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_44", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_43", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_42", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_41", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_40", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_39", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_38", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_37", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_36", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_35", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_34", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_33", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_32", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_31", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_30", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_29", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_28", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_27", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_26", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_25", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_24", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_23", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_22", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_21", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_20", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_19", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_18", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_17", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_16", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_118", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_118", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_119", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_119", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_120", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_120", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_121", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_121", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_122", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_122", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_123", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_123", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_124", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_124", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_125", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_125", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_126", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_126", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_127", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_127", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_129", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_129", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_130", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_130", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_131", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_131", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_132", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_132", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_133", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_133", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_134", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_134", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_99", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_99", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_98", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_98", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_97", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_97", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_96", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_96", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_94", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_94", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_93", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_93", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_92", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_92", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_91", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_91", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_90", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_90", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_89", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_89", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_88", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_88", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_87", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_87", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_16", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_17", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_18", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_19", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_20", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_21", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_22", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_23", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_24", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_25", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_26", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_27", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_28", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_29", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_30", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_31", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_32", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_33", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_34", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_35", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_36", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_37", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_38", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_39", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_40", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_41", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_42", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_43", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_44", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_45", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_46", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_47", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_48", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_49", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_50", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_51", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_52", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_53", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_54", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_55", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_56", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_57", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_58", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_59", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_60", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_61", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_62", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_63", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_64", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_65", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_66", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_67", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_68", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_69", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_70", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_71", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_72", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_73", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_74", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_75", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_76", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_77", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_78", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_79", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_79", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_80", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_80", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_81", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_81", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_82", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_82", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_83", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_83", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_84", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_84", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_85", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_85", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_86", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_86", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_87", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_87", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_88", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_88", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_89", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_89", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_90", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_90", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_91", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_91", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_92", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_92", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_93", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_93", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_94", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_94", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_95", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_95", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_96", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_96", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_97", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_97", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_98", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_98", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_99", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_99", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_100", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_101", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_101", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_102", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_102", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_103", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_103", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_104", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_104", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_105", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_105", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_106", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_106", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_107", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_107", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_108", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_108", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_109", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_109", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_110", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_110", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_111", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_111", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_112", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_112", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_113", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_113", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_114", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_114", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_115", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_115", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_116", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_116", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_117", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_117", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_118", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_118", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_119", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_119", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_120", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_120", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_121", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_121", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_122", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_122", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_123", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_123", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_124", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_124", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_125", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_125", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_126", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_126", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights_0_127", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Port" : "weights_0_127", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_128_potentials", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "weights_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Port" : "weights_1_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "write_output", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "1702",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "input_r", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "out1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_117", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_128", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_118", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_119", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_120", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_121", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_122", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_123", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_124", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_125", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_126", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_127", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_129", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_130", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_131", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_132", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_133", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_134", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "weights_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_0", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_1", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_2", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_3", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_4", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_5", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_6", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_7", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_8", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_9", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_10", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_11", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_12", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_13", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_14", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_15", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_16", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_17", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_18", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_19", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_20", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_21", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_22", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_23", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_24", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_25", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_26", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_27", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_28", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_29", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_30", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_31", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_32", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_33", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_33", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_34", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_34", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_35", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_35", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_36", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_36", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_37", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_37", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_38", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_38", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_39", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_39", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_40", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_40", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_41", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_41", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_42", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_43", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_43", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_44", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_44", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_45", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_45", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_46", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_46", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_47", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_47", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_48", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_48", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_49", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_49", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_50", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_50", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_51", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_51", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_52", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_52", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_53", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_53", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_54", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_54", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_55", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_55", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_56", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_56", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_57", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_57", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_58", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_58", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_59", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_59", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_60", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_60", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_61", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_61", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_62", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_62", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_63", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_63", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_64", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_64", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_65", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_65", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_66", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_66", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_67", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_67", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_68", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_68", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_69", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_69", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_70", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_70", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_71", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_71", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_72", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_72", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_73", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_73", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_74", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_74", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_75", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_75", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_76", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_76", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_77", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_77", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_78", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_78", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_79", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_79", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_80", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_80", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_81", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_81", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_82", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_82", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_83", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_83", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_84", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_84", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_85", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_85", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_86", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_86", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_87", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_87", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_88", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_88", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_89", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_89", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_90", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_90", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_91", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_91", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_92", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_92", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_93", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_93", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_94", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_94", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_95", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_95", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_96", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_96", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_97", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_97", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_98", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_98", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_99", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_99", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_100", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_100", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_101", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_101", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_102", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_102", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_103", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_103", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_104", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_104", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_105", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_105", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_106", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_106", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_107", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_107", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_108", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_108", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_109", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_109", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_110", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_110", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_111", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_111", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_112", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_112", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_113", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_113", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_114", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_114", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_115", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_115", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_116", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_116", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_117", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_117", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_118", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_118", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_119", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_119", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_120", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_120", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_121", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_121", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_122", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_122", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_123", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_123", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_124", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_124", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_125", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_125", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_126", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_126", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "weights_0_127", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Port" : "weights_0_127", "Inst_start_state" : "130", "Inst_end_state" : "131"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131"],
		"CDFG" : "lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "1571",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_promoted279", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted277", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted275", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted273", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted271", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted269", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted267", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted265", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted263", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted261", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted259", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted257", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted255", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted253", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted251", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted249", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted247", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted245", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted243", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted241", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted239", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted237", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted235", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted233", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted231", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted229", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted227", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted225", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted223", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted221", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted219", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted217", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted215", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted213", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted211", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted209", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted207", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted205", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted203", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted199", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted195", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted193", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted189", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted187", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted185", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted183", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted181", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted179", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted177", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted175", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted173", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted171", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted169", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted167", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted165", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted163", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted161", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted159", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted157", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted155", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted153", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted151", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted149", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted147", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted145", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted143", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted141", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted139", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted137", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted135", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted133", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted131", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted129", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted127", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted125", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted123", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted121", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted119", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted117", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted115", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted113", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted111", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted109", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted107", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted105", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted103", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted101", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted99", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "add_ln74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_ln74_127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weights_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_79", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_80", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_81", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_82", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_83", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_84", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_85", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_86", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_87", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_88", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_89", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_90", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_91", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_92", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_93", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_94", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_95", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_96", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_97", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_98", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_99", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_100", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_101", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_102", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_103", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_104", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_105", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_106", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_107", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_108", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_109", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_110", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_111", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_112", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_113", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_114", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_115", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_116", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_117", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_118", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_119", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_120", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_121", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_122", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_123", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_124", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_125", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_126", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_0_127", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "integrate", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_1_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_2_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_3_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_4_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_5_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_6_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_7_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_8_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_9_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_10_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_11_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_12_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_13_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_14_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_15_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_16_U", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_17_U", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_18_U", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_19_U", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_20_U", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_21_U", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_22_U", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_23_U", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_24_U", "Parent" : "2"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_25_U", "Parent" : "2"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_26_U", "Parent" : "2"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_27_U", "Parent" : "2"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_28_U", "Parent" : "2"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_29_U", "Parent" : "2"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_30_U", "Parent" : "2"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_31_U", "Parent" : "2"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_32_U", "Parent" : "2"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_33_U", "Parent" : "2"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_34_U", "Parent" : "2"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_35_U", "Parent" : "2"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_36_U", "Parent" : "2"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_37_U", "Parent" : "2"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_38_U", "Parent" : "2"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_39_U", "Parent" : "2"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_40_U", "Parent" : "2"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_41_U", "Parent" : "2"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_42_U", "Parent" : "2"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_43_U", "Parent" : "2"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_44_U", "Parent" : "2"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_45_U", "Parent" : "2"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_46_U", "Parent" : "2"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_47_U", "Parent" : "2"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_48_U", "Parent" : "2"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_49_U", "Parent" : "2"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_50_U", "Parent" : "2"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_51_U", "Parent" : "2"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_52_U", "Parent" : "2"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_53_U", "Parent" : "2"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_54_U", "Parent" : "2"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_55_U", "Parent" : "2"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_56_U", "Parent" : "2"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_57_U", "Parent" : "2"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_58_U", "Parent" : "2"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_59_U", "Parent" : "2"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_60_U", "Parent" : "2"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_61_U", "Parent" : "2"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_62_U", "Parent" : "2"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_63_U", "Parent" : "2"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_64_U", "Parent" : "2"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_65_U", "Parent" : "2"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_66_U", "Parent" : "2"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_67_U", "Parent" : "2"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_68_U", "Parent" : "2"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_69_U", "Parent" : "2"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_70_U", "Parent" : "2"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_71_U", "Parent" : "2"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_72_U", "Parent" : "2"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_73_U", "Parent" : "2"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_74_U", "Parent" : "2"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_75_U", "Parent" : "2"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_76_U", "Parent" : "2"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_77_U", "Parent" : "2"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_78_U", "Parent" : "2"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_79_U", "Parent" : "2"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_80_U", "Parent" : "2"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_81_U", "Parent" : "2"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_82_U", "Parent" : "2"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_83_U", "Parent" : "2"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_84_U", "Parent" : "2"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_85_U", "Parent" : "2"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_86_U", "Parent" : "2"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_87_U", "Parent" : "2"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_88_U", "Parent" : "2"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_89_U", "Parent" : "2"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_90_U", "Parent" : "2"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_91_U", "Parent" : "2"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_92_U", "Parent" : "2"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_93_U", "Parent" : "2"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_94_U", "Parent" : "2"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_95_U", "Parent" : "2"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_96_U", "Parent" : "2"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_97_U", "Parent" : "2"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_98_U", "Parent" : "2"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_99_U", "Parent" : "2"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_100_U", "Parent" : "2"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_101_U", "Parent" : "2"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_102_U", "Parent" : "2"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_103_U", "Parent" : "2"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_104_U", "Parent" : "2"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_105_U", "Parent" : "2"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_106_U", "Parent" : "2"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_107_U", "Parent" : "2"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_108_U", "Parent" : "2"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_109_U", "Parent" : "2"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_110_U", "Parent" : "2"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_111_U", "Parent" : "2"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_112_U", "Parent" : "2"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_113_U", "Parent" : "2"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_114_U", "Parent" : "2"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_115_U", "Parent" : "2"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_116_U", "Parent" : "2"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_117_U", "Parent" : "2"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_118_U", "Parent" : "2"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_119_U", "Parent" : "2"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_120_U", "Parent" : "2"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_121_U", "Parent" : "2"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_122_U", "Parent" : "2"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_123_U", "Parent" : "2"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_124_U", "Parent" : "2"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_125_U", "Parent" : "2"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_126_U", "Parent" : "2"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.weights_0_127_U", "Parent" : "2"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760.grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279", "Parent" : "0", "Child" : ["133"],
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
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "out1", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
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
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_1", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_2", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_3", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_4", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_5", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_6", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_7", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_8", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "weights_1_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "133", "SubInstance" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Port" : "weights_1_9", "Inst_start_state" : "12", "Inst_end_state" : "13"}]}]},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259", "Parent" : "132", "Child" : ["134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144"],
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
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_0_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_1_U", "Parent" : "133"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_2_U", "Parent" : "133"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_3_U", "Parent" : "133"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_4_U", "Parent" : "133"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_5_U", "Parent" : "133"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_6_U", "Parent" : "133"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_7_U", "Parent" : "133"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_8_U", "Parent" : "133"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.weights_1_9_U", "Parent" : "133"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279.grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "133"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out1_fifo_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out2_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	snn_mnist_hls {
		input_r {Type I LastRead 128 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 0}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_9 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_8 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_7 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_6 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_5 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_4 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_3 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_2 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_1 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_117 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_128 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_74 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_118 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_119 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_120 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_121 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_122 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_123 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_124 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_125 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_126 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_127 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_129 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_130 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_131 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_132 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_133 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_134 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_99 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_97 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_87 {Type IO LastRead -1 FirstWrite -1}
		weights_0_0 {Type I LastRead -1 FirstWrite -1}
		weights_0_1 {Type I LastRead -1 FirstWrite -1}
		weights_0_2 {Type I LastRead -1 FirstWrite -1}
		weights_0_3 {Type I LastRead -1 FirstWrite -1}
		weights_0_4 {Type I LastRead -1 FirstWrite -1}
		weights_0_5 {Type I LastRead -1 FirstWrite -1}
		weights_0_6 {Type I LastRead -1 FirstWrite -1}
		weights_0_7 {Type I LastRead -1 FirstWrite -1}
		weights_0_8 {Type I LastRead -1 FirstWrite -1}
		weights_0_9 {Type I LastRead -1 FirstWrite -1}
		weights_0_10 {Type I LastRead -1 FirstWrite -1}
		weights_0_11 {Type I LastRead -1 FirstWrite -1}
		weights_0_12 {Type I LastRead -1 FirstWrite -1}
		weights_0_13 {Type I LastRead -1 FirstWrite -1}
		weights_0_14 {Type I LastRead -1 FirstWrite -1}
		weights_0_15 {Type I LastRead -1 FirstWrite -1}
		weights_0_16 {Type I LastRead -1 FirstWrite -1}
		weights_0_17 {Type I LastRead -1 FirstWrite -1}
		weights_0_18 {Type I LastRead -1 FirstWrite -1}
		weights_0_19 {Type I LastRead -1 FirstWrite -1}
		weights_0_20 {Type I LastRead -1 FirstWrite -1}
		weights_0_21 {Type I LastRead -1 FirstWrite -1}
		weights_0_22 {Type I LastRead -1 FirstWrite -1}
		weights_0_23 {Type I LastRead -1 FirstWrite -1}
		weights_0_24 {Type I LastRead -1 FirstWrite -1}
		weights_0_25 {Type I LastRead -1 FirstWrite -1}
		weights_0_26 {Type I LastRead -1 FirstWrite -1}
		weights_0_27 {Type I LastRead -1 FirstWrite -1}
		weights_0_28 {Type I LastRead -1 FirstWrite -1}
		weights_0_29 {Type I LastRead -1 FirstWrite -1}
		weights_0_30 {Type I LastRead -1 FirstWrite -1}
		weights_0_31 {Type I LastRead -1 FirstWrite -1}
		weights_0_32 {Type I LastRead -1 FirstWrite -1}
		weights_0_33 {Type I LastRead -1 FirstWrite -1}
		weights_0_34 {Type I LastRead -1 FirstWrite -1}
		weights_0_35 {Type I LastRead -1 FirstWrite -1}
		weights_0_36 {Type I LastRead -1 FirstWrite -1}
		weights_0_37 {Type I LastRead -1 FirstWrite -1}
		weights_0_38 {Type I LastRead -1 FirstWrite -1}
		weights_0_39 {Type I LastRead -1 FirstWrite -1}
		weights_0_40 {Type I LastRead -1 FirstWrite -1}
		weights_0_41 {Type I LastRead -1 FirstWrite -1}
		weights_0_42 {Type I LastRead -1 FirstWrite -1}
		weights_0_43 {Type I LastRead -1 FirstWrite -1}
		weights_0_44 {Type I LastRead -1 FirstWrite -1}
		weights_0_45 {Type I LastRead -1 FirstWrite -1}
		weights_0_46 {Type I LastRead -1 FirstWrite -1}
		weights_0_47 {Type I LastRead -1 FirstWrite -1}
		weights_0_48 {Type I LastRead -1 FirstWrite -1}
		weights_0_49 {Type I LastRead -1 FirstWrite -1}
		weights_0_50 {Type I LastRead -1 FirstWrite -1}
		weights_0_51 {Type I LastRead -1 FirstWrite -1}
		weights_0_52 {Type I LastRead -1 FirstWrite -1}
		weights_0_53 {Type I LastRead -1 FirstWrite -1}
		weights_0_54 {Type I LastRead -1 FirstWrite -1}
		weights_0_55 {Type I LastRead -1 FirstWrite -1}
		weights_0_56 {Type I LastRead -1 FirstWrite -1}
		weights_0_57 {Type I LastRead -1 FirstWrite -1}
		weights_0_58 {Type I LastRead -1 FirstWrite -1}
		weights_0_59 {Type I LastRead -1 FirstWrite -1}
		weights_0_60 {Type I LastRead -1 FirstWrite -1}
		weights_0_61 {Type I LastRead -1 FirstWrite -1}
		weights_0_62 {Type I LastRead -1 FirstWrite -1}
		weights_0_63 {Type I LastRead -1 FirstWrite -1}
		weights_0_64 {Type I LastRead -1 FirstWrite -1}
		weights_0_65 {Type I LastRead -1 FirstWrite -1}
		weights_0_66 {Type I LastRead -1 FirstWrite -1}
		weights_0_67 {Type I LastRead -1 FirstWrite -1}
		weights_0_68 {Type I LastRead -1 FirstWrite -1}
		weights_0_69 {Type I LastRead -1 FirstWrite -1}
		weights_0_70 {Type I LastRead -1 FirstWrite -1}
		weights_0_71 {Type I LastRead -1 FirstWrite -1}
		weights_0_72 {Type I LastRead -1 FirstWrite -1}
		weights_0_73 {Type I LastRead -1 FirstWrite -1}
		weights_0_74 {Type I LastRead -1 FirstWrite -1}
		weights_0_75 {Type I LastRead -1 FirstWrite -1}
		weights_0_76 {Type I LastRead -1 FirstWrite -1}
		weights_0_77 {Type I LastRead -1 FirstWrite -1}
		weights_0_78 {Type I LastRead -1 FirstWrite -1}
		weights_0_79 {Type I LastRead -1 FirstWrite -1}
		weights_0_80 {Type I LastRead -1 FirstWrite -1}
		weights_0_81 {Type I LastRead -1 FirstWrite -1}
		weights_0_82 {Type I LastRead -1 FirstWrite -1}
		weights_0_83 {Type I LastRead -1 FirstWrite -1}
		weights_0_84 {Type I LastRead -1 FirstWrite -1}
		weights_0_85 {Type I LastRead -1 FirstWrite -1}
		weights_0_86 {Type I LastRead -1 FirstWrite -1}
		weights_0_87 {Type I LastRead -1 FirstWrite -1}
		weights_0_88 {Type I LastRead -1 FirstWrite -1}
		weights_0_89 {Type I LastRead -1 FirstWrite -1}
		weights_0_90 {Type I LastRead -1 FirstWrite -1}
		weights_0_91 {Type I LastRead -1 FirstWrite -1}
		weights_0_92 {Type I LastRead -1 FirstWrite -1}
		weights_0_93 {Type I LastRead -1 FirstWrite -1}
		weights_0_94 {Type I LastRead -1 FirstWrite -1}
		weights_0_95 {Type I LastRead -1 FirstWrite -1}
		weights_0_96 {Type I LastRead -1 FirstWrite -1}
		weights_0_97 {Type I LastRead -1 FirstWrite -1}
		weights_0_98 {Type I LastRead -1 FirstWrite -1}
		weights_0_99 {Type I LastRead -1 FirstWrite -1}
		weights_0_100 {Type I LastRead -1 FirstWrite -1}
		weights_0_101 {Type I LastRead -1 FirstWrite -1}
		weights_0_102 {Type I LastRead -1 FirstWrite -1}
		weights_0_103 {Type I LastRead -1 FirstWrite -1}
		weights_0_104 {Type I LastRead -1 FirstWrite -1}
		weights_0_105 {Type I LastRead -1 FirstWrite -1}
		weights_0_106 {Type I LastRead -1 FirstWrite -1}
		weights_0_107 {Type I LastRead -1 FirstWrite -1}
		weights_0_108 {Type I LastRead -1 FirstWrite -1}
		weights_0_109 {Type I LastRead -1 FirstWrite -1}
		weights_0_110 {Type I LastRead -1 FirstWrite -1}
		weights_0_111 {Type I LastRead -1 FirstWrite -1}
		weights_0_112 {Type I LastRead -1 FirstWrite -1}
		weights_0_113 {Type I LastRead -1 FirstWrite -1}
		weights_0_114 {Type I LastRead -1 FirstWrite -1}
		weights_0_115 {Type I LastRead -1 FirstWrite -1}
		weights_0_116 {Type I LastRead -1 FirstWrite -1}
		weights_0_117 {Type I LastRead -1 FirstWrite -1}
		weights_0_118 {Type I LastRead -1 FirstWrite -1}
		weights_0_119 {Type I LastRead -1 FirstWrite -1}
		weights_0_120 {Type I LastRead -1 FirstWrite -1}
		weights_0_121 {Type I LastRead -1 FirstWrite -1}
		weights_0_122 {Type I LastRead -1 FirstWrite -1}
		weights_0_123 {Type I LastRead -1 FirstWrite -1}
		weights_0_124 {Type I LastRead -1 FirstWrite -1}
		weights_0_125 {Type I LastRead -1 FirstWrite -1}
		weights_0_126 {Type I LastRead -1 FirstWrite -1}
		weights_0_127 {Type I LastRead -1 FirstWrite -1}
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
	lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s {
		input_r {Type I LastRead 128 FirstWrite -1}
		out1 {Type O LastRead -1 FirstWrite 1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_9 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_8 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_7 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_6 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_5 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_4 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_3 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_2 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials_1 {Type IO LastRead -1 FirstWrite -1}
		void_lif_layer_stream_stream_ap_fixed_12_2_0_3_0_784_potentials {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_117 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_128 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_74 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_118 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_119 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_120 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_121 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_122 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_123 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_124 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_125 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_126 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_127 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_129 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_130 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_131 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_132 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_133 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_134 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_99 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_97 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ9lif_layerILi128ELi784EN3hls6streamI7ap_uintILi10EELi0EEES4_Li1EEvRT1_RT2_PAT_87 {Type IO LastRead -1 FirstWrite -1}
		weights_0_0 {Type I LastRead -1 FirstWrite -1}
		weights_0_1 {Type I LastRead -1 FirstWrite -1}
		weights_0_2 {Type I LastRead -1 FirstWrite -1}
		weights_0_3 {Type I LastRead -1 FirstWrite -1}
		weights_0_4 {Type I LastRead -1 FirstWrite -1}
		weights_0_5 {Type I LastRead -1 FirstWrite -1}
		weights_0_6 {Type I LastRead -1 FirstWrite -1}
		weights_0_7 {Type I LastRead -1 FirstWrite -1}
		weights_0_8 {Type I LastRead -1 FirstWrite -1}
		weights_0_9 {Type I LastRead -1 FirstWrite -1}
		weights_0_10 {Type I LastRead -1 FirstWrite -1}
		weights_0_11 {Type I LastRead -1 FirstWrite -1}
		weights_0_12 {Type I LastRead -1 FirstWrite -1}
		weights_0_13 {Type I LastRead -1 FirstWrite -1}
		weights_0_14 {Type I LastRead -1 FirstWrite -1}
		weights_0_15 {Type I LastRead -1 FirstWrite -1}
		weights_0_16 {Type I LastRead -1 FirstWrite -1}
		weights_0_17 {Type I LastRead -1 FirstWrite -1}
		weights_0_18 {Type I LastRead -1 FirstWrite -1}
		weights_0_19 {Type I LastRead -1 FirstWrite -1}
		weights_0_20 {Type I LastRead -1 FirstWrite -1}
		weights_0_21 {Type I LastRead -1 FirstWrite -1}
		weights_0_22 {Type I LastRead -1 FirstWrite -1}
		weights_0_23 {Type I LastRead -1 FirstWrite -1}
		weights_0_24 {Type I LastRead -1 FirstWrite -1}
		weights_0_25 {Type I LastRead -1 FirstWrite -1}
		weights_0_26 {Type I LastRead -1 FirstWrite -1}
		weights_0_27 {Type I LastRead -1 FirstWrite -1}
		weights_0_28 {Type I LastRead -1 FirstWrite -1}
		weights_0_29 {Type I LastRead -1 FirstWrite -1}
		weights_0_30 {Type I LastRead -1 FirstWrite -1}
		weights_0_31 {Type I LastRead -1 FirstWrite -1}
		weights_0_32 {Type I LastRead -1 FirstWrite -1}
		weights_0_33 {Type I LastRead -1 FirstWrite -1}
		weights_0_34 {Type I LastRead -1 FirstWrite -1}
		weights_0_35 {Type I LastRead -1 FirstWrite -1}
		weights_0_36 {Type I LastRead -1 FirstWrite -1}
		weights_0_37 {Type I LastRead -1 FirstWrite -1}
		weights_0_38 {Type I LastRead -1 FirstWrite -1}
		weights_0_39 {Type I LastRead -1 FirstWrite -1}
		weights_0_40 {Type I LastRead -1 FirstWrite -1}
		weights_0_41 {Type I LastRead -1 FirstWrite -1}
		weights_0_42 {Type I LastRead -1 FirstWrite -1}
		weights_0_43 {Type I LastRead -1 FirstWrite -1}
		weights_0_44 {Type I LastRead -1 FirstWrite -1}
		weights_0_45 {Type I LastRead -1 FirstWrite -1}
		weights_0_46 {Type I LastRead -1 FirstWrite -1}
		weights_0_47 {Type I LastRead -1 FirstWrite -1}
		weights_0_48 {Type I LastRead -1 FirstWrite -1}
		weights_0_49 {Type I LastRead -1 FirstWrite -1}
		weights_0_50 {Type I LastRead -1 FirstWrite -1}
		weights_0_51 {Type I LastRead -1 FirstWrite -1}
		weights_0_52 {Type I LastRead -1 FirstWrite -1}
		weights_0_53 {Type I LastRead -1 FirstWrite -1}
		weights_0_54 {Type I LastRead -1 FirstWrite -1}
		weights_0_55 {Type I LastRead -1 FirstWrite -1}
		weights_0_56 {Type I LastRead -1 FirstWrite -1}
		weights_0_57 {Type I LastRead -1 FirstWrite -1}
		weights_0_58 {Type I LastRead -1 FirstWrite -1}
		weights_0_59 {Type I LastRead -1 FirstWrite -1}
		weights_0_60 {Type I LastRead -1 FirstWrite -1}
		weights_0_61 {Type I LastRead -1 FirstWrite -1}
		weights_0_62 {Type I LastRead -1 FirstWrite -1}
		weights_0_63 {Type I LastRead -1 FirstWrite -1}
		weights_0_64 {Type I LastRead -1 FirstWrite -1}
		weights_0_65 {Type I LastRead -1 FirstWrite -1}
		weights_0_66 {Type I LastRead -1 FirstWrite -1}
		weights_0_67 {Type I LastRead -1 FirstWrite -1}
		weights_0_68 {Type I LastRead -1 FirstWrite -1}
		weights_0_69 {Type I LastRead -1 FirstWrite -1}
		weights_0_70 {Type I LastRead -1 FirstWrite -1}
		weights_0_71 {Type I LastRead -1 FirstWrite -1}
		weights_0_72 {Type I LastRead -1 FirstWrite -1}
		weights_0_73 {Type I LastRead -1 FirstWrite -1}
		weights_0_74 {Type I LastRead -1 FirstWrite -1}
		weights_0_75 {Type I LastRead -1 FirstWrite -1}
		weights_0_76 {Type I LastRead -1 FirstWrite -1}
		weights_0_77 {Type I LastRead -1 FirstWrite -1}
		weights_0_78 {Type I LastRead -1 FirstWrite -1}
		weights_0_79 {Type I LastRead -1 FirstWrite -1}
		weights_0_80 {Type I LastRead -1 FirstWrite -1}
		weights_0_81 {Type I LastRead -1 FirstWrite -1}
		weights_0_82 {Type I LastRead -1 FirstWrite -1}
		weights_0_83 {Type I LastRead -1 FirstWrite -1}
		weights_0_84 {Type I LastRead -1 FirstWrite -1}
		weights_0_85 {Type I LastRead -1 FirstWrite -1}
		weights_0_86 {Type I LastRead -1 FirstWrite -1}
		weights_0_87 {Type I LastRead -1 FirstWrite -1}
		weights_0_88 {Type I LastRead -1 FirstWrite -1}
		weights_0_89 {Type I LastRead -1 FirstWrite -1}
		weights_0_90 {Type I LastRead -1 FirstWrite -1}
		weights_0_91 {Type I LastRead -1 FirstWrite -1}
		weights_0_92 {Type I LastRead -1 FirstWrite -1}
		weights_0_93 {Type I LastRead -1 FirstWrite -1}
		weights_0_94 {Type I LastRead -1 FirstWrite -1}
		weights_0_95 {Type I LastRead -1 FirstWrite -1}
		weights_0_96 {Type I LastRead -1 FirstWrite -1}
		weights_0_97 {Type I LastRead -1 FirstWrite -1}
		weights_0_98 {Type I LastRead -1 FirstWrite -1}
		weights_0_99 {Type I LastRead -1 FirstWrite -1}
		weights_0_100 {Type I LastRead -1 FirstWrite -1}
		weights_0_101 {Type I LastRead -1 FirstWrite -1}
		weights_0_102 {Type I LastRead -1 FirstWrite -1}
		weights_0_103 {Type I LastRead -1 FirstWrite -1}
		weights_0_104 {Type I LastRead -1 FirstWrite -1}
		weights_0_105 {Type I LastRead -1 FirstWrite -1}
		weights_0_106 {Type I LastRead -1 FirstWrite -1}
		weights_0_107 {Type I LastRead -1 FirstWrite -1}
		weights_0_108 {Type I LastRead -1 FirstWrite -1}
		weights_0_109 {Type I LastRead -1 FirstWrite -1}
		weights_0_110 {Type I LastRead -1 FirstWrite -1}
		weights_0_111 {Type I LastRead -1 FirstWrite -1}
		weights_0_112 {Type I LastRead -1 FirstWrite -1}
		weights_0_113 {Type I LastRead -1 FirstWrite -1}
		weights_0_114 {Type I LastRead -1 FirstWrite -1}
		weights_0_115 {Type I LastRead -1 FirstWrite -1}
		weights_0_116 {Type I LastRead -1 FirstWrite -1}
		weights_0_117 {Type I LastRead -1 FirstWrite -1}
		weights_0_118 {Type I LastRead -1 FirstWrite -1}
		weights_0_119 {Type I LastRead -1 FirstWrite -1}
		weights_0_120 {Type I LastRead -1 FirstWrite -1}
		weights_0_121 {Type I LastRead -1 FirstWrite -1}
		weights_0_122 {Type I LastRead -1 FirstWrite -1}
		weights_0_123 {Type I LastRead -1 FirstWrite -1}
		weights_0_124 {Type I LastRead -1 FirstWrite -1}
		weights_0_125 {Type I LastRead -1 FirstWrite -1}
		weights_0_126 {Type I LastRead -1 FirstWrite -1}
		weights_0_127 {Type I LastRead -1 FirstWrite -1}}
	lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate {
		p_promoted279 {Type I LastRead 0 FirstWrite -1}
		p_promoted277 {Type I LastRead 0 FirstWrite -1}
		p_promoted275 {Type I LastRead 0 FirstWrite -1}
		p_promoted273 {Type I LastRead 0 FirstWrite -1}
		p_promoted271 {Type I LastRead 0 FirstWrite -1}
		p_promoted269 {Type I LastRead 0 FirstWrite -1}
		p_promoted267 {Type I LastRead 0 FirstWrite -1}
		p_promoted265 {Type I LastRead 0 FirstWrite -1}
		p_promoted263 {Type I LastRead 0 FirstWrite -1}
		p_promoted261 {Type I LastRead 0 FirstWrite -1}
		p_promoted259 {Type I LastRead 0 FirstWrite -1}
		p_promoted257 {Type I LastRead 0 FirstWrite -1}
		p_promoted255 {Type I LastRead 0 FirstWrite -1}
		p_promoted253 {Type I LastRead 0 FirstWrite -1}
		p_promoted251 {Type I LastRead 0 FirstWrite -1}
		p_promoted249 {Type I LastRead 0 FirstWrite -1}
		p_promoted247 {Type I LastRead 0 FirstWrite -1}
		p_promoted245 {Type I LastRead 0 FirstWrite -1}
		p_promoted243 {Type I LastRead 0 FirstWrite -1}
		p_promoted241 {Type I LastRead 0 FirstWrite -1}
		p_promoted239 {Type I LastRead 0 FirstWrite -1}
		p_promoted237 {Type I LastRead 0 FirstWrite -1}
		p_promoted235 {Type I LastRead 0 FirstWrite -1}
		p_promoted233 {Type I LastRead 0 FirstWrite -1}
		p_promoted231 {Type I LastRead 0 FirstWrite -1}
		p_promoted229 {Type I LastRead 0 FirstWrite -1}
		p_promoted227 {Type I LastRead 0 FirstWrite -1}
		p_promoted225 {Type I LastRead 0 FirstWrite -1}
		p_promoted223 {Type I LastRead 0 FirstWrite -1}
		p_promoted221 {Type I LastRead 0 FirstWrite -1}
		p_promoted219 {Type I LastRead 0 FirstWrite -1}
		p_promoted217 {Type I LastRead 0 FirstWrite -1}
		p_promoted215 {Type I LastRead 0 FirstWrite -1}
		p_promoted213 {Type I LastRead 0 FirstWrite -1}
		p_promoted211 {Type I LastRead 0 FirstWrite -1}
		p_promoted209 {Type I LastRead 0 FirstWrite -1}
		p_promoted207 {Type I LastRead 0 FirstWrite -1}
		p_promoted205 {Type I LastRead 0 FirstWrite -1}
		p_promoted203 {Type I LastRead 0 FirstWrite -1}
		p_promoted201 {Type I LastRead 0 FirstWrite -1}
		p_promoted199 {Type I LastRead 0 FirstWrite -1}
		p_promoted197 {Type I LastRead 0 FirstWrite -1}
		p_promoted195 {Type I LastRead 0 FirstWrite -1}
		p_promoted193 {Type I LastRead 0 FirstWrite -1}
		p_promoted191 {Type I LastRead 0 FirstWrite -1}
		p_promoted189 {Type I LastRead 0 FirstWrite -1}
		p_promoted187 {Type I LastRead 0 FirstWrite -1}
		p_promoted185 {Type I LastRead 0 FirstWrite -1}
		p_promoted183 {Type I LastRead 0 FirstWrite -1}
		p_promoted181 {Type I LastRead 0 FirstWrite -1}
		p_promoted179 {Type I LastRead 0 FirstWrite -1}
		p_promoted177 {Type I LastRead 0 FirstWrite -1}
		p_promoted175 {Type I LastRead 0 FirstWrite -1}
		p_promoted173 {Type I LastRead 0 FirstWrite -1}
		p_promoted171 {Type I LastRead 0 FirstWrite -1}
		p_promoted169 {Type I LastRead 0 FirstWrite -1}
		p_promoted167 {Type I LastRead 0 FirstWrite -1}
		p_promoted165 {Type I LastRead 0 FirstWrite -1}
		p_promoted163 {Type I LastRead 0 FirstWrite -1}
		p_promoted161 {Type I LastRead 0 FirstWrite -1}
		p_promoted159 {Type I LastRead 0 FirstWrite -1}
		p_promoted157 {Type I LastRead 0 FirstWrite -1}
		p_promoted155 {Type I LastRead 0 FirstWrite -1}
		p_promoted153 {Type I LastRead 0 FirstWrite -1}
		p_promoted151 {Type I LastRead 0 FirstWrite -1}
		p_promoted149 {Type I LastRead 0 FirstWrite -1}
		p_promoted147 {Type I LastRead 0 FirstWrite -1}
		p_promoted145 {Type I LastRead 0 FirstWrite -1}
		p_promoted143 {Type I LastRead 0 FirstWrite -1}
		p_promoted141 {Type I LastRead 0 FirstWrite -1}
		p_promoted139 {Type I LastRead 0 FirstWrite -1}
		p_promoted137 {Type I LastRead 0 FirstWrite -1}
		p_promoted135 {Type I LastRead 0 FirstWrite -1}
		p_promoted133 {Type I LastRead 0 FirstWrite -1}
		p_promoted131 {Type I LastRead 0 FirstWrite -1}
		p_promoted129 {Type I LastRead 0 FirstWrite -1}
		p_promoted127 {Type I LastRead 0 FirstWrite -1}
		p_promoted125 {Type I LastRead 0 FirstWrite -1}
		p_promoted123 {Type I LastRead 0 FirstWrite -1}
		p_promoted121 {Type I LastRead 0 FirstWrite -1}
		p_promoted119 {Type I LastRead 0 FirstWrite -1}
		p_promoted117 {Type I LastRead 0 FirstWrite -1}
		p_promoted115 {Type I LastRead 0 FirstWrite -1}
		p_promoted113 {Type I LastRead 0 FirstWrite -1}
		p_promoted111 {Type I LastRead 0 FirstWrite -1}
		p_promoted109 {Type I LastRead 0 FirstWrite -1}
		p_promoted107 {Type I LastRead 0 FirstWrite -1}
		p_promoted105 {Type I LastRead 0 FirstWrite -1}
		p_promoted103 {Type I LastRead 0 FirstWrite -1}
		p_promoted101 {Type I LastRead 0 FirstWrite -1}
		p_promoted99 {Type I LastRead 0 FirstWrite -1}
		p_promoted97 {Type I LastRead 0 FirstWrite -1}
		p_promoted95 {Type I LastRead 0 FirstWrite -1}
		p_promoted93 {Type I LastRead 0 FirstWrite -1}
		p_promoted91 {Type I LastRead 0 FirstWrite -1}
		p_promoted89 {Type I LastRead 0 FirstWrite -1}
		p_promoted87 {Type I LastRead 0 FirstWrite -1}
		p_promoted85 {Type I LastRead 0 FirstWrite -1}
		p_promoted83 {Type I LastRead 0 FirstWrite -1}
		p_promoted81 {Type I LastRead 0 FirstWrite -1}
		p_promoted79 {Type I LastRead 0 FirstWrite -1}
		p_promoted77 {Type I LastRead 0 FirstWrite -1}
		p_promoted75 {Type I LastRead 0 FirstWrite -1}
		p_promoted73 {Type I LastRead 0 FirstWrite -1}
		p_promoted71 {Type I LastRead 0 FirstWrite -1}
		p_promoted69 {Type I LastRead 0 FirstWrite -1}
		p_promoted67 {Type I LastRead 0 FirstWrite -1}
		p_promoted65 {Type I LastRead 0 FirstWrite -1}
		p_promoted63 {Type I LastRead 0 FirstWrite -1}
		p_promoted61 {Type I LastRead 0 FirstWrite -1}
		p_promoted59 {Type I LastRead 0 FirstWrite -1}
		p_promoted57 {Type I LastRead 0 FirstWrite -1}
		p_promoted55 {Type I LastRead 0 FirstWrite -1}
		p_promoted53 {Type I LastRead 0 FirstWrite -1}
		p_promoted51 {Type I LastRead 0 FirstWrite -1}
		p_promoted49 {Type I LastRead 0 FirstWrite -1}
		p_promoted47 {Type I LastRead 0 FirstWrite -1}
		p_promoted45 {Type I LastRead 0 FirstWrite -1}
		p_promoted43 {Type I LastRead 0 FirstWrite -1}
		p_promoted41 {Type I LastRead 0 FirstWrite -1}
		p_promoted39 {Type I LastRead 0 FirstWrite -1}
		p_promoted37 {Type I LastRead 0 FirstWrite -1}
		p_promoted35 {Type I LastRead 0 FirstWrite -1}
		p_promoted33 {Type I LastRead 0 FirstWrite -1}
		p_promoted31 {Type I LastRead 0 FirstWrite -1}
		p_promoted29 {Type I LastRead 0 FirstWrite -1}
		p_promoted6 {Type I LastRead 0 FirstWrite -1}
		p_promoted {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 1 FirstWrite -1}
		add_ln74_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_1_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_2_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_3_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_4_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_5_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_6_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_7_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_8_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_9_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_10_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_11_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_12_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_13_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_14_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_15_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_16_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_17_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_18_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_19_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_20_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_21_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_22_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_23_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_24_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_25_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_26_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_27_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_28_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_29_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_30_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_31_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_32_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_33_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_34_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_35_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_36_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_37_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_38_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_39_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_40_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_41_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_42_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_43_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_44_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_45_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_46_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_47_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_48_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_49_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_50_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_51_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_52_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_53_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_54_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_55_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_56_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_57_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_58_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_59_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_60_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_61_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_62_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_63_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_64_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_65_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_66_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_67_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_68_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_69_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_70_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_71_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_72_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_73_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_74_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_75_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_76_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_77_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_78_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_79_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_80_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_81_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_82_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_83_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_84_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_85_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_86_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_87_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_88_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_89_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_90_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_91_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_92_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_93_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_94_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_95_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_96_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_97_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_98_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_99_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_100_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_101_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_102_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_103_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_104_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_105_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_106_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_107_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_108_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_109_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_110_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_111_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_112_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_113_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_114_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_115_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_116_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_117_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_118_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_119_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_120_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_121_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_122_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_123_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_124_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_125_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_126_out {Type O LastRead -1 FirstWrite 3}
		add_ln74_127_out {Type O LastRead -1 FirstWrite 3}
		weights_0_0 {Type I LastRead -1 FirstWrite -1}
		weights_0_1 {Type I LastRead -1 FirstWrite -1}
		weights_0_2 {Type I LastRead -1 FirstWrite -1}
		weights_0_3 {Type I LastRead -1 FirstWrite -1}
		weights_0_4 {Type I LastRead -1 FirstWrite -1}
		weights_0_5 {Type I LastRead -1 FirstWrite -1}
		weights_0_6 {Type I LastRead -1 FirstWrite -1}
		weights_0_7 {Type I LastRead -1 FirstWrite -1}
		weights_0_8 {Type I LastRead -1 FirstWrite -1}
		weights_0_9 {Type I LastRead -1 FirstWrite -1}
		weights_0_10 {Type I LastRead -1 FirstWrite -1}
		weights_0_11 {Type I LastRead -1 FirstWrite -1}
		weights_0_12 {Type I LastRead -1 FirstWrite -1}
		weights_0_13 {Type I LastRead -1 FirstWrite -1}
		weights_0_14 {Type I LastRead -1 FirstWrite -1}
		weights_0_15 {Type I LastRead -1 FirstWrite -1}
		weights_0_16 {Type I LastRead -1 FirstWrite -1}
		weights_0_17 {Type I LastRead -1 FirstWrite -1}
		weights_0_18 {Type I LastRead -1 FirstWrite -1}
		weights_0_19 {Type I LastRead -1 FirstWrite -1}
		weights_0_20 {Type I LastRead -1 FirstWrite -1}
		weights_0_21 {Type I LastRead -1 FirstWrite -1}
		weights_0_22 {Type I LastRead -1 FirstWrite -1}
		weights_0_23 {Type I LastRead -1 FirstWrite -1}
		weights_0_24 {Type I LastRead -1 FirstWrite -1}
		weights_0_25 {Type I LastRead -1 FirstWrite -1}
		weights_0_26 {Type I LastRead -1 FirstWrite -1}
		weights_0_27 {Type I LastRead -1 FirstWrite -1}
		weights_0_28 {Type I LastRead -1 FirstWrite -1}
		weights_0_29 {Type I LastRead -1 FirstWrite -1}
		weights_0_30 {Type I LastRead -1 FirstWrite -1}
		weights_0_31 {Type I LastRead -1 FirstWrite -1}
		weights_0_32 {Type I LastRead -1 FirstWrite -1}
		weights_0_33 {Type I LastRead -1 FirstWrite -1}
		weights_0_34 {Type I LastRead -1 FirstWrite -1}
		weights_0_35 {Type I LastRead -1 FirstWrite -1}
		weights_0_36 {Type I LastRead -1 FirstWrite -1}
		weights_0_37 {Type I LastRead -1 FirstWrite -1}
		weights_0_38 {Type I LastRead -1 FirstWrite -1}
		weights_0_39 {Type I LastRead -1 FirstWrite -1}
		weights_0_40 {Type I LastRead -1 FirstWrite -1}
		weights_0_41 {Type I LastRead -1 FirstWrite -1}
		weights_0_42 {Type I LastRead -1 FirstWrite -1}
		weights_0_43 {Type I LastRead -1 FirstWrite -1}
		weights_0_44 {Type I LastRead -1 FirstWrite -1}
		weights_0_45 {Type I LastRead -1 FirstWrite -1}
		weights_0_46 {Type I LastRead -1 FirstWrite -1}
		weights_0_47 {Type I LastRead -1 FirstWrite -1}
		weights_0_48 {Type I LastRead -1 FirstWrite -1}
		weights_0_49 {Type I LastRead -1 FirstWrite -1}
		weights_0_50 {Type I LastRead -1 FirstWrite -1}
		weights_0_51 {Type I LastRead -1 FirstWrite -1}
		weights_0_52 {Type I LastRead -1 FirstWrite -1}
		weights_0_53 {Type I LastRead -1 FirstWrite -1}
		weights_0_54 {Type I LastRead -1 FirstWrite -1}
		weights_0_55 {Type I LastRead -1 FirstWrite -1}
		weights_0_56 {Type I LastRead -1 FirstWrite -1}
		weights_0_57 {Type I LastRead -1 FirstWrite -1}
		weights_0_58 {Type I LastRead -1 FirstWrite -1}
		weights_0_59 {Type I LastRead -1 FirstWrite -1}
		weights_0_60 {Type I LastRead -1 FirstWrite -1}
		weights_0_61 {Type I LastRead -1 FirstWrite -1}
		weights_0_62 {Type I LastRead -1 FirstWrite -1}
		weights_0_63 {Type I LastRead -1 FirstWrite -1}
		weights_0_64 {Type I LastRead -1 FirstWrite -1}
		weights_0_65 {Type I LastRead -1 FirstWrite -1}
		weights_0_66 {Type I LastRead -1 FirstWrite -1}
		weights_0_67 {Type I LastRead -1 FirstWrite -1}
		weights_0_68 {Type I LastRead -1 FirstWrite -1}
		weights_0_69 {Type I LastRead -1 FirstWrite -1}
		weights_0_70 {Type I LastRead -1 FirstWrite -1}
		weights_0_71 {Type I LastRead -1 FirstWrite -1}
		weights_0_72 {Type I LastRead -1 FirstWrite -1}
		weights_0_73 {Type I LastRead -1 FirstWrite -1}
		weights_0_74 {Type I LastRead -1 FirstWrite -1}
		weights_0_75 {Type I LastRead -1 FirstWrite -1}
		weights_0_76 {Type I LastRead -1 FirstWrite -1}
		weights_0_77 {Type I LastRead -1 FirstWrite -1}
		weights_0_78 {Type I LastRead -1 FirstWrite -1}
		weights_0_79 {Type I LastRead -1 FirstWrite -1}
		weights_0_80 {Type I LastRead -1 FirstWrite -1}
		weights_0_81 {Type I LastRead -1 FirstWrite -1}
		weights_0_82 {Type I LastRead -1 FirstWrite -1}
		weights_0_83 {Type I LastRead -1 FirstWrite -1}
		weights_0_84 {Type I LastRead -1 FirstWrite -1}
		weights_0_85 {Type I LastRead -1 FirstWrite -1}
		weights_0_86 {Type I LastRead -1 FirstWrite -1}
		weights_0_87 {Type I LastRead -1 FirstWrite -1}
		weights_0_88 {Type I LastRead -1 FirstWrite -1}
		weights_0_89 {Type I LastRead -1 FirstWrite -1}
		weights_0_90 {Type I LastRead -1 FirstWrite -1}
		weights_0_91 {Type I LastRead -1 FirstWrite -1}
		weights_0_92 {Type I LastRead -1 FirstWrite -1}
		weights_0_93 {Type I LastRead -1 FirstWrite -1}
		weights_0_94 {Type I LastRead -1 FirstWrite -1}
		weights_0_95 {Type I LastRead -1 FirstWrite -1}
		weights_0_96 {Type I LastRead -1 FirstWrite -1}
		weights_0_97 {Type I LastRead -1 FirstWrite -1}
		weights_0_98 {Type I LastRead -1 FirstWrite -1}
		weights_0_99 {Type I LastRead -1 FirstWrite -1}
		weights_0_100 {Type I LastRead -1 FirstWrite -1}
		weights_0_101 {Type I LastRead -1 FirstWrite -1}
		weights_0_102 {Type I LastRead -1 FirstWrite -1}
		weights_0_103 {Type I LastRead -1 FirstWrite -1}
		weights_0_104 {Type I LastRead -1 FirstWrite -1}
		weights_0_105 {Type I LastRead -1 FirstWrite -1}
		weights_0_106 {Type I LastRead -1 FirstWrite -1}
		weights_0_107 {Type I LastRead -1 FirstWrite -1}
		weights_0_108 {Type I LastRead -1 FirstWrite -1}
		weights_0_109 {Type I LastRead -1 FirstWrite -1}
		weights_0_110 {Type I LastRead -1 FirstWrite -1}
		weights_0_111 {Type I LastRead -1 FirstWrite -1}
		weights_0_112 {Type I LastRead -1 FirstWrite -1}
		weights_0_113 {Type I LastRead -1 FirstWrite -1}
		weights_0_114 {Type I LastRead -1 FirstWrite -1}
		weights_0_115 {Type I LastRead -1 FirstWrite -1}
		weights_0_116 {Type I LastRead -1 FirstWrite -1}
		weights_0_117 {Type I LastRead -1 FirstWrite -1}
		weights_0_118 {Type I LastRead -1 FirstWrite -1}
		weights_0_119 {Type I LastRead -1 FirstWrite -1}
		weights_0_120 {Type I LastRead -1 FirstWrite -1}
		weights_0_121 {Type I LastRead -1 FirstWrite -1}
		weights_0_122 {Type I LastRead -1 FirstWrite -1}
		weights_0_123 {Type I LastRead -1 FirstWrite -1}
		weights_0_124 {Type I LastRead -1 FirstWrite -1}
		weights_0_125 {Type I LastRead -1 FirstWrite -1}
		weights_0_126 {Type I LastRead -1 FirstWrite -1}
		weights_0_127 {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "145", "Max" : "1998"}
	, {"Name" : "Interval", "Min" : "146", "Max" : "1999"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_fifo {  { input_r_dout fifo_data_in 0 10 }  { input_r_empty_n fifo_status 0 1 }  { input_r_read fifo_port_we 1 1 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 4 }  { output_r_ce0 mem_ce 1 1 }  { output_r_we0 mem_we 1 1 }  { output_r_d0 mem_din 1 1 }  { output_r_address1 MemPortADDR2 1 4 }  { output_r_ce1 MemPortCE2 1 1 }  { output_r_we1 MemPortWE2 1 1 }  { output_r_d1 MemPortDIN2 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	input_r { fifo_read 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
