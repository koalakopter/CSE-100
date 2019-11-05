`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 03:42:17 PM
// Design Name: 
// Module Name: carryAdder
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

//implements 
module carryAdder(

    input [7:0] a,
    input [7:0] b,
    
    input c_in,
    
    output [7:0] s,
    output c_out
    );
    
    //eight adders tied together
    wire carry[7:0];
    
    fullAdder f1 (.e(1'b1), .A(a[0]), .B(b[0]), .C_in(c_in), .S(s[0]), .C_out(carry[0]));
    fullAdder f2 (.e(1'b1), .A(a[1]), .B(b[1]), .C_in(carry[0]), .S(s[1]), .C_out(carry[1]));
    fullAdder f3 (.e(1'b1), .A(a[2]), .B(b[2]), .C_in(carry[1]), .S(s[2]), .C_out(carry[2]));
    fullAdder f4 (.e(1'b1), .A(a[3]), .B(b[3]), .C_in(carry[2]), .S(s[3]), .C_out(carry[3]));
    fullAdder f5 (.e(1'b1), .A(a[4]), .B(b[4]), .C_in(carry[3]), .S(s[4]), .C_out(carry[4]));
    fullAdder f6 (.e(1'b1), .A(a[5]), .B(b[5]), .C_in(carry[4]), .S(s[5]), .C_out(carry[5]));
    fullAdder f7 (.e(1'b1), .A(a[6]), .B(b[6]), .C_in(carry[5]), .S(s[6]), .C_out(carry[6]));
    fullAdder f8 (.e(1'b1), .A(a[7]), .B(b[7]), .C_in(carry[6]), .S(s[7]), .C_out(c_out));
    
endmodule
