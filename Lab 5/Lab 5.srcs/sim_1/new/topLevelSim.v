`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2019 11:57:08 AM
// Design Name: 
// Module Name: topLevelSim
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


module toplvltest();
    reg clkin;
    reg btnC;
    reg btnU;
    reg btnD;
    reg btnR;
    reg sw0;

    wire [15:0] led;
    wire [3:0] an;
    wire dp;
    wire [6:0] seg;
    //wire [7:0] dout;
    //wire [7:0] qout; 
    
    toppo UUT (.clkin(clkin), .btnC(btnC), .btnU(btnU), .btnD(btnD), .btnR(btnR), .sw0(sw0), 
        .led(led), .an(an), .dp(dp), .seg(seg));
            
    parameter PERIOD = 10;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;

    initial    // Clock process for clkin
    begin
        #OFFSET
		  clkin = 1'b1;
        forever
        begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clkin = ~clkin;
        end
    end
    
    initial 
    begin
    
    btnC = 1'b0;
    btnU = 1'b0;
    btnD = 1'b0;
    btnR = 1'b0;
    sw0 = 1'b1;
    //sw0 = 1'b0;
    #1300
    btnC = 1'b1;
    #100
    btnC = 1'b0;
    #100000
    
    btnC = 1'b1;
    #100
    btnC = 1'b0;
    #15000
    btnU = 1'b1; //U ought to score here
    #100
    btnU = 1'b0;
    
    #13000
    
    btnC = 1'b1;
    #100
    btnC = 1'b0;
    #35000
    btnU = 1'b1;
    btnD = 1'b1; //both ought to score here
    #100
    btnD = 1'b0;
    btnU = 1'b0;
    
    
    end
endmodule
