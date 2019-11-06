`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 09:03:40 AM
// Design Name: 
// Module Name: rngTest
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


module rngTest();
    reg clock;
    reg reset;
 
    wire [7:0] out;

    randomNumGen UUT(.clock(clock), .out(out), .reset(reset));
    
    parameter PERIOD = 50;
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
    //start
    reset = 1'b1;
    
    #200
    reset = 1'b0;
    #500
    reset = 1'b1;
    #200
    reset = 1'b0;
    
    end
endmodule
