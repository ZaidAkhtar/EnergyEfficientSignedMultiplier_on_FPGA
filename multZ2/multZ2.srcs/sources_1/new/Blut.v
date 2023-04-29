`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module Blut(
input a,
input b0,
input b1,
input b2,
output [7:0]pout
    );
    wire ptemp;
    LUT4 #(
      .INIT(16'h15A8)  // Specify LUT Contents
   ) LUT4_inst (
      .O(ptemp),   // LUT general output
      .I0(a), // LUT input
      .I1(b0), // LUT input
      .I2(b1), // LUT input
      .I3(b2)  // LUT input
   );
   
   assign pout = {8{ptemp}};
    
endmodule
