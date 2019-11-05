`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2019 04:34:16 PM
// Design Name: 
// Module Name: selectTest
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


module selectTest();
    reg [3:0] sel;
    reg [15:0] N;
    wire [3:0] H;
    
    selector UUT(.sel(sel), .N(N), .H(H));
    initial
    begin
    
    N = 16'h8421;
    #100 //time 100
    
    sel = 4'b1000;
    #100 //time 200
    
    sel = 4'b0100;
    #100 //time 300
    
    sel = 4'b0010;
    #100 //time 400
    
    sel = 4'b0001;
 
    
    end
endmodule
