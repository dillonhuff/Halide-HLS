#include <iostream>
#include <vector>
#include <fstream>

#include "json.h"
#include "hls_target.h"

using namespace std;
using namespace nlohmann;

typedef Stencil<uint32_t, 1, 1> stencil;
typedef AxiPackedStencil<uint32_t, 1, 1> axi_stencil;

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

  int in_rows = 1080;
  int in_cols = 1920;
  int in_pixels = in_rows*in_cols;

  int out_rows = in_rows - 2 - 1;
  int out_cols = in_cols - 2 - 1;

  int out_delay = in_cols*3 + 3;

  vector<uint32_t> vals =
    load_vals<uint32_t>(in_file);
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

  vector<uint32_t> correct_outputs =
    load_vals<uint32_t>(out_file);

  //cout << "reading dense outputs" << endl;
  //vector<uint32_t> dense_correct_outputs;
  //int ind = 0;
  //for (auto v : correct_outputs) {
    //if (v != 253) {
      //dense_correct_outputs.push_back(v);
      //cout << v << " at: " << ind << endl;
    //} else {
      //cout << "253 at: " << ind << endl;
    //}
    //ind++;
  //}
  ////for (int i = 0; i < correct_outputs.size(); i++) {
    ////if (correct_outputs.at(i) != 253) {
      ////dense_correct_outputs.push_back(correct_outputs.at(i));
      //////cout << "First valid output at: " << i << " = " << correct_outputs.at(i) << endl;
      //////break;
    ////}
  ////}

  //int out_size = out_rows*out_cols;
  //cout << "out size = " << out_size << endl;
  //cout << "correct size = " << dense_correct_outputs.size() << endl;

  //assert(dense_correct_outputs.size() == out_size);
  //assert(false);
  
  for (int r = 0; r < out_rows; r++) {
    for (int c = 0; c < out_cols; c++) {
      uint32_t actual = outs.read().value;

      int pos = out_delay + r*in_cols + c;
      uint32_t expected = correct_outputs.at(pos);

      if (expected != 253) {
        cout << "r, c = " << r << ", " << c << endl;
        cout << "pos = " << pos << endl;
        cout << "actual(" << c << ", " << r << ")   : " << (int) actual << endl;
        cout << "expected(" << c << ", " << r << ") : " << (int) expected << endl;
        assert(expected == actual);
      }
    }
  }

  return 0;
}
