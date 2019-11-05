`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 10:17:46 PM
// Design Name: 
// Module Name: timeCounter
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


module timeCounter(
    input clock,
    input ce,
    input LD,
    input [7:0] d,
    
    output [7:0] q,
    output timeup

    );
    wire dtcOut;
    wire whoCares;
    wire [15:0] d_in;
    assign d_in = d;
    countUD16L timeCount (.clock(clock), .Up(1'b0), .Dw(~dtcOut & ce), .LD(LD), .d(d_in), .q(q), .utc(whoCares), .dtc(dtcOut));
    assign timeup = dtcOut;
endmodule
