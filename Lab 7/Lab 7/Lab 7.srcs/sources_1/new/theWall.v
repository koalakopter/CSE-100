`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2019 04:21:07 PM
// Design Name: 
// Module Name: theWall
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


module theWall(
    input clock,
    input [10:0] Hpixel,
    input [10:0] Vpixel,
    
    output green
    );
    
    wire top, bot, left, right;
    //top wall
    assign top = (Vpixel >= 10'd0) && (Vpixel <= 10'd7);
    //bot wall
    assign bot = (Vpixel >= 10'd472) && (Vpixel <= 10'd479);
    //left wall
    assign left = (Hpixel >= 10'd0) && (Hpixel <= 10'd7);
    //right wall
    assign right = (Hpixel >= 10'd632) && (Hpixel <= 10'd639);
    
    assign green = top | bot | left | right;
endmodule
