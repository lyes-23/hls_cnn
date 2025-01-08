#include "calculateLayer2.h"
#include <math.h>


using namespace std;

void calculateLayer2(
    ap_uint<8> Layer1_Neurons_CPU[29*29],
	fixed_p Layer1_Weights_CPU [156],
	fixed_p Layer2_Neurons_CPU [6*13*13]
) {


#pragma HLS INTERFACE mode=s_axilite port=Layer1_Neurons_CPU
#pragma HLS INTERFACE mode=s_axilite port=Layer1_Weights_CPU
#pragma HLS array_partition variable=Layer2_Neurons_CPU complete dim=1
//#pragma HLS INTERFACE mode=s_axilite port=return bundle= CTRL_bus

	fixed_p somme;
    int i, j, k, m, n;

#pragma HLS DATAFLOW

    calculateLayer2_loop: for (i = 0; i < 6; i++) {
        OutputRow_Loop: for (j = 0; j < 13; j++) {
            OutputColumn_Loop: for (k = 0; k < 13; k++) {
#pragma HLS PIPELINE II=1
                somme = Layer1_Weights_CPU[26 * i];
                convolutionRow: for (m = 0; m < 5; m++) {
                    convolutionColumn: for (n = 0; n < 5; n++) {
                    somme += Layer1_Weights_CPU[26*i+ 5*m + n + 1 ]
                    *  Layer1_Neurons_CPU[29*(m+2*j)+ n+ 2*k];
                    }
#pragma HLS INLINE
                    Layer2_Neurons_CPU[13*13*i+13*j+k] = (fixed_p) SIGMOID((float)somme);
                }
            }
        }
    }
}
