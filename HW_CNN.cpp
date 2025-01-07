#include "calculateLayer2.h"
#include "calculateLayer3.h"
#include "calculateLayer4.h"
#include <hls_stream.h>

void cnn_hls(
    ap_uint<8> Layer1_Neurons_CPU[29*29],       // Input image data
    fixed_p Layer1_Weights_CPU[156],            // Layer 1 weights
    fixed_p Layer2_Weights_CPU[7800],           // Layer 2 weights
    fixed_p Layer3_Weights_CPU[125100],         // Layer 3 weights
    fixed_p Layer4_Neurons_CPU[100]             // Output neurons from Layer 4
) {
    #pragma HLS INTERFACE mode=s_axilite port=Layer1_Neurons_CPU bundle=INPUT
    #pragma HLS INTERFACE mode=s_axilite port=Layer1_Weights_CPU bundle=INPUT
    #pragma HLS INTERFACE mode=s_axilite port=Layer2_Weights_CPU bundle=INPUT
    #pragma HLS INTERFACE mode=s_axilite port=Layer3_Weights_CPU bundle=INPUT
    #pragma HLS INTERFACE mode=s_axilite port=Layer4_Neurons_CPU bundle=OUTPUT

	fixed_p Layer2_Neurons_CPU[6*13*13];
    fixed_p Layer3_Neurons_CPU[50*5*5];

    #pragma HLS INTERFACE mode=axis port=Layer1_Neurons_CPU // AXI stream for input
    #pragma HLS INTERFACE mode=axis port=Layer2_Neurons_CPU // AXI stream for Layer2 output
    #pragma HLS INTERFACE mode=axis port=Layer3_Neurons_CPU // AXI stream for Layer3 output

    #pragma HLS DATAFLOW

    calculateLayer2(Layer1_Neurons_CPU, Layer1_Weights_CPU, Layer2_Neurons_CPU);


    calculateLayer3(Layer2_Neurons_CPU, Layer2_Weights_CPU, Layer3_Neurons_CPU);


    calculateLayer4(Layer3_Neurons_CPU, Layer3_Weights_CPU, Layer4_Neurons_CPU);
}
