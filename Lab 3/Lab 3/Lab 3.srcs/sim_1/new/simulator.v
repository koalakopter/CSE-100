`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2019 05:25:10 PM
// Design Name: 
// Module Name: simulator
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


module simulator();
    reg [7:0] sw;
    reg btnC, btnR, clkin;
    wire [6:0] seg;
    wire dp; 
    wire [3:0] an;
    //wire [7:0] test;
    
    //main UUT(.sw(sw), .btnC(btnC), .btnR(btnR), .clkin(clkin), .seg(seg), .dp(dp), .an(an[3:0]), .test(test[7:0]));
    main UUT(.sw(sw), .btnC(btnC), .btnR(btnR), .clkin(clkin), .seg(seg), .dp(dp), .an(an[3:0]));

    parameter PERIOD = 10;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;

    initial    // Clock process for clkin
    begin
        #OFFSET
		  clkin = 1'b1;
        forever
        begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clkin = ~clkin;
        end
	end
	
   initial
   begin
   sw[7:0] = 8'b00000000;
   btnC = 1'b0;
   btnR = 1'b0;
	 // add your stimuli here
	 // to set signal foo to value 0 use
	 // foo = 1'b0;
	 // to set signal foo to value 1 use
	 // foo = 1'b1;
	 //always advance time my multiples of 100ns
	 // to advance time by 100ns use the following line
	 #100 //time is 100
	 sw[7:0] = 8'b00010001; //11
	 
	 #100 //time is 200
	 sw[7:0] = 8'b00100010; //22
	 
	 #100 //time is 300
	 //btnC = 1'b1;
	 sw[7:0] = 8'b00110011; //33
	 #100 //time is 400
	 //btnC = 1'b0;
	 sw[7:0] = 8'b01000100; //44
	 
	 #100 //time is 500
	 sw[7:0] = 8'b01010101; //55
	 
	 #100 //time is 600
	 sw[7:0] = 8'b01100110; //66
	 
	 #100 //time is 700
	 sw[7:0] = 8'b01110111; //77
	 
	 #100 //time is 800
	 sw[7:0] = 8'b10001000; //88
	 
	 #100 //time is 900
	 sw[7:0] = 8'b10011001; //99
	 
	 #100 //time is 1100
	 sw[7:0] = 8'b10101010; //AA
	 
	 #100 //time is 1200
	 sw[7:0] = 8'b10111011; //BB
	 
	 #100 //time is 1300
	 sw[7:0] = 8'b11001100; //CC
	 
	 #100 //time is 1400
	 sw[7:0] = 8'b11011101; //DD
	 
	 #100 //time is 1500
	 sw[7:0] = 8'b11101110; //EE
	 
	 #100 //time is 1600
	 sw[7:0] = 8'b11111111; //FF
	 
	 //now let's test different combinations
	 #100 //time is 1700
	 
	 sw[7:0] = 8'b00011111; //1F
	 #200 //time is 1900
	 
	 sw[7:0] = 8'b10100010; //A2
	 #200 //time is 2100
	 
	 sw[7:0] = 8'b00101011; //2B
	 #200 //time is 2300
	 
	 sw[7:0] = 8'b01101001; //69
	 
	 
	end

endmodule
