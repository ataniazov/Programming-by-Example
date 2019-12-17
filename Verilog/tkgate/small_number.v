//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "small_number.v"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin small_number_finder
module small_number_finder;    //: root_module
//: property prot_data=1
//: property prot_intf=1
//: property pptype=0
reg [3:0] w4;    //: /sn:0 {0}(#:172,119)(201,119)(201,134)(216,134){1}
reg [3:0] w5;    //: /sn:0 {0}(#:172,166)(201,166)(201,150)(216,150){1}
wire w3;    //: /sn:0 {0}(459,119)(459,134)(443,134){1}
wire [6:0] w2;    //: /sn:0 {0}(#:443,150)(487,150)(487,135){1}
//: enddecls

  //: LED g4 (w2) @(487,128) /sn:0 /w:[ 1 ] /type:4
  //: LED g3 (w3) @(459,112) /sn:0 /w:[ 0 ] /type:0
  //: DIP g2 (w5) @(134,166) /sn:0 /R:1 /w:[ 0 ] /st:0 /dn:0
  //: DIP g1 (w4) @(134,119) /sn:0 /R:1 /w:[ 0 ] /st:0 /dn:0
  small_number_ss g0 (.n1(w4), .n2(w5), .equal(w3), .sn_ss_code(w2));   //: @(217, 118) /sz:(225, 48) /sn:0 /p:[ Li0>1 Li1>1 Ro0<1 Ro1<0 ]

endmodule
//: /netlistEnd

//: /hdlBegin small_number
//: interface  /sz:(147, 48) /bd:[ Li0>n1[3:0](16/48) Li1>n2[3:0](32/48) Ro0<equal(16/48) Ro1<sn[3:0](32/48) ] /pd: 1 /pi: 1 /pe: 1 /pp: 0
//: property prot_data=1
//: property prot_intf=1
//: property pptype=0
//: enddecls
module small_number(n1, n2, equal, sn);
  input [3:0] n1;
  input [3:0] n2;
  output reg equal;
  output reg [3:0] sn;
  always @(n1 or n2)
    begin
      if(n1 > n2)
        begin
          sn = n2;
          equal = 1'b0;
        end
      else if(n2 > n1)
        begin
          sn = n1;
          equal = 1'b0;
        end
      else
        begin
          sn = n1;
          equal = 1'b1;
        end
    end
endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin seven_segment_driver
//: interface  /sz:(207, 40) /bd:[ Li0>number[3:0](16/40) Ro0<code[6:0](16/40) ] /pd: 1 /pi: 1 /pe: 1 /pp: 0
//: property prot_data=1
//: property prot_intf=1
//: property pptype=0
//: enddecls
module seven_segment_driver(number, code);
  input [3:0] number;
  output reg [6:0] code; // Signals assigned within an always (or initial) block must be of type reg
  always @(number)
    begin
      case(number)
        4'd00:   code = 7'h77;
        4'd01:   code = 7'h24;
        4'd02:   code = 7'h5d;
        4'd03:   code = 7'h6d;
        4'd04:   code = 7'h2e;
        4'd05:   code = 7'h6b;
        4'd06:   code = 7'h7b;
        4'd07:   code = 7'h25;
        4'd08:   code = 7'h7f;
        4'd09:   code = 7'h6f;
        4'd10:   code = 7'h3f;
        4'd11:   code = 7'h7a;
        4'd12:   code = 7'h53;
        4'd13:   code = 7'h7c;
        4'd14:   code = 7'h5b;
        4'd15:   code = 7'h1b;
        default: code = 7'h00;
      endcase
    end
endmodule
//: /hdlEnd


`timescale 1ns/1ns

//: /hdlBegin small_number_ss
//: interface  /sz:(225, 48) /bd:[ Li0>n1[3:0](16/48) Li1>n2[3:0](32/48) Ro0<equal(16/48) Ro1<sn_ss_code[6:0](32/48) ] /pd: 1 /pi: 1 /pe: 1 /pp: 0
//: property prot_data=1
//: property prot_intf=1
//: property pptype=0
//: enddecls
module small_number_ss(n1, n2, equal, sn_ss_code);
  input [3:0] n1;
  input [3:0] n2;
  output equal;
  output [6:0] sn_ss_code;
  wire [3:0] sn;
  small_number sn_module(.n1(n1), .n2(n2), .equal(equal), .sn(sn));
  seven_segment_driver ss_driver(.number(sn), .code(sn_ss_code));
endmodule
//: /hdlEnd


`timescale 1ns/1ns

