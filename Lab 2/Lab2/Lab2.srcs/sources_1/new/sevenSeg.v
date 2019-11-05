`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 04:50:54 PM
// Design Name: 
// Module Name: sevenSeg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//Seven Segment Display
module sevenSeg(
    input S0,
    input S1,
    input S2,
    input S3,
 //outputs for seven segment display
    output CA,
    output CB,
    output CC,
    output CD,
    output CE,
    output CF,
    output CG
);

//output for A segment
assign CA = (!S3 & !S2 & !S1 & S0) + (!S3 & S2 & !S1 & !S0) + (S3 & !S2 & S1 & S0) + (S3 & S2 & !S1 & S0);
//output for B
assign CB = (!S3 & S2 & !S1 & S0) + (!S3 & S2 & S1 & !S0) + (S3 & !S2 & S1 & S0) + (S3 & S2 & !S1 & !S0) + (S3 & S2 & S1 & !S0) + (S3 & S2 & S1 & S0);
//output for C
assign CC = (!S3 & !S2 & S1 & !S0) + (S3 & S2 & !S1 & !S0) + (S3 & S2 & S1 & !S0) + (S3 & S2 & S1 & S0);
//output for D
assign CD = (!S3 & !S2 & !S1 & S0) + (!S3 & S2 & !S1 & !S0) + (!S3 & S2 & S1 & S0) + (S3 & !S2 & !S1 & S0) + (S3 & !S2 & S1 & !S0) + (S3 & S2 & S1 & S0);
//output for E
assign CE = (!S3 & !S2 & !S1 & S0) + (!S3 & !S2 & S1 & S0) + (!S3 & S2 & !S1 & !S0) + (!S3 & S2 & !S1 & S0) + (!S3 & S2 & S1 & S0) + (S3 & !S2 & !S1 & S0);
//output for F
assign CF = (!S3 & !S2 & !S1 & S0) + (!S3 & !S2 & S1 & !S0) + (!S3 & !S2 & S1 & S0) + (!S3 & S2 & S1 & S0) + (S3 & S2 & !S1 & S0);
//output for G 
assign CG = (!S3 & !S2 & !S1 & !S0) + (!S3 & !S2 & !S1 & S0) + (!S3 & S2 & S1 & S0) + (S3 & S2 & !S1 & !S0);

endmodule
