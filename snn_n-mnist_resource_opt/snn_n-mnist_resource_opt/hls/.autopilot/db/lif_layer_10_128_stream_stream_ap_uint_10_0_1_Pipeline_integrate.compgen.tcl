# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_0_cfu BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_1_cgu BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_2_chv BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_3_civ BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_4_cjv BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_5_ckv BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_6_clv BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_7_cmv BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_8_cnw BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler snn_mnist_hls_lif_layer_10_128_stream_stream_ap_uint_10_0_1_Pipeline_integrate_weights_1_9_cow BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name p_promoted22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted22 \
    op interface \
    ports { p_promoted22 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name p_promoted20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted20 \
    op interface \
    ports { p_promoted20 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name p_promoted18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted18 \
    op interface \
    ports { p_promoted18 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name p_promoted16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted16 \
    op interface \
    ports { p_promoted16 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name p_promoted14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted14 \
    op interface \
    ports { p_promoted14 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name p_promoted12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted12 \
    op interface \
    ports { p_promoted12 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name p_promoted10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted10 \
    op interface \
    ports { p_promoted10 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name p_promoted8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted8 \
    op interface \
    ports { p_promoted8 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name p_promoted6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted6 \
    op interface \
    ports { p_promoted6 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name p_promoted \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_promoted \
    op interface \
    ports { p_promoted { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name out1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out1 \
    op interface \
    ports { out1_dout { I 10 vector } out1_empty_n { I 1 bit } out1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name add_ln74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_out \
    op interface \
    ports { add_ln74_out { O 16 vector } add_ln74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name add_ln74_128_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_128_out \
    op interface \
    ports { add_ln74_128_out { O 16 vector } add_ln74_128_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name add_ln74_129_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_129_out \
    op interface \
    ports { add_ln74_129_out { O 16 vector } add_ln74_129_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name add_ln74_130_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_130_out \
    op interface \
    ports { add_ln74_130_out { O 16 vector } add_ln74_130_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name add_ln74_131_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_131_out \
    op interface \
    ports { add_ln74_131_out { O 16 vector } add_ln74_131_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name add_ln74_132_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_132_out \
    op interface \
    ports { add_ln74_132_out { O 16 vector } add_ln74_132_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name add_ln74_133_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_133_out \
    op interface \
    ports { add_ln74_133_out { O 16 vector } add_ln74_133_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name add_ln74_134_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_134_out \
    op interface \
    ports { add_ln74_134_out { O 16 vector } add_ln74_134_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name add_ln74_135_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_135_out \
    op interface \
    ports { add_ln74_135_out { O 16 vector } add_ln74_135_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name add_ln74_136_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln74_136_out \
    op interface \
    ports { add_ln74_136_out { O 16 vector } add_ln74_136_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName snn_mnist_hls_flow_control_loop_pipe_sequential_init_U
set CompName snn_mnist_hls_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix snn_mnist_hls_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


