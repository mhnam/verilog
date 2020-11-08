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

module adder1bit(A, B, Ci, S, Co);

input A, B, Ci;
output S, Co;
assign S = A ^ B ^ Ci;
assign Co = Ci & (A ^ B) | (A & B);

endmodule

module adder4bit(A, B, Ci, S, Co);

input[3:0] A, B;
input Ci;
output[3:0] S;
output Co;
wire[3:0] A, B, S; wire Ci, Co;
wire[2:0] C;

adder1bit fa1(A[0], B[0], Ci, S[0], C[0]);
adder1bit fa2(A[1], B[1], C[0], S[1], C[1]);
adder1bit fa3(A[2], B[2], C[1], S[2], C[2]);
adder1bit fa4(A[3], B[3], C[2], S[3], Co);

endmodule