`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/07 11:04:24
// Design Name: 
// Module Name: two_input_demorgan_type_1_a
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


module two_input_demorgan_type_1_a(
    input a,
    input b,
    output c
    );
    
assign c = ~ (a | b);
    
endmodule
