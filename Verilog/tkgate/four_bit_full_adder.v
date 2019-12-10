//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "four_bit_full_adder.v"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg A0;    //: /sn:0 {0}(203,203)(247,203)(247,203)(254,203){1}
reg C0;    //: /sn:0 {0}(203,347)(247,347)(247,331)(254,331){1}
reg A3;    //: /sn:0 {0}(2,203)(19,203)(19,251)(254,251){1}
reg A2;    //: /sn:0 {0}(69,203)(85,203)(85,235)(254,235){1}
reg B2;    //: /sn:0 {0}(68,281)(85,281)(85,307)(238,307)(238,299)(254,299){1}
reg B1;    //: /sn:0 {0}(136,281)(152,281)(152,299)(228,299)(228,283)(254,283){1}
reg A1;    //: /sn:0 {0}(136,203)(153,203)(153,219)(254,219){1}
reg B3;    //: /sn:0 {0}(2,281)(18,281)(18,315)(254,315){1}
reg B0;    //: /sn:0 {0}(203,281)(218,281)(218,267)(254,267){1}
wire w0;    //: /sn:0 {0}(559,135)(464,135)(464,202)(455,202){1}
//: {2}(453,200)(453,187){3}
//: {4}(453,204)(453,267)(409,267){5}
wire w12;    //: /sn:0 {0}(409,203)(419,203)(419,203)(422,203){1}
//: {2}(426,203)(437,203)(437,125)(559,125){3}
//: {4}(424,201)(424,187){5}
wire w10;    //: /sn:0 {0}(409,235)(503,235)(503,202){1}
//: {2}(505,200)(516,200)(516,155)(559,155){3}
//: {4}(503,198)(503,187){5}
wire [4:0] w1;    //: /sn:0 {0}(#:565,145)(586,145)(586,102){1}
wire w11;    //: /sn:0 {0}(409,219)(529,219)(529,201){1}
//: {2}(531,199)(543,199)(543,165)(559,165){3}
//: {4}(529,197)(529,192)(529,192)(529,187){5}
wire w9;    //: /sn:0 {0}(559,145)(490,145)(490,201)(480,201){1}
//: {2}(478,199)(478,187){3}
//: {4}(478,203)(478,251)(409,251){5}
//: enddecls

  //: LED g4 (w9) @(478,180) /sn:0 /w:[ 3 ] /type:0
  //: SWITCH A0 (A0) @(186,203) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: LED g3 (w10) @(503,180) /sn:0 /w:[ 5 ] /type:0
  //: LED g2 (w11) @(529,180) /sn:0 /w:[ 5 ] /type:0
  //: SWITCH C0 (C0) @(186,347) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: LED g1 (w12) @(424,180) /sn:0 /w:[ 5 ] /type:0
  //: SWITCH A3 (A3) @(-15,203) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: joint g10 (w0) @(453, 202) /w:[ 1 2 -1 4 ]
  //: SWITCH A2 (A2) @(52,203) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: LED g6 (w1) @(586,95) /sn:0 /w:[ 1 ] /type:3
  //: SWITCH B2 (B2) @(51,281) /sn:0 /w:[ 0 ] /st:0 /dn:1
  assign w1 = {w12, w0, w9, w10, w11}; //: CONCAT g9  @(564,145) /sn:0 /w:[ 0 3 0 0 3 3 ] /dr:0 /tp:0 /drp:1
  //: joint g7 (w12) @(424, 203) /w:[ 2 4 1 -1 ]
  //: SWITCH B1 (B1) @(119,281) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: joint g12 (w10) @(503, 200) /w:[ 2 4 -1 1 ]
  //: joint g11 (w9) @(478, 201) /w:[ 1 2 -1 4 ]
  //: LED g5 (w0) @(453,180) /sn:0 /w:[ 3 ] /type:0
  //: SWITCH A1 (A1) @(119,203) /sn:0 /w:[ 0 ] /st:0 /dn:1
  four_bit_full_adder g0 (.A0(A0), .A1(A1), .A2(A2), .A3(A3), .B0(B0), .B1(B1), .B2(B2), .B3(B3), .C0(C0), .C4(w12), .S0(w11), .S1(w10), .S2(w9), .S3(w0));   //: @(255, 187) /sz:(153, 160) /sn:0 /p:[ Li0>1 Li1>1 Li2>1 Li3>1 Li4>1 Li5>1 Li6>1 Li7>1 Li8>1 Ro0<0 Ro1<0 Ro2<0 Ro3<5 Ro4<5 ]
  //: SWITCH B3 (B3) @(-15,281) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: SWITCH B0 (B0) @(186,281) /sn:0 /w:[ 0 ] /st:0 /dn:1
  //: joint g13 (w11) @(529, 199) /w:[ 2 4 -1 1 ]

endmodule
//: /netlistEnd

//: /hdlBegin half_adder
//: interface  /sz:(87, 48) /bd:[ Li0>A(16/48) Li1>B(32/48) Ro0<C(16/48) Ro1<S(32/48) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module half_adder(A, B, C, S);
  input A, B;
  output C, S;
  and ha_and(C, A, B);
  xor ha_xor(S, A, B);
endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin four_bit_full_adder
//: interface  /sz:(153, 160) /bd:[ Li0>C0(144/160) Li1>B3(128/160) Li2>B2(112/160) Li3>B1(96/160) Li4>B0(80/160) Li5>A3(64/160) Li6>A2(48/160) Li7>A1(32/160) Li8>A0(16/160) Ro0<S3(80/160) Ro1<S2(64/160) Ro2<S1(48/160) Ro3<S0(32/160) Ro4<C4(16/160) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module four_bit_full_adder(C0, A0, B0, S0, A1, B1, S1, A2, B2, S2, A3, B3, S3, C4);
  input C0, A0, B0, A1, B1, A2, B2, A3, B3;
  output S0, S1, S2, S3, C4;
  wire w0, w1, w2;
  full_adder fa0(.A(A0), .B(B0), .Cin(C0), .Cout(w0), .S(S0));
  full_adder fa1(.A(A1), .B(B1), .Cin(w0), .Cout(w1), .S(S1));
  full_adder fa2(.A(A2), .B(B2), .Cin(w1), .Cout(w2), .S(S2));
  full_adder fa3(.A(A3), .B(B3), .Cin(w2), .Cout(C4), .S(S3));
endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin full_adder
//: interface  /sz:(123, 64) /bd:[ Li0>Cin(48/64) Li1>B(32/64) Li2>A(16/64) Ro0<S(32/64) Ro1<Cout(16/64) ] /pd: 0 /pi: 0 /pe: 1 /pp: 1
//: enddecls
module full_adder(A, B, Cin, Cout, S);
  input A, B, Cin;
  output Cout, S;
  wire w0, w1, w2;
  half_adder ha0(.A(A), .B(B), .C(w0), .S(w1));
  half_adder ha1(.A(w1), .B(Cin), .C(w2), .S(S));
  or fa_or(Cout, w0, w2);
endmodule
//: /hdlEnd


`timescale 1ns/1ns

