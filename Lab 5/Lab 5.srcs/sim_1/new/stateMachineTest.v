`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:39:19 PM
// Design Name: 
// Module Name: stateMachineTest
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


module stateMachineTest();
    reg clock;
    reg btnC;
    reg btnU;
    reg btnD;
    reg timeUp;
    reg lastled;
    reg sw0; //for the cheat
    
    wire showtime;
    wire loadtime;
    wire runtime;
    wire incU;
    wire incD;
    wire showScore;
    wire flashU;
    wire flashD;
    //wire [7:0] dout;
    //wire [7:0] qout; 
    
    stateMachine UUT(.clock(clock), .btnC(btnC), .btnU(btnU), .btnD(btnD), .timeUp(timeUp), .lastled(lastled), .sw0(sw0),
            .showtime(showtime), .loadtime(loadtime), .runtime(runtime), .incU(incU), .incD(incD), .showScore(showScore), .flashU(flashU), .flashD(flashD));
            
    parameter PERIOD = 20;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;

    initial    // Clock process for clkin
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
    //initial
    btnC = 1'b0;
    btnU = 1'b0;
    btnD = 1'b0;
    timeUp = 1'b0;
    lastled = 1'b0;
    sw0 = 1'b0;
    //state 0
    #200
    btnC = 1'b1; //state 1
    #100
    btnC = 1'b0; //state 1
    
    #100
    lastled = 1'b1; //state 2
    #100;
    lastled = 1'b0; //state 2
    
    #100;
    //both fail
    timeUp = 1'b1;
    #100
    timeUp = 1'b0;
    
    //reset game
    #100
    btnC = 1'b1;
    #50
    btnC = 1'b0;
    #50
    lastled = 1'b1;
    //btnu win
    #100
    lastled = 1'b0;
    btnU = 1'b1;
    #100
    btnU = 1'b0;
    timeUp = 1'b1;
    #100
    timeUp = 1'b0;
    
    //reset
    #100
    btnC = 1'b1;
    #50
    btnC = 1'b0;
    #50
    lastled = 1'b1;
    
    //btnd win
    #100
    lastled = 1'b0;
    btnD = 1'b1;
    #100
    btnD = 1'b0;
    timeUp = 1'b1;
    #100
    timeUp = 1'b0;
    //reset
    #100
    btnC = 1'b1;
    #50
    btnC = 1'b0;
    #50
    lastled = 1'b1;
    
    //btnu after btnd
    #100
    lastled = 1'b0;
    btnD = 1'b1;
    #100
    btnD = 1'b0;
    btnU = 1'b1;
    #100
    timeUp = 1'b0;
    btnU = 1'b0;
    
    //reset
    #100
    btnC = 1'b1;
    #50
    btnC = 1'b0;
    #50
    lastled = 1'b1;
    
    //btnd after btnu
    #100
    lastled = 1'b0;
    timeUp = 1'b0;
    btnU = 1'b1;
    #100
    btnU = 1'b0;
    btnD = 1'b1;
    #100
    timeUp = 1'b1;
    btnD = 1'b0;
    #10
    timeUp = 1'b0;
    
    //reset
    #100
    btnC = 1'b1;
    #50
    btnC = 1'b0;
    #50
    lastled = 1'b1;
    //win tie
    #100
    lastled = 1'b0;
    timeUp = 1'b0;
    btnU = 1'b1;
    btnD = 1'b1;
    #100
    timeUp = 1'b1;
    #20
    timeUp = 1'b0;
    #200
    btnC = 1'b1;

    
    end
endmodule
