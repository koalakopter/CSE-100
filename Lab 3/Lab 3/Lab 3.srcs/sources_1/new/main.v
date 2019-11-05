`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 04:51:06 PM
// Design Name: 
// Module Name: main
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


module main(
    input [7:0] sw,
    input btnC,
    input btnR,
    input clkin,
    
    output [6:0] seg,
    output dp,
    output [3:0] an,
    //output [7:0] test
    output dig_sel
    );
    
    //top level module 
    //sign changer module
    wire [7:0] signOut;
    wire [7:0] signOut2;
    wire dig_sel2;
    wire [6:0] c1;
    wire [6:0] c2;
    lab3_digsel clock(.clkin(clkin) , .greset(btnR), .digsel(dig_sel2));
    
    signChanger sc (.sign(btnC), .b(sw[7:0]), .d(signOut[7:0]));
    //signChanger sc2 (.sign(1'b1), .b(sw[7:0]), .d(signOut2[7:0]));
    //assign test = {signOut2}; //for testing
    
    //2 Seven Segment Display
    hex7seg seg1 (.n(signOut[3:0]), .s(c1));
    hex7seg seg2 (.n(signOut[7:4]), .s(c2)); 
    
    //choose 1 output
    m2_1x8 choose (.in0(c2), .in1(c1), .sel(dig_sel2), .o(seg[6:0]));
    assign dig_sel = dig_sel2;
    
    //assign outputs
    //right two LED's always on
    assign an[0] = ~dig_sel2;
    assign an[1] = dig_sel2;
    assign an[2] = 1'b1;
    assign an[3] = 1'b1;
    assign dp = 1'b1;
endmodule
