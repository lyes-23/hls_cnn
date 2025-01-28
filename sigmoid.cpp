#include "sigmoid.h"



float sigmoidLUT[LUT_SIZE]= {0.000000, 0.026914, 0.053815, 0.080689, 0.107523, 0.134305, 0.161021, 0.187659, 0.214205, 0.240648, 0.266975, 0.293173, 0.319231, 0.345138, 0.370882, 0.396452, 0.421837, 0.447027, 0.472012, 0.496783, 0.521329, 0.545643, 0.569715, 0.593538, 0.617104, 0.640405, 0.663435, 0.686188, 0.708657, 0.730836, 0.752722, 0.774308, 0.795590, 0.816566, 0.837231, 0.857581, 0.877615, 0.897331, 0.916725, 0.935797, 0.954546, 0.972970, 0.991069, 1.008844, 1.026294, 1.043419, 1.060220, 1.076699, 1.092857, 1.108696, 1.124216, 1.139421, 1.154312, 1.168892, 1.183164, 1.197131, 1.210795, 1.224160, 1.237229, 1.250006, 1.262495, 1.274698, 1.286620, 1.298265, 1.309637, 1.320740, 1.331578, 1.342155, 1.352476, 1.362545, 1.372366, 1.381944, 1.391282, 1.400387, 1.409261, 1.417909, 1.426336, 1.434546, 1.442544, 1.450333, 1.457919, 1.465305, 1.472496, 1.479495, 1.486308, 1.492939, 1.499391, 1.505668, 1.511775, 1.517715, 1.523493, 1.529112, 1.534577, 1.539890, 1.545055, 1.550077, 1.554958, 1.559703, 1.564314, 1.568795, 1.573149, 1.577380, 1.581491, 1.585485, 1.589364, 1.593132, 1.596793, 1.600347, 1.603800, 1.607152, 1.610408, 1.613569, 1.616638, 1.619618, 1.622510, 1.625319, 1.628045, 1.630691, 1.633259, 1.635752, 1.638171, 1.640519, 1.642798, 1.645009, 1.647155, 1.649237, 1.651257, 1.653217, 1.655119, 1.656964, 1.658754, 1.660490, 1.662175, 1.663809, 1.665394, 1.666932, 1.668423, 1.669870, 1.671273, 1.672634, 1.673954, 1.675234, 1.676476, 1.677680, 1.678847, 1.679980, 1.681078, 1.682143, 1.683176, 1.684177, 1.685148, 1.686090, 1.687002, 1.687888, 1.688746, 1.689578, 1.690385, 1.691167, 1.691926, 1.692662, 1.693375, 1.694066, 1.694736, 1.695386, 1.696016, 1.696626, 1.697218, 1.697792, 1.698349, 1.698888, 1.699411, 1.699918, 1.700409, 1.700886, 1.701347, 1.701795, 1.702229, 1.702650, 1.703057, 1.703452, 1.703836, 1.704207, 1.704567, 1.704916, 1.705254, 1.705582, 1.705900, 1.706208, 1.706506, 1.706795, 1.707076, 1.707348, 1.707611, 1.707867, 1.708114, 1.708354, 1.708587, 1.708812, 1.709031, 1.709242, 1.709448, 1.709647, 1.709839, 1.710026, 1.710207, 1.710383, 1.710553, 1.710718, 1.710878, 1.711033, 1.711183, 1.711328, 1.711469, 1.711606, 1.711738, 1.711867, 1.711991, 1.712112, 1.712229, 1.712342, 1.712452, 1.712558, 1.712661, 1.712761, 1.712858, 1.712952, 1.713043, 1.713131, 1.713217, 1.713299, 1.713380, 1.713457, 1.713533, 1.713606, 1.713677, 1.713745, 1.713812, 1.713876, 1.713939, 1.713999, 1.714058, 1.714115, 1.714170, 1.714223, 1.714275, 1.714325, 1.714374, 1.714421, 1.714467, 1.714511, 1.714554, 1.714595, 1.714636, 1.714675, 1.714713, 1.714749};
float temp;

float SIGMOID(float x) {

//#pragma HLS BIND_STORAGE variable=sigmoidLUT type=RAM_1P impl=BRAM

	if (x < 0)  temp = -x;
	else  		temp =  x;

    if (temp > N)  temp = N;

#pragma HLS PIPELINE II=4
    int index = (int)(temp/N *(LUT_SIZE - 1));
    if(x>0) return  sigmoidLUT[index];
    else    return -sigmoidLUT[index];
}
