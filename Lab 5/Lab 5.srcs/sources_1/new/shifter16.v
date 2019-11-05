`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 10:59:42 PM
// Design Name: 
// Module Name: shifter16
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


module shifter16(
    input clock,
    input zenshin, //zenshin means advance in Japanese
    input reset,
    output [15:0] out
    );
    
    //cascading counter thing
    FDRE #(.INIT(1'b0) ) shift1 (.C(clock), .CE(zenshin), .R(reset), .D(1'b1), .Q(out[0]));
    FDRE #(.INIT(1'b0) ) shift2 (.C(clock), .CE(zenshin), .R(reset), .D(out[0]), .Q(out[1]));
    FDRE #(.INIT(1'b0) ) shift3 (.C(clock), .CE(zenshin), .R(reset), .D(out[1]), .Q(out[2]));
    FDRE #(.INIT(1'b0) ) shift4 (.C(clock), .CE(zenshin), .R(reset), .D(out[2]), .Q(out[3]));
    FDRE #(.INIT(1'b0) ) shift5 (.C(clock), .CE(zenshin), .R(reset), .D(out[3]), .Q(out[4]));
    FDRE #(.INIT(1'b0) ) shift6 (.C(clock), .CE(zenshin), .R(reset), .D(out[4]), .Q(out[5]));
    FDRE #(.INIT(1'b0) ) shift7 (.C(clock), .CE(zenshin), .R(reset), .D(out[5]), .Q(out[6]));
    FDRE #(.INIT(1'b0) ) shift8 (.C(clock), .CE(zenshin), .R(reset), .D(out[6]), .Q(out[7]));
    FDRE #(.INIT(1'b0) ) shift9 (.C(clock), .CE(zenshin), .R(reset), .D(out[7]), .Q(out[8]));
    FDRE #(.INIT(1'b0) ) shift10 (.C(clock), .CE(zenshin), .R(reset), .D(out[8]), .Q(out[9]));
    FDRE #(.INIT(1'b0) ) shift11 (.C(clock), .CE(zenshin), .R(reset), .D(out[9]), .Q(out[10]));
    FDRE #(.INIT(1'b0) ) shift12 (.C(clock), .CE(zenshin), .R(reset), .D(out[10]), .Q(out[11]));
    FDRE #(.INIT(1'b0) ) shift13 (.C(clock), .CE(zenshin), .R(reset), .D(out[11]), .Q(out[12]));
    FDRE #(.INIT(1'b0) ) shift14 (.C(clock), .CE(zenshin), .R(reset), .D(out[12]), .Q(out[13]));
    FDRE #(.INIT(1'b0) ) shift15 (.C(clock), .CE(zenshin), .R(reset), .D(out[13]), .Q(out[14]));
    FDRE #(.INIT(1'b0) ) shift16 (.C(clock), .CE(zenshin), .R(reset), .D(out[14]), .Q(out[15]));
    
    
endmodule
