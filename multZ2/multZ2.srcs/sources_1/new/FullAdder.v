`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module FullAdder(
input a,
input b,
input cin,
output reg s,
output reg cout
    );
    always @(*)
        {cout,s} = a+b+cin;
endmodule