`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2019 03:30:42 PM
// Design Name: 
// Module Name: counter16
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


module counter16();
    reg clock, Up, Dw, LD;
    reg [15:0] d;
    
    wire utc, dtc;
    wire [15:0] q;
    
    countUD16L UUT(.clock(clock), .Up(Up), .Dw(Dw), .LD(LD), .d(d), .utc(utc), .dtc(dtc), .q(q));
    
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
    d[15:0] = 1'b000000000000000;
    //initialize
    Up = 1'b0;
    Dw = 1'b0;
    LD = 1'b0;
    
    #100 //time 100
    Up = 1'b1; //count 1
    
    #100 //time 100
    Up = 1'b0;
    
    #100 //time 200
    Up = 1'b1; //count 2
    
    #100 //time 300
    Up = 1'b0;
    
    #100 //time 400
    d[15:0] = 16'b1111111111111111;
    LD = 1'b1;
    
    #50 //time 450
    LD = 1'b0;
    
    #50 //time 500
    Dw = 1'b1;
    
    #100 //time 600
    Dw = 1'b0;
    end
endmodule
