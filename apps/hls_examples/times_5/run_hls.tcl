open_project -reset times_5
set_top hls_target 
add_files -cflags -std=c++0x hls_target.cpp
#add_files hls_target.cpp
#add_files hls_target.cpp

add_files -tb -cflags -std=c++0x test.cpp
#add_files -tb test.cpp

open_solution -reset "hls_target"

csim_design -compiler clang

set_part {xc7z020clg484-1}
#set_part {xc7k160}
#set_part {xc7k160tfbg484-2}

list_core

create_clock -period 5.6
csynth_design

export_design -rtl verilog

cosim_design -rtl verilog

exit
