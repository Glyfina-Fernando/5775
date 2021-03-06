// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __cordic_angles_V_H__
#define __cordic_angles_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cordic_angles_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 28;
  static const unsigned AddressRange = 20;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(cordic_angles_V_ram) {
        ram[0] = "0b1100100100001111110110101010";
        ram[1] = "0b0111011010110001100111000001";
        ram[2] = "0b0011111010110110111010111111";
        ram[3] = "0b0001111111010101101110101000";
        ram[4] = "0b0000111111111010101011011100";
        ram[5] = "0b0000011111111111010101010110";
        ram[6] = "0b0000001111111111111010101010";
        ram[7] = "0b0000000111111111111111010101";
        ram[8] = "0b0000000011111111111111111010";
        ram[9] = "0b0000000001111111111111111110";
        ram[10] = "0b0000000000111111111111111111";
        ram[11] = "0b0000000000011111111111111111";
        ram[12] = "0b0000000000001111111111111111";
        ram[13] = "0b0000000000000111111111111111";
        ram[14] = "0b0000000000000011111111111110";
        ram[15] = "0b0000000000000001111111111111";
        ram[16] = "0b0000000000000000111111111110";
        ram[17] = "0b0000000000000000011111111111";
        ram[18] = "0b0000000000000000010000000000";
        ram[19] = "0b0000000000000000000111111111";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(cordic_angles_V) {


static const unsigned DataWidth = 28;
static const unsigned AddressRange = 20;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cordic_angles_V_ram* meminst;


SC_CTOR(cordic_angles_V) {
meminst = new cordic_angles_V_ram("cordic_angles_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~cordic_angles_V() {
    delete meminst;
}


};//endmodule
#endif
