`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 10:25:35 PM
// Design Name: 
// Module Name: timeCountTest
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


module TimeCountTest();
    reg clock, LD;
    reg [7:0] d;
    reg ce;
    
    wire [7:0] q;
    wire timeup;
    
    timeCounter UUT(.clock(clock), .ce(ce), .LD(LD), .d(d), .q(q), .timeup(timeup));
    
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
    d = 8'h69;
    LD = 1'b0;
    ce = 1'b1;
    #500
    //load it
    LD = 1'b1;
    #100
    LD = 1'b0;
    //it should count now

    end
endmodule
