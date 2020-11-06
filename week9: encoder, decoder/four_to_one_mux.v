`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:44:27
// Design Name: 
// Module Name: four_to_one_mux
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


module four_to_one_mux(
    input a,
    input b,
    input c,
    input d,
    input s0,
    input s1,
    output out
);

assign out = (a & ~s1 & ~s0) | (b & ~s1 & s0) | (c & s1 & ~s0) | (d & s1 & s0);

endmodule
