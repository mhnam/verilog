`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/19 00:09:26
// Design Name: 
// Module Name: odd_parity_bit_checker
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

module odd_parity_bit_checker(
    input a,
    input b,
    input c,
    input d,
    input p,
    output pec
);

assign pec = ~(a ^ b ^ c ^ d ^ p);

endmodule
