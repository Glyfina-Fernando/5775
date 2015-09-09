############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project float_iter_20.prj
set_top cordic
add_files cordic.cpp -cflags "-DNUM_ITER=20"
add_files -tb cordic_test.cpp -cflags "-DNUM_ITER=20"
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./float_iter_20.prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
