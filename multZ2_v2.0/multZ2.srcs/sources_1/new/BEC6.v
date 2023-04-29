`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module BEC6(
input [5:0] bin,
output [5:0] exc
    );
    
    assign exc = bin + 1'b1;
    
endmodule
