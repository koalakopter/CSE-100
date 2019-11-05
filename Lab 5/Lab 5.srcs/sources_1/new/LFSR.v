`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 10:05:42 PM
// Design Name: 
// Module Name: LFSR
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


module randomNumGen(
    input clock,
    
    output [7:0] out
    );
    //according to lab doc
    wire [7:0] rnd;
    wire in;
    
    assign in = rnd[0] ^ rnd[5] ^ rnd[6] ^ rnd[7];
    //flipflops
    FDRE #(.INIT(1'b1) ) shift1 (.C(clock), .CE(1'b1), .R(1'b0), .D(1'b1), .Q(out[0]));
    FDRE #(.INIT(1'b0) ) shift2 (.C(clock), .CE(1'b1), .R(1'b0), .D(out[0]), .Q(out[1]));
    FDRE #(.INIT(1'b0) ) shift3 (.C(clock), .CE(1'b1), .R(1'b0), .D(out[1]), .Q(out[2]));
    FDRE #(.INIT(1'b0) ) shift4 (.C(clock), .CE(1'b1), .R(1'b0), .D(out[2]), .Q(out[3]));
    FDRE #(.INIT(1'b0) ) shift5 (.C(clock), .CE(1'b1), .R(1'b0), .D(out[3]), .Q(out[4]));
    FDRE #(.INIT(1'b0) ) shift6 (.C(clock), .CE(1'b1), .R(1'b0), .D(out[4]), .Q(out[5]));
    FDRE #(.INIT(1'b0) ) shift7 (.C(clock), .CE(1'b1), .R(1'b0), .D(out[5]), .Q(out[6]));
    FDRE #(.INIT(1'b0) ) shift8 (.C(clock), .CE(1'b1), .R(1'b0), .D(out[6]), .Q(out[7]));
    
endmodule
