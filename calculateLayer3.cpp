
#include <math.h>
#include "calculateLayer3.h"
#include "sigmoid.h"

void calculateLayer3(
    float Layer2_Neurons_CPU[6 * 13 * 13],
    float Layer2_Weights_CPU[7800],
    float Layer3_Neurons_CPU[50 * 5 * 5]
) {

    float somme;
    int i, j, k, m, n;

    calculateLayer3_loop: for (i = 0; i < 50; i++) {
        row_Loop: for (j = 0; j < 5; j++) {
            col_loop: for (k = 0; k < 5; k++) {
				#pragma HLS PIPELINE
                somme = Layer2_Weights_CPU[26 * 6 * i];

                kernelRow_Loop: for (m = 0; m < 5; m++) {
                    kernelCol_Loop: for (n = 0; n < 5; n++) {
                        #pragma HLS UNROLL factor=6
                        for (int c = 0; c < 6; c++) { // Ajout d'une boucle sur les canaux
                            somme += Layer2_Weights_CPU[26 * 6 * i + 1 + 6 * (n + 5 * m) + c]
                                     * Layer2_Neurons_CPU[13 * 13 * c + 13 * (2 * j + m) + (2 * k + n)];
                        }
                    }
                }

                Layer3_Neurons_CPU[5 * 5 * i + 5 * j + k] = (float) SIGMOID(somme);
            }
        }
    }
}



