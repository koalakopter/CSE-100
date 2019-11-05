`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2019 05:40:55 PM
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
    input btnR,
    input btnU,
    input btnD,
    input btnC,
    input btnL,
    input [15:0] sw,
    
    output [6:0] seg,
    output dp,
    output [3:0] an,
    output [15:0] led
    //temp
    //output UTC
    );
    
    //led and sw are the same... right?
    assign led = sw;
    
    wire clk; //system clock to be used
    wire dig_sel;
    lab4_clks lab4_clock (.clkin(clkin), .greset(btnR), .clk(clk), .digsel(dig_sel));
    
    
    wire edge_up, edge_dw;
    //assign edge_up = btnU;
    //assign edge_dw = btnD;
    edgeDetector down (.clock(clk), .button(btnD), .signal(edge_dw));
    edgeDetector up (.clock(clk), .button(btnU), .signal(edge_up));
    wire advanceCount;
    //so we don't count from FFFC - FFFF
    wire [15:0] qOut;
    //assign advanceCount = btnC & ~(qOut[15:2]);
    assign advanceCount = btnC & (~qOut[15] | ~qOut[14] | ~qOut[13] | ~qOut[12] | ~qOut[11] | ~qOut[10] | ~qOut[9] 
                        | ~qOut[8] | ~qOut[7] | ~qOut[6] | ~qOut[5] | ~qOut[4] | ~qOut[3] | ~qOut[2]);
    
    //16 bit counter
    wire utcOut, dtcOut;
    wire up_in;
    assign up_in = advanceCount | edge_up;
    countUD16L sixteenBit (.clock(clk), .Up(up_in), .Dw(edge_dw), .LD(btnL), .d(sw), .q(qOut), .utc(utcOut), .dtc(dtcOut));
    
    //assign UTC = utcOut;
    //bottom of the schematic from manual
    wire [3:0] ringOut;
    ringCounter ring (.clock(clk), .avanti(dig_sel), .out(ringOut));
    
    wire [3:0] sevenSegIn;
    selector segSelect (.sel(ringOut), .N(qOut), .H(sevenSegIn));
    
    sevenSeg display (.n(sevenSegIn), .s(seg));
    
    //since an is active low
    assign an = ~ringOut;
    //dp is also active low
    assign dp = (~(utcOut & ringOut[3])) & (~(dtcOut & ringOut[0]));  
    //assign dp = ~(utcOut + dtcOut)
    
endmodule
