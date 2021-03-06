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

#include "cordic_dadddsub_64ns_64ns_64_5_full_dsp.h"
#include "cordic_ddiv_64ns_64ns_64_31.h"
#include "cordic_dcmp_64ns_64ns_1_3.h"
#include "cordic_uitodp_32ns_64_6.h"
#include "cordic_angles.h"

namespace ap_rtl {

struct cordic : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > theta;
    sc_out< sc_lv<64> > s;
    sc_out< sc_logic > s_ap_vld;
    sc_out< sc_lv<64> > c;
    sc_out< sc_logic > c_ap_vld;


    // Module declarations
    cordic(sc_module_name name);
    SC_HAS_PROCESS(cordic);

    ~cordic();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    cordic_angles* angles_U;
    cordic_dadddsub_64ns_64ns_64_5_full_dsp<1,5,64,64,64>* cordic_dadddsub_64ns_64ns_64_5_full_dsp_U1;
    cordic_ddiv_64ns_64ns_64_31<2,31,64,64,64>* cordic_ddiv_64ns_64ns_64_31_U2;
    cordic_dcmp_64ns_64ns_1_3<3,3,64,64,1>* cordic_dcmp_64ns_64ns_1_3_U3;
    cordic_uitodp_32ns_64_6<4,6,32,64>* cordic_uitodp_32ns_64_6_U4;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_lv<5> > angles_address0;
    sc_signal< sc_logic > angles_ce0;
    sc_signal< sc_lv<64> > angles_q0;
    sc_signal< sc_lv<64> > grp_fu_148_p2;
    sc_signal< sc_lv<64> > reg_169;
    sc_signal< sc_lv<64> > reg_175;
    sc_signal< sc_lv<5> > step_1_fu_201_p2;
    sc_signal< sc_lv<5> > step_1_reg_258;
    sc_signal< sc_lv<1> > exitcond_fu_195_p2;
    sc_signal< sc_lv<64> > grp_fu_156_p1;
    sc_signal< sc_lv<64> > tmp_3_reg_269;
    sc_signal< sc_lv<64> > Y_load_1_reg_274;
    sc_signal< sc_lv<64> > current_load_reg_281;
    sc_signal< sc_lv<64> > X_load_1_reg_290;
    sc_signal< sc_lv<1> > grp_fu_152_p2;
    sc_signal< sc_lv<5> > angles_addr_gep_fu_82_p3;
    sc_signal< sc_lv<64> > grp_fu_144_p2;
    sc_signal< sc_lv<64> > T_1_reg_306;
    sc_signal< sc_lv<64> > current_2_reg_311;
    sc_signal< sc_lv<64> > T_reg_321;
    sc_signal< sc_lv<64> > current_1_reg_326;
    sc_signal< sc_lv<64> > storemerge_reg_90;
    sc_signal< sc_lv<64> > storemerge1_reg_103;
    sc_signal< sc_lv<64> > storemerge2_reg_116;
    sc_signal< sc_lv<5> > step_reg_129;
    sc_signal< sc_lv<64> > tmp_1_fu_226_p1;
    sc_signal< sc_lv<64> > current_fu_38;
    sc_signal< sc_lv<64> > X_fu_42;
    sc_signal< sc_lv<64> > Y_fu_46;
    sc_signal< sc_lv<64> > grp_fu_144_p0;
    sc_signal< sc_lv<64> > grp_fu_144_p1;
    sc_signal< sc_lv<64> > grp_fu_148_p0;
    sc_signal< sc_lv<64> > grp_fu_148_p1;
    sc_signal< sc_lv<64> > grp_fu_152_p0;
    sc_signal< sc_lv<64> > grp_fu_152_p1;
    sc_signal< sc_lv<32> > grp_fu_156_p0;
    sc_signal< sc_lv<20> > tmp_1_cast_fu_207_p1;
    sc_signal< sc_lv<20> > tmp_2_fu_211_p2;
    sc_signal< sc_lv<2> > grp_fu_144_opcode;
    sc_signal< sc_logic > grp_fu_144_ce;
    sc_signal< sc_logic > grp_fu_148_ce;
    sc_signal< sc_logic > grp_fu_152_ce;
    sc_signal< sc_lv<5> > grp_fu_152_opcode;
    sc_signal< sc_logic > grp_fu_156_ce;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_st1_fsm_0;
    static const sc_lv<7> ap_ST_st2_fsm_1;
    static const sc_lv<7> ap_ST_st3_fsm_2;
    static const sc_lv<7> ap_ST_st4_fsm_3;
    static const sc_lv<7> ap_ST_st5_fsm_4;
    static const sc_lv<7> ap_ST_st6_fsm_5;
    static const sc_lv<7> ap_ST_st7_fsm_6;
    static const sc_lv<7> ap_ST_st8_fsm_7;
    static const sc_lv<7> ap_ST_st9_fsm_8;
    static const sc_lv<7> ap_ST_st10_fsm_9;
    static const sc_lv<7> ap_ST_st11_fsm_10;
    static const sc_lv<7> ap_ST_st12_fsm_11;
    static const sc_lv<7> ap_ST_st13_fsm_12;
    static const sc_lv<7> ap_ST_st14_fsm_13;
    static const sc_lv<7> ap_ST_st15_fsm_14;
    static const sc_lv<7> ap_ST_st16_fsm_15;
    static const sc_lv<7> ap_ST_st17_fsm_16;
    static const sc_lv<7> ap_ST_st18_fsm_17;
    static const sc_lv<7> ap_ST_st19_fsm_18;
    static const sc_lv<7> ap_ST_st20_fsm_19;
    static const sc_lv<7> ap_ST_st21_fsm_20;
    static const sc_lv<7> ap_ST_st22_fsm_21;
    static const sc_lv<7> ap_ST_st23_fsm_22;
    static const sc_lv<7> ap_ST_st24_fsm_23;
    static const sc_lv<7> ap_ST_st25_fsm_24;
    static const sc_lv<7> ap_ST_st26_fsm_25;
    static const sc_lv<7> ap_ST_st27_fsm_26;
    static const sc_lv<7> ap_ST_st28_fsm_27;
    static const sc_lv<7> ap_ST_st29_fsm_28;
    static const sc_lv<7> ap_ST_st30_fsm_29;
    static const sc_lv<7> ap_ST_st31_fsm_30;
    static const sc_lv<7> ap_ST_st32_fsm_31;
    static const sc_lv<7> ap_ST_st33_fsm_32;
    static const sc_lv<7> ap_ST_st34_fsm_33;
    static const sc_lv<7> ap_ST_st35_fsm_34;
    static const sc_lv<7> ap_ST_st36_fsm_35;
    static const sc_lv<7> ap_ST_st37_fsm_36;
    static const sc_lv<7> ap_ST_st38_fsm_37;
    static const sc_lv<7> ap_ST_st39_fsm_38;
    static const sc_lv<7> ap_ST_st40_fsm_39;
    static const sc_lv<7> ap_ST_st41_fsm_40;
    static const sc_lv<7> ap_ST_st42_fsm_41;
    static const sc_lv<7> ap_ST_st43_fsm_42;
    static const sc_lv<7> ap_ST_st44_fsm_43;
    static const sc_lv<7> ap_ST_st45_fsm_44;
    static const sc_lv<7> ap_ST_st46_fsm_45;
    static const sc_lv<7> ap_ST_st47_fsm_46;
    static const sc_lv<7> ap_ST_st48_fsm_47;
    static const sc_lv<7> ap_ST_st49_fsm_48;
    static const sc_lv<7> ap_ST_st50_fsm_49;
    static const sc_lv<7> ap_ST_st51_fsm_50;
    static const sc_lv<7> ap_ST_st52_fsm_51;
    static const sc_lv<7> ap_ST_st53_fsm_52;
    static const sc_lv<7> ap_ST_st54_fsm_53;
    static const sc_lv<7> ap_ST_st55_fsm_54;
    static const sc_lv<7> ap_ST_st56_fsm_55;
    static const sc_lv<7> ap_ST_st57_fsm_56;
    static const sc_lv<7> ap_ST_st58_fsm_57;
    static const sc_lv<7> ap_ST_st59_fsm_58;
    static const sc_lv<7> ap_ST_st60_fsm_59;
    static const sc_lv<7> ap_ST_st61_fsm_60;
    static const sc_lv<7> ap_ST_st62_fsm_61;
    static const sc_lv<7> ap_ST_st63_fsm_62;
    static const sc_lv<7> ap_ST_st64_fsm_63;
    static const sc_lv<7> ap_ST_st65_fsm_64;
    static const sc_lv<7> ap_ST_st66_fsm_65;
    static const sc_lv<7> ap_ST_st67_fsm_66;
    static const sc_lv<7> ap_ST_st68_fsm_67;
    static const sc_lv<7> ap_ST_st69_fsm_68;
    static const sc_lv<7> ap_ST_st70_fsm_69;
    static const sc_lv<7> ap_ST_st71_fsm_70;
    static const sc_lv<7> ap_ST_st72_fsm_71;
    static const sc_lv<7> ap_ST_st73_fsm_72;
    static const sc_lv<7> ap_ST_st74_fsm_73;
    static const sc_lv<7> ap_ST_st75_fsm_74;
    static const sc_lv<7> ap_ST_st76_fsm_75;
    static const sc_lv<7> ap_ST_st77_fsm_76;
    static const sc_lv<7> ap_ST_st78_fsm_77;
    static const sc_lv<7> ap_ST_st79_fsm_78;
    static const sc_lv<7> ap_ST_st80_fsm_79;
    static const sc_lv<7> ap_ST_st81_fsm_80;
    static const sc_lv<7> ap_ST_st82_fsm_81;
    static const sc_lv<7> ap_ST_st83_fsm_82;
    static const sc_lv<7> ap_ST_st84_fsm_83;
    static const sc_lv<7> ap_ST_st85_fsm_84;
    static const sc_lv<7> ap_ST_st86_fsm_85;
    static const sc_lv<7> ap_ST_st87_fsm_86;
    static const sc_lv<7> ap_ST_st88_fsm_87;
    static const sc_lv<7> ap_ST_st89_fsm_88;
    static const sc_lv<7> ap_ST_st90_fsm_89;
    static const sc_lv<7> ap_ST_st91_fsm_90;
    static const sc_lv<7> ap_ST_st92_fsm_91;
    static const sc_lv<7> ap_ST_st93_fsm_92;
    static const sc_lv<7> ap_ST_st94_fsm_93;
    static const sc_lv<7> ap_ST_st95_fsm_94;
    static const sc_lv<7> ap_ST_st96_fsm_95;
    static const sc_lv<7> ap_ST_st97_fsm_96;
    static const sc_lv<7> ap_ST_st98_fsm_97;
    static const sc_lv<7> ap_ST_st99_fsm_98;
    static const sc_lv<7> ap_ST_st100_fsm_99;
    static const sc_lv<7> ap_ST_st101_fsm_100;
    static const sc_lv<7> ap_ST_st102_fsm_101;
    static const sc_lv<7> ap_ST_st103_fsm_102;
    static const sc_lv<7> ap_ST_st104_fsm_103;
    static const sc_lv<7> ap_ST_st105_fsm_104;
    static const sc_lv<7> ap_ST_st106_fsm_105;
    static const sc_lv<7> ap_ST_st107_fsm_106;
    static const sc_lv<7> ap_ST_st108_fsm_107;
    static const sc_lv<7> ap_ST_st109_fsm_108;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_3FE36E9DB5155ED2;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_14;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<20> ap_const_lv20_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<5> ap_const_lv5_4;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_angles_addr_gep_fu_82_p3();
    void thread_angles_address0();
    void thread_angles_ce0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c();
    void thread_c_ap_vld();
    void thread_exitcond_fu_195_p2();
    void thread_grp_fu_144_ce();
    void thread_grp_fu_144_opcode();
    void thread_grp_fu_144_p0();
    void thread_grp_fu_144_p1();
    void thread_grp_fu_148_ce();
    void thread_grp_fu_148_p0();
    void thread_grp_fu_148_p1();
    void thread_grp_fu_152_ce();
    void thread_grp_fu_152_opcode();
    void thread_grp_fu_152_p0();
    void thread_grp_fu_152_p1();
    void thread_grp_fu_156_ce();
    void thread_grp_fu_156_p0();
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
