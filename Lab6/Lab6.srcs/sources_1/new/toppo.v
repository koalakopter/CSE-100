`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 10:24:36 PM
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
    
    output led8,
    output led15,
    output dp,
    output [3:0] an,
    output [6:0] seg

    );
    //le clock
    wire clock, qsec, digsel, speed;
    lab6_clks mainClock (.clkin(clkin), .greset(btnSync[0]), .clk(clock), .digsel(digsel), .qsec(qsec), .fastclk(speed));
    //sync
    wire [2:0] btnSync;
    synchronizer sync (.d({btnL, btnR, btnD}), .clock(clock), .q(btnSync));
    
    //state machine
    wire leftLed, rightLed, showtime, reset, inc, dec;
    stateMachine funStates (.left(btnSync[2]), .right(btnSync[1]), 
    .clock(clock), .leftLed(leftLed), .rightLed(rightLed), .showtime(showtime), .reset(reset), .inc(inc), .dec(dec));
    
    //8 bit counter!
    wire negative;
    wire [7:0] turkeyOut;
    countUD8L turkeyCount (.clock(clock), .Up(inc), .Dw(dec), .LD(1'b0), .d(8'h00), .q(turkeyOut), .negative(negative));
    
    //sign changer
    wire [7:0] display; 
    signChanger flip (.sign(negative), .b(turkeyOut), .d(display));
    
    //timer!
    wire [3:0] timeOut;
    countUD4L timer (.clock(clock), .Up(qring[3] & ~timeOut[2]), .LD(reset), .d(8'h00), .q(timeOut));
    
    //quarter second counter
    wire [3:0] qring;
    ringCounter quarter (.clock(clock), .avanti(qsec), .out(qring));

    //display logic
    wire [3:0] ringOut;
    ringCounter anodes (.clock(clock), .avanti(digsel), .out(ringOut));
    wire [3:0] selectOut;
    selector select (.sel({ringOut[3], 1'b0, ringOut[1], ringOut[0]}), .N({timeOut, 4'h0, display}), .H(selectOut));
    
    wire [6:0] segOut;
    sevenSeg segments (.n(selectOut), .enable(1'b1), .s(segOut));
    //negative sign logic
    wire [7:0] negsign;
    m2_1x8 negativeSign (.in0(segOut), .in1({1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .sel(negative & ringOut[2]), .o(seg[6:0])); 
    //assign seg[6:0] = {6{negative}} & {6{selectOut[2]}} & ({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0});
    //anode stuff
    wire an3;
    assign an3 = (showtime & ~timeOut[2]) | (showtime & timeOut[2] & (qring[1] | qring[2]));
    assign dp = 1'b1;
    
    assign an[3] = ~(ringOut[3] & an3);
    assign an[2] = ~(ringOut[2] & negative);
    assign an[1] = ~(ringOut[1]);
    assign an[0] = ~(ringOut[0]);
    
    //LEDS
    assign led8 = rightLed;
    assign led15 = leftLed;
    
    
    
endmodule
