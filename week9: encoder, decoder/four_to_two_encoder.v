`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:44:27
// Design Name: 
// Module Name: four_to_two_encoder
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

module four_to_two_encoder(
    input a,
    input b,
    input c,
    input d,
    output e0,
    output e1
);

assign e0 = c | d;
assign e1 = b | d;

endmodule