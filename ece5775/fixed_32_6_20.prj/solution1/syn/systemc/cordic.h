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

#include "cordic_angles_V.h"

namespace ap_rtl {

struct cordic : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > theta_V;
    sc_out< sc_lv<32> > s_V;
    sc_out< sc_logic > s_V_ap_vld;
    sc_out< sc_lv<32> > c_V;
    sc_out< sc_logic > c_V_ap_vld;


    // Module declarations
    cordic(sc_module_name name);
    SC_HAS_PROCESS(cordic);

    ~cordic();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    cordic_angles_V* angles_V_U;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_lv<5> > angles_V_address0;
    sc_signal< sc_logic > angles_V_ce0;
    sc_signal< sc_lv<26> > angles_V_q0;
    sc_signal< sc_lv<5> > step_fu_125_p2;
    sc_signal< sc_lv<5> > step_reg_221;
    sc_signal< sc_lv<1> > tmp_2_fu_131_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_226;
    sc_signal< sc_lv<1> > exitcond_fu_119_p2;
    sc_signal< sc_lv<32> > p_Val2_2_fu_148_p2;
    sc_signal< sc_lv<32> > p_Val2_2_reg_232;
    sc_signal< sc_lv<32> > X_V_2_fu_165_p3;
    sc_signal< sc_lv<32> > X_V_2_reg_243;
    sc_signal< sc_lv<32> > current_V_fu_200_p3;
    sc_signal< sc_lv<32> > Y_V_fu_207_p2;
    sc_signal< sc_lv<32> > p_Val2_4_reg_66;
    sc_signal< sc_lv<32> > p_Val2_3_reg_78;
    sc_signal< sc_lv<32> > p_Val2_s_reg_91;
    sc_signal< sc_lv<5> > sh_assign_reg_103;
    sc_signal< sc_lv<64> > tmp_6_fu_154_p1;
    sc_signal< sc_lv<32> > sh_assign_cast1_fu_115_p1;
    sc_signal< sc_lv<32> > p_Val2_1_fu_136_p2;
    sc_signal< sc_lv<32> > T_V_fu_142_p2;
    sc_signal< sc_lv<32> > T_V_1_fu_159_p2;
    sc_signal< sc_lv<32> > p_Val2_5_cast_fu_173_p1;
    sc_signal< sc_lv<32> > p_Val2_s_2_fu_183_p2;
    sc_signal< sc_lv<32> > p_Val2_8_fu_177_p2;
    sc_signal< sc_lv<32> > p_Val2_6_fu_188_p2;
    sc_signal< sc_lv<32> > p_Val2_3_pn_fu_194_p3;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_st1_fsm_0;
    static const sc_lv<2> ap_ST_st2_fsm_1;
    static const sc_lv<2> ap_ST_st3_fsm_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_26DD3B6;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_1E;
    static const sc_lv<5> ap_const_lv5_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_T_V_1_fu_159_p2();
    void thread_T_V_fu_142_p2();
    void thread_X_V_2_fu_165_p3();
    void thread_Y_V_fu_207_p2();
    void thread_angles_V_address0();
    void thread_angles_V_ce0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c_V();
    void thread_c_V_ap_vld();
    void thread_current_V_fu_200_p3();
    void thread_exitcond_fu_119_p2();
    void thread_p_Val2_1_fu_136_p2();
    void thread_p_Val2_2_fu_148_p2();
    void thread_p_Val2_3_pn_fu_194_p3();
    void thread_p_Val2_5_cast_fu_173_p1();
    void thread_p_Val2_6_fu_188_p2();
    void thread_p_Val2_8_fu_177_p2();
    void thread_p_Val2_s_2_fu_183_p2();
    void thread_s_V();
    void thread_s_V_ap_vld();
    void thread_sh_assign_cast1_fu_115_p1();
    void thread_step_fu_125_p2();
    void thread_tmp_2_fu_131_p2();
    void thread_tmp_6_fu_154_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
