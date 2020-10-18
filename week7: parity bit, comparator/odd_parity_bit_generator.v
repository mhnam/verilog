`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/19 00:09:26
// Design Name: 
// Module Name: odd_parity_bit_generator
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

module odd_parity_bit_generator(
    input a,
    input b,
    input c,
    input d,
    output e
);

assign e = ~(a ^ b ^ c ^ d);

endmodule
