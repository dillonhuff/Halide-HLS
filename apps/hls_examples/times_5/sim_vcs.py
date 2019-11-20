import os

# run_cmd = 'irun -top test -timescale 1ns/1ps -l irun.log -access +rwc -notimingchecks -input cmd.tcl map_200.v ./vcs_tb.v'
run_cmd = 'irun -top test -timescale 1ns/1ps -l irun.log -access +rwc -notimingchecks -input cmd.tcl map_200.v ./vcs_tb.v'
res = os.system(run_cmd)

assert(res == 0)
