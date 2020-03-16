set AppName [lindex $argv 2]

open_project -reset $AppName
set_top hls_target 
add_files -cflags "-std=c++0x -I ../../../lib_files" hls_target.cpp

open_solution -reset "hls_target"

set_part {xc7z020clg484-1}
#set_part {xc7k160}
#set_part {xc7k160tfbg484-2}

list_core

create_clock -period 5.6
csynth_design

export_design -rtl verilog

exit
