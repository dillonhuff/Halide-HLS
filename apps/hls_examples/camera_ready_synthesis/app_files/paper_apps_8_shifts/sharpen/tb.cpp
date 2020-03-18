#include <iostream>
#include <vector>
#include <fstream>

#include "json.h"
#include "hls_target.h"

using namespace std;
using namespace nlohmann;

typedef Stencil<uint8_t, 1, 1> stencil;
typedef AxiPackedStencil<uint8_t, 1, 1> axi_stencil;

template<typename T>
vector<T>
load_vals(const std::string& file) {
  cout << "Opening file: " << file << endl;

  ifstream infile(file);
  json j;
  j << infile;
  cout << "read in file" << endl;

  vector<T> vals;
  for (auto e : j) {
    vals.push_back(e);
  }

  return vals;
}

int main(const int argc, const char** argv) {

  assert(argc == 3);

  string in_file = argv[1];
  string out_file = argv[2];

  int in_rows = 4;
  int in_cols = 4;
  int in_pixels = in_rows*in_cols;

  int out_rows = 2;
  int out_cols = 2;


  int out_delay = in_cols*2 + 2;

  vector<uint8_t> vals =
    load_vals<uint8_t>(in_file);
  assert(in_pixels == vals.size());

  hls::stream<axi_stencil> ins, outs;
  for (auto v : vals) {
    stencil a;
    a(0, 0) = v;
    axi_stencil as;
    as = a;
    ins.write(as);
  }

  hls_target(ins, outs);

  vector<uint8_t> correct_outputs =
    load_vals<uint8_t>(out_file);

  for (int r = 0; r < out_rows; r++) {
    for (int c = 0; c < out_cols; c++) {
      uint8_t actual = outs.read().value;

      int pos = out_delay + r*in_cols + c;
      uint8_t expected = correct_outputs.at(pos);

      cout << "pos = " << pos << endl;
      cout << "actual(" << c << ", " << c << ")   : " << (int) actual << endl;
      cout << "expected(" << c << ", " << c << ") : " << (int) expected << endl;

      assert(expected == actual);
    }
  }

  return 0;
}
