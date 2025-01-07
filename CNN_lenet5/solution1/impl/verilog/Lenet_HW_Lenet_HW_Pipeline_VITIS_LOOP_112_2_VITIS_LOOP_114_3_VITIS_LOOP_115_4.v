// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module Lenet_HW_Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Layer3_Weights_stream_TVALID,
        somme,
        phi_mul,
        Layer3_Neurons_CPU_address0,
        Layer3_Neurons_CPU_ce0,
        Layer3_Neurons_CPU_q0,
        Layer3_Weights_stream_TDATA,
        Layer3_Weights_stream_TREADY,
        somme_52_out,
        somme_52_out_ap_vld,
        grp_fu_285_p_din0,
        grp_fu_285_p_din1,
        grp_fu_285_p_opcode,
        grp_fu_285_p_dout0,
        grp_fu_285_p_ce,
        grp_fu_289_p_din0,
        grp_fu_289_p_din1,
        grp_fu_289_p_dout0,
        grp_fu_289_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   Layer3_Weights_stream_TVALID;
input  [31:0] somme;
input  [10:0] phi_mul;
output  [10:0] Layer3_Neurons_CPU_address0;
output   Layer3_Neurons_CPU_ce0;
input  [31:0] Layer3_Neurons_CPU_q0;
input  [31:0] Layer3_Weights_stream_TDATA;
output   Layer3_Weights_stream_TREADY;
output  [31:0] somme_52_out;
output   somme_52_out_ap_vld;
output  [31:0] grp_fu_285_p_din0;
output  [31:0] grp_fu_285_p_din1;
output  [1:0] grp_fu_285_p_opcode;
input  [31:0] grp_fu_285_p_dout0;
output   grp_fu_285_p_ce;
output  [31:0] grp_fu_289_p_din0;
output  [31:0] grp_fu_289_p_din1;
input  [31:0] grp_fu_289_p_dout0;
output   grp_fu_289_p_ce;

reg ap_idle;
reg Layer3_Neurons_CPU_ce0;
reg Layer3_Weights_stream_TREADY;
reg somme_52_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire   [0:0] icmp_ln112_fu_173_p2;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    Layer3_Weights_stream_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln112_reg_419;
reg   [0:0] icmp_ln112_reg_419_pp0_iter1_reg;
reg   [31:0] Layer3_Weights_stream_read_reg_428;
wire   [31:0] weight_fu_359_p1;
wire   [63:0] p_cast3_fu_295_p1;
reg   [31:0] somme_51_fu_68;
reg   [31:0] ap_sig_allocacmp_somme_51_load_1;
wire    ap_loop_init;
reg   [2:0] m_fu_72;
wire   [2:0] m_1_fu_312_p3;
reg   [2:0] ap_sig_allocacmp_m_load;
reg   [2:0] k_fu_76;
wire   [2:0] select_ln114_fu_249_p3;
reg   [2:0] ap_sig_allocacmp_k_load;
reg   [5:0] indvar_flatten_fu_80;
wire   [5:0] select_ln114_1_fu_326_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [5:0] j_fu_84;
wire   [5:0] select_ln112_fu_235_p3;
reg   [5:0] ap_sig_allocacmp_j_load;
reg   [10:0] indvar_flatten14_fu_88;
wire   [10:0] add_ln112_fu_179_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten14_load;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln114_fu_197_p2;
wire   [0:0] icmp_ln115_fu_217_p2;
wire   [0:0] xor_ln105_fu_211_p2;
wire   [5:0] add_ln112_1_fu_229_p2;
wire   [2:0] select_ln105_fu_203_p3;
wire   [0:0] and_ln105_fu_223_p2;
wire   [2:0] add_ln114_fu_243_p2;
wire   [7:0] p_shl_fu_261_p3;
wire   [7:0] zext_ln112_fu_257_p1;
wire   [7:0] tmp1_fu_269_p2;
wire   [10:0] zext_ln114_fu_279_p1;
wire   [10:0] tmp2_fu_283_p2;
wire   [10:0] tmp1_cast_fu_275_p1;
wire   [10:0] empty_fu_289_p2;
wire   [0:0] or_ln115_fu_306_p2;
wire   [2:0] add_ln115_fu_300_p2;
wire   [5:0] add_ln114_1_fu_320_p2;
reg    grp_fu_130_ce;
reg    grp_fu_134_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 somme_51_fu_68 = 32'd0;
#0 m_fu_72 = 3'd0;
#0 k_fu_76 = 3'd0;
#0 indvar_flatten_fu_80 = 6'd0;
#0 j_fu_84 = 6'd0;
#0 indvar_flatten14_fu_88 = 11'd0;
#0 ap_done_reg = 1'b0;
end

Lenet_HW_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln112_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            indvar_flatten14_fu_88 <= add_ln112_fu_179_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten14_fu_88 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln112_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            indvar_flatten_fu_80 <= select_ln114_1_fu_326_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_80 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln112_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            j_fu_84 <= select_ln112_fu_235_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_84 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln112_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            k_fu_76 <= select_ln114_fu_249_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_76 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln112_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1))) begin
            m_fu_72 <= m_1_fu_312_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            m_fu_72 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            somme_51_fu_68 <= somme;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            somme_51_fu_68 <= grp_fu_285_p_dout0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Layer3_Weights_stream_read_reg_428 <= Layer3_Weights_stream_TDATA;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln112_reg_419 <= icmp_ln112_fu_173_p2;
        icmp_ln112_reg_419_pp0_iter1_reg <= icmp_ln112_reg_419;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Layer3_Neurons_CPU_ce0 = 1'b1;
    end else begin
        Layer3_Neurons_CPU_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln112_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Layer3_Weights_stream_TDATA_blk_n = Layer3_Weights_stream_TVALID;
    end else begin
        Layer3_Weights_stream_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln112_fu_173_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Layer3_Weights_stream_TREADY = 1'b1;
    end else begin
        Layer3_Weights_stream_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln112_fu_173_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten14_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten14_load = indvar_flatten14_fu_88;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_80;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 6'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_84;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_k_load = 3'd0;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_76;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_m_load = 3'd0;
    end else begin
        ap_sig_allocacmp_m_load = m_fu_72;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_sig_allocacmp_somme_51_load_1 = grp_fu_285_p_dout0;
    end else begin
        ap_sig_allocacmp_somme_51_load_1 = somme_51_fu_68;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_130_ce = 1'b1;
    end else begin
        grp_fu_130_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_134_ce = 1'b1;
    end else begin
        grp_fu_134_ce = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln112_reg_419_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        somme_52_out_ap_vld = 1'b1;
    end else begin
        somme_52_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Layer3_Neurons_CPU_address0 = p_cast3_fu_295_p1;

assign add_ln112_1_fu_229_p2 = (ap_sig_allocacmp_j_load + 6'd1);

assign add_ln112_fu_179_p2 = (ap_sig_allocacmp_indvar_flatten14_load + 11'd1);

assign add_ln114_1_fu_320_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);

assign add_ln114_fu_243_p2 = (select_ln105_fu_203_p3 + 3'd1);

assign add_ln115_fu_300_p2 = (ap_sig_allocacmp_m_load + 3'd1);

assign and_ln105_fu_223_p2 = (xor_ln105_fu_211_p2 & icmp_ln115_fu_217_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_00001 = ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0));
end

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((icmp_ln112_fu_173_p2 == 1'd0) & (1'b0 == Layer3_Weights_stream_TVALID));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_fu_289_p2 = (tmp2_fu_283_p2 + tmp1_cast_fu_275_p1);

assign grp_fu_285_p_ce = grp_fu_130_ce;

assign grp_fu_285_p_din0 = ap_sig_allocacmp_somme_51_load_1;

assign grp_fu_285_p_din1 = grp_fu_289_p_dout0;

assign grp_fu_285_p_opcode = 2'd0;

assign grp_fu_289_p_ce = grp_fu_134_ce;

assign grp_fu_289_p_din0 = weight_fu_359_p1;

assign grp_fu_289_p_din1 = Layer3_Neurons_CPU_q0;

assign icmp_ln112_fu_173_p2 = ((ap_sig_allocacmp_indvar_flatten14_load == 11'd1250) ? 1'b1 : 1'b0);

assign icmp_ln114_fu_197_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 6'd25) ? 1'b1 : 1'b0);

assign icmp_ln115_fu_217_p2 = ((ap_sig_allocacmp_m_load == 3'd5) ? 1'b1 : 1'b0);

assign m_1_fu_312_p3 = ((or_ln115_fu_306_p2[0:0] == 1'b1) ? 3'd1 : add_ln115_fu_300_p2);

assign or_ln115_fu_306_p2 = (icmp_ln114_fu_197_p2 | and_ln105_fu_223_p2);

assign p_cast3_fu_295_p1 = empty_fu_289_p2;

assign p_shl_fu_261_p3 = {{select_ln112_fu_235_p3}, {2'd0}};

assign select_ln105_fu_203_p3 = ((icmp_ln114_fu_197_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_k_load);

assign select_ln112_fu_235_p3 = ((icmp_ln114_fu_197_p2[0:0] == 1'b1) ? add_ln112_1_fu_229_p2 : ap_sig_allocacmp_j_load);

assign select_ln114_1_fu_326_p3 = ((icmp_ln114_fu_197_p2[0:0] == 1'b1) ? 6'd1 : add_ln114_1_fu_320_p2);

assign select_ln114_fu_249_p3 = ((and_ln105_fu_223_p2[0:0] == 1'b1) ? add_ln114_fu_243_p2 : select_ln105_fu_203_p3);

assign somme_52_out = somme_51_fu_68;

assign tmp1_cast_fu_275_p1 = tmp1_fu_269_p2;

assign tmp1_fu_269_p2 = (p_shl_fu_261_p3 + zext_ln112_fu_257_p1);

assign tmp2_fu_283_p2 = (phi_mul + zext_ln114_fu_279_p1);

assign weight_fu_359_p1 = Layer3_Weights_stream_read_reg_428;

assign xor_ln105_fu_211_p2 = (icmp_ln114_fu_197_p2 ^ 1'd1);

assign zext_ln112_fu_257_p1 = select_ln112_fu_235_p3;

assign zext_ln114_fu_279_p1 = select_ln114_fu_249_p3;

endmodule //Lenet_HW_Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4