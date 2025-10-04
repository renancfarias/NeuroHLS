#ifndef _LAYER_HPP_
#define _LAYER_HPP_

#include <vector>
#include <ap_fixed.h>
#include <ap_int.h>
#include <string>
#include <fstream>
#include <iostream>
#include <exception>
#include <hls_stream.h>
#include <hls_vector.h>
#include <bitset>

// NETWORK PARAMETERS
#define NUM_INPUTS 784
#define NUM_NEURONS {128,10} 
#define THRESHOLD 1.0
#define DECAY 0.001
#define WEIGHT_BITWIDTH 12
#define WEIGHT_INT_WIDTH 2
#define weight_t ap_fixed<WEIGHT_BITWIDTH, WEIGHT_INT_WIDTH, AP_RND>
#define output_t ap_uint<1>
#define bit_t ap_uint<1>
#define potential_t ap_fixed<16,6, AP_RND>
#define neuron_idx_t ap_uint<10>

constexpr int num_neurons [] = NUM_NEURONS;

const ap_fixed<16,4> threshold = THRESHOLD;

namespace layer {
const ap_ufixed<16,0> decay = DECAY;
}

template<int n_neurons, int n_inputs, typename in_t, typename out_t, int unroll_factor>
void lif_layer(in_t &input, out_t &output, weight_t weights [n_neurons][n_inputs]) {
    #pragma HLS function_instantiate variable=weights
    #pragma HLS ARRAY_PARTITION variable=weights dim=1 type=complete 
    
    static potential_t potentials[n_neurons];

    bit_t spikes [n_neurons];

    #pragma HLS ARRAY_PARTITION variable=potentials type=complete
    #pragma HLS ARRAY_RESHAPE variable=spikes dim=0 type=complete
    
    fire_leak:
    for (int i = 0; i < n_neurons; i++) {
        #pragma HLS UNROLL
        if (potentials[i] >= 1) {
            spikes[i] = 1;
            potentials[i] = 0.0;
        } else {
            spikes[i] = 0;
            potentials[i] = potentials[i] * layer::decay;
        }
    }

    output:
    for (int i = 0; i < n_neurons; i++) {
        #pragma HLS PIPELINE
        if (spikes[i] > 0) {
            output.write(i);
        }
    }

    integrate:
    while (!input.empty()) {
        #pragma HLS LOOP_TRIPCOUNT min=0 avg=15 max=n_inputs
        #pragma HLS PIPELINE       
        int i = input.read();
        for (int n = 0; n < n_neurons; n++) {
            potentials[n] += weights[n][i];
        }
    }

}

void snn_mnist_hls(hls::stream<neuron_idx_t> &input, bit_t output [num_neurons[1]]);

#endif 