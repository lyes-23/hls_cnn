#ifndef CALCULATELAYER2_H
#define CALCULATELAYER2_H

#include <math.h>
#include <hls_math.h>
#include <ap_int.h>
#include <ap_fixed.h>

typedef ap_fixed<16, 5> fixed_p;

#define HW_COSIM


#define  SIGMOID(x) (1.7159* hls::tanh(0.66666667*x))

void calculateLayer2(
		   ap_uint<8> Layer1_Neurons_CPU[29*29],
		   fixed_p Layer1_Weights_CPU [156],
		   fixed_p Layer2_Neurons_CPU [6*13*13]
);

#endif
