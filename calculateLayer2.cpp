#include "calculateLayer2.h"
#include <math.h>

void calculateLayer2(
    float Layer1_Neurons_CPU[29*29],
    float Layer1_Weights_CPU[156],
    float Layer2_Neurons_CPU[6*13*13]
) {
    #pragma HLS INTERFACE mode=m_axi port=Layer1_Neurons_CPU
    #pragma HLS INTERFACE mode=bram  port=Layer1_Weights_CPU
    #pragma HLS INTERFACE mode=m_axi port=Layer2_Neurons_CPU
    #pragma HLS INTERFACE mode=s_axilite port=return bundle=CTRL_bus



    float somme;
    int i, j, k, m, n;

    calculateLayer2_loop: for (i = 0; i < 6; i++) {
        OutputRow_Loop: for (j = 0; j < 13; j++) {
            OutputColumn_Loop: for (k = 0; k < 13; k++) {
                #pragma HLS PIPELINE II=25
                somme = Layer1_Weights_CPU[26 * i];
                convolutionRow: for (m = 0; m < 5; m++) {
                    #pragma HLS UNROLL factor=5
                    convolutionColumn: for (n = 0; n < 5; n++) {
                        somme += Layer1_Weights_CPU[26*i + 5*m + n + 1] *
                                 Layer1_Neurons_CPU[29*(m + 2*j) + n + 2*k];
                    }
                }

                Layer2_Neurons_CPU[13*13*i + 13*j + k] = SIGMOID(somme);
            }
        }
    }
}
