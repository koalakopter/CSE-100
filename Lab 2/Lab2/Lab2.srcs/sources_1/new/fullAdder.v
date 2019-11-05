`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 03:31:26 PM
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(
    input A,
    input B,
    input C_in,
    output C_out,
    output S
    );
    
    assign C_out = C_in & (A | B) | (A & B);
    assign S = A ^ B ^ C_in;
endmodule

