#include "hls_target.h"

#include <iostream>

using namespace std;

#define IMG_SIZE 1920
#define IMG_ROWS 1080
#define IMG_COLS 1920

#define COLS_IN 2

int main() {


  hls::stream<AxiPackedStencil<uint8_t, COLS_IN, 1> > hw_input;
  hls::stream<AxiPackedStencil<uint8_t, COLS_IN, 1> > hw_output;

  vector<uint8_t> vals;
  vector<uint8_t> expected;
  for (int i = 0; i < IMG_ROWS; i++) {
    for (int j = 0; j < IMG_COLS; j += COLS_IN) {
      Stencil<uint8_t, COLS_IN, 1> s;
      AxiPackedStencil<uint8_t, COLS_IN, 1> p = s;
      for (int k = 0; k < COLS_IN; k++) {
        uint8_t v = i*IMG_COLS + j + k;
        s(k, 0) = v;
        vals.push_back(v);
      }
      hw_input.write(s);
    }
  }


  vector<uint8_t> kernel;
  kernel.resize(9);
  kernel[0] = 0;
  kernel[1] = 1;
  kernel[2] = 0;
  
  kernel[3] = 1;
  kernel[4] = 2;
  kernel[5] = 1;

  kernel[6] = 0;
  kernel[7] = 1;
  kernel[8] = 0;

  for (int i = 0; i < IMG_ROWS - 2; i++) {
    for (int j = 0; j < IMG_COLS - 2; j++) {
      uint32_t r = 0;
      for (int rr = 0; rr < 3; rr++) {
        for (int cc = 0; cc < 3; cc++) {
          uint8_t v = vals.at((i + rr)*IMG_COLS + j + cc);
          uint8_t k = kernel.at(3*rr + cc);
          uint8_t c = v << k;
          uint32_t c32 = c;
          r = r + c32;
        }
      }
      int ra = r >> 4;
      expected.push_back((uint8_t) ra);
    }
  }

  assert(expected.size() == (IMG_COLS - 2)*(IMG_ROWS - 2));

  cout << "Done writing" << endl;
  hls_target(hw_input, hw_output);

  cout << "Done with conv" << endl;
  cout << "Expected size = " << expected.size() << endl;
  for (int i = 0; i < IMG_ROWS - 2; i++) {
    //for (int j = 0; j < IMG_COLS - 2; j++) {
    for (int j = 0; j < IMG_COLS - 2; j += COLS_IN) {
      AxiPackedStencil<uint8_t, COLS_IN, 1> val = hw_output.read();
      Stencil<uint8_t, COLS_IN, 1> res = val;

      for (int k = 0; k < COLS_IN; k++) {
        size_t index = i * (IMG_COLS - 2) + j + k;

        if (!(index < expected.size())) {
          cout << "index = " << index << endl;
          cout << "vsize = " << expected.size() << endl;
        }
        assert(index < expected.size());

        auto expected_v = expected.at(index);
        int actual = (int) res(k, 0);
        if (!(actual == expected_v)) {
          cout << "Error at: i = " << i << ", j = " << j << endl;
        }
        assert(actual == expected_v);
      }
    }
  }
  cout << "Data matches" << endl;
}