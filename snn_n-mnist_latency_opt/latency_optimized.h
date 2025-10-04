#ifndef _LATENCY_ORIENTED_H_
#define _LATENCY_ORIENTED_H_

#include "parameters.h"

template<int n_neurons, int fire_unroll_factor, typename potential_type>
void leaky_fire_array(potential_type potentials[n_neurons], bit_t output[n_neurons])
{
    #pragma HLS inline
    #pragma HLS BIND_OP variable=potentials op=mul impl=dsp

    leaky_fire_array:
    for (int n = 0; n < n_neurons; n++)
    {
        #pragma HLS UNROLL factor=fire_unroll_factor

        if (potentials[n] >= net::threshold)
        {
            output[n] = 1;
            potentials[n] = 0.0;
        }
        else
        {
            output[n] = 0;
            potentials[n] *= net::decay;
        }
    }
}

/*
    Latency-optimized implementation of a dense (fully-connected) 
    Leaky Integrate-and-Fire (LIF) layer.

    Overview:
        - This version processes all inputs, even if they are not spikes.
        - The benefit is higher parallelism, but it uses more hardware resources.

    Parameters:
        - n_neurons: number of neurons in this layer.
        - n_inputs: number of inputs (neurons from the previous layer).
        - accum_unroll_factor: how many input-accumulation steps run in parallel.
        - fire_unroll_factor: how many firing steps run in parallel.

    Notes:
        - The unroll factors control loop replication: Higher values -> lower latency, higher resource usage.
        - accum_unroll_factor must be a divisor of n_inputs.
        - fire_unroll_factor must be a divisor of n_neurons.
        - On some FPGA devices, the pipeline initiation interval (II) 
          may need to be set greater than 1.
*/
template<int n_neurons, int n_inputs, int accum_unroll_factor, int fire_unroll_factor, typename input_type, typename weight_type>
void dense_LIF_latency_optimized(input_type input[n_inputs],
                                 bit_t output[n_neurons],
                                 weight_type weights[n_neurons][n_inputs])
{
    #pragma HLS function_instantiate variable=input

    static potential_t potentials[n_neurons] = {};

    potential_t aux[accum_unroll_factor];

    #pragma HLS ARRAY_PARTITION variable=potentials dim=1 type=complete
    #pragma HLS ARRAY_PARTITION variable=output dim=1 type=complete

    #pragma HLS ARRAY_PARTITION variable=input factor=accum_unroll_factor dim=1 type=cyclic
    #pragma HLS ARRAY_PARTITION variable=aux factor=accum_unroll_factor dim=1 type=cyclic

    leaky_fire_array<n_neurons, fire_unroll_factor>(potentials, output);

    itter_inputs:
    for (int i = 0; i < n_inputs; i += accum_unroll_factor)
    {
        #pragma HLS PIPELINE II=2
        
        itter_neurons:
        for (int n = 0; n < n_neurons; n++)
        {
            #pragma HLS UNROLL

            mult_batch:
            for (int k = 0; k < accum_unroll_factor; k++)
            {
                #pragma HLS UNROLL

                aux[k] = weights[n][i + k] * input[i + k];
                potentials[n] += aux[k];
            }
        }
    }
};

#endif