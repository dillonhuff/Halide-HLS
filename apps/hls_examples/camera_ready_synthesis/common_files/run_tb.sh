g++ -std=c++14 tb.cpp hls_target.cpp -I /cad/xilinx/vivado/2017.2/Vivado_HLS/2017.2/include/ -I ../../../lib_files/

RESULT=$?
if [ $RESULT -eq 0 ]; then
  echo "success"
else
  echo "Compilation failed"
  exit 1
fi

./a.out
