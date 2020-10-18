`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/18 23:03:48
// Design Name: 
// Module Name: even_parity_bit_generator
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

module even_parity_bit_generator(
    input a,
    input b,
    input c,
    input d,
    output e
);

assign e = a ^ b ^ c ^ d;

endmodule
