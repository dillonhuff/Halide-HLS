cp ../../../common_files/Makefile ./
make clean
make pipeline
./pipeline
vivado_hls -f ../../../common_files/run_hls.tcl -tclargs $1
