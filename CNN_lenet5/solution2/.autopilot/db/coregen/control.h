// 0x1000 ~
// 0x1fff : Memory 'Layer2_Neurons_CPU' (1014 * 32b)
//          Word n : bit [31:0] - Layer2_Neurons_CPU[n]
// 0x2000 ~
// 0x3fff : Memory 'Layer3_Neurons_CPU' (1250 * 32b)
//          Word n : bit [31:0] - Layer3_Neurons_CPU[n]
// 0x8000 ~
// 0xffff : Memory 'Layer2_Weights_CPU' (7800 * 32b)
//          Word n : bit [31:0] - Layer2_Weights_CPU[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE 0x1000
#define CONTROL_ADDR_LAYER2_NEURONS_CPU_HIGH 0x1fff
#define CONTROL_WIDTH_LAYER2_NEURONS_CPU     32
#define CONTROL_DEPTH_LAYER2_NEURONS_CPU     1014
#define CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE 0x2000
#define CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH 0x3fff
#define CONTROL_WIDTH_LAYER3_NEURONS_CPU     32
#define CONTROL_DEPTH_LAYER3_NEURONS_CPU     1250
#define CONTROL_ADDR_LAYER2_WEIGHTS_CPU_BASE 0x8000
#define CONTROL_ADDR_LAYER2_WEIGHTS_CPU_HIGH 0xffff
#define CONTROL_WIDTH_LAYER2_WEIGHTS_CPU     32
#define CONTROL_DEPTH_LAYER2_WEIGHTS_CPU     7800
