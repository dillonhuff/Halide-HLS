#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_32_shifts/conv2d_b2b/conv2d_b2b/hls_target/.autopilot/db/a.g.bc ${1+"$@"}
