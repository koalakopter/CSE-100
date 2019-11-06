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
    
    lab5_clks lab5clock (.clkin(clkin), .btnR(btnR), .clk(clock), .digsel(digsel), .qsec(qsec));
    
    //run buttons through synchronizer
    wire [3:0] btnSync;
    synchronizer syncer (.clock(clock), .d({btnU, btnC, btnD}), .q(btnSync));
    
    //rng & time
    wire [7:0] rngOut;
    randomNumGen rng (.clock(clock), .reset(btnR), .out(rngOut));
    wire [7:0] qTimeOut;
    wire times_up;
    timeCounter theWorld (.clock(clock), .ce(runtime), .LD(loadtime), .d(rngOut), .q(qTimeOut), .timeup(times_up));
    
    stateMachine funstates (.clock(clock), .btnC(btnSync[1]), .btnU(btnSync[2]), .btnD(btnSync[0]), .timeUp(times_up), .lastled(), .sw0(sw0),
                            .showtime(showtime), .loadtime(loadtime), .runtime(runtime), .incU(incU), .incD(incD), .showScore(showScore), .flashU(flashU), .flashD(flashD));
     
endmodule
