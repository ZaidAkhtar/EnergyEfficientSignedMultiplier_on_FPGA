`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module Alut(
input a1,
input a0,
input b0,
input b1,
input b2,
input cin,
output s,
output c
    );
    
    wire pout;
    
    LUT5 #(
      .INIT(32'h0335ACC0)  // Specify LUT Contents
   ) LUT5_inst (
      .O(pout),   // LUT general output
      .I0(a0), // LUT input
      .I1(a1), // LUT input
      .I2(b0), // LUT input
      .I3(b1), // LUT input
      .I4(b2)  // LUT input
   );
   
   assign c = pout&cin;
   assign s = pout^cin;
    
endmodule
