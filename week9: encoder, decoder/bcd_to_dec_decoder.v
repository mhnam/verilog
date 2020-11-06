`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:44:27
// Design Name: 
// Module Name: bcd_to_dec_decoder
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


module bcd_to_dec_decoder(
    input a0,
    input a1,
    input a2,
    input a3,
    output o0,
    output o1,
    output o2,
    output o3,
    output o4,
    output o5,
    output o6,
    output o7,
    output o8,
    output o9
);

assign o0= ~a0 & ~a1 & ~a2 & ~a3;
assign o1= a0 & ~a1 & ~a2 & ~a3;
assign o2 = ~a0 & a1 & ~a2 & ~a3;
assign o3 = a0 & a1 & ~a2 & ~a3;
assign o4 = ~a0 & ~a1 & a2 & ~a3;
assign o5 = a0 & ~a1 & a2 & ~a3;
assign o6 = ~a0 & a1 & a2 & ~a3;
assign o7 = a0 & a1 & a2 & ~a3;
assign o8 = ~a0 & ~a1 & ~a2 & a3;
assign o9 = a0 & ~a1 & ~a2 & a3;

endmodule