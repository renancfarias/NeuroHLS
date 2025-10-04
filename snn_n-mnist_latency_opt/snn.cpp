#include "snn.h"
#include "parameters.h"

#include "latency_optimized.h"
#include "../weights/n-mnist_weights.h"

/*
    This implementation is an example intended for FPGAs with less resources.

    Remarks:

        - The decay operation is done with DSPs instead of LUTs

        - The Initiation Interval (II) of the accumulation pipeline is 2
        
        - Frequency: 150MHz
*/
void latency_oriented_artix_7(bit_t input[net::num_inputs],
                              bit_t output[net::num_neurons[1]],
                              weight_t w1[net::num_neurons[0]][net::num_inputs],
                              weight_t w2[net::num_neurons[1]][net::num_neurons[0]])
{
    #pragma HLS function_instantiate variable=input
    bit_t output_first[net::num_neurons[0]];

    dense_LIF_latency_optimized<net::num_neurons[0], net::num_inputs, 14, 128>(input, output_first, w1);
    dense_LIF_latency_optimized<net::num_neurons[1], net::num_neurons[0], 16, 10>(output_first, output, w2);
}

/*
    This implementation is an example intended for FPGAs with more resources.

    Remarks:

        - The decay operation is done with LUTs

        - The Initiation Interval (II) of the accumulation pipeline is 1
        
        - Frequency: 400MHz
*/
void latency_oriented_kintex_7(bit_t input[net::num_inputs],
                               bit_t output[net::num_neurons[1]],
                               weight_t w1[net::num_neurons[0]][net::num_inputs],
                               weight_t w2[net::num_neurons[1]][net::num_neurons[0]])
{
    #pragma HLS function_instantiate variable=input
    bit_t output_first[net::num_neurons[0]];

    dense_LIF_latency_optimized<net::num_neurons[0], net::num_inputs, 56, 128>(input, output_first, w1);
    dense_LIF_latency_optimized<net::num_neurons[1], net::num_neurons[0], 128, 10>(output_first, output, w2);
}

void snn_mnist_hls(bit_t bit_input[net::num_inputs], bit_t output[net::num_neurons[1]]) 
{
    latency_oriented_artix_7(bit_input, output, weights_0, weights_1);
    // latency_oriented_kintex_7(bit_input, output, weights_0, weights_1);
}