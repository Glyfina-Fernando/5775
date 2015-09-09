// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _cordic_HH_
#define _cordic_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "cordic_faddfsub_32ns_32ns_32_5_full_dsp.h"
#include "cordic_fdiv_32ns_32ns_32_16.h"
#include "cordic_uitofp_32ns_32_6.h"
#include "cordic_fcmp_32ns_32ns_1_3.h"
#include "cordic_cordic_ctab.h"

namespace ap_rtl {

struct cordic : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > theta;
    sc_out< sc_lv<32> > s;
    sc_out< sc_logic > s_ap_vld;
    sc_out< sc_lv<32> > c;
    sc_out< sc_logic > c_ap_vld;


    // Module declarations
    cordic(sc_module_name name);
    SC_HAS_PROCESS(cordic);

    ~cordic();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    cordic_cordic_ctab* cordic_ctab_U;
    cordic_faddfsub_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1;
    cordic_fdiv_32ns_32ns_32_16<2,16,32,32,32>* cordic_fdiv_32ns_32ns_32_16_U2;
    cordic_uitofp_32ns_32_6<3,6,32,32>* cordic_uitofp_32ns_32_6_U3;
    cordic_fcmp_32ns_32ns_1_3<4,3,32,32,1>* cordic_fcmp_32ns_32ns_1_3_U4;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_lv<6> > cordic_ctab_address0;
    sc_signal< sc_logic > cordic_ctab_ce0;
    sc_signal< sc_lv<32> > cordic_ctab_q0;
    sc_signal< sc_lv<32> > grp_fu_148_p2;
    sc_signal< sc_lv<32> > reg_169;
    sc_signal< sc_lv<32> > reg_175;
    sc_signal< sc_lv<5> > step_1_fu_201_p2;
    sc_signal< sc_lv<5> > step_1_reg_258;
    sc_signal< sc_lv<1> > exitcond_fu_195_p2;
    sc_signal< sc_lv<32> > grp_fu_152_p1;
    sc_signal< sc_lv<32> > tmp_3_reg_269;
    sc_signal< sc_lv<32> > Y_load_1_reg_274;
    sc_signal< sc_lv<32> > current_load_reg_281;
    sc_signal< sc_lv<32> > X_load_1_reg_290;
    sc_signal< sc_lv<1> > grp_fu_155_p2;
    sc_signal< sc_lv<6> > cordic_ctab_addr_gep_fu_82_p3;
    sc_signal< sc_lv<32> > grp_fu_144_p2;
    sc_signal< sc_lv<32> > T_1_reg_306;
    sc_signal< sc_lv<32> > current_2_reg_311;
    sc_signal< sc_lv<32> > T_reg_321;
    sc_signal< sc_lv<32> > current_1_reg_326;
    sc_signal< sc_lv<32> > storemerge_reg_90;
    sc_signal< sc_lv<32> > storemerge1_reg_103;
    sc_signal< sc_lv<32> > storemerge2_reg_116;
    sc_signal< sc_lv<5> > step_reg_129;
    sc_signal< sc_lv<64> > tmp_1_fu_226_p1;
    sc_signal< sc_lv<32> > current_fu_38;
    sc_signal< sc_lv<32> > X_fu_42;
    sc_signal< sc_lv<32> > Y_fu_46;
    sc_signal< sc_lv<32> > grp_fu_144_p0;
    sc_signal< sc_lv<32> > grp_fu_144_p1;
    sc_signal< sc_lv<32> > grp_fu_148_p0;
    sc_signal< sc_lv<32> > grp_fu_148_p1;
    sc_signal< sc_lv<32> > grp_fu_152_p0;
    sc_signal< sc_lv<32> > grp_fu_155_p0;
    sc_signal< sc_lv<32> > grp_fu_155_p1;
    sc_signal< sc_lv<25> > tmp_1_cast_fu_207_p1;
    sc_signal< sc_lv<25> > tmp_2_fu_211_p2;
    sc_signal< sc_lv<2> > grp_fu_144_opcode;
    sc_signal< sc_logic > grp_fu_144_ce;
    sc_signal< sc_logic > grp_fu_148_ce;
    sc_signal< sc_logic > grp_fu_152_ce;
    sc_signal< sc_logic > grp_fu_155_ce;
    sc_signal< sc_lv<5> > grp_fu_155_opcode;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_st1_fsm_0;
    static const sc_lv<6> ap_ST_st2_fsm_1;
    static const sc_lv<6> ap_ST_st3_fsm_2;
    static const sc_lv<6> ap_ST_st4_fsm_3;
    static const sc_lv<6> ap_ST_st5_fsm_4;
    static const sc_lv<6> ap_ST_st6_fsm_5;
    static const sc_lv<6> ap_ST_st7_fsm_6;
    static const sc_lv<6> ap_ST_st8_fsm_7;
    static const sc_lv<6> ap_ST_st9_fsm_8;
    static const sc_lv<6> ap_ST_st10_fsm_9;
    static const sc_lv<6> ap_ST_st11_fsm_10;
    static const sc_lv<6> ap_ST_st12_fsm_11;
    static const sc_lv<6> ap_ST_st13_fsm_12;
    static const sc_lv<6> ap_ST_st14_fsm_13;
    static const sc_lv<6> ap_ST_st15_fsm_14;
    static const sc_lv<6> ap_ST_st16_fsm_15;
    static const sc_lv<6> ap_ST_st17_fsm_16;
    static const sc_lv<6> ap_ST_st18_fsm_17;
    static const sc_lv<6> ap_ST_st19_fsm_18;
    static const sc_lv<6> ap_ST_st20_fsm_19;
    static const sc_lv<6> ap_ST_st21_fsm_20;
    static const sc_lv<6> ap_ST_st22_fsm_21;
    static const sc_lv<6> ap_ST_st23_fsm_22;
    static const sc_lv<6> ap_ST_st24_fsm_23;
    static const sc_lv<6> ap_ST_st25_fsm_24;
    static const sc_lv<6> ap_ST_st26_fsm_25;
    static const sc_lv<6> ap_ST_st27_fsm_26;
    static const sc_lv<6> ap_ST_st28_fsm_27;
    static const sc_lv<6> ap_ST_st29_fsm_28;
    static const sc_lv<6> ap_ST_st30_fsm_29;
    static const sc_lv<6> ap_ST_st31_fsm_30;
    static const sc_lv<6> ap_ST_st32_fsm_31;
    static const sc_lv<6> ap_ST_st33_fsm_32;
    static const sc_lv<6> ap_ST_st34_fsm_33;
    static const sc_lv<6> ap_ST_st35_fsm_34;
    static const sc_lv<6> ap_ST_st36_fsm_35;
    static const sc_lv<6> ap_ST_st37_fsm_36;
    static const sc_lv<6> ap_ST_st38_fsm_37;
    static const sc_lv<6> ap_ST_st39_fsm_38;
    static const sc_lv<6> ap_ST_st40_fsm_39;
    static const sc_lv<6> ap_ST_st41_fsm_40;
    static const sc_lv<6> ap_ST_st42_fsm_41;
    static const sc_lv<6> ap_ST_st43_fsm_42;
    static const sc_lv<6> ap_ST_st44_fsm_43;
    static const sc_lv<6> ap_ST_st45_fsm_44;
    static const sc_lv<6> ap_ST_st46_fsm_45;
    static const sc_lv<6> ap_ST_st47_fsm_46;
    static const sc_lv<6> ap_ST_st48_fsm_47;
    static const sc_lv<6> ap_ST_st49_fsm_48;
    static const sc_lv<6> ap_ST_st50_fsm_49;
    static const sc_lv<6> ap_ST_st51_fsm_50;
    static const sc_lv<6> ap_ST_st52_fsm_51;
    static const sc_lv<6> ap_ST_st53_fsm_52;
    static const sc_lv<6> ap_ST_st54_fsm_53;
    static const sc_lv<6> ap_ST_st55_fsm_54;
    static const sc_lv<6> ap_ST_st56_fsm_55;
    static const sc_lv<6> ap_ST_st57_fsm_56;
    static const sc_lv<6> ap_ST_st58_fsm_57;
    static const sc_lv<6> ap_ST_st59_fsm_58;
    static const sc_lv<6> ap_ST_st60_fsm_59;
    static const sc_lv<6> ap_ST_st61_fsm_60;
    static const sc_lv<6> ap_ST_st62_fsm_61;
    static const sc_lv<6> ap_ST_st63_fsm_62;
    static const sc_lv<6> ap_ST_st64_fsm_63;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3F1B74EE;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<25> ap_const_lv25_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<5> ap_const_lv5_4;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c();
    void thread_c_ap_vld();
    void thread_cordic_ctab_addr_gep_fu_82_p3();
    void thread_cordic_ctab_address0();
    void thread_cordic_ctab_ce0();
    void thread_exitcond_fu_195_p2();
    void thread_grp_fu_144_ce();
    void thread_grp_fu_144_opcode();
    void thread_grp_fu_144_p0();
    void thread_grp_fu_144_p1();
    void thread_grp_fu_148_ce();
    void thread_grp_fu_148_p0();
    void thread_grp_fu_148_p1();
    void thread_grp_fu_152_ce();
    void thread_grp_fu_152_p0();
    void thread_grp_fu_155_ce();
    void thread_grp_fu_155_opcode();
    void thread_grp_fu_155_p0();
    void thread_grp_fu_155_p1();
    void thread_s();
    void thread_s_ap_vld();
    void thread_step_1_fu_201_p2();
    void thread_tmp_1_cast_fu_207_p1();
    void thread_tmp_1_fu_226_p1();
    void thread_tmp_2_fu_211_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
