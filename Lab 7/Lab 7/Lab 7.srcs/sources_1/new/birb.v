`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2019 04:20:04 PM
// Design Name: 
// Module Name: birb
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


module birb(
    input clock,
    input [10:0] Hstart,
    input [10:0] Vstart, 
    input [10:0] Hpixel,
    input [10:0] Vpixel,
    
    input [1:0] frame, //don't ask please...
    input start, //start signal to start game
    input timeup, //times up
    input win, //signal if you win the game (halts all birds)
    input caught, //if you catch a bird, (from net FSM)
    input [3:0] direction,
    
    output red,
    output blue
    //output [10:0] Hpos,
    //output [10:0] Vpos
    );
    
    wire [8:0] d; //inputs for flipflops
    wire [8:0] q; //outputs for flipflops
    
    //flopflips
    FDRE #(.INIT(1'b1)) s0 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[0]), .Q(q[0])); //start here
    FDRE #(.INIT(1'b0)) s1to9 [8:1] (.C({8{clock}}), .R({8{1'b0}}), .CE({8{1'b1}}), .D(d[8:1]), .Q(q[8:1]));
    
    //wall edges
    wire Hleft, Hright;
    wire Vtop, Vbot;
    wire [10:0] Hpos;
    wire [10:0] Vpos;
    
    assign Hleft = 10'd8;
    assign Hright = 10'd631;
    assign Vtop = 10'd8;
    assign Vbot = 10'd471; 
    
    //statemachines
    //idle
    assign d[0] = (win & ~q[0]) | (q[0] & ~start);
    //upleft
    assign d[1] = (q[0] & start & direction[3]) | (q[2] & (Hpos == Hleft)) | (q[3] & (Vpos == Vtop)) | 
                (q[1] & ~caught & ((Hpos != Hleft) | (Vpos != Vtop)));
    //upright
    assign d[2] = (q[0] & start & direction[2]) | (q[4] & (Vpos == Vbot)) | (q[0] & (Hpos == Hleft)) | 
                (q[2] & ~caught & ((Hpos != Hleft) | (Vpos != Vtop)));
    //downleft
    assign d[3] = (q[0] & start & direction[1]) | (q[1] & (Vpos == Vtop)) | (q[4] & (Hpos == Hright)) |
                (q[3] & ~caught & ((Hpos != Hleft) | (Vpos != Vtop)));
    //downright
    assign d[4] = (q[0] & start & direction[0]) | (q[3] & (Hpos == Hleft)) | (q[3] & (Vpos == Vtop)) |
                (q[4] & ~caught & ((Hpos != Hleft) | (Vpos != Vtop)));
    
    
    
    //output
    
    //assign red = q[0] | q[1] | q[2] | q[3] | q[4];
    /*
    assign blue = 1'b0;
   
    assign Hpos = (Hcurr + ({9'b0, (q[2] | q[4]) & frame, 1'b0})) | (Hcurr + ({{10{(q[1] | q[3]) & frame}}, 1'b0})); 
    assign Vpos = (Vcurr + ({9'b0, (q[1] | q[2]) & frame, 1'b0})) | (Vcurr + ({{10{(q[3] | q[4]) & frame}}, 1'b0}));
    
    */
    //counters to determine position
    
    countUD16L horizontal (.clock(clock), .Up((frame[1] | frame[0]) & (q[2] | q[4])), .Dw(frame & (q[3] & q[1])), .LD(start), .d({5'b0 ,Hstart}), .q(Hpos));
    countUD16L vertical (.clock(clock), .Up((frame[1] | frame[0]) & (q[1] | q[2])), .Dw(frame & (q[3] & q[4])), .LD(start), .d({5'b0 ,Vstart}), .q(Vpos));

    wire redout;
    birb2 position (.clock(clock), .Hpixel(Hpixel), .Vpixel(Vpixel), .red(redout),
            .birdposx((Hpos & ~q[0]) | (Hstart & q[0])), .birdposy((Vpos & ~q[0]) | (Vstart & q[0])));
    
    assign red = redout & (q[0] | q[1] | q[2] | q[3] | q[4]);
endmodule
