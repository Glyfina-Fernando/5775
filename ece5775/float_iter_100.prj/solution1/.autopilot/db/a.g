#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/gsf52/ece5775/float_iter_100.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
