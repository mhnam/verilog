`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/18 23:03:48
// Design Name: 
// Module Name: even_parity_bit_checker
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

module even_parity_bit_checker(
    input a,
    input b,
    input c,
    input d,
    input p,
    output pec
);

assign pec = a ^ b ^ c ^ d ^ p;

endmodule
