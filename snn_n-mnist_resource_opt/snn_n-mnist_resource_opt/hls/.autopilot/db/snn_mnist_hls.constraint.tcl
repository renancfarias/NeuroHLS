set clock_constraint { \
    name clk \
    module snn_mnist_hls \
    port ap_clk \
    period 2.5 \
    uncertainty 0.675 \
}

set all_path {}

set false_path {}

