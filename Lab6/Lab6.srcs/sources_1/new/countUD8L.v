`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 04:52:23 PM
// Design Name: 
// Module Name: countUD8L
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


module countUD8L(
    input clock,
    input Up,
    input Dw,
    input LD,
    input [7:0] d,
   
    output [7:0] q,
    output utc,
    output dtc

    );
    
    //its half a 16-bit counter!
    wire utc0, dtc0;
    wire utc1, dtc1;
    countUD4L count0to3 (.Up(Up), .Dw(Dw), .LD(LD), .clock(clock), .d(d[3:0]), .q(q[3:0]), .utc(utc0), .dtc(dtc0));   
    countUD4L count4to7 (.Up(Up & utc0), .Dw(Dw & dtc0), .LD(LD), .clock(clock), .d(d[3:0]), .q(q[3:0]), .utc(utc0), .dtc(dtc0));   
    
    assign utc = utc0 & utc1;
    assign dtc = dtc0 & dtc1;
endmodule
