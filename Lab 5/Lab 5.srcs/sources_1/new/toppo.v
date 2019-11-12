`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:01:29 PM
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
    input btnU,
    input btnC,
    input btnD,
    input btnR,
    input sw0,
    input clkin,
    
    output [15:0] led,
    output [3:0] an,
    output dp,
    output [6:0] seg
    );
    
    //clocks
    wire clock; //main clock
    wire digsel;
    wire qsec;
    //statemachine output wires
    wire showtime, loadtime, runtime, incU, incD, showScore, flashU, flashD;
    
    lab5_clks lab5clock (.clkin(clkin), .greset(btnSync[3]), .clk(clock), .digsel(digsel), .qsec(qsec));
    
    //run buttons through synchronizer
    wire [3:0] btnSync;
    synchronizer syncer (.clock(clock), .d({btnR, btnU, btnC, btnD}), .q(btnSync));
    
    //rng & time
    wire [7:0] rngOut;
    randomNumGen rng (.clock(clock), .reset(1'b0), .out(rngOut));
    wire [7:0] qTimeOut;
    wire times_up;
    timeCounter theWorld (.clock(clock), .ce(qsec & runtime), .LD(loadtime), .d(rngOut), .q(qTimeOut), .timeup(times_up));
    
    stateMachine funstates (.clock(clock), .btnC(btnSync[1]), .btnU(btnSync[2]), .btnD(btnSync[0]), .timeUp(times_up), .lastled(led[15]), .sw0(sw0),
                            .showtime(showtime), .loadtime(loadtime), .runtime(runtime), .incU(incU), .incD(incD), .showScore(showScore), .flashU(flashU), .flashD(flashD));
     
    shifter16 ledshifter (.clock(clock), .zenshin(qsec & showtime & ~(sw0 & runtime)), .reset(led[15] & ~showtime), .out(led)); 
    wire edgeU, edgeD;
    //edge detectors for increments
    edgeDetector uScore(.clock(clock), .button(incU), .signal(edgeU));
    edgeDetector dScore(.clock(clock), .button(incD), .signal(edgeD));
    
    //score counters
    wire [3:0] countU_out;
    wire [3:0] countD_out;
    countUD4L uCount(.clock(clock), .Up(edgeU), .Dw(1'b0), .LD(1'b0), .d(4'b0), .q(countU_out));
    countUD4L dCount(.clock(clock), .Up(edgeD), .Dw(1'b0), .LD(1'b0), .d(4'b0), .q(countD_out));
    
    //ring counter
    wire [3:0] ringOut;
    ringCounter ring (.clock(clock), .avanti(digsel), .out(ringOut));
    wire [3:0] selectOut;
    selector select (.sel(ringOut), .N({countU_out, qTimeOut, countD_out}), .H(selectOut));
    
    sevenSeg display (.n(selectOut), .s(seg));
    //flash logic
    wire [3:0] flash;
    //for flashing
    //q sec active every 1/4 sec
    ringCounter flasher (.clock(clock), .avanti(qsec), .out(flash));
    //countUD4L flasher (.clock(clock), .Up(qsec), .Dw(1'b0), .LD(1'b0), .d(4'b0), .q(flash));
    
    //anode logic 
    assign dp = 1'b1;
    //assign an[0] = ~((showscore & ringOut[0]) & (~flashD | (flash[1] & flashD & ringOut[0])));
    //assign an[0] = ~((showScore & ringOut[0]) | ((flash[0]) & flashD & ringOut[0]));
    assign an[0] = ~((showScore & ringOut[0]) | (~flashD & flashU & ringOut[0]) | ((flash[0] | flash[1]) & flashD & ringOut[0]));
    assign an[1] = ~(ringOut[1] & (showtime | sw0));
    assign an[2] = ~(ringOut[2] & (showtime | sw0));
    //assign an[3] = ~(ringOut[3] & (showScore | (flashU & (flash[0] | flash[1]))));
    //assign an[3] = ~((showScore & ringOut[3]) |  |((flash[0]) & flashU & ringOut[3]));
    assign an[3] = ~((showScore & ringOut[3]) | (~flashU & flashD & ringOut[3]) |((flash[0] | flash[1]) & flashU & ringOut[3]));
    
endmodule
