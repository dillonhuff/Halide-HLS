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

int main() {

  int in_rows = 1080;
  int in_cols = 1920;
  int in_pixels = in_rows*in_cols;

  int out_rows = in_rows - 2;
  int out_cols = in_cols - 2;

  int out_delay = in_cols*2 + 2;

  vector<uint8_t> vals =
    load_vals<uint8_t>("../../../test_io_seq_form/big_apps_8_shifts/conv2d_input.json");
  assert(in_pixels == vals.size());

  cout << "Loaded vals..." << endl;
  int r = 0;
  int c = 2;

  vector<uint8_t> kernel{0, 1, 0, 1, 2, 1, 0, 1, 0};
  uint8_t res = 0;
  int ro = 0;
  int co = 2;
  for (int ri = 0; ri < 3; ri++) {
    for (int ci = 0; ci < 3; ci++) {
      int rp = ro + ri;
      int cp = co + ci;
      cout << "vals = " << (int) vals.at(rp*in_cols + cp) << endl;
      res += vals.at(rp*in_cols + cp) << kernel.at(ri*3 + ci);
    }
  }
  res = res >> 4;

  cout << "res = " << (int) res << endl;

  cout << "Done printing" << endl;
  //assert(false);

  hls::stream<axi_stencil> ins, outs;
  for (auto v : vals) {
    stencil a;
    a(0, 0) = v;
    axi_stencil as;
    as = a;
    ins.write(as);
  }

  cout << "Running kernel..." << endl;

  hls_target(ins, outs);

  cout << "Checking outputs..." << endl;
  vector<uint8_t> correct_outputs =
    load_vals<uint8_t>("../../../test_io_seq_form/big_apps_8_shifts/conv2d_output.json");

  for (int r = 0; r < out_rows; r++) {
    for (int c = 0; c < out_cols; c++) {
      uint8_t actual = outs.read().value;

      int pos = 2*in_cols + 2 + r*in_cols + c;
      uint8_t expected = correct_outputs.at(pos);

      cout << "actual   : " << (int) actual << endl;
      cout << "expected : " << (int) expected << endl << endl;
      if (expected != 253) {
        assert(expected == actual);
      }
    }
  }

  return 0;
}
