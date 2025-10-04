#ifndef _SNN_H_
#define _SNN_H_

#include "parameters.h"

void snn_mnist_hls(bit_t input[net::num_inputs], bit_t output[net::num_neurons[1]]);

#endif