`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 01:22:29 PM
// Design Name: 
// Module Name: negativeSign
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


module negativeSign(
    input enable,
    
    output [6:0] s
    );
    //make a negative sign (active low!)
    assign s[0] = ~(enable & 1'b0);
    assign s[1] = ~(enable & 1'b0);
    assign s[2] = ~(enable & 1'b0);
    assign s[3] = ~(enable & 1'b0);
    assign s[4] = ~(enable & 1'b0);
    assign s[5] = ~(enable & 1'b0);
    assign s[6] = ~(enable & 1'b0);
    
endmodule
