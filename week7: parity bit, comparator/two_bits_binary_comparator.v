`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/18 23:03:48
// Design Name: 
// Module Name: two_bits_binary_comparator
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

module two_bits_binary_comparator(
    input a1,
    input a2,
    input b1,
    input b2,
    output f1,
    output f2,
    output f3
);

assign f1 = (a1 & ~b1) | (a2 & ~b1 & ~b2) | (a1 & a2 & ~b2); /*greater than*/
assign f2 = (a1 ^~ b1) & (a2 ^~ b2); /*equal*/
assign f3 = (~a1 & b1) | (~a1 & ~a2 & b2) | (~a2 & b1 & b2); /*less than*/

endmodule