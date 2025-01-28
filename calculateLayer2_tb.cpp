#include <stdio.h>

#include "calculateLayer2.h"
#include <math.h>
#include "input_data.h"



int main(int argc, char **argv) {

float Layer2_Neurons_CPU[6 * 13 * 13];
float expected_output[6 * 13 * 13];





    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 13; j++) {
            for (int k = 0; k < 13; k++) {
                float somme = Layer1_Weights_CPU[26 * i];
                for (int m = 0; m < 5; m++) {
                    for (int n = 0; n < 5; n++) {
                        if ((m + 2 * j) < 29 && (n + 2 * k) < 29) {
                            somme += Layer1_Weights_CPU[26 * i + 5 * m + n + 1] *
                                    Layer1_Neurons_CPU[29 * (m + 2 * j) + n + 2 * k];
                        }
                    }
                }
                expected_output[13 * 13 * i + 13 * j + k] = (1.7159*tanh(0.66666667*somme));
            }
        }
 }

#ifdef HW_COSIM
    calculateLayer2(Layer1_Neurons_CPU, Layer1_Weights_CPU, Layer2_Neurons_CPU);
#endif

    int error_count = 0;
   #ifdef HW_COSIM
       for (int i = 0; i < 6 * 13 * 13; i++) {
           if (fabs(Layer2_Neurons_CPU[i] - expected_output[i]) > (0.3f)) {
               error_count++;
               printf("Mismatch at index %d: Expected %f, Got %f\n", i, expected_output[i], Layer2_Neurons_CPU[i]);
           }
       }
   #endif

       if (error_count == 0) {
           printf("Test Passed!\n");
       } else {
           printf("Test Failed with %d errors!\n", error_count);
       }

       return 0 ;
   }
