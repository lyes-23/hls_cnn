// 0x00200 ~
// 0x003ff : Memory 'Layer4_Neurons_CPU' (100 * 32b)
//           Word n : bit [31:0] - Layer4_Neurons_CPU[n]
// 0x02000 ~
// 0x03fff : Memory 'Layer3_Neurons_CPU' (1250 * 32b)
//           Word n : bit [31:0] - Layer3_Neurons_CPU[n]
// 0x80000 ~
// 0xfffff : Memory 'Layer3_Weights_CPU' (125100 * 32b)
//           Word n : bit [31:0] - Layer3_Weights_CPU[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE 0x00200
#define CONTROL_ADDR_LAYER4_NEURONS_CPU_HIGH 0x003ff
#define CONTROL_WIDTH_LAYER4_NEURONS_CPU     32
#define CONTROL_DEPTH_LAYER4_NEURONS_CPU     100
#define CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE 0x02000
#define CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH 0x03fff
#define CONTROL_WIDTH_LAYER3_NEURONS_CPU     32
#define CONTROL_DEPTH_LAYER3_NEURONS_CPU     1250
#define CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE 0x80000
#define CONTROL_ADDR_LAYER3_WEIGHTS_CPU_HIGH 0xfffff
#define CONTROL_WIDTH_LAYER3_WEIGHTS_CPU     32
#define CONTROL_DEPTH_LAYER3_WEIGHTS_CPU     125100
