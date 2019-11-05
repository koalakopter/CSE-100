`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 04:24:19 PM
// Design Name: 
// Module Name: sevenSeg
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


module hex7seg(
    input [3:0] n,
    
    output [6:0] s
    );
    
    //seven segment display, takes in 4 bits, 7 outputs, 1 for each segment
    // whoops its backwards
    /*
    m8_1e A (.in({n[0], 1'b0, ~n[0], 1'b0, 1'b0, n[0], n[0], 1'b0}), .sel(n[3:1]), .e(1'b1), .o(s[0]));
    m8_1e B (.in({1'b0, 1'b0, n[0], ~n[0], 1'b0, n[0], ~n[0], 1'b1}), .sel(n[3:1]), .e(1'b1), .o(s[1]));
    m8_1e C (.in({1'b0, ~n[0], 1'b0, 1'b0, 1'b0, 1'b0, n[0], 1'b1}), .sel(n[3:1]), .e(1'b1), .o(s[2]));
    m8_1e D (.in({n[0], 1'b0, ~n[0], n[0], n[0], ~n[0], 1'b0, n[0]}), .sel(n[3:1]), .e(1'b1), .o(s[3]));
    m8_1e E (.in({n[0], n[0], 1'b1, n[0], n[0], 1'b0, 1'b0, 1'b0}), .sel(n[3:1]), .e(1'b1), .o(s[4]));
    m8_1e F (.in({n[0], 1'b1, 1'b0, n[0], 1'b0, 1'b0, n[0], 1'b1}), .sel({n[3:1]}), .e(1'b1), .o(s[5]));
    m8_1e G (.in({1'b1, 1'b0, 1'b0, n[0], 1'b0, 1'b0, ~n[0], 1'b0}), .sel({n[3:1]}), .e(1'b1), .o(s[6]));
    */
    
    
    m8_1e A( .in({1'b0,n[0],n[0],1'b0,1'b0,~n[0],1'b0,n[0]}), .sel(n[3:1]), .e(1'b1), .o(s[0]));
    m8_1e B( .in({1'b1,~n[0],n[0],1'b0,~n[0],n[0],1'b0,1'b0}), .sel(n[3:1]), .e(1'b1), .o(s[1]));
    m8_1e C( .in({1'b1,~n[0],1'b0,1'b0,1'b0,1'b0,~n[0],1'b0}), .sel(n[3:1]), .e(1'b1), .o(s[2]));
    m8_1e D( .in({n[0],1'b0,~n[0],n[0],n[0],~n[0],1'b0,n[0]}), .sel(n[3:1]), .e(1'b1), .o(s[3]));
    m8_1e E( .in({1'b0,1'b0,1'b0,n[0],n[0],1'b1,n[0],n[0]}), .sel(n[3:1]), .e(1'b1), .o(s[4]));
    m8_1e F( .in({1'b0,n[0],1'b0,1'b0,n[0],1'b0,1'b1,n[0]}), .sel(n[3:1]), .e(1'b1), .o(s[5]));
    m8_1e G( .in({1'b0,~n[0],1'b0,1'b0,n[0],1'b0,1'b0,1'b1}), .sel(n[3:1]), .e(1'b1), .o(s[6]));
    
endmodule
