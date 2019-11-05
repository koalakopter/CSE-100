`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 10:21:42 AM
// Design Name: 
// Module Name: signChanger
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


module signChanger(
    input sign,
    input [7:0] b,
    output [7:0] d
    );
    //perform a two's complement
    //flip the bits and then add one
    
    wire [7:0] sums;
    wire [7:0] notb;
    
    wire c1, c2;
    
    assign notb = {~b};
    /*
    //carryAdder cad (.a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}, .b )
    m2_1x8 mux1(.in0(b[7:0]), .in1(~b[7:0]), .sel(sign), .o(sums[7:0]));
    
    //then after flipping, add 1 if sign is 1
    carryAdder cadd (.a(sums[7:0]), .b({0'b0, 0'b0, 0'b0, 0'b0, 0'b0, 0'b0, 0'b0, 0'b0}), .c_in(sign), .s(d[7:0]));
    */
    
    //add 1 to the inverted bus input
    carryAdder cadd (.a(notb[7:0]), .b({0'b0, 0'b0, 0'b0, 0'b0, 0'b0, 0'b0, 0'b0, 0'b0}), .c_in(1'b1), .c_out(c1),.s(sums[7:0]));
    
    //if sign = 0, keep same input, if sign = 1 take 2's complement
    m2_1x8 choose(.in0(b[7:0]), .in1(sums[7:0]), .sel(sign), .o(d));
endmodule  
