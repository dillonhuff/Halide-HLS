#include "hls_target.h"

#include <iostream>

using namespace std;

#define IMG_SIZE 4

int main() {

  hls::stream<AxiPackedStencil<int8_t, 2, 1> > hw_input;
  hls::stream<AxiPackedStencil<int8_t, 2, 1> > hw_output;

  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j+= 2) {
      Stencil<int8_t, 2, 1> s;
      s(0, 0) = i*IMG_SIZE + j + 1;
      s(1, 0) = i*IMG_SIZE + (j + 1) + 1;
      AxiPackedStencil<int8_t, 2, 1> p = s;
      hw_input.write(s);
    }
  }

  cout << "About to call hls_target" << endl;

  hls_target(hw_input, hw_output);

  cout << "Getting values out..." << endl;
  for (int i = 0; i < IMG_SIZE - 2; i++) {
    for (int j = 0; j < IMG_SIZE - 2; j+=2) {
      AxiPackedStencil<int8_t, 2, 1> val = hw_output.read();
      Stencil<int8_t, 2, 1> res = val;
      cout << "Val = " << (int) res(0, 0) << endl;
      cout << "Val = " << (int) res(1, 0) << endl;
    }
  }
}
