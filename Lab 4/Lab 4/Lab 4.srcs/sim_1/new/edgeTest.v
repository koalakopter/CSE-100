`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2019 10:48:13 AM
// Design Name: 
// Module Name: edgeTest
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


module edgeTest();
    reg clock;
    reg button;
    wire signal;
    
    edgeDetector UUT(.clock(clock), .button(button), .signal(signal));
    
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
    
    
    button = 1'b0;
    #100 //time 100
    button = 1'b1;
    #100 //time 200
    button = 1'b0;
    
    end
endmodule
