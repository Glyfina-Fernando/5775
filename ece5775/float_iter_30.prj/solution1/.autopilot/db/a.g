#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/student/gsf52/ece5775/float_iter_30.prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
