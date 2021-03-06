// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "cordic.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic cordic::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic cordic::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> cordic::ap_ST_st1_fsm_0 = "000000";
const sc_lv<6> cordic::ap_ST_st2_fsm_1 = "1";
const sc_lv<6> cordic::ap_ST_st3_fsm_2 = "10";
const sc_lv<6> cordic::ap_ST_st4_fsm_3 = "11";
const sc_lv<6> cordic::ap_ST_st5_fsm_4 = "100";
const sc_lv<6> cordic::ap_ST_st6_fsm_5 = "101";
const sc_lv<6> cordic::ap_ST_st7_fsm_6 = "110";
const sc_lv<6> cordic::ap_ST_st8_fsm_7 = "111";
const sc_lv<6> cordic::ap_ST_st9_fsm_8 = "1000";
const sc_lv<6> cordic::ap_ST_st10_fsm_9 = "1001";
const sc_lv<6> cordic::ap_ST_st11_fsm_10 = "1010";
const sc_lv<6> cordic::ap_ST_st12_fsm_11 = "1011";
const sc_lv<6> cordic::ap_ST_st13_fsm_12 = "1100";
const sc_lv<6> cordic::ap_ST_st14_fsm_13 = "1101";
const sc_lv<6> cordic::ap_ST_st15_fsm_14 = "1110";
const sc_lv<6> cordic::ap_ST_st16_fsm_15 = "1111";
const sc_lv<6> cordic::ap_ST_st17_fsm_16 = "10000";
const sc_lv<6> cordic::ap_ST_st18_fsm_17 = "10001";
const sc_lv<6> cordic::ap_ST_st19_fsm_18 = "10010";
const sc_lv<6> cordic::ap_ST_st20_fsm_19 = "10011";
const sc_lv<6> cordic::ap_ST_st21_fsm_20 = "10100";
const sc_lv<6> cordic::ap_ST_st22_fsm_21 = "10101";
const sc_lv<6> cordic::ap_ST_st23_fsm_22 = "10110";
const sc_lv<6> cordic::ap_ST_st24_fsm_23 = "10111";
const sc_lv<6> cordic::ap_ST_st25_fsm_24 = "11000";
const sc_lv<6> cordic::ap_ST_st26_fsm_25 = "11001";
const sc_lv<6> cordic::ap_ST_st27_fsm_26 = "11010";
const sc_lv<6> cordic::ap_ST_st28_fsm_27 = "11011";
const sc_lv<6> cordic::ap_ST_st29_fsm_28 = "11100";
const sc_lv<6> cordic::ap_ST_st30_fsm_29 = "11101";
const sc_lv<6> cordic::ap_ST_st31_fsm_30 = "11110";
const sc_lv<6> cordic::ap_ST_st32_fsm_31 = "11111";
const sc_lv<6> cordic::ap_ST_st33_fsm_32 = "100000";
const sc_lv<6> cordic::ap_ST_st34_fsm_33 = "100001";
const sc_lv<6> cordic::ap_ST_st35_fsm_34 = "100010";
const sc_lv<6> cordic::ap_ST_st36_fsm_35 = "100011";
const sc_lv<6> cordic::ap_ST_st37_fsm_36 = "100100";
const sc_lv<6> cordic::ap_ST_st38_fsm_37 = "100101";
const sc_lv<6> cordic::ap_ST_st39_fsm_38 = "100110";
const sc_lv<6> cordic::ap_ST_st40_fsm_39 = "100111";
const sc_lv<6> cordic::ap_ST_st41_fsm_40 = "101000";
const sc_lv<6> cordic::ap_ST_st42_fsm_41 = "101001";
const sc_lv<6> cordic::ap_ST_st43_fsm_42 = "101010";
const sc_lv<6> cordic::ap_ST_st44_fsm_43 = "101011";
const sc_lv<6> cordic::ap_ST_st45_fsm_44 = "101100";
const sc_lv<6> cordic::ap_ST_st46_fsm_45 = "101101";
const sc_lv<6> cordic::ap_ST_st47_fsm_46 = "101110";
const sc_lv<6> cordic::ap_ST_st48_fsm_47 = "101111";
const sc_lv<6> cordic::ap_ST_st49_fsm_48 = "110000";
const sc_lv<6> cordic::ap_ST_st50_fsm_49 = "110001";
const sc_lv<6> cordic::ap_ST_st51_fsm_50 = "110010";
const sc_lv<6> cordic::ap_ST_st52_fsm_51 = "110011";
const sc_lv<6> cordic::ap_ST_st53_fsm_52 = "110100";
const sc_lv<6> cordic::ap_ST_st54_fsm_53 = "110101";
const sc_lv<6> cordic::ap_ST_st55_fsm_54 = "110110";
const sc_lv<6> cordic::ap_ST_st56_fsm_55 = "110111";
const sc_lv<6> cordic::ap_ST_st57_fsm_56 = "111000";
const sc_lv<6> cordic::ap_ST_st58_fsm_57 = "111001";
const sc_lv<6> cordic::ap_ST_st59_fsm_58 = "111010";
const sc_lv<6> cordic::ap_ST_st60_fsm_59 = "111011";
const sc_lv<6> cordic::ap_ST_st61_fsm_60 = "111100";
const sc_lv<6> cordic::ap_ST_st62_fsm_61 = "111101";
const sc_lv<6> cordic::ap_ST_st63_fsm_62 = "111110";
const sc_lv<6> cordic::ap_ST_st64_fsm_63 = "111111";
const sc_lv<1> cordic::ap_const_lv1_0 = "0";
const sc_lv<32> cordic::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> cordic::ap_const_lv32_3F1B74EE = "111111000110110111010011101110";
const sc_lv<5> cordic::ap_const_lv5_0 = "00000";
const sc_lv<5> cordic::ap_const_lv5_14 = "10100";
const sc_lv<5> cordic::ap_const_lv5_1 = "1";
const sc_lv<20> cordic::ap_const_lv20_1 = "1";
const sc_lv<2> cordic::ap_const_lv2_0 = "00";
const sc_lv<2> cordic::ap_const_lv2_1 = "1";
const sc_lv<5> cordic::ap_const_lv5_4 = "100";

cordic::cordic(sc_module_name name) : sc_module(name), mVcdFile(0) {
    cordic_ctab_U = new cordic_cordic_ctab("cordic_ctab_U");
    cordic_ctab_U->clk(ap_clk);
    cordic_ctab_U->reset(ap_rst);
    cordic_ctab_U->address0(cordic_ctab_address0);
    cordic_ctab_U->ce0(cordic_ctab_ce0);
    cordic_ctab_U->q0(cordic_ctab_q0);
    cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1 = new cordic_faddfsub_32ns_32ns_32_5_full_dsp<1,5,32,32,32>("cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1");
    cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1->clk(ap_clk);
    cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1->reset(ap_rst);
    cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1->din0(grp_fu_144_p0);
    cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1->din1(grp_fu_144_p1);
    cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1->opcode(grp_fu_144_opcode);
    cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1->ce(grp_fu_144_ce);
    cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1->dout(grp_fu_144_p2);
    cordic_fdiv_32ns_32ns_32_16_U2 = new cordic_fdiv_32ns_32ns_32_16<2,16,32,32,32>("cordic_fdiv_32ns_32ns_32_16_U2");
    cordic_fdiv_32ns_32ns_32_16_U2->clk(ap_clk);
    cordic_fdiv_32ns_32ns_32_16_U2->reset(ap_rst);
    cordic_fdiv_32ns_32ns_32_16_U2->din0(grp_fu_148_p0);
    cordic_fdiv_32ns_32ns_32_16_U2->din1(grp_fu_148_p1);
    cordic_fdiv_32ns_32ns_32_16_U2->ce(grp_fu_148_ce);
    cordic_fdiv_32ns_32ns_32_16_U2->dout(grp_fu_148_p2);
    cordic_uitofp_32ns_32_6_U3 = new cordic_uitofp_32ns_32_6<3,6,32,32>("cordic_uitofp_32ns_32_6_U3");
    cordic_uitofp_32ns_32_6_U3->clk(ap_clk);
    cordic_uitofp_32ns_32_6_U3->reset(ap_rst);
    cordic_uitofp_32ns_32_6_U3->din0(grp_fu_152_p0);
    cordic_uitofp_32ns_32_6_U3->ce(grp_fu_152_ce);
    cordic_uitofp_32ns_32_6_U3->dout(grp_fu_152_p1);
    cordic_fcmp_32ns_32ns_1_3_U4 = new cordic_fcmp_32ns_32ns_1_3<4,3,32,32,1>("cordic_fcmp_32ns_32ns_1_3_U4");
    cordic_fcmp_32ns_32ns_1_3_U4->clk(ap_clk);
    cordic_fcmp_32ns_32ns_1_3_U4->reset(ap_rst);
    cordic_fcmp_32ns_32ns_1_3_U4->din0(grp_fu_155_p0);
    cordic_fcmp_32ns_32ns_1_3_U4->din1(grp_fu_155_p1);
    cordic_fcmp_32ns_32ns_1_3_U4->ce(grp_fu_155_ce);
    cordic_fcmp_32ns_32ns_1_3_U4->opcode(grp_fu_155_opcode);
    cordic_fcmp_32ns_32ns_1_3_U4->dout(grp_fu_155_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_c);
    sensitive << ( ap_CS_fsm );
    sensitive << ( X_fu_42 );

    SC_METHOD(thread_c_ap_vld);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_cordic_ctab_addr_gep_fu_82_p3);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_fu_155_p2 );
    sensitive << ( tmp_1_fu_226_p1 );

    SC_METHOD(thread_cordic_ctab_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_fu_155_p2 );
    sensitive << ( cordic_ctab_addr_gep_fu_82_p3 );
    sensitive << ( tmp_1_fu_226_p1 );

    SC_METHOD(thread_cordic_ctab_ce0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_fu_155_p2 );

    SC_METHOD(thread_exitcond_fu_195_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( step_reg_129 );

    SC_METHOD(thread_grp_fu_144_ce);

    SC_METHOD(thread_grp_fu_144_opcode);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_grp_fu_144_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( reg_169 );
    sensitive << ( Y_load_1_reg_274 );
    sensitive << ( current_load_reg_281 );
    sensitive << ( X_load_1_reg_290 );

    SC_METHOD(thread_grp_fu_144_p1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( reg_169 );
    sensitive << ( reg_175 );
    sensitive << ( Y_load_1_reg_274 );

    SC_METHOD(thread_grp_fu_148_ce);

    SC_METHOD(thread_grp_fu_148_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_fu_155_p2 );
    sensitive << ( X_fu_42 );
    sensitive << ( Y_fu_46 );

    SC_METHOD(thread_grp_fu_148_p1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_3_reg_269 );
    sensitive << ( grp_fu_155_p2 );

    SC_METHOD(thread_grp_fu_152_ce);

    SC_METHOD(thread_grp_fu_152_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_2_fu_211_p2 );

    SC_METHOD(thread_grp_fu_155_ce);

    SC_METHOD(thread_grp_fu_155_opcode);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_grp_fu_155_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( current_fu_38 );

    SC_METHOD(thread_grp_fu_155_p1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( theta );

    SC_METHOD(thread_s);
    sensitive << ( ap_CS_fsm );
    sensitive << ( Y_fu_46 );

    SC_METHOD(thread_s_ap_vld);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_step_1_fu_201_p2);
    sensitive << ( step_reg_129 );

    SC_METHOD(thread_tmp_1_cast_fu_207_p1);
    sensitive << ( step_reg_129 );

    SC_METHOD(thread_tmp_1_fu_226_p1);
    sensitive << ( step_reg_129 );

    SC_METHOD(thread_tmp_2_fu_211_p2);
    sensitive << ( tmp_1_cast_fu_207_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_195_p2 );
    sensitive << ( grp_fu_155_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "cordic_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, theta, "(port)theta");
    sc_trace(mVcdFile, s, "(port)s");
    sc_trace(mVcdFile, s_ap_vld, "(port)s_ap_vld");
    sc_trace(mVcdFile, c, "(port)c");
    sc_trace(mVcdFile, c_ap_vld, "(port)c_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, cordic_ctab_address0, "cordic_ctab_address0");
    sc_trace(mVcdFile, cordic_ctab_ce0, "cordic_ctab_ce0");
    sc_trace(mVcdFile, cordic_ctab_q0, "cordic_ctab_q0");
    sc_trace(mVcdFile, grp_fu_148_p2, "grp_fu_148_p2");
    sc_trace(mVcdFile, reg_169, "reg_169");
    sc_trace(mVcdFile, reg_175, "reg_175");
    sc_trace(mVcdFile, step_1_fu_201_p2, "step_1_fu_201_p2");
    sc_trace(mVcdFile, step_1_reg_258, "step_1_reg_258");
    sc_trace(mVcdFile, exitcond_fu_195_p2, "exitcond_fu_195_p2");
    sc_trace(mVcdFile, grp_fu_152_p1, "grp_fu_152_p1");
    sc_trace(mVcdFile, tmp_3_reg_269, "tmp_3_reg_269");
    sc_trace(mVcdFile, Y_load_1_reg_274, "Y_load_1_reg_274");
    sc_trace(mVcdFile, current_load_reg_281, "current_load_reg_281");
    sc_trace(mVcdFile, X_load_1_reg_290, "X_load_1_reg_290");
    sc_trace(mVcdFile, grp_fu_155_p2, "grp_fu_155_p2");
    sc_trace(mVcdFile, cordic_ctab_addr_gep_fu_82_p3, "cordic_ctab_addr_gep_fu_82_p3");
    sc_trace(mVcdFile, grp_fu_144_p2, "grp_fu_144_p2");
    sc_trace(mVcdFile, T_1_reg_306, "T_1_reg_306");
    sc_trace(mVcdFile, current_2_reg_311, "current_2_reg_311");
    sc_trace(mVcdFile, T_reg_321, "T_reg_321");
    sc_trace(mVcdFile, current_1_reg_326, "current_1_reg_326");
    sc_trace(mVcdFile, storemerge_reg_90, "storemerge_reg_90");
    sc_trace(mVcdFile, storemerge1_reg_103, "storemerge1_reg_103");
    sc_trace(mVcdFile, storemerge2_reg_116, "storemerge2_reg_116");
    sc_trace(mVcdFile, step_reg_129, "step_reg_129");
    sc_trace(mVcdFile, tmp_1_fu_226_p1, "tmp_1_fu_226_p1");
    sc_trace(mVcdFile, current_fu_38, "current_fu_38");
    sc_trace(mVcdFile, X_fu_42, "X_fu_42");
    sc_trace(mVcdFile, Y_fu_46, "Y_fu_46");
    sc_trace(mVcdFile, grp_fu_144_p0, "grp_fu_144_p0");
    sc_trace(mVcdFile, grp_fu_144_p1, "grp_fu_144_p1");
    sc_trace(mVcdFile, grp_fu_148_p0, "grp_fu_148_p0");
    sc_trace(mVcdFile, grp_fu_148_p1, "grp_fu_148_p1");
    sc_trace(mVcdFile, grp_fu_152_p0, "grp_fu_152_p0");
    sc_trace(mVcdFile, grp_fu_155_p0, "grp_fu_155_p0");
    sc_trace(mVcdFile, grp_fu_155_p1, "grp_fu_155_p1");
    sc_trace(mVcdFile, tmp_1_cast_fu_207_p1, "tmp_1_cast_fu_207_p1");
    sc_trace(mVcdFile, tmp_2_fu_211_p2, "tmp_2_fu_211_p2");
    sc_trace(mVcdFile, grp_fu_144_opcode, "grp_fu_144_opcode");
    sc_trace(mVcdFile, grp_fu_144_ce, "grp_fu_144_ce");
    sc_trace(mVcdFile, grp_fu_148_ce, "grp_fu_148_ce");
    sc_trace(mVcdFile, grp_fu_152_ce, "grp_fu_152_ce");
    sc_trace(mVcdFile, grp_fu_155_ce, "grp_fu_155_ce");
    sc_trace(mVcdFile, grp_fu_155_opcode, "grp_fu_155_opcode");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("cordic.hdltvin.dat");
    mHdltvoutHandle.open("cordic.hdltvout.dat");
}

cordic::~cordic() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete cordic_ctab_U;
    delete cordic_faddfsub_32ns_32ns_32_5_full_dsp_U1;
    delete cordic_fdiv_32ns_32ns_32_16_U2;
    delete cordic_uitofp_32ns_32_6_U3;
    delete cordic_fcmp_32ns_32ns_1_3_U4;
}

void cordic::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,6,6>(ap_ST_st43_fsm_42, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st63_fsm_62, ap_CS_fsm.read()))) {
        step_reg_129 = step_1_reg_258.read();
    } else if ((esl_seteq<1,6,6>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        step_reg_129 = ap_const_lv5_0;
    }
    if (esl_seteq<1,6,6>(ap_ST_st43_fsm_42, ap_CS_fsm.read())) {
        storemerge1_reg_103 = T_1_reg_306.read();
    } else if (esl_seteq<1,6,6>(ap_ST_st63_fsm_62, ap_CS_fsm.read())) {
        storemerge1_reg_103 = T_reg_321.read();
    } else if ((esl_seteq<1,6,6>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        storemerge1_reg_103 = ap_const_lv32_3F1B74EE;
    }
    if (esl_seteq<1,6,6>(ap_ST_st43_fsm_42, ap_CS_fsm.read())) {
        storemerge2_reg_116 = current_2_reg_311.read();
    } else if (esl_seteq<1,6,6>(ap_ST_st63_fsm_62, ap_CS_fsm.read())) {
        storemerge2_reg_116 = current_1_reg_326.read();
    } else if ((esl_seteq<1,6,6>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        storemerge2_reg_116 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,6,6>(ap_ST_st43_fsm_42, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st63_fsm_62, ap_CS_fsm.read()))) {
        storemerge_reg_90 = grp_fu_144_p2.read();
    } else if ((esl_seteq<1,6,6>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        storemerge_reg_90 = ap_const_lv32_0;
    }
    if (esl_seteq<1,6,6>(ap_ST_st28_fsm_27, ap_CS_fsm.read())) {
        T_1_reg_306 = grp_fu_144_p2.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st48_fsm_47, ap_CS_fsm.read())) {
        T_reg_321 = grp_fu_144_p2.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        X_fu_42 = storemerge1_reg_103.read();
        Y_fu_46 = storemerge_reg_90.read();
        current_fu_38 = storemerge2_reg_116.read();
        step_1_reg_258 = step_1_fu_201_p2.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st23_fsm_22, ap_CS_fsm.read())) {
        X_load_1_reg_290 = X_fu_42.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        Y_load_1_reg_274 = Y_fu_46.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st49_fsm_48, ap_CS_fsm.read())) {
        current_1_reg_326 = grp_fu_144_p2.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st29_fsm_28, ap_CS_fsm.read())) {
        current_2_reg_311 = grp_fu_144_p2.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st21_fsm_20, ap_CS_fsm.read())) {
        current_load_reg_281 = current_fu_38.read();
    }
    if ((esl_seteq<1,6,6>(ap_ST_st23_fsm_22, ap_CS_fsm.read()) || esl_seteq<1,6,6>(ap_ST_st38_fsm_37, ap_CS_fsm.read()) || esl_seteq<1,6,6>(ap_ST_st58_fsm_57, ap_CS_fsm.read()))) {
        reg_169 = grp_fu_148_p2.read();
    }
    if ((esl_seteq<1,6,6>(ap_ST_st24_fsm_23, ap_CS_fsm.read()) || esl_seteq<1,6,6>(ap_ST_st44_fsm_43, ap_CS_fsm.read()))) {
        reg_175 = cordic_ctab_q0.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        tmp_3_reg_269 = grp_fu_152_p1.read();
    }
}

void cordic::thread_ap_done() {
    if (esl_seteq<1,6,6>(ap_ST_st64_fsm_63, ap_CS_fsm.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void cordic::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,6,6>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void cordic::thread_ap_ready() {
    if (esl_seteq<1,6,6>(ap_ST_st64_fsm_63, ap_CS_fsm.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void cordic::thread_c() {
    c = X_fu_42.read();
}

void cordic::thread_c_ap_vld() {
    if (esl_seteq<1,6,6>(ap_ST_st64_fsm_63, ap_CS_fsm.read())) {
        c_ap_vld = ap_const_logic_1;
    } else {
        c_ap_vld = ap_const_logic_0;
    }
}

void cordic::thread_cordic_ctab_addr_gep_fu_82_p3() {
    cordic_ctab_addr_gep_fu_82_p3 =  (sc_lv<6>) (tmp_1_fu_226_p1.read());
}

void cordic::thread_cordic_ctab_address0() {
    if (esl_seteq<1,6,6>(ap_ST_st23_fsm_22, ap_CS_fsm.read())) {
        if (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_155_p2.read())) {
            cordic_ctab_address0 = cordic_ctab_addr_gep_fu_82_p3.read();
        } else if (esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_155_p2.read())) {
            cordic_ctab_address0 =  (sc_lv<6>) (tmp_1_fu_226_p1.read());
        } else {
            cordic_ctab_address0 = "XXXXXX";
        }
    } else {
        cordic_ctab_address0 = "XXXXXX";
    }
}

void cordic::thread_cordic_ctab_ce0() {
    if (((esl_seteq<1,6,6>(ap_ST_st23_fsm_22, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_155_p2.read())) || 
         (esl_seteq<1,6,6>(ap_ST_st23_fsm_22, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_155_p2.read())))) {
        cordic_ctab_ce0 = ap_const_logic_1;
    } else {
        cordic_ctab_ce0 = ap_const_logic_0;
    }
}

void cordic::thread_exitcond_fu_195_p2() {
    exitcond_fu_195_p2 = (!step_reg_129.read().is_01() || !ap_const_lv5_14.is_01())? sc_lv<1>(): sc_lv<1>(step_reg_129.read() == ap_const_lv5_14);
}

void cordic::thread_grp_fu_144_ce() {
    grp_fu_144_ce = ap_const_logic_1;
}

void cordic::thread_grp_fu_144_opcode() {
    if ((esl_seteq<1,6,6>(ap_ST_st44_fsm_43, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st25_fsm_24, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st39_fsm_38, ap_CS_fsm.read()))) {
        grp_fu_144_opcode = ap_const_lv2_1;
    } else if ((esl_seteq<1,6,6>(ap_ST_st24_fsm_23, ap_CS_fsm.read()) || 
                esl_seteq<1,6,6>(ap_ST_st45_fsm_44, ap_CS_fsm.read()) || 
                esl_seteq<1,6,6>(ap_ST_st59_fsm_58, ap_CS_fsm.read()))) {
        grp_fu_144_opcode = ap_const_lv2_0;
    } else {
        grp_fu_144_opcode =  (sc_lv<2>) ("XX");
    }
}

void cordic::thread_grp_fu_144_p0() {
    if (esl_seteq<1,6,6>(ap_ST_st59_fsm_58, ap_CS_fsm.read())) {
        grp_fu_144_p0 = reg_169.read();
    } else if (esl_seteq<1,6,6>(ap_ST_st39_fsm_38, ap_CS_fsm.read())) {
        grp_fu_144_p0 = Y_load_1_reg_274.read();
    } else if ((esl_seteq<1,6,6>(ap_ST_st25_fsm_24, ap_CS_fsm.read()) || 
                esl_seteq<1,6,6>(ap_ST_st45_fsm_44, ap_CS_fsm.read()))) {
        grp_fu_144_p0 = current_load_reg_281.read();
    } else if ((esl_seteq<1,6,6>(ap_ST_st24_fsm_23, ap_CS_fsm.read()) || 
                esl_seteq<1,6,6>(ap_ST_st44_fsm_43, ap_CS_fsm.read()))) {
        grp_fu_144_p0 = X_load_1_reg_290.read();
    } else {
        grp_fu_144_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void cordic::thread_grp_fu_144_p1() {
    if (esl_seteq<1,6,6>(ap_ST_st59_fsm_58, ap_CS_fsm.read())) {
        grp_fu_144_p1 = Y_load_1_reg_274.read();
    } else if ((esl_seteq<1,6,6>(ap_ST_st25_fsm_24, ap_CS_fsm.read()) || 
                esl_seteq<1,6,6>(ap_ST_st45_fsm_44, ap_CS_fsm.read()))) {
        grp_fu_144_p1 = reg_175.read();
    } else if ((esl_seteq<1,6,6>(ap_ST_st24_fsm_23, ap_CS_fsm.read()) || 
                esl_seteq<1,6,6>(ap_ST_st44_fsm_43, ap_CS_fsm.read()) || 
                esl_seteq<1,6,6>(ap_ST_st39_fsm_38, ap_CS_fsm.read()))) {
        grp_fu_144_p1 = reg_169.read();
    } else {
        grp_fu_144_p1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void cordic::thread_grp_fu_148_ce() {
    grp_fu_148_ce = ap_const_logic_1;
}

void cordic::thread_grp_fu_148_p0() {
    if (((esl_seteq<1,6,6>(ap_ST_st23_fsm_22, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_155_p2.read())) || 
         (esl_seteq<1,6,6>(ap_ST_st23_fsm_22, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_155_p2.read())))) {
        grp_fu_148_p0 = X_fu_42.read();
    } else if (esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        grp_fu_148_p0 = Y_fu_46.read();
    } else {
        grp_fu_148_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void cordic::thread_grp_fu_148_p1() {
    grp_fu_148_p1 = tmp_3_reg_269.read();
}

void cordic::thread_grp_fu_152_ce() {
    grp_fu_152_ce = ap_const_logic_1;
}

void cordic::thread_grp_fu_152_p0() {
    grp_fu_152_p0 = esl_zext<32,20>(tmp_2_fu_211_p2.read());
}

void cordic::thread_grp_fu_155_ce() {
    grp_fu_155_ce = ap_const_logic_1;
}

void cordic::thread_grp_fu_155_opcode() {
    grp_fu_155_opcode = ap_const_lv5_4;
}

void cordic::thread_grp_fu_155_p0() {
    grp_fu_155_p0 = current_fu_38.read();
}

void cordic::thread_grp_fu_155_p1() {
    grp_fu_155_p1 = theta.read();
}

void cordic::thread_s() {
    s = Y_fu_46.read();
}

void cordic::thread_s_ap_vld() {
    if (esl_seteq<1,6,6>(ap_ST_st64_fsm_63, ap_CS_fsm.read())) {
        s_ap_vld = ap_const_logic_1;
    } else {
        s_ap_vld = ap_const_logic_0;
    }
}

void cordic::thread_step_1_fu_201_p2() {
    step_1_fu_201_p2 = (!step_reg_129.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_bigint<5>(step_reg_129.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void cordic::thread_tmp_1_cast_fu_207_p1() {
    tmp_1_cast_fu_207_p1 = esl_zext<20,5>(step_reg_129.read());
}

void cordic::thread_tmp_1_fu_226_p1() {
    tmp_1_fu_226_p1 = esl_zext<64,5>(step_reg_129.read());
}

void cordic::thread_tmp_2_fu_211_p2() {
    tmp_2_fu_211_p2 = (!tmp_1_cast_fu_207_p1.read().is_01())? sc_lv<20>(): ap_const_lv20_1 << (unsigned short)tmp_1_cast_fu_207_p1.read().to_uint();
}

void cordic::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 0 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (!esl_seteq<1,1,1>(exitcond_fu_195_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st64_fsm_63;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        case 3 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 5 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
            break;
        case 6 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
            break;
        case 7 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
            break;
        case 9 : 
            ap_NS_fsm = ap_ST_st11_fsm_10;
            break;
        case 10 : 
            ap_NS_fsm = ap_ST_st12_fsm_11;
            break;
        case 11 : 
            ap_NS_fsm = ap_ST_st13_fsm_12;
            break;
        case 12 : 
            ap_NS_fsm = ap_ST_st14_fsm_13;
            break;
        case 13 : 
            ap_NS_fsm = ap_ST_st15_fsm_14;
            break;
        case 14 : 
            ap_NS_fsm = ap_ST_st16_fsm_15;
            break;
        case 15 : 
            ap_NS_fsm = ap_ST_st17_fsm_16;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st18_fsm_17;
            break;
        case 17 : 
            ap_NS_fsm = ap_ST_st19_fsm_18;
            break;
        case 18 : 
            ap_NS_fsm = ap_ST_st20_fsm_19;
            break;
        case 19 : 
            ap_NS_fsm = ap_ST_st21_fsm_20;
            break;
        case 20 : 
            ap_NS_fsm = ap_ST_st22_fsm_21;
            break;
        case 21 : 
            ap_NS_fsm = ap_ST_st23_fsm_22;
            break;
        case 22 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_155_p2.read())) {
                ap_NS_fsm = ap_ST_st44_fsm_43;
            } else {
                ap_NS_fsm = ap_ST_st24_fsm_23;
            }
            break;
        case 23 : 
            ap_NS_fsm = ap_ST_st25_fsm_24;
            break;
        case 24 : 
            ap_NS_fsm = ap_ST_st26_fsm_25;
            break;
        case 25 : 
            ap_NS_fsm = ap_ST_st27_fsm_26;
            break;
        case 26 : 
            ap_NS_fsm = ap_ST_st28_fsm_27;
            break;
        case 27 : 
            ap_NS_fsm = ap_ST_st29_fsm_28;
            break;
        case 28 : 
            ap_NS_fsm = ap_ST_st30_fsm_29;
            break;
        case 29 : 
            ap_NS_fsm = ap_ST_st31_fsm_30;
            break;
        case 30 : 
            ap_NS_fsm = ap_ST_st32_fsm_31;
            break;
        case 31 : 
            ap_NS_fsm = ap_ST_st33_fsm_32;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_st34_fsm_33;
            break;
        case 33 : 
            ap_NS_fsm = ap_ST_st35_fsm_34;
            break;
        case 34 : 
            ap_NS_fsm = ap_ST_st36_fsm_35;
            break;
        case 35 : 
            ap_NS_fsm = ap_ST_st37_fsm_36;
            break;
        case 36 : 
            ap_NS_fsm = ap_ST_st38_fsm_37;
            break;
        case 37 : 
            ap_NS_fsm = ap_ST_st39_fsm_38;
            break;
        case 38 : 
            ap_NS_fsm = ap_ST_st40_fsm_39;
            break;
        case 39 : 
            ap_NS_fsm = ap_ST_st41_fsm_40;
            break;
        case 40 : 
            ap_NS_fsm = ap_ST_st42_fsm_41;
            break;
        case 41 : 
            ap_NS_fsm = ap_ST_st43_fsm_42;
            break;
        case 42 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        case 43 : 
            ap_NS_fsm = ap_ST_st45_fsm_44;
            break;
        case 44 : 
            ap_NS_fsm = ap_ST_st46_fsm_45;
            break;
        case 45 : 
            ap_NS_fsm = ap_ST_st47_fsm_46;
            break;
        case 46 : 
            ap_NS_fsm = ap_ST_st48_fsm_47;
            break;
        case 47 : 
            ap_NS_fsm = ap_ST_st49_fsm_48;
            break;
        case 48 : 
            ap_NS_fsm = ap_ST_st50_fsm_49;
            break;
        case 49 : 
            ap_NS_fsm = ap_ST_st51_fsm_50;
            break;
        case 50 : 
            ap_NS_fsm = ap_ST_st52_fsm_51;
            break;
        case 51 : 
            ap_NS_fsm = ap_ST_st53_fsm_52;
            break;
        case 52 : 
            ap_NS_fsm = ap_ST_st54_fsm_53;
            break;
        case 53 : 
            ap_NS_fsm = ap_ST_st55_fsm_54;
            break;
        case 54 : 
            ap_NS_fsm = ap_ST_st56_fsm_55;
            break;
        case 55 : 
            ap_NS_fsm = ap_ST_st57_fsm_56;
            break;
        case 56 : 
            ap_NS_fsm = ap_ST_st58_fsm_57;
            break;
        case 57 : 
            ap_NS_fsm = ap_ST_st59_fsm_58;
            break;
        case 58 : 
            ap_NS_fsm = ap_ST_st60_fsm_59;
            break;
        case 59 : 
            ap_NS_fsm = ap_ST_st61_fsm_60;
            break;
        case 60 : 
            ap_NS_fsm = ap_ST_st62_fsm_61;
            break;
        case 61 : 
            ap_NS_fsm = ap_ST_st63_fsm_62;
            break;
        case 62 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        case 63 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm = "XXXXXX";
            break;
    }
}

void cordic::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"theta\" :  \"" << theta.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s\" :  \"" << s.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_ap_vld\" :  \"" << s_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c\" :  \"" << c.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"c_ap_vld\" :  \"" << c_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

