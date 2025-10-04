#include <iostream>
#include <vector>
#include <ap_fixed.h>
#include <ap_int.h>
#include "layer.h"
#include "../weights/n-mnist_weights.h"


void snn_mnist_hls(hls::stream<neuron_idx_t> &input , bit_t output [num_neurons[1]]) { 

    hls::stream<neuron_idx_t> out1;
    hls::stream<neuron_idx_t> out2;

    #pragma HLS STREAM variable=out1 depth=num_neurons[0]
    #pragma HLS STREAM variable=out2 depth=num_neurons[1]
    
    #pragma HLS PIPELINE
        
    lif_layer<num_neurons[0], NUM_INPUTS, hls::stream<neuron_idx_t>, hls::stream<neuron_idx_t>, 1>(input, out1, weights_0);
    lif_layer<num_neurons[1], num_neurons[0], hls::stream<neuron_idx_t>, hls::stream<neuron_idx_t>, 1>(out1, out2, weights_1);

    reset_ouput:
    for (int i = 0; i < num_neurons[1]; i++) {
        output[i] = 0;
    }

    write_output:
    while(!out2.empty()) {
        #pragma HLS LOOP_TRIPCOUNT min=0 avg=1 max=num_neurons[1]
        output[out2.read()] = 1;
    }
    
}