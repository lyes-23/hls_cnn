#include <iostream>
#include <iomanip>
#include "hls_stream.h"
#include "lenet5.h"
#include <cmath>  // Include the math library for fabs

// Include the input image and weights from an external header file
#include "input_data.h"  // Ensure this contains the input image and weights

#define IMGWIDTH 29
#define IMGHEIGHT 29
#define EPSILON 1e-6 // Tolerance for comparing floating-point numbers

// Function to compare two floating-point values
bool compare(float expected, float actual) {
    return (fabs(expected - actual) < EPSILON);
}

// Main testbench function
int main() {
    // Declare streams for HLS inputs and outputs
    hls::stream<float> Layer1_Neurons_stream("Layer1_Neurons_stream");
    hls::stream<float> Layer1_Weights_stream("Layer1_Weights_stream");
    hls::stream<float> Layer2_Weights_stream("Layer2_Weights_stream");
    hls::stream<float> Layer3_Weights_stream("Layer3_Weights_stream");
    hls::stream<float> Layer4_Neurons_stream("Layer4_Neurons_stream");

    // Load input image and weights into streams
    // Assuming input_data.h has the arrays: image_data, Layer1_Weights, Layer2_Weights, Layer3_Weights
    // Load input image data into stream
    for (int i = 0; i < IMGWIDTH * IMGHEIGHT; i++) {
        Layer1_Neurons_stream.write(image_data[i]);
    }

    // Load Layer1 weights into stream
    for (int i = 0; i < 156; i++) {
        Layer1_Weights_stream.write(Layer1_Weights[i]);
    }

    // Load Layer2 weights into stream
    for (int i = 0; i < 7800; i++) {
        Layer2_Weights_stream.write(Layer2_Weights[i]);
    }

    // Load Layer3 weights into stream
    for (int i = 0; i < 125100; i++) {
        Layer3_Weights_stream.write(Layer3_Weights[i]);
    }

    // Run the C simulation of the Lenet_HW function
    float *Layer4_Neurons_Csim[100]; // Array to hold the Csim output
    Lenet_HW(Layer1_Neurons_stream, Layer1_Weights_stream, Layer2_Weights_stream, Layer3_Weights_stream, Layer4_Neurons_Csim);

    // Now simulate the hardware with the same input data
    Lenet_HW(Layer1_Neurons_stream, Layer1_Weights_stream, Layer2_Weights_stream, Layer3_Weights_stream, Layer4_Neurons_stream);

    // Compare the results of Csim and HW_cosim
    bool passed = true;
    for (int i = 0; i < 100; i++) {
        float expected = Layer4_Neurons_Csim[i];
        float actual = Layer4_Neurons_stream.read();
        if (!compare(expected, actual)) {
            std::cout << "Mismatch at index " << i << ": Expected = " << expected << ", Actual = " << actual << std::endl;
            passed = false;
        }
    }

    if (passed) {
        std::cout << "Test passed: CSIM and HW_cosim outputs match!" << std::endl;
    } else {
        std::cout << "Test failed: CSIM and HW_cosim outputs do not match!" << std::endl;
    }

    return 0;
}
