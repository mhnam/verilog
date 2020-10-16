`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 20:56:20
// Design Name: 
// Module Name: code_converter
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


module code_converter(
    input a,
    input b,
    input c,
    input d,
    output w,
    output x,
    output y,
    output z
);

assign w = a | (b & (c | d));
assign x = a | (b & (c | ~d));
assign y = a | (~b & c) | (b & ~c & d);
assign z = d;

endmodule