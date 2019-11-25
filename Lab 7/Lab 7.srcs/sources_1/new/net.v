`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2019 05:21:10 PM
// Design Name: 
// Module Name: net
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


module net(
    input clock,
    input [10:0] Hstart,
    input [10:0] Vstart,
    input [10:0] Hpixel,
    input [10:0] Vpixel,
    input [1:0] size,
    input [3:0] btn, //btnU, btnD, btnL, btnR
    input frame,
    input start,
    input win,
    
    output [3:0] fun,
    output red,
    output blue,
    output green,
    output tagzone
    );
    
    //control the big size
    wire [10:0] bigout;
    wire [10:0] biggerout;
   
    m2_1x8 huge (.in0(11'b0), .in1(11'd64), .sel(size[0]), .o(bigout));
    m2_1x8 hugest (.in0(11'b0), .in1(11'd128), .sel(size[1]), .o(biggerout));
    
    wire [4:0] d; //inputs for flipflops
    wire [4:0] q; //outputs for flipflops
    
    //flopflips
    FDRE #(.INIT(1'b1)) s0 (.C(clock), .CE(1'b1), .R(1'b0), .D(d[0]), .Q(q[0])); //start here
    FDRE #(.INIT(1'b0)) s1to4 [4:1] (.C({4{clock}}), .R({4{1'b0}}), .CE({4{1'b1}}), .D(d[4:1]), .Q(q[4:1]));

    //wall edges
    wire [10:0] Hleft, Hright;
    wire [10:0] Vtop, Vbot;
    wire [10:0] Hpos, Vpos;
    
    assign Hleft = 11'd8;
    assign Hright = (11'd599 - bigout - biggerout);
    assign Vtop = 11'd8;
    assign Vbot = (11'd439 - bigout - biggerout); 
    
    //state machine
    //idle
    assign d[0] = (win & ~q[0]) | (q[0] & ~start);
    //up left
    assign d[1] = ((q[0] & start) | (q[2] & (Hpos >= Hright) & (Vpos > Vtop)) | (q[3] & (Vpos >= Vbot) & (Hpos > Hleft)) |
                    (q[1] & (Hpos > Hleft) & (Vpos > Vtop) & (~btn[2] & ~btn[0])) | (q[4] & Hpos >= Hright & Vpos >= Vbot))
                    | (q[2] & btn[1] & ~btn[2]) | (q[3] & btn[3] & ~btn[0]);
    //up right
    assign d[2] = (q[4] & (Vpos >= Vbot) & (Hpos < Hright)) | (q[1] & (Hpos <= Hleft) & (Vpos > Vtop)) |
                    (q[2] & (Hpos < Hright) & (Vpos > Vtop) & (~btn[2] & ~btn[1] )) | (q[3] & Hpos <= Hleft & Vpos >= Vbot)
                    | (q[1] & btn[0] & ~btn[2]) | (q[4] & btn[3] & ~btn[1]); 
    
    //down left
    assign d[3] = (q[1] & (Vpos <= Vtop) & (Hpos > Hleft)) | (q[4] & (Hpos >= Hright) & (Vpos > Vtop)) |
                    (q[3] & (Hpos > Hleft) & (Vpos < Vbot) & (~btn[3] & ~btn[0])) | (q[2] & Hpos >= Hright & Vpos <= Vtop)
                    | (q[1] & btn[2] & ~btn[0]) | (q[4] & btn[1] & ~btn[3]);
    
    //down right
    assign d[4] = (q[3] & (Hpos <= Hleft) & (Vpos < Vbot)) | (q[2] & (Vpos <= Vtop) & (Hpos < Hright)) |
                    (q[4] & (Hpos < Hright) & (Vpos < Vbot) & (~btn[3] & ~btn[1])) | (q[1] & Hpos <= Hleft & Vpos <= Vtop)
                    | (q[2] & btn[2] & ~btn[1]) | (q[3] & btn[0] & ~btn[3]);
    
    //counter stuff
    wire [15:0] hout, vout;
    wire [15:0] hin, vin;
    
    assign hin [15:0] = {5'b0, Hstart};
    assign vin [15:0] = {5'b0, Vstart};
    
    countUD16L Horizontal (.clock(clock), .Up(frame & (q[2] | q[4])), .Dw(frame & (q[1] | q[3])), .LD(start & q[0]), .d(hin), .q(hout));
    countUD16L Vertical (.clock(clock), .Up(frame & (q[3] | q[4])), .Dw(frame & (q[1] | q[2])), .LD(start & q[0]), .d(vin), .q(vout));
    
    assign Hpos [10:0] = hout [10:0];
    assign Vpos [10:0] = vout [10:0];
    
    wire [10:0] hmux, vmux;
    m2_1x8 hchoose (.in0(Hstart), .in1(hout), .sel(q[1] | q[2] | q[3] | q[4]), .o(hmux));
    m2_1x8 vchoose (.in0(Vstart), .in1(vout), .sel(q[1] | q[2] | q[3] | q[4]), .o(vmux));
    
    wire blueout, greenout;
    netnet position (.clock(clock), .Hpixel(Hpixel), .Vpixel(Vpixel), .netposx(hmux), .netposy(vmux), 
                    .bigout(bigout), .biggerout(biggerout), .blue(blueout), .green(greenout), .tagzone());
                    
    assign blue = blueout;
    assign red = 1'b0;
    assign green = greenout;
    assign tagzone = blueout;
    
    assign fun [3:0] = {q[1] , q[2] , q[3] , q[4]};
endmodule
