`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 11:41:53 AM
// Design Name: 
// Module Name: stateMachine
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


module stateMachine(
    input clock,
    input btnC,
    input btnU,
    input btnD,
    input timeUp,
    input lastled,
    input sw0, //for the cheat
    
    //output [7:0] dout,
    //output [7:0] qout,
    output showtime,
    output loadtime,
    output runtime,
    output incU,
    output incD,
    output showScore,
    output flashU,
    output flashD
    );
    wire [7:0] d; //inputs for flipflops
    wire [7:0] q; //outputs for flipflops
    
    //flopflips
    FDRE #(.INIT(1'b1)) s0 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[0]), .Q(q[0])); //start here
    FDRE #(.INIT(1'b0)) s1 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[1]), .Q(q[1]));
    FDRE #(.INIT(1'b0)) s2 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[2]), .Q(q[2]));
    FDRE #(.INIT(1'b0)) s3 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[3]), .Q(q[3]));
    FDRE #(.INIT(1'b0)) s4 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[4]), .Q(q[4]));
    FDRE #(.INIT(1'b0)) s5 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[5]), .Q(q[5]));
    FDRE #(.INIT(1'b0)) s6 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[6]), .Q(q[6]));
    FDRE #(.INIT(1'b0)) s7 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[7]), .Q(q[7]));
    
    //one-hot logic
    //start state
    assign d[0] = (q[2] & timeUp & ~btnU & ~btnD) | (q[0] & ~btnC);
    //initialize game
    assign d[1] = (q[0] & btnC) | (btnC & (q[5] | q[6] | q[7])) | (q[1] & ~lastled);
    //game running
    assign d[2] = (q[1] & lastled) | (q[2] & ~timeUp & ~btnU & ~btnD);
    //u first
    assign d[3] = (q[2] & btnU & ~btnD) | (q[3] & ~timeUp & ~btnD);
    //d first
    assign d[4] = (q[2] & btnD & ~btnU) | (q[4] & ~timeUp & ~btnU);
    //d win
    assign d[5] = (q[3] & btnD) | (q[4] & timeUp & ~btnU) | (q[5] & ~btnC);
    //u win 
    assign d[6] = (q[4] & btnU) | (q[3] & timeUp & ~btnD) | (q[6] & ~btnC);
    //flash
    assign d[7] = (q[2] & btnU & btnD & ~timeUp) | (q[7] & ~btnC);
    
    //outputs for state machine
    //assign showtime = (q[1] & ~lastled) | (q[2] & sw0);
    assign showtime = (q[1] & ~lastled);
    assign loadtime = btnC & (q[0] | q[5] | q[6] | q[7]);
    assign runtime = q[2] | q[3] | q[4];
    assign incU = q[7] | q[6];
    assign incD = q[7] | q[5];
    //assign showScore = q[0] | q[5] | q[6] | q[7];
    assign showScore = q[0];
    assign flashU = q[7] | q[6];
    assign flashD = q[7] | q[5];
    
    //assign dout[7:0]  = d[7:0];
    //assign qout = q;
endmodule
