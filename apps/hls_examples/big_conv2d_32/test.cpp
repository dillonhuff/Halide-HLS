#include "hls_target.h"

#include <iostream>

using namespace std;

#define IMG_SIZE 1920
#define IMG_ROWS 1080
#define IMG_COLS 1920

#define COLS_IN 1

int main() {


  hls::stream<AxiPackedStencil<uint32_t, COLS_IN, 1> > hw_input;
  hls::stream<AxiPackedStencil<uint32_t, COLS_IN, 1> > hw_output;

  vector<uint32_t> vals;
  vector<uint32_t> expected;
  for (int i = 0; i < IMG_ROWS; i++) {
    for (int j = 0; j < IMG_COLS; j += COLS_IN) {
      Stencil<uint32_t, COLS_IN, 1> s;
      AxiPackedStencil<uint32_t, COLS_IN, 1> p = s;
      for (int k = 0; k < COLS_IN; k++) {
        uint32_t v = i*IMG_COLS + j + k;
        s(k, 0) = v;
        vals.push_back(v);
      }
      hw_input.write(s);
    }
  }


  vector<uint32_t> kernel;
  kernel.resize(9);
  kernel[0] = 1;
  kernel[1] = 2;
  kernel[2] = 1;
  
  kernel[3] = 2;
  kernel[4] = 4;
  kernel[5] = 2;

  kernel[6] = 1;
  kernel[7] = 2;
  kernel[8] = 1;

  for (int i = 0; i < IMG_ROWS - 2; i++) {
    for (int j = 0; j < IMG_COLS - 2; j++) {
      uint32_t r = 0;
      for (int rr = 0; rr < 3; rr++) {
        for (int cc = 0; cc < 3; cc++) {
          uint32_t v = vals.at((i + rr)*IMG_COLS + j + cc);
          uint32_t k = kernel.at(3*rr + cc);
          uint32_t c = v * k;
          uint32_t c32 = c;
          r = r + c32;
        }
      }
      int ra = r / 16;
      expected.push_back((uint32_t) ra);
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
      AxiPackedStencil<uint32_t, COLS_IN, 1> val = hw_output.read();
      Stencil<uint32_t, COLS_IN, 1> res = val;

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
          cout << "\tactual   = " << actual << endl;
          cout << "\texpected = " << expected_v << endl;
        }
        assert(actual == expected_v);
      }
    }
  }
  cout << "Data matches" << endl;
}
