make clean
make pipeline
./pipeline
vivado_hls -f run_hls.tcl -tclargs $1
