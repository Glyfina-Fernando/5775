// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __cordic_dcmp_64ns_64ns_1_3__HH__
#define __cordic_dcmp_64ns_64ns_1_3__HH__
#include "ACMP_dcmp.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(cordic_dcmp_64ns_64ns_1_3) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<5> >   opcode;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_dcmp<ID, 3, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_dcmp_U;

    SC_CTOR(cordic_dcmp_64ns_64ns_1_3):  ACMP_dcmp_U ("ACMP_dcmp_U") {
        ACMP_dcmp_U.clk(clk);
        ACMP_dcmp_U.reset(reset);
        ACMP_dcmp_U.ce(ce);
        ACMP_dcmp_U.din0(din0);
        ACMP_dcmp_U.din1(din1);
        ACMP_dcmp_U.dout(dout);
        ACMP_dcmp_U.opcode(opcode);

    }

};

#endif //
