#ifndef _PARAMETERS_H_
#define _PARAMETERS_H_

#include <ap_fixed.h>

#define potential_t ap_fixed<10,6>
#define weight_t ap_fixed<6, 2, AP_RND>
#define bit_t ap_uint<1>

namespace net
{
    const ap_ufixed<16,0> decay = 0.001;
    const ap_fixed<16,4> threshold = 1;

    constexpr int num_inputs = 784;
    constexpr int num_neurons[2] = {128, 10};
}

#endif