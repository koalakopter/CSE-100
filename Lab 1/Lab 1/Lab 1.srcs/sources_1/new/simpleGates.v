`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2019 03:51:05 PM
// Design Name: 
// Module Name: simpleGates
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


module simpleGates(
    input A,
    input B,
    input C,
    input D,
    output W,
    output X,
    output Y,
    output Z
    
    );
    
    //NOT GATE
    assign W = !A;
    //AND GATE
    assign X = B & C;
    //OR GATE
    assign Y = B | C;
    //XOR GATE
    assign Z = B ^ C ^ D;
endmodule
