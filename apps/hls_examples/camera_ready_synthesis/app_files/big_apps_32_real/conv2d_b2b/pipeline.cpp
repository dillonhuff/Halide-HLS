#include "Halide.h"
#include <stdio.h>

using namespace Halide;

Var x("x"), y("y"), c("c");
Var xo("xo"), yo("yo"), xi("xi"), yi("yi");

class MyPipeline {
public:
    ImageParam input;
    Func output, hw_input, hw_output, mul, kernel, kernel1, mul1, avg, avg1;
    RDom win, win1;
    std::vector<Argument> args;

    MyPipeline()
        : input(UInt(32), 2),
          output("output"),
          hw_input("hw_input"),
          hw_output("hw_output"),
          mul("mul"),
          win(0, 3, 0, 3),
          win1(0, 2, 0, 2)
    {

      kernel(x, y) = 0;
      kernel(0, 0) = 1;
      kernel(1, 0) = 2;
      kernel(2, 0) = 1;

      kernel(0, 1) = 2;
      kernel(1, 1) = 4;
      kernel(2, 1) = 2;

      kernel(0, 2) = 1;
      kernel(1, 2) = 2;
      kernel(2, 2) = 1;

      kernel.bound(x, 0, 3);
      kernel.bound(y, 0, 3);

      kernel1(x, y) = 0;
      kernel1(0, 0) = 1;
      kernel1(1, 0) = 4;

      kernel1(0, 1) = 2;
      kernel1(1, 1) = 1;

      kernel1.bound(x, 0, 2);
      kernel1.bound(y, 0, 2);

      hw_input(x, y) = input(x, y);
      mul(x, y) = 0;
      mul(x, y) += cast<uint32_t>((hw_input(win.x + x, win.y + y) * kernel(win.x, win.y)));
      avg(x, y) = cast<uint32_t>(
          cast<float>(mul(x, y)) *
          Expr(1.0 / 16.0)
          );

      mul1(x, y) = 0;
      mul1(x, y) += cast<uint32_t>((avg(win1.x + x, win1.y + y) * kernel1(win1.x, win1.y)));
      avg1(x, y) = mul1(x, y) >> 3;
      
      hw_output(x, y) = cast<uint32_t>(avg1(x, y));
      output(x, y) = hw_output(x, y);

      args = {input};
    }

    void compile_hls() {
        std::cout << "\ncompiling HLS code..." << std::endl;

        hw_input.compute_root();
        hw_output.compute_root();

        hw_output.tile(x, y, xo, yo, xi, yi, 1920 - 3, 1080 - 3)
          .reorder(xi, yi, xo, yo);
        hw_output.accelerate({hw_input}, xi, xo);
        kernel.compute_at(hw_output, xo).unroll(x).unroll(y);
        kernel1.compute_at(hw_output, xo).unroll(x).unroll(y);

        mul
          .linebuffer();
        mul1
          .linebuffer();

        mul.update(0)
          .unroll(win.x).unroll(win.y);

        mul1.update(0)
          .unroll(win1.x).unroll(win1.y);

        output.print_loop_nest();

        // Create the target for HLS simulation
        Target hls_target = get_target_from_environment();
        hls_target.set_feature(Target::CPlusPlusMangling);
        output.compile_to_lowered_stmt("pipeline_hls.ir.html", args, HTML, hls_target);
        output.compile_to_hls("pipeline_hls.cpp", args, "pipeline_hls", hls_target);
        output.compile_to_header("pipeline_hls.h", args, "pipeline_hls", hls_target);

        //std::vector<Target::Feature> features({Target::Zynq});
        //Target target(Target::Linux, Target::ARM, 32, features);
        //output.compile_to_zynq_c("pipeline_zynq.c", args, "pipeline_zynq", target);
        //output.compile_to_header("pipeline_zynq.h", args, "pipeline_zynq", target);
        //output.compile_to_lowered_stmt("pipeline_zynq.ir.html", args, HTML, target);
    }
};

int main(int argc, char **argv) {
    MyPipeline p2;
    p2.compile_hls();

    return 0;
}
