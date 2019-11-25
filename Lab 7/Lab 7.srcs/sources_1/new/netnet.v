`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2019 06:29:04 PM
// Design Name: 
// Module Name: netnet
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


module netnet(
    input clock,
    input [10:0] Hpixel,
    input [10:0] Vpixel,
    
    input [10:0] netposx,
    input [10:0] netposy,
    input [10:0] bigout,
    input [10:0] biggerout,
    //input [1:0] size,
    
    output blue,
    output green,
    
    output tagzone //determines the area in which a bird can be tagged
    );

   

   assign blue = (netposx + 11'd8 <= Hpixel & Hpixel <= (netposx + 11'd23 + bigout + biggerout)) &
             netposy <= Vpixel & (Vpixel <= (netposy + 11'd23 + bigout + biggerout));
             
   assign green = (netposx + 11'd8 <= Hpixel & Hpixel <= (netposx + 11'd23 + bigout + biggerout)) &
             netposy <= Vpixel & (Vpixel <= (netposy + 11'd23 + bigout + biggerout));
             
   assign tagzone = blue; //area of tagzone = blue area

endmodule
