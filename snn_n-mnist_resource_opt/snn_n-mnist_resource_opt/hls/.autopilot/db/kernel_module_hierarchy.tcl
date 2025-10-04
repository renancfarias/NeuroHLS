set ModuleHierarchy {[{
"Name" : "snn_mnist_hls","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_lif_layer_128_784_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_760","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_lif_layer_128_784_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_2619","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "integrate","ID" : "3","Type" : "pipeline"},]},]},
	{"Name" : "grp_lif_layer_10_128_stream_ap_uint_10_0_stream_ap_uint_10_0_1_s_fu_1279","ID" : "4","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_fu_259","ID" : "5","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "integrate","ID" : "6","Type" : "pipeline"},]},]},],
"SubLoops" : [
	{"Name" : "write_output","ID" : "7","Type" : "no"},]
}]}