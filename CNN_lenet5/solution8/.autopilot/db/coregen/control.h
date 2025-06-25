// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of Layer1_Neurons_CPU
//        bit 31~0 - Layer1_Neurons_CPU[31:0] (Read/Write)
// 0x14 : Data signal of Layer1_Neurons_CPU
//        bit 31~0 - Layer1_Neurons_CPU[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of Layer1_Weights_CPU
//        bit 31~0 - Layer1_Weights_CPU[31:0] (Read/Write)
// 0x20 : Data signal of Layer1_Weights_CPU
//        bit 31~0 - Layer1_Weights_CPU[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of Layer2_Weights_CPU
//        bit 31~0 - Layer2_Weights_CPU[31:0] (Read/Write)
// 0x2c : Data signal of Layer2_Weights_CPU
//        bit 31~0 - Layer2_Weights_CPU[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of Layer3_Weights_CPU
//        bit 31~0 - Layer3_Weights_CPU[31:0] (Read/Write)
// 0x38 : Data signal of Layer3_Weights_CPU
//        bit 31~0 - Layer3_Weights_CPU[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of Layer4_Neurons_CPU
//        bit 31~0 - Layer4_Neurons_CPU[31:0] (Read/Write)
// 0x44 : Data signal of Layer4_Neurons_CPU
//        bit 31~0 - Layer4_Neurons_CPU[63:32] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_LAYER1_NEURONS_CPU_DATA 0x10
#define CONTROL_BITS_LAYER1_NEURONS_CPU_DATA 64
#define CONTROL_ADDR_LAYER1_WEIGHTS_CPU_DATA 0x1c
#define CONTROL_BITS_LAYER1_WEIGHTS_CPU_DATA 64
#define CONTROL_ADDR_LAYER2_WEIGHTS_CPU_DATA 0x28
#define CONTROL_BITS_LAYER2_WEIGHTS_CPU_DATA 64
#define CONTROL_ADDR_LAYER3_WEIGHTS_CPU_DATA 0x34
#define CONTROL_BITS_LAYER3_WEIGHTS_CPU_DATA 64
#define CONTROL_ADDR_LAYER4_NEURONS_CPU_DATA 0x40
#define CONTROL_BITS_LAYER4_NEURONS_CPU_DATA 64
