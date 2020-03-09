#include "hls_target.h"

#include "Linebuffer.h"
#include "halide_math.h"
void hls_target(
hls::stream<AxiPackedStencil<uint8_t, 4, 1> > &hw_input,
hls::stream<AxiPackedStencil<uint8_t, 4, 1> > &hw_output)
{
#pragma HLS DATAFLOW
#pragma HLS INLINE region
#pragma HLS INTERFACE ap_hs port=hw_input
#pragma HLS INTERFACE ap_hs port=hw_output

 // alias the arguments
 hls::stream<AxiPackedStencil<uint8_t, 4, 1> > &_hw_input_stencil_update_stream = hw_input;
 hls::stream<AxiPackedStencil<uint8_t, 4, 1> > &_hw_output_stencil_stream = hw_output;

 uint8_t _p2_kernela0[9];
 // produce p2:kernel
 uint8_t _326 = (uint8_t)(0);
 _p2_kernela0[0] = _326;
 uint8_t _327 = (uint8_t)(0);
 _p2_kernela0[1] = _327;
 uint8_t _328 = (uint8_t)(0);
 _p2_kernela0[2] = _328;
 uint8_t _329 = (uint8_t)(0);
 _p2_kernela0[3] = _329;
 uint8_t _330 = (uint8_t)(0);
 _p2_kernela0[4] = _330;
 uint8_t _331 = (uint8_t)(0);
 _p2_kernela0[5] = _331;
 uint8_t _332 = (uint8_t)(0);
 _p2_kernela0[6] = _332;
 uint8_t _333 = (uint8_t)(0);
 _p2_kernela0[7] = _333;
 uint8_t _334 = (uint8_t)(0);
 _p2_kernela0[8] = _334;
 uint8_t _335 = (uint8_t)(0);
 _p2_kernela0[0] = _335;
 uint8_t _336 = (uint8_t)(1);
 _p2_kernela0[1] = _336;
 uint8_t _337 = (uint8_t)(0);
 _p2_kernela0[2] = _337;
 uint8_t _338 = (uint8_t)(1);
 _p2_kernela0[3] = _338;
 uint8_t _339 = (uint8_t)(2);
 _p2_kernela0[4] = _339;
 uint8_t _340 = (uint8_t)(1);
 _p2_kernela0[5] = _340;
 uint8_t _341 = (uint8_t)(0);
 _p2_kernela0[6] = _341;
 uint8_t _342 = (uint8_t)(1);
 _p2_kernela0[7] = _342;
 uint8_t _343 = (uint8_t)(0);
 _p2_kernela0[8] = _343;
 // consume p2:kernel
 hls::stream<PackedStencil<uint8_t, 6, 3> > _hw_input_stencil_stream;
#pragma HLS STREAM variable=_hw_input_stencil_stream depth=1
#pragma HLS RESOURCE variable=_hw_input_stencil_stream core=FIFO_SRL

 linebuffer<1922, 1082>(_hw_input_stencil_update_stream, _hw_input_stencil_stream);
 (void)0;
 // dispatch_stream(_hw_input_stencil_stream, 2, 6, 4, 1922, 3, 1, 1082, 1, "hw_output", 0, 0, 1922, 0, 1082);
 hls::stream<PackedStencil<uint8_t, 6, 3> > &_hw_input_stencil_stream_to_hw_output = _hw_input_stencil_stream;
 (void)0;
 // produce hw_output.stencil.stream
 for (int _hw_output_y___scan_dim_1 = 0; _hw_output_y___scan_dim_1 < 0 + 1080; _hw_output_y___scan_dim_1++)
 {
  for (int _hw_output_x___scan_dim_0 = 0; _hw_output_x___scan_dim_0 < 0 + 480; _hw_output_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<uint8_t, 6, 3> _hw_input_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_input_stencil.value complete dim=0

   _hw_input_stencil = _hw_input_stencil_stream_to_hw_output.read();
   (void)0;
   Stencil<uint8_t, 4, 1> _hw_output_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_output_stencil.value complete dim=0

   int32_t _mula1[1];
   _mula1[0] = 0;
   int32_t _344 = _mula1[0];
   uint8_t _345 = _hw_input_stencil(0, 0);
   uint8_t _346 = _p2_kernela0[0];
   uint8_t _347 = _345 << _346;
   int32_t _348 = (int32_t)(_347);
   int32_t _349 = _344 + _348;
   _mula1[0] = _349;
   int32_t _350 = _mula1[0];
   uint8_t _351 = _hw_input_stencil(1, 0);
   uint8_t _352 = _p2_kernela0[1];
   uint8_t _353 = _351 << _352;
   int32_t _354 = (int32_t)(_353);
   int32_t _355 = _350 + _354;
   _mula1[0] = _355;
   int32_t _356 = _mula1[0];
   uint8_t _357 = _hw_input_stencil(2, 0);
   uint8_t _358 = _p2_kernela0[2];
   uint8_t _359 = _357 << _358;
   int32_t _360 = (int32_t)(_359);
   int32_t _361 = _356 + _360;
   _mula1[0] = _361;
   int32_t _362 = _mula1[0];
   uint8_t _363 = _hw_input_stencil(0, 1);
   uint8_t _364 = _p2_kernela0[3];
   uint8_t _365 = _363 << _364;
   int32_t _366 = (int32_t)(_365);
   int32_t _367 = _362 + _366;
   _mula1[0] = _367;
   int32_t _368 = _mula1[0];
   uint8_t _369 = _hw_input_stencil(1, 1);
   uint8_t _370 = _p2_kernela0[4];
   uint8_t _371 = _369 << _370;
   int32_t _372 = (int32_t)(_371);
   int32_t _373 = _368 + _372;
   _mula1[0] = _373;
   int32_t _374 = _mula1[0];
   uint8_t _375 = _hw_input_stencil(2, 1);
   uint8_t _376 = _p2_kernela0[5];
   uint8_t _377 = _375 << _376;
   int32_t _378 = (int32_t)(_377);
   int32_t _379 = _374 + _378;
   _mula1[0] = _379;
   int32_t _380 = _mula1[0];
   uint8_t _381 = _hw_input_stencil(0, 2);
   uint8_t _382 = _p2_kernela0[6];
   uint8_t _383 = _381 << _382;
   int32_t _384 = (int32_t)(_383);
   int32_t _385 = _380 + _384;
   _mula1[0] = _385;
   int32_t _386 = _mula1[0];
   uint8_t _387 = _hw_input_stencil(1, 2);
   uint8_t _388 = _p2_kernela0[7];
   uint8_t _389 = _387 << _388;
   int32_t _390 = (int32_t)(_389);
   int32_t _391 = _386 + _390;
   _mula1[0] = _391;
   int32_t _392 = _mula1[0];
   uint8_t _393 = _hw_input_stencil(2, 2);
   uint8_t _394 = _p2_kernela0[8];
   uint8_t _395 = _393 << _394;
   int32_t _396 = (int32_t)(_395);
   int32_t _397 = _392 + _396;
   _mula1[0] = _397;
   int32_t _398 = _mula1[0];
   int32_t _399 = _398 >> 4;
   uint8_t _400 = (uint8_t)(_399);
   _hw_output_stencil(0, 0) = _400;
   int32_t _mula2[1];
   _mula2[0] = 0;
   int32_t _401 = _mula2[0];
   uint8_t _402 = _hw_input_stencil(1, 0);
   uint8_t _403 = _p2_kernela0[0];
   uint8_t _404 = _402 << _403;
   int32_t _405 = (int32_t)(_404);
   int32_t _406 = _401 + _405;
   _mula2[0] = _406;
   int32_t _407 = _mula2[0];
   uint8_t _408 = _hw_input_stencil(2, 0);
   uint8_t _409 = _p2_kernela0[1];
   uint8_t _410 = _408 << _409;
   int32_t _411 = (int32_t)(_410);
   int32_t _412 = _407 + _411;
   _mula2[0] = _412;
   int32_t _413 = _mula2[0];
   uint8_t _414 = _hw_input_stencil(3, 0);
   uint8_t _415 = _p2_kernela0[2];
   uint8_t _416 = _414 << _415;
   int32_t _417 = (int32_t)(_416);
   int32_t _418 = _413 + _417;
   _mula2[0] = _418;
   int32_t _419 = _mula2[0];
   uint8_t _420 = _hw_input_stencil(1, 1);
   uint8_t _421 = _p2_kernela0[3];
   uint8_t _422 = _420 << _421;
   int32_t _423 = (int32_t)(_422);
   int32_t _424 = _419 + _423;
   _mula2[0] = _424;
   int32_t _425 = _mula2[0];
   uint8_t _426 = _hw_input_stencil(2, 1);
   uint8_t _427 = _p2_kernela0[4];
   uint8_t _428 = _426 << _427;
   int32_t _429 = (int32_t)(_428);
   int32_t _430 = _425 + _429;
   _mula2[0] = _430;
   int32_t _431 = _mula2[0];
   uint8_t _432 = _hw_input_stencil(3, 1);
   uint8_t _433 = _p2_kernela0[5];
   uint8_t _434 = _432 << _433;
   int32_t _435 = (int32_t)(_434);
   int32_t _436 = _431 + _435;
   _mula2[0] = _436;
   int32_t _437 = _mula2[0];
   uint8_t _438 = _hw_input_stencil(1, 2);
   uint8_t _439 = _p2_kernela0[6];
   uint8_t _440 = _438 << _439;
   int32_t _441 = (int32_t)(_440);
   int32_t _442 = _437 + _441;
   _mula2[0] = _442;
   int32_t _443 = _mula2[0];
   uint8_t _444 = _hw_input_stencil(2, 2);
   uint8_t _445 = _p2_kernela0[7];
   uint8_t _446 = _444 << _445;
   int32_t _447 = (int32_t)(_446);
   int32_t _448 = _443 + _447;
   _mula2[0] = _448;
   int32_t _449 = _mula2[0];
   uint8_t _450 = _hw_input_stencil(3, 2);
   uint8_t _451 = _p2_kernela0[8];
   uint8_t _452 = _450 << _451;
   int32_t _453 = (int32_t)(_452);
   int32_t _454 = _449 + _453;
   _mula2[0] = _454;
   int32_t _455 = _mula2[0];
   int32_t _456 = _455 >> 4;
   uint8_t _457 = (uint8_t)(_456);
   _hw_output_stencil(1, 0) = _457;
   int32_t _mula3[1];
   _mula3[0] = 0;
   int32_t _458 = _mula3[0];
   uint8_t _459 = _hw_input_stencil(2, 0);
   uint8_t _460 = _p2_kernela0[0];
   uint8_t _461 = _459 << _460;
   int32_t _462 = (int32_t)(_461);
   int32_t _463 = _458 + _462;
   _mula3[0] = _463;
   int32_t _464 = _mula3[0];
   uint8_t _465 = _hw_input_stencil(3, 0);
   uint8_t _466 = _p2_kernela0[1];
   uint8_t _467 = _465 << _466;
   int32_t _468 = (int32_t)(_467);
   int32_t _469 = _464 + _468;
   _mula3[0] = _469;
   int32_t _470 = _mula3[0];
   uint8_t _471 = _hw_input_stencil(4, 0);
   uint8_t _472 = _p2_kernela0[2];
   uint8_t _473 = _471 << _472;
   int32_t _474 = (int32_t)(_473);
   int32_t _475 = _470 + _474;
   _mula3[0] = _475;
   int32_t _476 = _mula3[0];
   uint8_t _477 = _hw_input_stencil(2, 1);
   uint8_t _478 = _p2_kernela0[3];
   uint8_t _479 = _477 << _478;
   int32_t _480 = (int32_t)(_479);
   int32_t _481 = _476 + _480;
   _mula3[0] = _481;
   int32_t _482 = _mula3[0];
   uint8_t _483 = _hw_input_stencil(3, 1);
   uint8_t _484 = _p2_kernela0[4];
   uint8_t _485 = _483 << _484;
   int32_t _486 = (int32_t)(_485);
   int32_t _487 = _482 + _486;
   _mula3[0] = _487;
   int32_t _488 = _mula3[0];
   uint8_t _489 = _hw_input_stencil(4, 1);
   uint8_t _490 = _p2_kernela0[5];
   uint8_t _491 = _489 << _490;
   int32_t _492 = (int32_t)(_491);
   int32_t _493 = _488 + _492;
   _mula3[0] = _493;
   int32_t _494 = _mula3[0];
   uint8_t _495 = _hw_input_stencil(2, 2);
   uint8_t _496 = _p2_kernela0[6];
   uint8_t _497 = _495 << _496;
   int32_t _498 = (int32_t)(_497);
   int32_t _499 = _494 + _498;
   _mula3[0] = _499;
   int32_t _500 = _mula3[0];
   uint8_t _501 = _hw_input_stencil(3, 2);
   uint8_t _502 = _p2_kernela0[7];
   uint8_t _503 = _501 << _502;
   int32_t _504 = (int32_t)(_503);
   int32_t _505 = _500 + _504;
   _mula3[0] = _505;
   int32_t _506 = _mula3[0];
   uint8_t _507 = _hw_input_stencil(4, 2);
   uint8_t _508 = _p2_kernela0[8];
   uint8_t _509 = _507 << _508;
   int32_t _510 = (int32_t)(_509);
   int32_t _511 = _506 + _510;
   _mula3[0] = _511;
   int32_t _512 = _mula3[0];
   int32_t _513 = _512 >> 4;
   uint8_t _514 = (uint8_t)(_513);
   _hw_output_stencil(2, 0) = _514;
   int32_t _mula4[1];
   _mula4[0] = 0;
   int32_t _515 = _mula4[0];
   uint8_t _516 = _hw_input_stencil(3, 0);
   uint8_t _517 = _p2_kernela0[0];
   uint8_t _518 = _516 << _517;
   int32_t _519 = (int32_t)(_518);
   int32_t _520 = _515 + _519;
   _mula4[0] = _520;
   int32_t _521 = _mula4[0];
   uint8_t _522 = _hw_input_stencil(4, 0);
   uint8_t _523 = _p2_kernela0[1];
   uint8_t _524 = _522 << _523;
   int32_t _525 = (int32_t)(_524);
   int32_t _526 = _521 + _525;
   _mula4[0] = _526;
   int32_t _527 = _mula4[0];
   uint8_t _528 = _hw_input_stencil(5, 0);
   uint8_t _529 = _p2_kernela0[2];
   uint8_t _530 = _528 << _529;
   int32_t _531 = (int32_t)(_530);
   int32_t _532 = _527 + _531;
   _mula4[0] = _532;
   int32_t _533 = _mula4[0];
   uint8_t _534 = _hw_input_stencil(3, 1);
   uint8_t _535 = _p2_kernela0[3];
   uint8_t _536 = _534 << _535;
   int32_t _537 = (int32_t)(_536);
   int32_t _538 = _533 + _537;
   _mula4[0] = _538;
   int32_t _539 = _mula4[0];
   uint8_t _540 = _hw_input_stencil(4, 1);
   uint8_t _541 = _p2_kernela0[4];
   uint8_t _542 = _540 << _541;
   int32_t _543 = (int32_t)(_542);
   int32_t _544 = _539 + _543;
   _mula4[0] = _544;
   int32_t _545 = _mula4[0];
   uint8_t _546 = _hw_input_stencil(5, 1);
   uint8_t _547 = _p2_kernela0[5];
   uint8_t _548 = _546 << _547;
   int32_t _549 = (int32_t)(_548);
   int32_t _550 = _545 + _549;
   _mula4[0] = _550;
   int32_t _551 = _mula4[0];
   uint8_t _552 = _hw_input_stencil(3, 2);
   uint8_t _553 = _p2_kernela0[6];
   uint8_t _554 = _552 << _553;
   int32_t _555 = (int32_t)(_554);
   int32_t _556 = _551 + _555;
   _mula4[0] = _556;
   int32_t _557 = _mula4[0];
   uint8_t _558 = _hw_input_stencil(4, 2);
   uint8_t _559 = _p2_kernela0[7];
   uint8_t _560 = _558 << _559;
   int32_t _561 = (int32_t)(_560);
   int32_t _562 = _557 + _561;
   _mula4[0] = _562;
   int32_t _563 = _mula4[0];
   uint8_t _564 = _hw_input_stencil(5, 2);
   uint8_t _565 = _p2_kernela0[8];
   uint8_t _566 = _564 << _565;
   int32_t _567 = (int32_t)(_566);
   int32_t _568 = _563 + _567;
   _mula4[0] = _568;
   int32_t _569 = _mula4[0];
   int32_t _570 = _569 >> 4;
   uint8_t _571 = (uint8_t)(_570);
   _hw_output_stencil(3, 0) = _571;
   AxiPackedStencil<uint8_t, 4, 1> _hw_output_stencil_packed = _hw_output_stencil;
   if (_hw_output_x___scan_dim_0 == 479 && _hw_output_y___scan_dim_1 == 1079) {
    _hw_output_stencil_packed.last = 1;
   } else {
    _hw_output_stencil_packed.last = 0;
   }
   _hw_output_stencil_stream.write(_hw_output_stencil_packed);
   (void)0;
  } // for _hw_output_x___scan_dim_0
 } // for _hw_output_y___scan_dim_1
} // kernel hls_target_hls_target


