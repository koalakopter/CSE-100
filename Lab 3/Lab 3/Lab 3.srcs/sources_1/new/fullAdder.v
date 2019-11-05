`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 11:51:10 AM
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
    input e,
    
    output S,
    output C_out
    );
    
    //full adder with mux
    assign e = 1;
    //sum mux
    m4_1e add1 (.e(e), .in({C_in, ~C_in, ~C_in, C_in}), .sel({A, B}), .o(S));
    //carry bit mux
    m4_1e add2 (.e(e), .in({1'b1, C_in, C_in, 1'b0}), .sel({A, B}), .o(C_out));
endmodule
