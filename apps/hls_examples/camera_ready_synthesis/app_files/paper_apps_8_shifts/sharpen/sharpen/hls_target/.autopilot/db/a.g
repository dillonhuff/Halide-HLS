#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/paper_apps_8_shifts/sharpen/sharpen/hls_target/.autopilot/db/a.g.bc ${1+"$@"}
