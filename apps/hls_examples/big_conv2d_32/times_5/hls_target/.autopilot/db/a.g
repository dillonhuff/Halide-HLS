#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/dhuff/Halide-HLS/apps/hls_examples/big_conv2d_32/times_5/hls_target/.autopilot/db/a.g.bc ${1+"$@"}
