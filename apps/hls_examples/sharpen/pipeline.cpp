#include "Halide.h"
#include <stdio.h>

using namespace Halide;

Var x("x"), y("y"), c("c");
Var xo("xo"), yo("yo"), xi("xi"), yi("yi");

class MyPipeline {
public:
    ImageParam input;
    Func output, hw_input, hw_output, mul, kernel, kernel1, mul1, diff, avg, h;
    RDom win, win1;
    std::vector<Argument> args;

    MyPipeline()
        : input(UInt(8), 2),
          output("output"),
          hw_input("hw_input"),
          hw_output("hw_output"),
          mul("mul"),
          diff("diff"),
          win(-1, 3, -1, 3),
          win1(0, 2, 0, 2)
    {

      kernel(x, y) = 0;
      kernel(0, 0) = 0;
      kernel(1, 0) = 1;
      kernel(2, 0) = 0;

      kernel(0, 1) = 1;
      kernel(1, 1) = 2;
      kernel(2, 1) = 1;

      kernel(0, 2) = 0;
      kernel(1, 2) = 1;
      kernel(2, 2) = 0;

      kernel.bound(x, 0, 3);
      kernel.bound(y, 0, 3);

      hw_input(x, y) = cast<int8_t>(input(x, y));
      
      mul(x, y) = 0;
      mul(x, y) += cast<int8_t>(hw_input(win.x + x, win.y + y) << kernel(1 + win.x, 1 + win.y));
      avg(x, y) = cast<int8_t>(mul(x, y) >> 4);

      h(x, y) =
        select(abs(hw_input(x, y) - avg(x, y)) > 15, hw_input(x, y) - avg(x, y), 0);

      diff(x, y) = hw_input(x + 1, y + 1) + (h(x, y) >> 2);
      
      hw_output(x, y) = cast<int8_t>(diff(x, y));
      output(x, y) = hw_output(x, y);

      args = {input};
    }

    void compile_hls() {
        std::cout << "\ncompiling HLS code..." << std::endl;

        hw_input.compute_root();
        hw_output.compute_root();

        hw_output.tile(x, y, xo, yo, xi, yi, 2, 2)
          .reorder(xi, yi, xo, yo);
          //.unroll(yo, 2);
        hw_output.accelerate({hw_input}, xi, xo);
        //.unroll(xi, 2);
        //.unroll(yi, 2);
        kernel.compute_at(hw_output, xo).unroll(x).unroll(y);

        mul.linebuffer();

        mul.update(0)
          .unroll(win.x).unroll(win.y);

        //diff.unroll(x, 2);
        //mul.update(0).unroll(x, 2);
        //.unroll(y, 2);

        output.print_loop_nest();

        // Create the target for HLS simulation
        Target hls_target = get_target_from_environment();
        hls_target.set_feature(Target::CPlusPlusMangling);
        output.compile_to_lowered_stmt("pipeline_hls.ir.html", args, HTML, hls_target);
        output.compile_to_hls("pipeline_hls.cpp", args, "pipeline_hls", hls_target);
        output.compile_to_header("pipeline_hls.h", args, "pipeline_hls", hls_target);

        std::vector<Target::Feature> features({Target::Zynq});
        Target target(Target::Linux, Target::ARM, 32, features);
        output.compile_to_zynq_c("pipeline_zynq.c", args, "pipeline_zynq", target);
        output.compile_to_header("pipeline_zynq.h", args, "pipeline_zynq", target);
        output.compile_to_lowered_stmt("pipeline_zynq.ir.html", args, HTML, target);
    }
};

int main(int argc, char **argv) {
    MyPipeline p2;
    p2.compile_hls();

    return 0;
}
