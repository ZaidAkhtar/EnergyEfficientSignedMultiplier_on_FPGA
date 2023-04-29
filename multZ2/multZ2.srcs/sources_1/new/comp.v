`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module comp(
input [15:0] pp1,
input [15:0] pp2,
input [15:0] pp3,
input [15:0] pp4,
output [15:0] prod
);

    wire [15:0] sum1, sum2;
    wire [15:0] ctemp;
    
    comp_unit DUT1(pp1[0],pp2[0],pp3[0],pp4[0],1'b0,sum2[0],sum1[0],ctemp[0]);
    comp_unit DUT2(pp1[1],pp2[1],pp3[1],pp4[1],ctemp[0],sum2[1],sum1[1],ctemp[1]);
    comp_unit DUT3(pp1[2],pp2[2],pp3[2],pp4[2],ctemp[1],sum2[2],sum1[2],ctemp[2]);
    comp_unit DUT4(pp1[3],pp2[3],pp3[3],pp4[3],ctemp[2],sum2[3],sum1[3],ctemp[3]);
    comp_unit DUT5(pp1[4],pp2[4],pp3[4],pp4[4],ctemp[3],sum2[4],sum1[4],ctemp[4]);
    comp_unit DUT6(pp1[5],pp2[5],pp3[5],pp4[5],ctemp[4],sum2[5],sum1[5],ctemp[5]);
    comp_unit DUT7(pp1[6],pp2[6],pp3[6],pp4[6],ctemp[5],sum2[6],sum1[6],ctemp[6]);
    comp_unit DUT8(pp1[7],pp2[7],pp3[7],pp4[7],ctemp[6],sum2[7],sum1[7],ctemp[7]);
    comp_unit DUT9(pp1[8],pp2[8],pp3[8],pp4[8],ctemp[7],sum2[8],sum1[8],ctemp[8]);
    comp_unit DUT10(pp1[9],pp2[9],pp3[9],pp4[9],ctemp[8],sum2[9],sum1[9],ctemp[9]);
    comp_unit DUT11(pp1[10],pp2[10],pp3[10],pp4[10],ctemp[9],sum2[10],sum1[10],ctemp[10]);
    comp_unit DUT12(pp1[11],pp2[11],pp3[11],pp4[11],ctemp[10],sum2[11],sum1[11],ctemp[11]);
    comp_unit DUT13(pp1[12],pp2[12],pp3[12],pp4[12],ctemp[11],sum2[12],sum1[12],ctemp[12]);
    comp_unit DUT14(pp1[13],pp2[13],pp3[13],pp4[13],ctemp[12],sum2[13],sum1[13],ctemp[13]);
    comp_unit DUT15(pp1[14],pp2[14],pp3[14],pp4[14],ctemp[13],sum2[14],sum1[14],ctemp[14]);
    comp_unit DUT16(pp1[15],pp2[15],pp3[15],pp4[15],ctemp[14],sum2[15],sum1[15],ctemp[15]);
    
     
    assign prod = sum1+(sum2<<1);
    
endmodule
