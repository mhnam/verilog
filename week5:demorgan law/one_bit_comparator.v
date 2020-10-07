`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/07 11:04:24
// Design Name: 
// Module Name: one_bit_comparator
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


module one_bit_comparator(
    input a,
    input b,
    output eq,
    output neq,
    output l,
    output g
    );
    
assign l = (~a) & b;
assign g = a & (~b);
assign eq = ~(l | g);
assign neq = l | g;

endmodule
