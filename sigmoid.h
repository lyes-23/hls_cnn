#ifndef SIGMOID_H
#define SIGMOID_H


#define N 6
#define LUT_SIZE 256
#define SCALE_FACTOR (LUT_SIZE-1)/N

extern float sigmoidLUT[LUT_SIZE];


float SIGMOID(float x);

#endif
