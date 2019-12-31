//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "en"
//: property prefix = "_GG"
//: property title = "traffic_light.v"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin traffic_light
module traffic_light;    //: root_module
//: property prot_data=1
//: property prot_intf=1
//: property pptype=0
reg w5;    //: /sn:0 {0}(347,218)(333,218)(333,230)(318,230){1}
wire w4;    //: /sn:0 {0}(568,180)(581,180)(581,168){1}
wire w3;    //: /sn:0 {0}(568,204)(605,204)(605,168){1}
wire w1;    //: /sn:0 {0}(252,186)(347,186){1}
wire w2;    //: /sn:0 {0}(629,168)(629,226)(568,226){1}
//: enddecls

  //: LED g4 (w4) @(581,161) /sn:0 /w:[ 1 ] /type:0
  //: LED g3 (w2) @(629,161) /sn:0 /w:[ 0 ] /type:0
  //: SWITCH g2 (w5) @(301,230) /sn:0 /w:[ 1 ] /st:0 /dn:0
  _GGCLOCK_P10000_0_50 g1 (.Z(w1));   //: @(239,186) /sn:0 /w:[ 0 ] /omega:10000 /phi:0 /duty:50
  //: LED g5 (w3) @(605,161) /sn:0 /w:[ 1 ] /type:0
  traffic_light_controller g0 (.clk(w1), .reset(w5), .R(w4), .Y(w3), .G(w2));   //: @(348, 170) /sz:(219, 72) /sn:0 /p:[ Li0>1 Li1>0 Ro0<0 Ro1<0 Ro2<1 ]

endmodule
//: /netlistEnd

//: /hdlBegin traffic_light_controller
//: interface  /sz:(219, 72) /bd:[ Li0>reset(48/72) Li1>clk(16/72) Ro0<G(56/72) Ro1<Y(34/72) Ro2<R(10/72) ] /pd: 1 /pi: 1 /pe: 1 /pp: 0
//: property prot_data=1
//: property prot_intf=1
//: property pptype=0
//: enddecls
module traffic_light_controller(clk, reset, R, Y, G);
  input clk, reset;
  output reg R, Y, G;

  reg [1:0] state, next_state;
  reg [15:0] remaining_time, next_remaining_time;
  
  parameter RED         = 0;
  parameter REDYELLOW   = 1;
  parameter GREEN       = 2;
  parameter GREENYELLOW = 3;
  
  parameter RED_TIME    = 20000;
  parameter GREEN_TIME  = 20000;
  parameter YELLOW_TIME = 5000;
  
  always @(posedge clk)
    begin
      if(reset == 0)
        begin
          state <= RED;
          remaining_time <= RED_TIME;
        end
      else
        begin
          state <= next_state;
          remaining_time <= next_remaining_time;
        end
    end
  
  always @(state or remaining_time)
    begin
      if(state == RED)
        begin
          R <= 1;
          Y <= 0;
          G <= 0;
          if(remaining_time == 0)
            begin
              next_state <= REDYELLOW;
              next_remaining_time <= YELLOW_TIME;
            end
          else
            begin
              next_state <= state;
              next_remaining_time = (remaining_time - 1);
            end
        end
      if(state == REDYELLOW)
        begin
          R <= 1;
          Y <= 1;
          G <= 0;
          if(remaining_time == 0)
            begin
              next_state <= GREEN;
              next_remaining_time <= GREEN_TIME;
            end
          else
            begin
              next_state <= state;
              next_remaining_time = (remaining_time - 1);
            end
        end
      if(state == GREEN)
        begin
          R <= 0;
          Y <= 0;
          G <= 1;
          if(remaining_time == 0)
            begin
              next_state <= GREENYELLOW;
              next_remaining_time <= YELLOW_TIME;
            end
          else
            begin
              next_state <= state;
              next_remaining_time = (remaining_time - 1);
            end
        end
      if(state == GREENYELLOW)
        begin
          R <= 0;
          Y <= 1;
          G <= 1;
          if(remaining_time == 0)
            begin
              next_state <= RED;
              next_remaining_time <= RED_TIME;
            end
          else
            begin
              next_state <= state;
              next_remaining_time = (remaining_time - 1);
            end
        end
    end
endmodule
//: /hdlEnd


`timescale 1ns/1ns

