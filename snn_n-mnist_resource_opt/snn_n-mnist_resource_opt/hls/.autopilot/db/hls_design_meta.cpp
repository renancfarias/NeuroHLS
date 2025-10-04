#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("input_r_dout", 10, hls_in, 0, "ap_fifo", "fifo_data_in", 1),
	Port_Property("input_r_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 1),
	Port_Property("input_r_read", 1, hls_out, 0, "ap_fifo", "fifo_port_we", 1),
	Port_Property("output_r_address0", 4, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("output_r_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("output_r_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("output_r_d0", 1, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("output_r_address1", 4, hls_out, 1, "ap_memory", "MemPortADDR2", 1),
	Port_Property("output_r_ce1", 1, hls_out, 1, "ap_memory", "MemPortCE2", 1),
	Port_Property("output_r_we1", 1, hls_out, 1, "ap_memory", "MemPortWE2", 1),
	Port_Property("output_r_d1", 1, hls_out, 1, "ap_memory", "MemPortDIN2", 1),
};
const char* HLS_Design_Meta::dut_name = "snn_mnist_hls";
