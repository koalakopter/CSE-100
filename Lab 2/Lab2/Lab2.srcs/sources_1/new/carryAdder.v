`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 03:53:54 PM
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


module carryAdder(
    //inputs (switches)
    input A0,
    input B0,
    input A1,
    input B1,
    input A2,
    input B2,
    input C0,

    //output for the seven segment display
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G,
    //extra pins
    output AN0,
    output AN1,
    output AN2,
    output AN3,
    output DP
    );
    wire x0, x1, x2;
    //wires for carry sums
    wire w0, w1, w2, w3;
    
    fullAdder f1 (.A(A0), .B(B0), .C_in(C0), .S(w0), .C_out(x0));
    fullAdder f2 (.A(A1), .B(B1), .C_in(x0), .S(w1), .C_out(x1));
    fullAdder f3 (.A(A2), .B(B2), .C_in(x1), .S(w2), .C_out(w3));
    
    //seven segment converter
    sevenSeg s1 (.S0(w0), .S1(w1), .S2(w2), .S3(w3), .CA(A), .CB(B), .CC(C), .CD(D), .CE(E), .CF(F), .CG(G));
    
    //extra outputs
    assign AN0 = 1'b0; //this display will actually be on

    assign AN1 = 1'b1;
    assign AN2 = 1'b1;
    assign AN3 = 1'b1;
    assign DP = 1;
    
endmodule


