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
    
    //We've got to sync the Bismarck, cause the world depends on us
    wire [4:0] btnSync;
    synchronizer syncer (.clock(clk), .d({btnU, btnD, btnL, btnR, btnC}), .q(btnSync));
    
    //CRAWLING IN MY SKIN! THESE WOUNDS THEY WILL NOT HEAL!
    wire edgec, edgeu, edged, edgel, edger;
    edgeDetector edgyc (.clock(clk), .button(btnSync[0]), .signal(edgec));
    edgeDetector edgyu (.clock(clk), .button(btnSync[4]), .signal(edgeu));
    edgeDetector edgyd (.clock(clk), .button(btnSync[3]), .signal(edged));
    edgeDetector edgyl (.clock(clk), .button(btnSync[2]), .signal(edgel));
    edgeDetector edgyr (.clock(clk), .button(btnSync[1]), .signal(edger));
    //for testing
    //assign led [4:0] = btnSync [4:0];
    wire [3:0] red, blue, green;
    
    //Mine eyes have seen the glory
    VGA_Control stuffISee (.clock(clk), .vgaRed(red), .vgaBlue(blue), .vgaGreen(green),
                            .Hsync(Hsync), .Vsync(Vsync), .Hpixel(Hpixel), .Vpixel(Vpixel));
    wire fps;
    assign fps = (Hpixel == 10'd799) && (Vpixel == 10'd524);
    wire fps2;
    assign fps2 = (Hpixel == 10'd798) && (Vpixel == 10'd524);
                            
    //The wall just got ten feet higher
    wire border;
    theWall trump (.clock(clk), .Hpixel(Hpixel), .Vpixel(Vpixel), .green(border));
    
    //net
    
    wire netblue, netgreen, netred, tagzone;
    net catcher (.clock(clk), .Hpixel(Hpixel), .Vpixel(Vpixel), .Hstart(11'd300), .Vstart(11'd225),
                .size({sw[15], sw[14]}), .frame(fps), .start(edgec), .win(1'b0), .btn(btnSync[4:1]),
                .red(netred), .blue(netblue), .green(netgreen), .fun(led[15:12]), .tagzone(tagzone));
    
    
    //A bird in the hand is worth two in the bush
    wire bird1red, bird1blue, bird1tag;
    birb bird1 (.clock(clk), .Hpixel(Hpixel), .Vpixel(Vpixel), .frame({fps2, fps}), .start(edgec), .timeup(1'b0),
             .Hstart(11'd200), .Vstart(11'd200), .win(1'b0), .tagzone(tagzone),
            .direction(4'b1000), .red(bird1red), .blue(bird1blue), .tagged(bird1tag));
            
    wire bird2red, bird2blue, bird2tag;
    birb bird2 (.clock(clk), .Hpixel(Hpixel), .Vpixel(Vpixel), .frame({fps2, fps}), .start(edgec), .timeup(1'b0),
             .Hstart(11'd400), .Vstart(11'd200), .win(1'b0), .tagzone(tagzone),
            .direction(4'b0010), .red(bird2red), .blue(bird2blue), .tagged(bird2tag));
            
            
    //count the birds
    wire [4:0] taggedBirds;
    wire compressTag = bird1tag | bird2tag;
    wire nobirds;
    countUD5L birdCounter (.clock(clk), .Up(compressTag), .Dw(1'b0), .LD(1'b0), .d(4'b0), .q(taggedBirds), .dtc(nobirds));       
    
    //display the numbers
    wire [3:0] ringOut;
    ringCounter ring (.clock(clk), .avanti(digsel), .out(ringOut));
    wire [3:0] selectOut;
    selector select (.sel(ringOut), .N({taggedBirds [3:0],4'b0, 4'b0, 4'b0}), .H(selectOut));
    sevenSeg display (.n(selectOut), .s(seg));

    
    //vga         
    assign vgaRed = red & ({4{bird1red}} | {4{bird2red}});
    assign vgaBlue = blue & ({4{netblue}} | {4{bird1blue}} | {4{bird2blue}});
    assign vgaGreen = green & ({4{border}} | {4{netgreen & ~nobirds}});
    
    //the numbers Mason, what do they mean?!
    assign dp = 1'b1;
    
    assign an[3] = ringOut[3];
    assign an[2] = ringOut[2];
    assign an[1] = ringOut[1];
    assign an[0] = ringOut[0];
endmodule
