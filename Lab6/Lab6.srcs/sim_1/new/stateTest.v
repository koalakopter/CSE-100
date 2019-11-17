`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 08:56:47 PM
// Design Name: 
// Module Name: stateTest
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


module stateTest();
    reg clock;
    reg left;
    reg right;
    
    wire leftLed;
    wire rightLed;
    wire showtime;
    wire reset; //reset timer
    wire inc;
    wire dec;
    wire [6:0] test;
    
    stateMachine UUT(.clock(clock), .right(right), .left(left), .test(test),
        .leftLed(leftLed), .rightLed(rightLed), .showtime(showtime), .reset(reset), .inc(inc), .dec(dec));
    
    parameter PERIOD = 20;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;

    initial    
    begin
        #OFFSET
		  clock = 1'b1;
        forever
        begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clock = ~clock;
        end
    end
    
    initial
    begin
    right = 1'b0;
    left = 1'b0;
    #100
    //left and then leave
    left = 1'b1;
    #100
    left = 1'b0;
    
    #100
    //left then both, then leave left
    left = 1'b1;
    #100
    right = 1'b1;
    #100
    right = 1'b0;
    #100
    left = 1'b0;  
    #100
    //left then both, the leave right (dec)
    left = 1'b1;
    #100
    right = 1'b1;
    #100
    left = 1'b0;
    #100
    right = 1'b0;
    
    //right and then leave
    right = 1'b1;
    #100
    right = 1'b0;
    
    #100
    //right then both, then leave right
    right = 1'b1;
    #100
    left = 1'b1;
    #100
    left = 1'b0;
    #100
    right = 1'b0;  
    #100
    //right then both, the leave left (inc)
    right = 1'b1;
    #100
    left = 1'b1;
    #100
    right = 1'b0;
    #100
    left = 1'b0;
    //idk some random shit
    #100
    right = 1'b1;
    #100
    left = 1'b1;
    #100
    right = 1'b0;
    #100
    right = 1'b1;  
    #100
    right = 1'b0;
    #100
    right = 1'b1;
    #100
    left = 1'b0;
    #100
    right = 1'b0;
    
    end
endmodule
