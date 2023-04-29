`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module BEC3(
input [2:0] bin,
output [2:0] exc
    );
    
    assign exc = bin + 1'b1;
    
endmodule
