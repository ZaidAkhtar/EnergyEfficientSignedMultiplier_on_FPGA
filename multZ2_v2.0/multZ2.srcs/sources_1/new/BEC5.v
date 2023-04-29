`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module BEC5(
input [4:0] bin,
output [4:0] exc
    );
    
    assign exc = bin + 1'b1;
    
endmodule
