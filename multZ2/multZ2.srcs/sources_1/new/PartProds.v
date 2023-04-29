`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module PartProds(
input [7:0]a,
input [7:0]b,
output [15:0] prod
    );
    
    wire [15:0]pp1; wire [15:0]pp2;
    wire [15:0]pp3; wire [15:0]pp4;
    
    row DUT1(a,{b[1],b[0],1'b0},pp1);
    row DUT2(a,b[3:1],pp2);
    row DUT3(a,b[5:3],pp3);
    row DUT4(a,b[7:5],pp4);
    
//    assign prod = pp1 + {pp2[13:0],2'b0} + {pp3[11:0],4'b0} + {pp4[9:0],6'b0};
    comp INT(pp1,{pp2[13:0],2'b0},{pp3[11:0],4'b0},{pp4[9:0],6'b0},prod);
    
endmodule
