`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2019 11:53:42 AM
// Design Name: 
// Module Name: counterTest5
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


module counterTest5();
    reg clock, Up, Dw, LD;
    reg [4:0] d;
    
    wire utc, dtc;
    wire [4:0] q;
    
    countUD5L UUT(.clock(clock), .Up(Up), .Dw(Dw), .LD(LD), .d(d), .utc(utc), .dtc(dtc), .q(q));
    
    parameter PERIOD = 10;
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
    d[4:0] = 5'b00000;
    //start with up, down, and load to low
    Up = 1'b0;
    Dw = 1'b0;
    LD = 1'b0;
    
    
    #100 //time is 100
    Up = 1'b1;
    //count = 1
    
    #100 //time 200
    Up = 1'b0;
    
    #100 //time 300
    Up = 1'b1;
    //count = 2
    
    #100 //time 400
    Up = 1'b0;
    
    #100 //time 500
    Up = 1'b1;
    //count = 3
    
    #100 //time 600
    Up = 1'b0;
    
    //load test
    #100 //time 700
    LD = 1'b1;
    //load 0
    
    #100 //time 800
    LD = 1'b0;
    
    #100 //time 900
    d[4:0] = 5'b11111;
    LD = 1'b1;
    //load 7
    
    #100 //time 1000
    LD = 1'b0;
    
    //down count test
    #100 //time 1100
    Dw = 1'b1;
    //count 6
    
    #100 //time 1200
    Dw = 1'b0;

    end
endmodule
