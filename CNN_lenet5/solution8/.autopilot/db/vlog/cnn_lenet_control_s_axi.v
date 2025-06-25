// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module cnn_lenet_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [63:0]                   Layer1_Neurons_CPU,
    output wire [63:0]                   Layer1_Weights_CPU,
    output wire [63:0]                   Layer2_Weights_CPU,
    output wire [63:0]                   Layer3_Weights_CPU,
    output wire [63:0]                   Layer4_Neurons_CPU
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_none
//
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

//------------------------Parameter----------------------
localparam
    ADDR_LAYER1_NEURONS_CPU_DATA_0 = 7'h10,
    ADDR_LAYER1_NEURONS_CPU_DATA_1 = 7'h14,
    ADDR_LAYER1_NEURONS_CPU_CTRL   = 7'h18,
    ADDR_LAYER1_WEIGHTS_CPU_DATA_0 = 7'h1c,
    ADDR_LAYER1_WEIGHTS_CPU_DATA_1 = 7'h20,
    ADDR_LAYER1_WEIGHTS_CPU_CTRL   = 7'h24,
    ADDR_LAYER2_WEIGHTS_CPU_DATA_0 = 7'h28,
    ADDR_LAYER2_WEIGHTS_CPU_DATA_1 = 7'h2c,
    ADDR_LAYER2_WEIGHTS_CPU_CTRL   = 7'h30,
    ADDR_LAYER3_WEIGHTS_CPU_DATA_0 = 7'h34,
    ADDR_LAYER3_WEIGHTS_CPU_DATA_1 = 7'h38,
    ADDR_LAYER3_WEIGHTS_CPU_CTRL   = 7'h3c,
    ADDR_LAYER4_NEURONS_CPU_DATA_0 = 7'h40,
    ADDR_LAYER4_NEURONS_CPU_DATA_1 = 7'h44,
    ADDR_LAYER4_NEURONS_CPU_CTRL   = 7'h48,
    WRIDLE                         = 2'd0,
    WRDATA                         = 2'd1,
    WRRESP                         = 2'd2,
    WRRESET                        = 2'd3,
    RDIDLE                         = 2'd0,
    RDDATA                         = 2'd1,
    RDRESET                        = 2'd2,
    ADDR_BITS                = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [63:0]                   int_Layer1_Neurons_CPU = 'b0;
    reg  [63:0]                   int_Layer1_Weights_CPU = 'b0;
    reg  [63:0]                   int_Layer2_Weights_CPU = 'b0;
    reg  [63:0]                   int_Layer3_Weights_CPU = 'b0;
    reg  [63:0]                   int_Layer4_Neurons_CPU = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_LAYER1_NEURONS_CPU_DATA_0: begin
                    rdata <= int_Layer1_Neurons_CPU[31:0];
                end
                ADDR_LAYER1_NEURONS_CPU_DATA_1: begin
                    rdata <= int_Layer1_Neurons_CPU[63:32];
                end
                ADDR_LAYER1_WEIGHTS_CPU_DATA_0: begin
                    rdata <= int_Layer1_Weights_CPU[31:0];
                end
                ADDR_LAYER1_WEIGHTS_CPU_DATA_1: begin
                    rdata <= int_Layer1_Weights_CPU[63:32];
                end
                ADDR_LAYER2_WEIGHTS_CPU_DATA_0: begin
                    rdata <= int_Layer2_Weights_CPU[31:0];
                end
                ADDR_LAYER2_WEIGHTS_CPU_DATA_1: begin
                    rdata <= int_Layer2_Weights_CPU[63:32];
                end
                ADDR_LAYER3_WEIGHTS_CPU_DATA_0: begin
                    rdata <= int_Layer3_Weights_CPU[31:0];
                end
                ADDR_LAYER3_WEIGHTS_CPU_DATA_1: begin
                    rdata <= int_Layer3_Weights_CPU[63:32];
                end
                ADDR_LAYER4_NEURONS_CPU_DATA_0: begin
                    rdata <= int_Layer4_Neurons_CPU[31:0];
                end
                ADDR_LAYER4_NEURONS_CPU_DATA_1: begin
                    rdata <= int_Layer4_Neurons_CPU[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign Layer1_Neurons_CPU = int_Layer1_Neurons_CPU;
assign Layer1_Weights_CPU = int_Layer1_Weights_CPU;
assign Layer2_Weights_CPU = int_Layer2_Weights_CPU;
assign Layer3_Weights_CPU = int_Layer3_Weights_CPU;
assign Layer4_Neurons_CPU = int_Layer4_Neurons_CPU;
// int_Layer1_Neurons_CPU[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer1_Neurons_CPU[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER1_NEURONS_CPU_DATA_0)
            int_Layer1_Neurons_CPU[31:0] <= (WDATA[31:0] & wmask) | (int_Layer1_Neurons_CPU[31:0] & ~wmask);
    end
end

// int_Layer1_Neurons_CPU[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer1_Neurons_CPU[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER1_NEURONS_CPU_DATA_1)
            int_Layer1_Neurons_CPU[63:32] <= (WDATA[31:0] & wmask) | (int_Layer1_Neurons_CPU[63:32] & ~wmask);
    end
end

// int_Layer1_Weights_CPU[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer1_Weights_CPU[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER1_WEIGHTS_CPU_DATA_0)
            int_Layer1_Weights_CPU[31:0] <= (WDATA[31:0] & wmask) | (int_Layer1_Weights_CPU[31:0] & ~wmask);
    end
end

// int_Layer1_Weights_CPU[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer1_Weights_CPU[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER1_WEIGHTS_CPU_DATA_1)
            int_Layer1_Weights_CPU[63:32] <= (WDATA[31:0] & wmask) | (int_Layer1_Weights_CPU[63:32] & ~wmask);
    end
end

// int_Layer2_Weights_CPU[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer2_Weights_CPU[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER2_WEIGHTS_CPU_DATA_0)
            int_Layer2_Weights_CPU[31:0] <= (WDATA[31:0] & wmask) | (int_Layer2_Weights_CPU[31:0] & ~wmask);
    end
end

// int_Layer2_Weights_CPU[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer2_Weights_CPU[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER2_WEIGHTS_CPU_DATA_1)
            int_Layer2_Weights_CPU[63:32] <= (WDATA[31:0] & wmask) | (int_Layer2_Weights_CPU[63:32] & ~wmask);
    end
end

// int_Layer3_Weights_CPU[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer3_Weights_CPU[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER3_WEIGHTS_CPU_DATA_0)
            int_Layer3_Weights_CPU[31:0] <= (WDATA[31:0] & wmask) | (int_Layer3_Weights_CPU[31:0] & ~wmask);
    end
end

// int_Layer3_Weights_CPU[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer3_Weights_CPU[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER3_WEIGHTS_CPU_DATA_1)
            int_Layer3_Weights_CPU[63:32] <= (WDATA[31:0] & wmask) | (int_Layer3_Weights_CPU[63:32] & ~wmask);
    end
end

// int_Layer4_Neurons_CPU[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer4_Neurons_CPU[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER4_NEURONS_CPU_DATA_0)
            int_Layer4_Neurons_CPU[31:0] <= (WDATA[31:0] & wmask) | (int_Layer4_Neurons_CPU[31:0] & ~wmask);
    end
end

// int_Layer4_Neurons_CPU[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_Layer4_Neurons_CPU[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LAYER4_NEURONS_CPU_DATA_1)
            int_Layer4_Neurons_CPU[63:32] <= (WDATA[31:0] & wmask) | (int_Layer4_Neurons_CPU[63:32] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
