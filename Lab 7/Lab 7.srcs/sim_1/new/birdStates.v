`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2019 03:32:07 PM
// Design Name: 
// Module Name: birdStates
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


module birdStates();
    //inputs
    reg clock;
    reg [10:0] Hstart;
    reg [10:0] Vstart;
    reg [10:0] Hpixel;
    reg [10:0] Vpixel;
    reg [1:0] frame;
    reg start;
    reg timeup;
    reg win;
    reg tagzone;
    reg [3:0] direction;
    //outputs
    wire [1:0] fun;
    wire red;
    wire blue;
    wire tagged;
    birb UUT (.clock(clock), .Hstart(Hstart), .Vstart(Vstart), .Hpixel(Hpixel), .Vpixel(Vpixel), 
    .frame(frame), .start(start),
    .timeup(timeup), .win(win), .tagzone(tagzone), .direction(direction),
    .fun(fun), .red(red), .blue(blue), .tagged(tagged));
    
    
    // Clock parameters
   parameter PERIOD = 10;
   parameter real DUTY_CYCLE = 0.5;
   parameter OFFSET = 2;

	initial
	begin
		clock = 1'b0;
	   #OFFSET
		clock = 1'b1;
      forever
         begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clock = ~clock;
         end
	end
	
	initial // the only input needed is a GSR pulse on sw[0]
	begin // if you have others, set them to 0 or 1
	
	Hstart = 11'd111;
	Vstart = 11'd111;
	
	Hpixel = 11'd222;
	Vpixel = 11'd222;
	frame [1:0] = {1'b0, 1'b0};
	
	start = 1'b1;
	timeup = 1'b0;
	win = 1'b0;
	tagzone = 1'b0;
	direction [3:0]  = {4'd1000};
	
	#100
	
	tagzone = 1'b1;
	
	#100
	tagzone = 1'b0;
	
	
    
    end
endmodule
