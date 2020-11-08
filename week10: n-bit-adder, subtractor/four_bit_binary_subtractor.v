`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 15:09:48
// Design Name: 
// Module Name: four_bit_binary_adder
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

module sub1bit(A, B, bi, d, bo);

input A, B, bi;
output d, bo;
assign d = (A ^ B) ^ bi;
assign bo = (~(A ^ B) & bi) | (~A & B);

endmodule

module sub4bit(A, B, bi, d, bo);

input[3:0] A, B;
input bi;
output[3:0] d;
output bo;
wire[3:0] A, B, d; wire bi, bo;
wire[2:0] bout;

sub1bit fs1(A[0], B[0], bi, d[0], bout[0]);
sub1bit fs2(A[1], B[1], bout[0], d[1], bout[1]);
sub1bit fs3(A[2], B[2], bout[1], d[2], bout[2]);
sub1bit fs4(A[3], B[3], bout[2], d[3], bo);

endmodule