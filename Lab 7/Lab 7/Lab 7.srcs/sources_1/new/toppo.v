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
    input btnU,
    input btnD,
    input btnC,
    
    input [15:0] sw,
    
    output [3:0] vgaRed,
    output [3:0] vgaBlue,
    output [3:0] vgaGreen,
    output Hsync,
    output Vsync,
    output [15:0] led,
    
    //output oops,
    //output rgb_oops,
    
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
    wire [4:0] btnSync;
    //"We gotta sync the Bismarck, cause the world depends on us"
    synchronizer sync (.clock(), .d({btnL, btnR, btnL, btnU, btnC}), .q(btnSync));
    
    //mine eyes have seen the glory
    VGA_Control stuffISee (.clock(clk), .vgaRed(red), .vgaBlue(blue), .vgaGreen(green),
                            .Hsync(Hsync), .Vsync(Vsync), .Hpixel(Hpixel), .Vpixel(Vpixel));
    wire fps;
    assign fps = (Hpixel == 10'd799) && (Vpixel == 10'd524);
    wire fps2;
    assign fps2 = (Hpixel == 10'd798) && (Vpixel == 10'd524);
                            
    //the wall just got ten feet higher
    wire border;
    theWall trump (.clock(clk), .Hpixel(Hpixel), .Vpixel(Vpixel), .green(border));
    
    
    //for testing:
    assign led [4:0] = btnSync [4:0];
    //now this is spaghetti
    wire [10:0] birdh1, birdv1;
    wire bird1red, bird1blue;
    birb bird1 (.clock(clk), .Hpixel(Hpixel), .Vpixel(Vpixel), .frame({fps, fps2}), .start(btnSync[0]), .timeup(1'b0),
             .Hstart(11'd200), .Vstart(11'd200), .win(1'b0), .caught(1'b0),
            .direction(4'b0001), .red(bird1red), .blue(bird1blue));

    //wire derpred;
    //birb2 derp (.clock(clk), .Hpixel(Hpixel), .Vpixel(Vpixel), .birdposx(10'd400), .birdposy(10'd300), .red(derpred));   
    
    
    //vga         
    assign vgaRed = red & ({4{bird1red}});
    assign vgaBlue = blue & 4'b0000;
    assign vgaGreen = green & ({4{border}});
    
    //the numbers Mason, what do they mean?!
    assign dp = 1'b1;
    
    assign an[3] = 1'b0;
    assign an[2] = 1'b1;
    assign an[1] = 1'b0;
    assign an[0] = 1'b0;
endmodule
