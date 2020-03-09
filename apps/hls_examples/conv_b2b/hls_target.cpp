#include "hls_target.h"

#include "Linebuffer.h"
#include "halide_math.h"
void hls_target(
hls::stream<AxiPackedStencil<uint8_t, 1, 1> > &hw_input,
hls::stream<AxiPackedStencil<uint8_t, 1, 1> > &hw_output)
{
#pragma HLS DATAFLOW
#pragma HLS INLINE region
#pragma HLS INTERFACE ap_hs port=hw_input
#pragma HLS INTERFACE ap_hs port=hw_output

 // alias the arguments
 hls::stream<AxiPackedStencil<uint8_t, 1, 1> > &_hw_input_stencil_update_stream = hw_input;
 hls::stream<AxiPackedStencil<uint8_t, 1, 1> > &_hw_output_stencil_stream = hw_output;

 int32_t _p2_kernela0[9];
 // produce p2:kernel
 _p2_kernela0[0] = 0;
 _p2_kernela0[1] = 0;
 _p2_kernela0[2] = 0;
 _p2_kernela0[3] = 0;
 _p2_kernela0[4] = 0;
 _p2_kernela0[5] = 0;
 _p2_kernela0[6] = 0;
 _p2_kernela0[7] = 0;
 _p2_kernela0[8] = 0;
 _p2_kernela0[0] = 0;
 _p2_kernela0[1] = 1;
 _p2_kernela0[2] = 0;
 _p2_kernela0[3] = 1;
 _p2_kernela0[4] = 2;
 _p2_kernela0[5] = 1;
 _p2_kernela0[6] = 0;
 _p2_kernela0[7] = 1;
 _p2_kernela0[8] = 0;
 // consume p2:kernel
 int32_t _p2_kernel1a1[4];
 // produce p2:kernel1
 _p2_kernel1a1[0] = 0;
 _p2_kernel1a1[1] = 0;
 _p2_kernel1a1[2] = 0;
 _p2_kernel1a1[3] = 0;
 _p2_kernel1a1[0] = 0;
 _p2_kernel1a1[1] = 2;
 _p2_kernel1a1[2] = 1;
 _p2_kernel1a1[3] = 0;
 // consume p2:kernel1
 hls::stream<PackedStencil<uint8_t, 3, 3> > _hw_input_stencil_stream;
#pragma HLS STREAM variable=_hw_input_stencil_stream depth=1
#pragma HLS RESOURCE variable=_hw_input_stencil_stream core=FIFO_SRL

 linebuffer<1920, 1080>(_hw_input_stencil_update_stream, _hw_input_stencil_stream);
 (void)0;
 // dispatch_stream(_hw_input_stencil_stream, 2, 3, 1, 1920, 3, 1, 1080, 1, "mul", 0, 0, 1920, 0, 1080);
 hls::stream<PackedStencil<uint8_t, 3, 3> > &_hw_input_stencil_stream_to_mul = _hw_input_stencil_stream;
 (void)0;
 hls::stream<PackedStencil<int32_t, 1, 1> > _mul_stencil_update_stream;
#pragma HLS STREAM variable=_mul_stencil_update_stream depth=1
#pragma HLS RESOURCE variable=_mul_stencil_update_stream core=FIFO_SRL

 // produce mul.stencil_update.stream
 for (int _mul_y___scan_dim_1 = 0; _mul_y___scan_dim_1 < 0 + 1078; _mul_y___scan_dim_1++)
 {
  for (int _mul_x___scan_dim_0 = 0; _mul_x___scan_dim_0 < 0 + 1918; _mul_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<uint8_t, 3, 3> _hw_input_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_input_stencil.value complete dim=0

   _hw_input_stencil = _hw_input_stencil_stream_to_mul.read();
   (void)0;
   Stencil<int32_t, 1, 1> _mul_stencil;
#pragma HLS ARRAY_PARTITION variable=_mul_stencil.value complete dim=0

   _mul_stencil(0, 0) = 0;
   int32_t _326 = _mul_stencil(0, 0);
   uint8_t _327 = _hw_input_stencil(0, 0);
   int32_t _328 = (int32_t)(_327);
   int32_t _329 = _p2_kernela0[0];
   int32_t _330 = _328 << _329;
   uint8_t _331 = (uint8_t)(_330);
   int32_t _332 = (int32_t)(_331);
   int32_t _333 = _326 + _332;
   _mul_stencil(0, 0) = _333;
   int32_t _334 = _mul_stencil(0, 0);
   uint8_t _335 = _hw_input_stencil(1, 0);
   int32_t _336 = (int32_t)(_335);
   int32_t _337 = _p2_kernela0[1];
   int32_t _338 = _336 << _337;
   uint8_t _339 = (uint8_t)(_338);
   int32_t _340 = (int32_t)(_339);
   int32_t _341 = _334 + _340;
   _mul_stencil(0, 0) = _341;
   int32_t _342 = _mul_stencil(0, 0);
   uint8_t _343 = _hw_input_stencil(2, 0);
   int32_t _344 = (int32_t)(_343);
   int32_t _345 = _p2_kernela0[2];
   int32_t _346 = _344 << _345;
   uint8_t _347 = (uint8_t)(_346);
   int32_t _348 = (int32_t)(_347);
   int32_t _349 = _342 + _348;
   _mul_stencil(0, 0) = _349;
   int32_t _350 = _mul_stencil(0, 0);
   uint8_t _351 = _hw_input_stencil(0, 1);
   int32_t _352 = (int32_t)(_351);
   int32_t _353 = _p2_kernela0[3];
   int32_t _354 = _352 << _353;
   uint8_t _355 = (uint8_t)(_354);
   int32_t _356 = (int32_t)(_355);
   int32_t _357 = _350 + _356;
   _mul_stencil(0, 0) = _357;
   int32_t _358 = _mul_stencil(0, 0);
   uint8_t _359 = _hw_input_stencil(1, 1);
   int32_t _360 = (int32_t)(_359);
   int32_t _361 = _p2_kernela0[4];
   int32_t _362 = _360 << _361;
   uint8_t _363 = (uint8_t)(_362);
   int32_t _364 = (int32_t)(_363);
   int32_t _365 = _358 + _364;
   _mul_stencil(0, 0) = _365;
   int32_t _366 = _mul_stencil(0, 0);
   uint8_t _367 = _hw_input_stencil(2, 1);
   int32_t _368 = (int32_t)(_367);
   int32_t _369 = _p2_kernela0[5];
   int32_t _370 = _368 << _369;
   uint8_t _371 = (uint8_t)(_370);
   int32_t _372 = (int32_t)(_371);
   int32_t _373 = _366 + _372;
   _mul_stencil(0, 0) = _373;
   int32_t _374 = _mul_stencil(0, 0);
   uint8_t _375 = _hw_input_stencil(0, 2);
   int32_t _376 = (int32_t)(_375);
   int32_t _377 = _p2_kernela0[6];
   int32_t _378 = _376 << _377;
   uint8_t _379 = (uint8_t)(_378);
   int32_t _380 = (int32_t)(_379);
   int32_t _381 = _374 + _380;
   _mul_stencil(0, 0) = _381;
   int32_t _382 = _mul_stencil(0, 0);
   uint8_t _383 = _hw_input_stencil(1, 2);
   int32_t _384 = (int32_t)(_383);
   int32_t _385 = _p2_kernela0[7];
   int32_t _386 = _384 << _385;
   uint8_t _387 = (uint8_t)(_386);
   int32_t _388 = (int32_t)(_387);
   int32_t _389 = _382 + _388;
   _mul_stencil(0, 0) = _389;
   int32_t _390 = _mul_stencil(0, 0);
   uint8_t _391 = _hw_input_stencil(2, 2);
   int32_t _392 = (int32_t)(_391);
   int32_t _393 = _p2_kernela0[8];
   int32_t _394 = _392 << _393;
   uint8_t _395 = (uint8_t)(_394);
   int32_t _396 = (int32_t)(_395);
   int32_t _397 = _390 + _396;
   _mul_stencil(0, 0) = _397;
   _mul_stencil_update_stream.write(_mul_stencil);
   (void)0;
  } // for _mul_x___scan_dim_0
 } // for _mul_y___scan_dim_1
 // consume mul.stencil_update.stream
 hls::stream<PackedStencil<int32_t, 2, 2> > _mul_stencil_stream;
#pragma HLS STREAM variable=_mul_stencil_stream depth=1
#pragma HLS RESOURCE variable=_mul_stencil_stream core=FIFO_SRL

 linebuffer<1918, 1078>(_mul_stencil_update_stream, _mul_stencil_stream);
 (void)0;
 // dispatch_stream(_mul_stencil_stream, 2, 2, 1, 1918, 2, 1, 1078, 1, "p2:mul1", 0, 0, 1918, 0, 1078);
 hls::stream<PackedStencil<int32_t, 2, 2> > &_mul_stencil_stream_to_p2_mul1 = _mul_stencil_stream;
 (void)0;
 hls::stream<PackedStencil<int32_t, 1, 1> > _p2_mul1_stencil_stream;
#pragma HLS STREAM variable=_p2_mul1_stencil_stream depth=1
#pragma HLS RESOURCE variable=_p2_mul1_stencil_stream core=FIFO_SRL

 // produce p2:mul1.stencil.stream
 for (int _p2_mul1_y___scan_dim_1 = 0; _p2_mul1_y___scan_dim_1 < 0 + 1077; _p2_mul1_y___scan_dim_1++)
 {
  for (int _p2_mul1_x___scan_dim_0 = 0; _p2_mul1_x___scan_dim_0 < 0 + 1917; _p2_mul1_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int32_t, 2, 2> _mul_stencil;
#pragma HLS ARRAY_PARTITION variable=_mul_stencil.value complete dim=0

   _mul_stencil = _mul_stencil_stream_to_p2_mul1.read();
   (void)0;
   Stencil<int32_t, 1, 1> _p2_mul1_stencil;
#pragma HLS ARRAY_PARTITION variable=_p2_mul1_stencil.value complete dim=0

   _p2_mul1_stencil(0, 0) = 0;
   int32_t _398 = _p2_mul1_stencil(0, 0);
   int32_t _399 = _mul_stencil(0, 0);
   int32_t _400 = _399 >> 4;
   int32_t _401 = _p2_kernel1a1[0];
   int32_t _402 = _400 << _401;
   uint8_t _403 = (uint8_t)(_402);
   int32_t _404 = (int32_t)(_403);
   int32_t _405 = _398 + _404;
   _p2_mul1_stencil(0, 0) = _405;
   int32_t _406 = _p2_mul1_stencil(0, 0);
   int32_t _407 = _mul_stencil(1, 0);
   int32_t _408 = _407 >> 4;
   int32_t _409 = _p2_kernel1a1[1];
   int32_t _410 = _408 << _409;
   uint8_t _411 = (uint8_t)(_410);
   int32_t _412 = (int32_t)(_411);
   int32_t _413 = _406 + _412;
   _p2_mul1_stencil(0, 0) = _413;
   int32_t _414 = _p2_mul1_stencil(0, 0);
   int32_t _415 = _mul_stencil(0, 1);
   int32_t _416 = _415 >> 4;
   int32_t _417 = _p2_kernel1a1[2];
   int32_t _418 = _416 << _417;
   uint8_t _419 = (uint8_t)(_418);
   int32_t _420 = (int32_t)(_419);
   int32_t _421 = _414 + _420;
   _p2_mul1_stencil(0, 0) = _421;
   int32_t _422 = _p2_mul1_stencil(0, 0);
   int32_t _423 = _mul_stencil(1, 1);
   int32_t _424 = _423 >> 4;
   int32_t _425 = _p2_kernel1a1[3];
   int32_t _426 = _424 << _425;
   uint8_t _427 = (uint8_t)(_426);
   int32_t _428 = (int32_t)(_427);
   int32_t _429 = _422 + _428;
   _p2_mul1_stencil(0, 0) = _429;
   _p2_mul1_stencil_stream.write(_p2_mul1_stencil);
   (void)0;
  } // for _p2_mul1_x___scan_dim_0
 } // for _p2_mul1_y___scan_dim_1
 // consume p2:mul1.stencil.stream
 // dispatch_stream(_p2_mul1_stencil_stream, 2, 1, 1, 1917, 1, 1, 1077, 1, "hw_output", 0, 0, 1917, 0, 1077);
 hls::stream<PackedStencil<int32_t, 1, 1> > &_p2_mul1_stencil_stream_to_hw_output = _p2_mul1_stencil_stream;
 (void)0;
 // produce hw_output.stencil.stream
 for (int _hw_output_y___scan_dim_1 = 0; _hw_output_y___scan_dim_1 < 0 + 1077; _hw_output_y___scan_dim_1++)
 {
  for (int _hw_output_x___scan_dim_0 = 0; _hw_output_x___scan_dim_0 < 0 + 1917; _hw_output_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int32_t, 1, 1> _p2_mul1_stencil;
#pragma HLS ARRAY_PARTITION variable=_p2_mul1_stencil.value complete dim=0

   _p2_mul1_stencil = _p2_mul1_stencil_stream_to_hw_output.read();
   (void)0;
   Stencil<uint8_t, 1, 1> _hw_output_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_output_stencil.value complete dim=0

   int32_t _430 = _p2_mul1_stencil(0, 0);
   int32_t _431 = _430 >> 3;
   uint8_t _432 = (uint8_t)(_431);
   _hw_output_stencil(0, 0) = _432;
   AxiPackedStencil<uint8_t, 1, 1> _hw_output_stencil_packed = _hw_output_stencil;
   if (_hw_output_x___scan_dim_0 == 1916 && _hw_output_y___scan_dim_1 == 1076) {
    _hw_output_stencil_packed.last = 1;
   } else {
    _hw_output_stencil_packed.last = 0;
   }
   _hw_output_stencil_stream.write(_hw_output_stencil_packed);
   (void)0;
  } // for _hw_output_x___scan_dim_0
 } // for _hw_output_y___scan_dim_1
} // kernel hls_target_hls_target


