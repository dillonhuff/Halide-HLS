#include "hls_target.h"

#include <iostream>

using namespace std;

#define IMG_SIZE 1920
#define IMG_ROWS 1080
#define IMG_COLS 1920

int main() {


  hls::stream<AxiPackedStencil<uint8_t, 1, 1> > hw_input;
  hls::stream<AxiPackedStencil<uint8_t, 1, 1> > hw_output;

  vector<uint8_t> vals;
  vector<uint8_t> expected;
  for (int i = 0; i < IMG_ROWS; i++) {
    for (int j = 0; j < IMG_COLS; j++) {
      Stencil<uint8_t, 1, 1> s;
      uint8_t v = 1;
      //uint8_t v = i*IMG_COLS + j + 1;
      s(0, 0) = v;
      vals.push_back(v);
      AxiPackedStencil<uint8_t, 1, 1> p = s;
      hw_input.write(s);
    }
  }


  vector<uint8_t> kernel;
  kernel.resize(9);
  kernel[0] = 0;
  kernel[1] = 2;
  kernel[2] = 0;
  
  kernel[3] = 1;
  kernel[4] = 2;
  kernel[5] = 1;

  kernel[6] = 0;
  kernel[7] = 1;
  kernel[8] = 0;
  
  //kernel[0] = 0;
  //kernel[1] = 1;
  //kernel[2] = 0;
  
  //kernel[3] = 1;
  //kernel[4] = 2;
  //kernel[5] = 1;

  //kernel[6] = 0;
  //kernel[7] = 1;
  //kernel[8] = 0;

  for (int i = 0; i < IMG_ROWS - 2; i++) {
    for (int j = 0; j < IMG_COLS - 2; j++) {
      uint8_t r = 0;
      for (int rr = 0; rr < 3; rr++) {
        for (int cc = 0; cc < 3; cc++) {
          auto v = vals.at((i + rr)*IMG_COLS + j + cc);
          auto k = kernel.at(3*rr + cc);
          r += v << k;
        }
      }
      expected.push_back(r >> 4);
    }
  }

  assert(expected.size() == (IMG_COLS - 2)*(IMG_ROWS - 2));

  cout << "Done writing" << endl;
  //for (int i = 0; i < 200; i++) {
    //Stencil<uint8_t, 1, 1> s;
    //s(0, 0) = i;
    ////for (int k = 0; k < 8; k++) {
      ////s(k, 0) = 10;
    ////}
    //AxiPackedStencil<uint8_t, 1, 1> p = s;
    //hw_input.write(s);
  //}

  hls_target(hw_input, hw_output);

  cout << "Done with conv" << endl;
  cout << "Expected size = " << expected.size() << endl;
  for (int i = 0; i < IMG_ROWS - 2; i++) {
    for (int j = 0; j < IMG_COLS - 2; j++) {
      AxiPackedStencil<uint8_t, 1, 1> val = hw_output.read();
      Stencil<uint8_t, 1, 1> res = val;
      size_t index = i * (IMG_COLS - 2) + j;

      if (!(index < expected.size())) {
        cout << "index = " << index << endl;
        cout << "vsize = " << expected.size() << endl;
      }
      assert(index < expected.size());

      auto expected_v = expected.at(index);
      int actual = (int) res(0, 0);
      //cout << "Val 0 = " << actual << endl;
      //cout << "\texpected " << (int) expected_v << endl;
      assert(actual == expected_v);
    }
  }
}
