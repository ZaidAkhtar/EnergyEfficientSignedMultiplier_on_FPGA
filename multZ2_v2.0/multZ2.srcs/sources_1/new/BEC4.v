`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module BEC4(
input [3:0] bin,
output [3:0] exc
    );
    
    assign exc = bin + 1'b1;
    
endmodule
