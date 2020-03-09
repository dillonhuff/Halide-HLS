import os
res = os.system('/cad/xilinx/vivado/2017.2/Vivado_HLS/2017.2/bin/vivado_hls -f run_hls.tcl')
assert(res == 0)

