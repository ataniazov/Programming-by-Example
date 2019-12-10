//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "bit_shifts.v"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin bitwise_operations
module bitwise_operations;    //: root_module
//: property prot_data=1
//: property prot_intf=1
//: property pptype=0
reg [47:0] w6;    //: /sn:0 {0}(699,107)(699,155)(#:699,155)(#:699,170){1}
reg [3:0] w3;    //: /sn:0 {0}(#:252,181)(236,181)(236,181)(213,181){1}
//: {2}(#:211,179)(211,132)(237,132){3}
//: {4}(211,183)(211,250)(237,250){5}
reg w1;    //: /sn:0 {0}(224,104)(224,234)(237,234){1}
reg [23:0] w2;    //: /sn:0 {0}(#:158,191)(158,203)(158,203)(158,216){1}
//: {2}(160,218)(237,218){3}
//: {4}(156,218)(106,218)(#:106,107){5}
wire [15:0] w4;    //: /sn:0 {0}(#:279,132)(309,132)(309,107){1}
wire [47:0] w5;    //: /sn:0 {0}(#:344,218)(479,218)(479,107){1}
//: enddecls

  //: DIP g4 (w3) @(290,181) /sn:0 /R:3 /anc:1 /w:[ 0 ] /st:0 /dn:0
  //: joint g8 (w3) @(211, 181) /anc:1 /w:[ 1 2 -1 4 ]
  bit_shift g3 (.A(w2), .mod(w1), .n(w3), .S(w5));   //: @(238, 202) /sz:(105, 64) /sn:0 /anc:1 /p:[ Li0>3 Li1>1 Li2>5 Ro0<0 ]
  //: DIP g2 (w2) @(158,181) /sn:0 /anc:1 /w:[ 0 ] /st:0 /dn:0
  //: SWITCH g1 (w1) @(224,91) /sn:0 /R:3 /anc:1 /w:[ 0 ] /st:0 /dn:0
  //: LED g10 (w6) @(699,100) /sn:0 /anc:1 /w:[ 0 ] /type:3
  //: LED g6 (w5) @(479,100) /sn:0 /anc:1 /w:[ 1 ] /type:3
  _2n g7 (.A(w3), .S(w4));   //: @(238, 116) /sz:(40, 40) /sn:0 /anc:1 /p:[ Li0>3 Ro0<0 ]
  //: LED g9 (w4) @(309,100) /sn:0 /anc:1 /w:[ 1 ] /type:3
  //: DIP g11 (w6) @(699,181) /sn:0 /R:2 /anc:1 /w:[ 1 ] /st:0 /dn:0
  //: joint g5 (w2) @(158, 218) /anc:1 /w:[ 2 1 4 -1 ]
  //: LED g0 (w2) @(106,100) /sn:0 /anc:1 /w:[ 5 ] /type:3

endmodule
//: /netlistEnd

//: /hdlBegin _2n
//: interface  /sz:(40, 40) /bd:[ Li0>A[3:0](16/40) Ro0<S[15:0](16/40) ] /pd: 1 /pi: 1 /pe: 1 /pp: 0
//: property prot_data=1
//: property prot_intf=1
//: property pptype=0
//: enddecls
module _2n(A, S);
  input [3:0] A;
  output [15:0] S;
  assign S = (1 << A);
endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin bit_shift
//: interface  /sz:(105, 64) /bd:[ Li0>n[3:0](48/64) Li1>mod(32/64) Li2>A[23:0](16/64) Ro0<S[47:0](16/64) ] /pd: 1 /pi: 1 /pe: 1 /pp: 0
//: property prot_data=1
//: property prot_intf=1
//: property pptype=0
//: enddecls
module bit_shift(A, mod, n, S);
  input [23:0] A;
  input [3:0] n;
  input mod;
  output [47:0] S;
  assign S = (mod == 1) ? (A >> n) : (A << n);
endmodule
//: /hdlEnd


`timescale 1ns/1ns
// Ata Niyazov 185112038
