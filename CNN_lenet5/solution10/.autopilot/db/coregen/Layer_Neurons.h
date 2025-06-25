// 0x1000 ~
// 0x1fff : Memory 'Layer1_Neurons_CPU' (841 * 32b)
//          Word n : bit [31:0] - Layer1_Neurons_CPU[n]
// 0x2000 ~
// 0x3fff : Memory 'Layer3_Neurons_CPU' (1250 * 32b)
//          Word n : bit [31:0] - Layer3_Neurons_CPU[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE 0x1000
#define LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_HIGH 0x1fff
#define LAYER_NEURONS_WIDTH_LAYER1_NEURONS_CPU     32
#define LAYER_NEURONS_DEPTH_LAYER1_NEURONS_CPU     841
#define LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE 0x2000
#define LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_HIGH 0x3fff
#define LAYER_NEURONS_WIDTH_LAYER3_NEURONS_CPU     32
#define LAYER_NEURONS_DEPTH_LAYER3_NEURONS_CPU     1250
