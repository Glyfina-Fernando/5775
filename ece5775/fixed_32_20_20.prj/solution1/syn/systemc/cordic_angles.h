// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.2
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __cordic_angles_H__
#define __cordic_angles_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cordic_angles_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
  static const unsigned AddressRange = 38;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(cordic_angles_ram) {
        ram[0] = "0b110010010000";
        ram[1] = "0b011101101011";
        ram[2] = "0b001111101011";
        ram[3] = "0b000111111101";
        ram[4] = "0b000011111111";
        ram[5] = "0b000001111111";
        ram[6] = "0b000000111111";
        ram[7] = "0b000000011111";
        ram[8] = "0b000000001111";
        ram[9] = "0b000000000111";
        ram[10] = "0b000000000011";
        ram[11] = "0b000000000001";
        for (unsigned i = 12; i < 38 ; i = i + 1) {
            ram[i] = "0b000000000000";
        }


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


SC_MODULE(cordic_angles) {


static const unsigned DataWidth = 12;
static const unsigned AddressRange = 38;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cordic_angles_ram* meminst;


SC_CTOR(cordic_angles) {
meminst = new cordic_angles_ram("cordic_angles_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~cordic_angles() {
    delete meminst;
}


};//endmodule
#endif
