#include "hls_target.h"

#include "Linebuffer.h"
#include "halide_math.h"
void hls_target(
hls::stream<AxiPackedStencil<int8_t, 2, 1> > &hw_input,
hls::stream<AxiPackedStencil<int8_t, 2, 1> > &hw_output)
{
#pragma HLS DATAFLOW
#pragma HLS INLINE region
#pragma HLS INTERFACE ap_hs port=hw_input
#pragma HLS INTERFACE ap_hs port=hw_output

 // alias the arguments
 hls::stream<AxiPackedStencil<int8_t, 2, 1> > &_hw_input_stencil_update_stream = hw_input;
 hls::stream<AxiPackedStencil<int8_t, 2, 1> > &_hw_output_stencil_stream = hw_output;

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
 hls::stream<PackedStencil<int8_t, 4, 3> > _hw_input_stencil_stream;
#pragma HLS STREAM variable=_hw_input_stencil_stream depth=1
#pragma HLS RESOURCE variable=_hw_input_stencil_stream core=FIFO_SRL

 linebuffer<4, 4>(_hw_input_stencil_update_stream, _hw_input_stencil_stream);
 (void)0;
 // dispatch_stream(_hw_input_stencil_stream, 2, 4, 2, 4, 3, 1, 4, 2, "hw_output", 0, 0, 4, 0, 4, "mul", 0, 0, 4, 0, 4);
 hls::stream<PackedStencil<int8_t, 4, 3> > _hw_input_stencil_stream_to_hw_output;
#pragma HLS STREAM variable=_hw_input_stencil_stream_to_hw_output depth=1
#pragma HLS RESOURCE variable=_hw_input_stencil_stream_to_hw_output core=FIFO_SRL

 hls::stream<PackedStencil<int8_t, 4, 3> > _hw_input_stencil_stream_to_mul;
#pragma HLS STREAM variable=_hw_input_stencil_stream_to_mul depth=1
#pragma HLS RESOURCE variable=_hw_input_stencil_stream_to_mul core=FIFO_SRL

 for (int _dim_1 = 0; _dim_1 <= 1; _dim_1 += 1)
 for (int _dim_0 = 0; _dim_0 <= 0; _dim_0 += 2)
 {
#pragma HLS PIPELINE
  PackedStencil<int8_t, 4, 3> _tmp_stencil = _hw_input_stencil_stream.read();
  if (_dim_0 >= 0 && _dim_0 <= 0 && _dim_1 >= 0 && _dim_1 <= 1)
  {
   _hw_input_stencil_stream_to_hw_output.write(_tmp_stencil);
  }
  if (_dim_0 >= 0 && _dim_0 <= 0 && _dim_1 >= 0 && _dim_1 <= 1)
  {
   _hw_input_stencil_stream_to_mul.write(_tmp_stencil);
  }
 }
 (void)0;
 hls::stream<PackedStencil<int32_t, 2, 1> > _mul_stencil_stream;
#pragma HLS STREAM variable=_mul_stencil_stream depth=1
#pragma HLS RESOURCE variable=_mul_stencil_stream core=FIFO_SRL

 // produce mul.stencil.stream
 for (int _mul_y___scan_dim_1 = 0; _mul_y___scan_dim_1 < 0 + 2; _mul_y___scan_dim_1++)
 {
  for (int _mul_x___scan_dim_0 = 0; _mul_x___scan_dim_0 < 0 + 1; _mul_x___scan_dim_0++)
  {
   Stencil<int8_t, 4, 3> _hw_input_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_input_stencil.value complete dim=0

   _hw_input_stencil = _hw_input_stencil_stream_to_mul.read();
   (void)0;
   Stencil<int32_t, 2, 1> _mul_stencil;
#pragma HLS ARRAY_PARTITION variable=_mul_stencil.value complete dim=0

   for (int _mul_stencil_s0_x = 0; _mul_stencil_s0_x < 0 + 2; _mul_stencil_s0_x++)
   {
#pragma HLS PIPELINE II=1
    _mul_stencil(_mul_stencil_s0_x, 0) = 0;
   } // for _mul_stencil_s0_x
   for (int _mul_stencil_s1_x_x = 0; _mul_stencil_s1_x_x < 0 + 2; _mul_stencil_s1_x_x++)
   {
#pragma HLS PIPELINE II=1
    int32_t _332 = _mul_stencil_s1_x_x * 2;
    int32_t _333 = _mul_stencil(_332, 0);
    int8_t _334 = _hw_input_stencil(_332, 0);
    int32_t _335 = (int32_t)(_334);
    int32_t _336 = _p2_kernela0[0];
    int32_t _337 = _335 << _336;
    int8_t _338 = (int8_t)(_337);
    int32_t _339 = (int32_t)(_338);
    int32_t _340 = _333 + _339;
    _mul_stencil(_332, 0) = _340;
    int32_t _341 = _mul_stencil_s1_x_x * 2;
    int32_t _342 = _mul_stencil(_341, 0);
    int32_t _343 = _341 + 1;
    int8_t _344 = _hw_input_stencil(_343, 0);
    int32_t _345 = (int32_t)(_344);
    int32_t _346 = _p2_kernela0[1];
    int32_t _347 = _345 << _346;
    int8_t _348 = (int8_t)(_347);
    int32_t _349 = (int32_t)(_348);
    int32_t _350 = _342 + _349;
    _mul_stencil(_341, 0) = _350;
    int32_t _351 = _mul_stencil_s1_x_x * 2;
    int32_t _352 = _mul_stencil(_351, 0);
    int32_t _353 = _351 + 2;
    int8_t _354 = _hw_input_stencil(_353, 0);
    int32_t _355 = (int32_t)(_354);
    int32_t _356 = _p2_kernela0[2];
    int32_t _357 = _355 << _356;
    int8_t _358 = (int8_t)(_357);
    int32_t _359 = (int32_t)(_358);
    int32_t _360 = _352 + _359;
    _mul_stencil(_351, 0) = _360;
    int32_t _361 = _mul_stencil_s1_x_x * 2;
    int32_t _362 = _mul_stencil(_361, 0);
    int8_t _363 = _hw_input_stencil(_361, 1);
    int32_t _364 = (int32_t)(_363);
    int32_t _365 = _p2_kernela0[3];
    int32_t _366 = _364 << _365;
    int8_t _367 = (int8_t)(_366);
    int32_t _368 = (int32_t)(_367);
    int32_t _369 = _362 + _368;
    _mul_stencil(_361, 0) = _369;
    int32_t _370 = _mul_stencil_s1_x_x * 2;
    int32_t _371 = _mul_stencil(_370, 0);
    int32_t _372 = _370 + 1;
    int8_t _373 = _hw_input_stencil(_372, 1);
    int32_t _374 = (int32_t)(_373);
    int32_t _375 = _p2_kernela0[4];
    int32_t _376 = _374 << _375;
    int8_t _377 = (int8_t)(_376);
    int32_t _378 = (int32_t)(_377);
    int32_t _379 = _371 + _378;
    _mul_stencil(_370, 0) = _379;
    int32_t _380 = _mul_stencil_s1_x_x * 2;
    int32_t _381 = _mul_stencil(_380, 0);
    int32_t _382 = _380 + 2;
    int8_t _383 = _hw_input_stencil(_382, 1);
    int32_t _384 = (int32_t)(_383);
    int32_t _385 = _p2_kernela0[5];
    int32_t _386 = _384 << _385;
    int8_t _387 = (int8_t)(_386);
    int32_t _388 = (int32_t)(_387);
    int32_t _389 = _381 + _388;
    _mul_stencil(_380, 0) = _389;
    int32_t _390 = _mul_stencil_s1_x_x * 2;
    int32_t _391 = _mul_stencil(_390, 0);
    int8_t _392 = _hw_input_stencil(_390, 2);
    int32_t _393 = (int32_t)(_392);
    int32_t _394 = _p2_kernela0[6];
    int32_t _395 = _393 << _394;
    int8_t _396 = (int8_t)(_395);
    int32_t _397 = (int32_t)(_396);
    int32_t _398 = _391 + _397;
    _mul_stencil(_390, 0) = _398;
    int32_t _399 = _mul_stencil_s1_x_x * 2;
    int32_t _400 = _mul_stencil(_399, 0);
    int32_t _401 = _399 + 1;
    int8_t _402 = _hw_input_stencil(_401, 2);
    int32_t _403 = (int32_t)(_402);
    int32_t _404 = _p2_kernela0[7];
    int32_t _405 = _403 << _404;
    int8_t _406 = (int8_t)(_405);
    int32_t _407 = (int32_t)(_406);
    int32_t _408 = _400 + _407;
    _mul_stencil(_399, 0) = _408;
    int32_t _409 = _mul_stencil_s1_x_x * 2;
    int32_t _410 = _mul_stencil(_409, 0);
    int32_t _411 = _409 + 2;
    int8_t _412 = _hw_input_stencil(_411, 2);
    int32_t _413 = (int32_t)(_412);
    int32_t _414 = _p2_kernela0[8];
    int32_t _415 = _413 << _414;
    int8_t _416 = (int8_t)(_415);
    int32_t _417 = (int32_t)(_416);
    int32_t _418 = _410 + _417;
    _mul_stencil(_409, 0) = _418;
    int32_t _419 = _mul_stencil_s1_x_x * 2;
    int32_t _420 = _419 + 1;
    int32_t _421 = _mul_stencil(_420, 0);
    int8_t _422 = _hw_input_stencil(_420, 0);
    int32_t _423 = (int32_t)(_422);
    int32_t _424 = _p2_kernela0[0];
    int32_t _425 = _423 << _424;
    int8_t _426 = (int8_t)(_425);
    int32_t _427 = (int32_t)(_426);
    int32_t _428 = _421 + _427;
    _mul_stencil(_420, 0) = _428;
    int32_t _429 = _mul_stencil_s1_x_x * 2;
    int32_t _430 = _429 + 1;
    int32_t _431 = _mul_stencil(_430, 0);
    int32_t _432 = _429 + 2;
    int8_t _433 = _hw_input_stencil(_432, 0);
    int32_t _434 = (int32_t)(_433);
    int32_t _435 = _p2_kernela0[1];
    int32_t _436 = _434 << _435;
    int8_t _437 = (int8_t)(_436);
    int32_t _438 = (int32_t)(_437);
    int32_t _439 = _431 + _438;
    _mul_stencil(_430, 0) = _439;
    int32_t _440 = _mul_stencil_s1_x_x * 2;
    int32_t _441 = _440 + 1;
    int32_t _442 = _mul_stencil(_441, 0);
    int32_t _443 = _440 + 3;
    int8_t _444 = _hw_input_stencil(_443, 0);
    int32_t _445 = (int32_t)(_444);
    int32_t _446 = _p2_kernela0[2];
    int32_t _447 = _445 << _446;
    int8_t _448 = (int8_t)(_447);
    int32_t _449 = (int32_t)(_448);
    int32_t _450 = _442 + _449;
    _mul_stencil(_441, 0) = _450;
    int32_t _451 = _mul_stencil_s1_x_x * 2;
    int32_t _452 = _451 + 1;
    int32_t _453 = _mul_stencil(_452, 0);
    int8_t _454 = _hw_input_stencil(_452, 1);
    int32_t _455 = (int32_t)(_454);
    int32_t _456 = _p2_kernela0[3];
    int32_t _457 = _455 << _456;
    int8_t _458 = (int8_t)(_457);
    int32_t _459 = (int32_t)(_458);
    int32_t _460 = _453 + _459;
    _mul_stencil(_452, 0) = _460;
    int32_t _461 = _mul_stencil_s1_x_x * 2;
    int32_t _462 = _461 + 1;
    int32_t _463 = _mul_stencil(_462, 0);
    int32_t _464 = _461 + 2;
    int8_t _465 = _hw_input_stencil(_464, 1);
    int32_t _466 = (int32_t)(_465);
    int32_t _467 = _p2_kernela0[4];
    int32_t _468 = _466 << _467;
    int8_t _469 = (int8_t)(_468);
    int32_t _470 = (int32_t)(_469);
    int32_t _471 = _463 + _470;
    _mul_stencil(_462, 0) = _471;
    int32_t _472 = _mul_stencil_s1_x_x * 2;
    int32_t _473 = _472 + 1;
    int32_t _474 = _mul_stencil(_473, 0);
    int32_t _475 = _472 + 3;
    int8_t _476 = _hw_input_stencil(_475, 1);
    int32_t _477 = (int32_t)(_476);
    int32_t _478 = _p2_kernela0[5];
    int32_t _479 = _477 << _478;
    int8_t _480 = (int8_t)(_479);
    int32_t _481 = (int32_t)(_480);
    int32_t _482 = _474 + _481;
    _mul_stencil(_473, 0) = _482;
    int32_t _483 = _mul_stencil_s1_x_x * 2;
    int32_t _484 = _483 + 1;
    int32_t _485 = _mul_stencil(_484, 0);
    int8_t _486 = _hw_input_stencil(_484, 2);
    int32_t _487 = (int32_t)(_486);
    int32_t _488 = _p2_kernela0[6];
    int32_t _489 = _487 << _488;
    int8_t _490 = (int8_t)(_489);
    int32_t _491 = (int32_t)(_490);
    int32_t _492 = _485 + _491;
    _mul_stencil(_484, 0) = _492;
    int32_t _493 = _mul_stencil_s1_x_x * 2;
    int32_t _494 = _493 + 1;
    int32_t _495 = _mul_stencil(_494, 0);
    int32_t _496 = _493 + 2;
    int8_t _497 = _hw_input_stencil(_496, 2);
    int32_t _498 = (int32_t)(_497);
    int32_t _499 = _p2_kernela0[7];
    int32_t _500 = _498 << _499;
    int8_t _501 = (int8_t)(_500);
    int32_t _502 = (int32_t)(_501);
    int32_t _503 = _495 + _502;
    _mul_stencil(_494, 0) = _503;
    int32_t _504 = _mul_stencil_s1_x_x * 2;
    int32_t _505 = _504 + 1;
    int32_t _506 = _mul_stencil(_505, 0);
    int32_t _507 = _504 + 3;
    int8_t _508 = _hw_input_stencil(_507, 2);
    int32_t _509 = (int32_t)(_508);
    int32_t _510 = _p2_kernela0[8];
    int32_t _511 = _509 << _510;
    int8_t _512 = (int8_t)(_511);
    int32_t _513 = (int32_t)(_512);
    int32_t _514 = _506 + _513;
    _mul_stencil(_505, 0) = _514;
   } // for _mul_stencil_s1_x_x
   for (int _mul_stencil_s1_x_x = 0; _mul_stencil_s1_x_x < 0 + 2; _mul_stencil_s1_x_x++)
   {
#pragma HLS PIPELINE II=1
    int32_t _515 = _mul_stencil_s1_x_x * 2;
    int32_t _516 = _mul_stencil(_515, 1);
    int8_t _517 = _hw_input_stencil(_515, 1);
    int32_t _518 = (int32_t)(_517);
    int32_t _519 = _p2_kernela0[0];
    int32_t _520 = _518 << _519;
    int8_t _521 = (int8_t)(_520);
    int32_t _522 = (int32_t)(_521);
    int32_t _523 = _516 + _522;
    _mul_stencil(_515, 1) = _523;
    int32_t _524 = _mul_stencil_s1_x_x * 2;
    int32_t _525 = _mul_stencil(_524, 1);
    int32_t _526 = _524 + 1;
    int8_t _527 = _hw_input_stencil(_526, 1);
    int32_t _528 = (int32_t)(_527);
    int32_t _529 = _p2_kernela0[1];
    int32_t _530 = _528 << _529;
    int8_t _531 = (int8_t)(_530);
    int32_t _532 = (int32_t)(_531);
    int32_t _533 = _525 + _532;
    _mul_stencil(_524, 1) = _533;
    int32_t _534 = _mul_stencil_s1_x_x * 2;
    int32_t _535 = _mul_stencil(_534, 1);
    int32_t _536 = _534 + 2;
    int8_t _537 = _hw_input_stencil(_536, 1);
    int32_t _538 = (int32_t)(_537);
    int32_t _539 = _p2_kernela0[2];
    int32_t _540 = _538 << _539;
    int8_t _541 = (int8_t)(_540);
    int32_t _542 = (int32_t)(_541);
    int32_t _543 = _535 + _542;
    _mul_stencil(_534, 1) = _543;
    int32_t _544 = _mul_stencil_s1_x_x * 2;
    int32_t _545 = _mul_stencil(_544, 1);
    int8_t _546 = _hw_input_stencil(_544, 2);
    int32_t _547 = (int32_t)(_546);
    int32_t _548 = _p2_kernela0[3];
    int32_t _549 = _547 << _548;
    int8_t _550 = (int8_t)(_549);
    int32_t _551 = (int32_t)(_550);
    int32_t _552 = _545 + _551;
    _mul_stencil(_544, 1) = _552;
    int32_t _553 = _mul_stencil_s1_x_x * 2;
    int32_t _554 = _mul_stencil(_553, 1);
    int32_t _555 = _553 + 1;
    int8_t _556 = _hw_input_stencil(_555, 2);
    int32_t _557 = (int32_t)(_556);
    int32_t _558 = _p2_kernela0[4];
    int32_t _559 = _557 << _558;
    int8_t _560 = (int8_t)(_559);
    int32_t _561 = (int32_t)(_560);
    int32_t _562 = _554 + _561;
    _mul_stencil(_553, 1) = _562;
    int32_t _563 = _mul_stencil_s1_x_x * 2;
    int32_t _564 = _mul_stencil(_563, 1);
    int32_t _565 = _563 + 2;
    int8_t _566 = _hw_input_stencil(_565, 2);
    int32_t _567 = (int32_t)(_566);
    int32_t _568 = _p2_kernela0[5];
    int32_t _569 = _567 << _568;
    int8_t _570 = (int8_t)(_569);
    int32_t _571 = (int32_t)(_570);
    int32_t _572 = _564 + _571;
    _mul_stencil(_563, 1) = _572;
    int32_t _573 = _mul_stencil_s1_x_x * 2;
    int32_t _574 = _mul_stencil(_573, 1);
    int8_t _575 = _hw_input_stencil(_573, 3);
    int32_t _576 = (int32_t)(_575);
    int32_t _577 = _p2_kernela0[6];
    int32_t _578 = _576 << _577;
    int8_t _579 = (int8_t)(_578);
    int32_t _580 = (int32_t)(_579);
    int32_t _581 = _574 + _580;
    _mul_stencil(_573, 1) = _581;
    int32_t _582 = _mul_stencil_s1_x_x * 2;
    int32_t _583 = _mul_stencil(_582, 1);
    int32_t _584 = _582 + 1;
    int8_t _585 = _hw_input_stencil(_584, 3);
    int32_t _586 = (int32_t)(_585);
    int32_t _587 = _p2_kernela0[7];
    int32_t _588 = _586 << _587;
    int8_t _589 = (int8_t)(_588);
    int32_t _590 = (int32_t)(_589);
    int32_t _591 = _583 + _590;
    _mul_stencil(_582, 1) = _591;
    int32_t _592 = _mul_stencil_s1_x_x * 2;
    int32_t _593 = _mul_stencil(_592, 1);
    int32_t _594 = _592 + 2;
    int8_t _595 = _hw_input_stencil(_594, 3);
    int32_t _596 = (int32_t)(_595);
    int32_t _597 = _p2_kernela0[8];
    int32_t _598 = _596 << _597;
    int8_t _599 = (int8_t)(_598);
    int32_t _600 = (int32_t)(_599);
    int32_t _601 = _593 + _600;
    _mul_stencil(_592, 1) = _601;
    int32_t _602 = _mul_stencil_s1_x_x * 2;
    int32_t _603 = _602 + 1;
    int32_t _604 = _mul_stencil(_603, 1);
    int8_t _605 = _hw_input_stencil(_603, 1);
    int32_t _606 = (int32_t)(_605);
    int32_t _607 = _p2_kernela0[0];
    int32_t _608 = _606 << _607;
    int8_t _609 = (int8_t)(_608);
    int32_t _610 = (int32_t)(_609);
    int32_t _611 = _604 + _610;
    _mul_stencil(_603, 1) = _611;
    int32_t _612 = _mul_stencil_s1_x_x * 2;
    int32_t _613 = _612 + 1;
    int32_t _614 = _mul_stencil(_613, 1);
    int32_t _615 = _612 + 2;
    int8_t _616 = _hw_input_stencil(_615, 1);
    int32_t _617 = (int32_t)(_616);
    int32_t _618 = _p2_kernela0[1];
    int32_t _619 = _617 << _618;
    int8_t _620 = (int8_t)(_619);
    int32_t _621 = (int32_t)(_620);
    int32_t _622 = _614 + _621;
    _mul_stencil(_613, 1) = _622;
    int32_t _623 = _mul_stencil_s1_x_x * 2;
    int32_t _624 = _623 + 1;
    int32_t _625 = _mul_stencil(_624, 1);
    int32_t _626 = _623 + 3;
    int8_t _627 = _hw_input_stencil(_626, 1);
    int32_t _628 = (int32_t)(_627);
    int32_t _629 = _p2_kernela0[2];
    int32_t _630 = _628 << _629;
    int8_t _631 = (int8_t)(_630);
    int32_t _632 = (int32_t)(_631);
    int32_t _633 = _625 + _632;
    _mul_stencil(_624, 1) = _633;
    int32_t _634 = _mul_stencil_s1_x_x * 2;
    int32_t _635 = _634 + 1;
    int32_t _636 = _mul_stencil(_635, 1);
    int8_t _637 = _hw_input_stencil(_635, 2);
    int32_t _638 = (int32_t)(_637);
    int32_t _639 = _p2_kernela0[3];
    int32_t _640 = _638 << _639;
    int8_t _641 = (int8_t)(_640);
    int32_t _642 = (int32_t)(_641);
    int32_t _643 = _636 + _642;
    _mul_stencil(_635, 1) = _643;
    int32_t _644 = _mul_stencil_s1_x_x * 2;
    int32_t _645 = _644 + 1;
    int32_t _646 = _mul_stencil(_645, 1);
    int32_t _647 = _644 + 2;
    int8_t _648 = _hw_input_stencil(_647, 2);
    int32_t _649 = (int32_t)(_648);
    int32_t _650 = _p2_kernela0[4];
    int32_t _651 = _649 << _650;
    int8_t _652 = (int8_t)(_651);
    int32_t _653 = (int32_t)(_652);
    int32_t _654 = _646 + _653;
    _mul_stencil(_645, 1) = _654;
    int32_t _655 = _mul_stencil_s1_x_x * 2;
    int32_t _656 = _655 + 1;
    int32_t _657 = _mul_stencil(_656, 1);
    int32_t _658 = _655 + 3;
    int8_t _659 = _hw_input_stencil(_658, 2);
    int32_t _660 = (int32_t)(_659);
    int32_t _661 = _p2_kernela0[5];
    int32_t _662 = _660 << _661;
    int8_t _663 = (int8_t)(_662);
    int32_t _664 = (int32_t)(_663);
    int32_t _665 = _657 + _664;
    _mul_stencil(_656, 1) = _665;
    int32_t _666 = _mul_stencil_s1_x_x * 2;
    int32_t _667 = _666 + 1;
    int32_t _668 = _mul_stencil(_667, 1);
    int8_t _669 = _hw_input_stencil(_667, 3);
    int32_t _670 = (int32_t)(_669);
    int32_t _671 = _p2_kernela0[6];
    int32_t _672 = _670 << _671;
    int8_t _673 = (int8_t)(_672);
    int32_t _674 = (int32_t)(_673);
    int32_t _675 = _668 + _674;
    _mul_stencil(_667, 1) = _675;
    int32_t _676 = _mul_stencil_s1_x_x * 2;
    int32_t _677 = _676 + 1;
    int32_t _678 = _mul_stencil(_677, 1);
    int32_t _679 = _676 + 2;
    int8_t _680 = _hw_input_stencil(_679, 3);
    int32_t _681 = (int32_t)(_680);
    int32_t _682 = _p2_kernela0[7];
    int32_t _683 = _681 << _682;
    int8_t _684 = (int8_t)(_683);
    int32_t _685 = (int32_t)(_684);
    int32_t _686 = _678 + _685;
    _mul_stencil(_677, 1) = _686;
    int32_t _687 = _mul_stencil_s1_x_x * 2;
    int32_t _688 = _687 + 1;
    int32_t _689 = _mul_stencil(_688, 1);
    int32_t _690 = _687 + 3;
    int8_t _691 = _hw_input_stencil(_690, 3);
    int32_t _692 = (int32_t)(_691);
    int32_t _693 = _p2_kernela0[8];
    int32_t _694 = _692 << _693;
    int8_t _695 = (int8_t)(_694);
    int32_t _696 = (int32_t)(_695);
    int32_t _697 = _689 + _696;
    _mul_stencil(_688, 1) = _697;
   } // for _mul_stencil_s1_x_x
   _mul_stencil_stream.write(_mul_stencil);
   (void)0;
  } // for _mul_x___scan_dim_0
 } // for _mul_y___scan_dim_1
 // consume mul.stencil.stream
 // dispatch_stream(_mul_stencil_stream, 2, 2, 2, 2, 1, 1, 2, 1, "hw_output", 0, 0, 2, 0, 2);
 hls::stream<PackedStencil<int32_t, 2, 1> > &_mul_stencil_stream_to_hw_output = _mul_stencil_stream;
 (void)0;
 // produce hw_output.stencil.stream
 for (int _hw_output_y___scan_dim_1 = 0; _hw_output_y___scan_dim_1 < 0 + 2; _hw_output_y___scan_dim_1++)
 {
  for (int _hw_output_x___scan_dim_0 = 0; _hw_output_x___scan_dim_0 < 0 + 1; _hw_output_x___scan_dim_0++)
  {
#pragma HLS PIPELINE II=1
   Stencil<int32_t, 2, 1> _mul_stencil;
#pragma HLS ARRAY_PARTITION variable=_mul_stencil.value complete dim=0

   _mul_stencil = _mul_stencil_stream_to_hw_output.read();
   (void)0;
   Stencil<int8_t, 4, 3> _hw_input_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_input_stencil.value complete dim=0

   _hw_input_stencil = _hw_input_stencil_stream_to_hw_output.read();
   (void)0;
   Stencil<int8_t, 2, 1> _hw_output_stencil;
#pragma HLS ARRAY_PARTITION variable=_hw_output_stencil.value complete dim=0

   int8_t _698 = _hw_input_stencil(1, 1);
   int32_t _699 = _mul_stencil(0, 0);
   int32_t _700 = _699 >> 4;
   int8_t _701 = (int8_t)(_700);
   int8_t _702 = _698 - _701;
   int8_t _703 = _hw_input_stencil(2, 2);
   int8_t _704 = (int8_t)(0);
   uint8_t _705 = (uint8_t)(15);
   int8_t _706 = _704 - _702;
   bool _707 = _702 > _704;
   int8_t _708 = (int8_t)(_707 ? _702 : _706);
   uint8_t _709 = (uint8_t)(_708);
   uint8_t _710 = _709;
   bool _711 = _705 < _710;
   int8_t _712 = (int8_t)(_711 ? _702 : _704);
   int8_t _713 = _712 >> 2;
   int8_t _714 = _703 + _713;
   _hw_output_stencil(0, 0) = _714;
   int8_t _715 = _hw_input_stencil(2, 1);
   int32_t _716 = _mul_stencil(1, 0);
   int32_t _717 = _716 >> 4;
   int8_t _718 = (int8_t)(_717);
   int8_t _719 = _715 - _718;
   int8_t _720 = _hw_input_stencil(3, 2);
   int8_t _721 = (int8_t)(0);
   uint8_t _722 = (uint8_t)(15);
   int8_t _723 = _721 - _719;
   bool _724 = _719 > _721;
   int8_t _725 = (int8_t)(_724 ? _719 : _723);
   uint8_t _726 = (uint8_t)(_725);
   uint8_t _727 = _726;
   bool _728 = _722 < _727;
   int8_t _729 = (int8_t)(_728 ? _719 : _721);
   int8_t _730 = _729 >> 2;
   int8_t _731 = _720 + _730;
   _hw_output_stencil(1, 0) = _731;
   AxiPackedStencil<int8_t, 2, 1> _hw_output_stencil_packed = _hw_output_stencil;
   if (_hw_output_x___scan_dim_0 == 0 && _hw_output_y___scan_dim_1 == 1) {
    _hw_output_stencil_packed.last = 1;
   } else {
    _hw_output_stencil_packed.last = 0;
   }
   _hw_output_stencil_stream.write(_hw_output_stencil_packed);
   (void)0;
  } // for _hw_output_x___scan_dim_0
 } // for _hw_output_y___scan_dim_1
} // kernel hls_target_hls_target


