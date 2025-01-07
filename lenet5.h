#ifndef LENET5_H
#define LENET5_H

#include "hls_stream.h"

#define IMGWIDTH 29
#define IMGHEIGHT 29
#define SIGMOID(x) (1.7159 * tanh(0.66666667 * x))

// HLS interface for Lenet_HW function with AXI streaming for data transfer
void Lenet_HW(hls::stream<float>& Layer1_Neurons_stream,
              hls::stream<float>& Layer1_Weights_stream,
              hls::stream<float>& Layer2_Weights_stream,
              hls::stream<float>& Layer3_Weights_stream,
              hls::stream<float>& Layer4_Neurons_stream);

// HLS interface for calculateLayer2 function
void calculateLayer2(hls::stream<float>& Layer1_Neurons_stream,
                     hls::stream<float>& Layer1_Weights_stream,
                     float* Layer2_Neurons_CPU);

// HLS interface for calculateLayer3 function
void calculateLayer3(float* Layer2_Neurons_CPU,
                     hls::stream<float>& Layer2_Weights_stream,
                     float* Layer3_Neurons_CPU);

// HLS interface for calculateLayer4 function
void calculateLayer4(float* Layer3_Neurons_CPU,
                     hls::stream<float>& Layer3_Weights_stream,
                     hls::stream<float>& Layer4_Neurons_stream);

#endif
