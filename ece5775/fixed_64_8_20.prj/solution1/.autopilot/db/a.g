#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/gsf52/ece5775/fixed_64_8_20.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
