`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2019 05:02:22 PM
// Design Name: 
// Module Name: ringTest
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


module ringTest();
    reg clock;
    reg avanti;
    wire [3:0] out;
    
    ringCounter UUT(.clock(clock), .avanti(avanti), .out(out));
    
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
    avanti = 1'b0;
    
    #100 //time 100
    avanti = 1'b1;
    end
endmodule
