#include "sigmoid.h"
#include <cmath>


float SIGMOID(float x) {
    // Ensure the input is within the range [-N, N]
    if (x < -N) x = -N;
    if (x > N)  x = N;

    // Calculate the index corresponding to the value of x in the range [-N, N]
    int index = (int)((x + N) * (LUT_SIZE - 1) / (2 * N));

    return sigmoidLUT[index];
}
