`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/01 21:59:15
// Design Name: 
// Module Name: four_input_xor_gate_a
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


module four_input_xor_gate_a(
    input a,
    input b,
    input c,
    input d,
    output e
);

assign e = a ^ b ^ c ^ d;

endmodule
