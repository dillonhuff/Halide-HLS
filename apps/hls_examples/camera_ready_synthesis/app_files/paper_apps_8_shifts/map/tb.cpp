#include <iostream>
#include <vector>
#include <fstream>

#include "json.h"
#include "hls_target.h"

using namespace std;
using namespace nlohmann;

template<typename T>
vector<T>
load_vals(const std::string& file) {
  cout << "Opening file: " << file << endl;

  ifstream infile(file);
  json j;
  j << infile;
  cout << "read in file" << endl;

  for (auto e : j) {
    cout << "  " << e << endl;
  }

  vector<T> vals;
  return vals;
}

int main() {

  vector<uint8_t> vals =
    load_vals<uint8_t>("../../../test_io_seq_form/paper_apps_8_shifts/map_input.json");

  return 0;
}
