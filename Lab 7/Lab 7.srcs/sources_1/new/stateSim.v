`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2019 01:03:27 PM
// Design Name: 
// Module Name: stateSim
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


module stateSim();

    reg clock;
    reg btnC;
    reg timeup;
    reg tagged;
    reg alltagged;
    
    wire [3:0] fun;
    
    wire win;
    wire loadtime;
    wire starttime;
    wire runtime;

    gameState UUT (.clock(clock), .btnC(btnC), .timeup(timeup), .tagged(tagged), .alltagged(alltagged),
    .fun(fun), .win(win), .loadtime(loadtime), .starttime(starttime), .runtime(runtime));
    
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
	
    btnC = 1'b0;
    timeup = 1'b0;
    tagged = 1'b0;
    alltagged =1'b0;
    
    
    end
endmodule
