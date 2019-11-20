`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2019 03:33:39 PM
// Design Name: 
// Module Name: toppo
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


module toppo(
    input clkin,
    input btnL,
    input btnR,
    input btnD,
    input btnU,
    input btnC,
    
    input [15:0] sw,
    
    output [3:0] vgaRed,
    output [3:0] vgaBlue,
    output [3:0] vgaGreen,
    output Hsync,
    output Vsync,
    output [15:0] led,
    
    output oops,
    output rgb_oops,
    
    output dp,
    output [3:0] an,
    output [6:0] seg
    
    );
    wire [10:0] Hpixel;
    wire [10:0] Vpixel;
    
    wire digsel;
    wire clk;
    lab7_clks not_so_slow (.clkin(clkin), .greset(sw[0]), .clk(clk), .digsel(digsel));
    
    wire [3:0] red, blue, green;
    
    //every pixel a king
    VGA_Control stuffISee (.clock(clk), .vgaRed(red), .vgaBlue(blue), .vgaGreen(green),
                            .Hsync(Hsync), .Vsync(Vsync), .Hpixel(Hpixel), .Vpixel(Vpixel));
                            
    //the wall just got ten feet higher
    wire border;
    theWall trump (.clock(clk), .Hpixel(Hpixel), .Vpixel(Vpixel), .green(border));
    
                            
    assign vgaRed = red;
    assign vgaBlue = blue;
    assign vgaGreen = green & ({4{border}});
endmodule
