// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cordic,hls_ip_2014_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.344000,HLS_SYN_LAT=61,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=0}" *)

module cordic (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        theta_V,
        s_V,
        s_V_ap_vld,
        c_V,
        c_V_ap_vld
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 2'b00;
parameter    ap_ST_st2_fsm_1 = 2'b1;
parameter    ap_ST_st3_fsm_2 = 2'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_9B74EDA8AAF690 = 64'b10011011011101001110110110101000101010101111011010010000;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv5_1E = 5'b11110;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] theta_V;
output  [63:0] s_V;
output   s_V_ap_vld;
output  [63:0] c_V;
output   c_V_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_V_ap_vld;
reg c_V_ap_vld;
reg   [1:0] ap_CS_fsm = 2'b00;
wire   [4:0] angles_V_address0;
reg    angles_V_ce0;
wire   [55:0] angles_V_q0;
wire   [4:0] step_fu_119_p2;
reg   [4:0] step_reg_215;
wire   [0:0] tmp_2_fu_125_p2;
reg   [0:0] tmp_2_reg_220;
wire   [0:0] exitcond_fu_113_p2;
wire   [63:0] p_Val2_2_fu_147_p2;
reg   [63:0] p_Val2_2_reg_226;
wire   [63:0] X_V_2_fu_159_p3;
reg   [63:0] X_V_2_reg_237;
wire   [63:0] current_V_fu_194_p3;
wire   [63:0] Y_V_fu_201_p2;
reg   [63:0] p_Val2_4_reg_64;
reg   [63:0] p_Val2_3_reg_76;
reg   [63:0] p_Val2_s_reg_89;
reg   [4:0] sh_assign_reg_101;
wire   [63:0] tmp_3_fu_130_p1;
wire   [63:0] p_Val2_1_fu_135_p2;
wire   [63:0] T_V_fu_141_p2;
wire   [63:0] T_V_1_fu_153_p2;
wire   [63:0] p_Val2_5_cast_fu_167_p1;
wire   [63:0] p_Val2_s_2_fu_177_p2;
wire   [63:0] p_Val2_8_fu_171_p2;
wire   [63:0] p_Val2_6_fu_182_p2;
wire   [63:0] p_Val2_3_pn_fu_188_p3;
reg   [1:0] ap_NS_fsm;


cordic_angles_V #(
    .DataWidth( 56 ),
    .AddressRange( 20 ),
    .AddressWidth( 5 ))
angles_V_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( angles_V_address0 ),
    .ce0( angles_V_ce0 ),
    .q0( angles_V_q0 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
        p_Val2_3_reg_76 <= Y_V_fu_201_p2;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        p_Val2_3_reg_76 <= ap_const_lv64_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
        p_Val2_4_reg_64 <= current_V_fu_194_p3;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        p_Val2_4_reg_64 <= ap_const_lv64_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
        p_Val2_s_reg_89 <= X_V_2_reg_237;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        p_Val2_s_reg_89 <= ap_const_lv64_9B74EDA8AAF690;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st3_fsm_2 == ap_CS_fsm)) begin
        sh_assign_reg_101 <= step_reg_215;
    end else if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        sh_assign_reg_101 <= ap_const_lv5_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & (exitcond_fu_113_p2 == ap_const_lv1_0))) begin
        X_V_2_reg_237 <= X_V_2_fu_159_p3;
        p_Val2_2_reg_226 <= p_Val2_2_fu_147_p2;
        tmp_2_reg_220 <= tmp_2_fu_125_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        step_reg_215 <= step_fu_119_p2;
    end
end

/// angles_V_ce0 assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st2_fsm_1 == ap_CS_fsm)) begin
        angles_V_ce0 = ap_const_logic_1;
    end else begin
        angles_V_ce0 = ap_const_logic_0;
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm or exitcond_fu_113_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(exitcond_fu_113_p2 == ap_const_lv1_0))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm or exitcond_fu_113_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(exitcond_fu_113_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// c_V_ap_vld assign process. ///
always @ (ap_CS_fsm or exitcond_fu_113_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(exitcond_fu_113_p2 == ap_const_lv1_0))) begin
        c_V_ap_vld = ap_const_logic_1;
    end else begin
        c_V_ap_vld = ap_const_logic_0;
    end
end

/// s_V_ap_vld assign process. ///
always @ (ap_CS_fsm or exitcond_fu_113_p2)
begin
    if (((ap_ST_st2_fsm_1 == ap_CS_fsm) & ~(exitcond_fu_113_p2 == ap_const_lv1_0))) begin
        s_V_ap_vld = ap_const_logic_1;
    end else begin
        s_V_ap_vld = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond_fu_113_p2)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond_fu_113_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign T_V_1_fu_153_p2 = (p_Val2_1_fu_135_p2 + p_Val2_s_reg_89);
assign T_V_fu_141_p2 = (p_Val2_s_reg_89 - p_Val2_1_fu_135_p2);
assign X_V_2_fu_159_p3 = ((tmp_2_fu_125_p2)? T_V_fu_141_p2: T_V_1_fu_153_p2);
assign Y_V_fu_201_p2 = (p_Val2_3_pn_fu_188_p3 + p_Val2_3_reg_76);
assign angles_V_address0 = tmp_3_fu_130_p1;
assign c_V = p_Val2_s_reg_89;
assign current_V_fu_194_p3 = ((tmp_2_reg_220)? p_Val2_8_fu_171_p2: p_Val2_6_fu_182_p2);
assign exitcond_fu_113_p2 = (sh_assign_reg_101 == ap_const_lv5_1E? 1'b1: 1'b0);
assign p_Val2_1_fu_135_p2 = p_Val2_3_reg_76 >> tmp_3_fu_130_p1;
assign p_Val2_2_fu_147_p2 = p_Val2_s_reg_89 >> tmp_3_fu_130_p1;
assign p_Val2_3_pn_fu_188_p3 = ((tmp_2_reg_220)? p_Val2_2_reg_226: p_Val2_s_2_fu_177_p2);
assign p_Val2_5_cast_fu_167_p1 = $unsigned(angles_V_q0);
assign p_Val2_6_fu_182_p2 = (p_Val2_4_reg_64 - p_Val2_5_cast_fu_167_p1);
assign p_Val2_8_fu_171_p2 = (p_Val2_5_cast_fu_167_p1 + p_Val2_4_reg_64);
assign p_Val2_s_2_fu_177_p2 = (ap_const_lv64_0 - p_Val2_2_reg_226);
assign s_V = p_Val2_3_reg_76;
assign step_fu_119_p2 = (sh_assign_reg_101 + ap_const_lv5_1);
assign tmp_2_fu_125_p2 = (p_Val2_4_reg_64 < theta_V? 1'b1: 1'b0);
assign tmp_3_fu_130_p1 = $unsigned(sh_assign_reg_101);


endmodule //cordic

