`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2019 02:56:05 PM
// Design Name: 
// Module Name: birb2
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


module birb2(
    input clock,
    input [10:0] Hpixel,
    input [10:0] Vpixel,
    input tagzone,
    input timeup,
    
    input [10:0] birdposx,
    input [10:0] birdposy,
    
    //output [1:0] fun,
    output red,
    output blue,
    output tagged
    );
    
    wire square;
    //assign square = (Hpixel >= 
    
    wire purple;
    assign red = birdposx <= Hpixel & Hpixel <= birdposx + 15 & birdposy <= Vpixel & Vpixel <= birdposy +15;
    assign purple = birdposx <= Hpixel & Hpixel <= birdposx + 15 & birdposy <= Vpixel & Vpixel <= birdposy +15;
    //choose to output blue based on value of tagged
    
    //mini statemachine to determine if tagged
    wire [1:0] d, q;
    FDRE #(.INIT(1'b1)) notag (.C(clock), .CE(1'b1), .R(1'b0), .D(d[0]), .Q(q[0])); //start here
    FDRE #(.INIT(1'b0)) yestag (.C(clock), .CE(1'b1), .R(1'b0), .D(d[1]), .Q(q[1]));
    
    //state 0: not tagged
    assign d[0] = (q[1] & timeup) | (q[0] & ~(tagzone & red));
    //state 1: tagged
    assign d[1] = (q[0] & (tagzone & red)) | (q[1] & ~timeup);
    
    //output(s) of state machine
    assign tagged = q[0] & (tagzone & red);
    
    //assign fun [1:0] = {q[1] , q[0]};
    assign blue = (red & q[1]);
endmodule
