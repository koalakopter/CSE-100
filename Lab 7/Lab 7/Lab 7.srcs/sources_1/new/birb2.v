`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2019 02:56:05 PM
// Design Name: 
// Module Name: birb2
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


module birb2(
    input clock,
    input [10:0] Hpixel,
    input [10:0] Vpixel,
    
    input [10:0] birdposx,
    input [10:0] birdposy,
    
    output red
    );
    
    wire square;
    //assign square = (Hpixel >= 
    
    assign red = birdposx <= Hpixel & Hpixel <= birdposx + 15 & birdposy <= Vpixel & Vpixel <= birdposy +15;
endmodule
