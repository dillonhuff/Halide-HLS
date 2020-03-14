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

  vector<uint8_t> vals =
    load_vals<uint8_t>("../../../test_io_seq_form/paper_apps_8_shifts/map_input.json");

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
    load_vals<uint8_t>("../../../test_io_seq_form/paper_apps_8_shifts/map_output.json");
  for (auto expected : correct_outputs) {
    uint8_t actual = outs.read().value;
    cout << "actual   : " << (int) actual << endl;
    cout << "expected : " << (int) expected << endl;
    assert(expected == actual);
  }

  return 0;
}
