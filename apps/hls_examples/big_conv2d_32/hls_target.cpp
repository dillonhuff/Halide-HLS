#include "hls_target.h"

#include "Linebuffer.h"
#include "halide_math.h"
void hls_target(
hls::stream<AxiPackedStencil<uint32_t, 1, 1> > &hw_input,
hls::stream<AxiPackedStencil<uint32_t, 1, 1> > &hw_output)
{
#pragma HLS DATAFLOW
#pragma HLS INLINE region
#pragma HLS INTERFACE ap_hs port=hw_input
#pragma HLS INTERFACE ap_hs port=hw_output

 // alias the arguments
 hls::stream<AxiPackedStencil<uint32_t, 1, 1> > &_hw_input_stencil_update_stream = hw_input;
 hls::stream<AxiPackedStencil<uint32_t, 1, 1> > &_hw_output_stencil_stream = hw_output;

 uint32_t _p2_kernela0[9];
 // produce p2:kernel
 uint32_t _326 = (uint32_t)(0);
 _p2_kernela0[0] = _326;
 uint32_t _327 = (uint32_t)(0);
 _p2_kernela0[1] = _327;
 uint32_t _328 = (uint32_t)(0);
 _p2_kernela0[2] = _328;
 uint32_t _329 = (uint32_t)(0);
 _p2_kernela0[3] = _329;
 uint32_t _330 = (uint32_t)(0);
 _p2_kernela0[4] = _330;
 uint32_t _331 = (uint32_t)(0);
 _p2_kernela0[5] = _331;
 uint32_t _332 = (uint32_t)(0);
 _p2_kernela0[6] = _332;
 uint32_t _333 = (uint32_t)(0);
 _p2_kernela0[7] = _333;
 uint32_t _334 = (uint32_t)(0);
 _p2_kernela0[8] = _334;
 uint32_t _335 = (uint32_t)(1);
 _p2_kernela0[0] = _335;
 uint32_t _336 = (uint32_t)(2);
 _p2_kernela0[1] = _336;
 uint32_t _337 = (uint32_t)(1);
 _p2_kernela0[2] = _337;
 uint32_t _338 = (uint32_t)(2);
 _p2_kernela0[3] = _338;
 uint32_t _339 = (uint32_t)(4);
 _p2_kernela0[4] = _339;
 uint32_t _340 = (uint32_t)(2);
 _p2_kernela0[5] = _340;
 uint32_t _341 = (uint32_t)(1);
 _p2_kernela0[6] = _341;
 uint32_t _342 = (uint32_t)(2);
 _p2_kernela0[7] = _342;
 uint32_t _343 = (uint32_t)(1);
 _p2_kernela0[8] = _343;
 // consume p2:kernel
 hls::stream<PackedStencil<uint32_t, 3, 3> > _hw_input_stencil_stream;
#pragma HLS STREAM variable=_hw_input_stencil_stream depth=1
#pragma HLS RESOURCE variable=_hw_input_stencil_stream core=FIFO_SRL

 linebuffer<1920, 1080>(_hw_input_stencil_update_stream, _hw_input_stencil_stream);
 (void)0;
 // dispatch_stream(_hw_input_stencil_stream, 2, 3, 1, 1920, 3, 1, 1080, 1, "hw_output", 0, 0, 1920, 0, 1080);
 hls::stream<PackedStencil<uint32_t, 3, 3> > &_hw_input_stencil_stream_to_hw_output = _hw_input_stencil_stream;
 (void)0;
 // produce hw_output.stencil.stream
 for (int _hw_output_y___scan_dim_1 = 0; _hw_output_y___scan_dim_1 < 0 + 1078; _hw_output_y___scan_dim_1++)
 {
  for (int _hw_output_x___scan_dim_0 = 0; _hw_output_x___scan_dim_0 < 0 + 1918; _hw_output_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<uint32_t, 3, 3> _hw_input_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_input_stencil.value complete dim=0

   _hw_input_stencil = _hw_input_stencil_stream_to_hw_output.read();
   (void)0;
   Stencil<uint32_t, 1, 1> _hw_output_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_output_stencil.value complete dim=0

   int32_t _mula1[1];
   _mula1[0] = 0;
   int32_t _344 = _mula1[0];
   uint32_t _345 = _hw_input_stencil(0, 0);
   uint32_t _346 = _p2_kernela0[0];
   uint32_t _347 = _345 * _346;
   int32_t _348 = (int32_t)(_347);
   int32_t _349 = _344 + _348;
   _mula1[0] = _349;
   int32_t _350 = _mula1[0];
   uint32_t _351 = _hw_input_stencil(1, 0);
   uint32_t _352 = _p2_kernela0[1];
   uint32_t _353 = _351 * _352;
   int32_t _354 = (int32_t)(_353);
   int32_t _355 = _350 + _354;
   _mula1[0] = _355;
   int32_t _356 = _mula1[0];
   uint32_t _357 = _hw_input_stencil(2, 0);
   uint32_t _358 = _p2_kernela0[2];
   uint32_t _359 = _357 * _358;
   int32_t _360 = (int32_t)(_359);
   int32_t _361 = _356 + _360;
   _mula1[0] = _361;
   int32_t _362 = _mula1[0];
   uint32_t _363 = _hw_input_stencil(0, 1);
   uint32_t _364 = _p2_kernela0[3];
   uint32_t _365 = _363 * _364;
   int32_t _366 = (int32_t)(_365);
   int32_t _367 = _362 + _366;
   _mula1[0] = _367;
   int32_t _368 = _mula1[0];
   uint32_t _369 = _hw_input_stencil(1, 1);
   uint32_t _370 = _p2_kernela0[4];
   uint32_t _371 = _369 * _370;
   int32_t _372 = (int32_t)(_371);
   int32_t _373 = _368 + _372;
   _mula1[0] = _373;
   int32_t _374 = _mula1[0];
   uint32_t _375 = _hw_input_stencil(2, 1);
   uint32_t _376 = _p2_kernela0[5];
   uint32_t _377 = _375 * _376;
   int32_t _378 = (int32_t)(_377);
   int32_t _379 = _374 + _378;
   _mula1[0] = _379;
   int32_t _380 = _mula1[0];
   uint32_t _381 = _hw_input_stencil(0, 2);
   uint32_t _382 = _p2_kernela0[6];
   uint32_t _383 = _381 * _382;
   int32_t _384 = (int32_t)(_383);
   int32_t _385 = _380 + _384;
   _mula1[0] = _385;
   int32_t _386 = _mula1[0];
   uint32_t _387 = _hw_input_stencil(1, 2);
   uint32_t _388 = _p2_kernela0[7];
   uint32_t _389 = _387 * _388;
   int32_t _390 = (int32_t)(_389);
   int32_t _391 = _386 + _390;
   _mula1[0] = _391;
   int32_t _392 = _mula1[0];
   uint32_t _393 = _hw_input_stencil(2, 2);
   uint32_t _394 = _p2_kernela0[8];
   uint32_t _395 = _393 * _394;
   int32_t _396 = (int32_t)(_395);
   int32_t _397 = _392 + _396;
   _mula1[0] = _397;
   int32_t _398 = _mula1[0];
   int32_t _399 = _398 >> 4;
   uint32_t _400 = (uint32_t)(_399);
   _hw_output_stencil(0, 0) = _400;
   AxiPackedStencil<uint32_t, 1, 1> _hw_output_stencil_packed = _hw_output_stencil;
   if (_hw_output_x___scan_dim_0 == 1917 && _hw_output_y___scan_dim_1 == 1077) {
    _hw_output_stencil_packed.last = 1;
   } else {
    _hw_output_stencil_packed.last = 0;
   }
   _hw_output_stencil_stream.write(_hw_output_stencil_packed);
   (void)0;
  } // for _hw_output_x___scan_dim_0
 } // for _hw_output_y___scan_dim_1
} // kernel hls_target_hls_target


