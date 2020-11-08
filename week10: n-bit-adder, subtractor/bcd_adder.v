`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 15:09:48
// Design Name: 
// Module Name: bcd_adder
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

module BCDadder1bit(A, B, Ci, S, Co);

input A, B, Ci;
output S, Co;
assign S = A ^ B ^ Ci;
assign Co = Ci & (A ^ B) | (A & B);

endmodule

module BCDadder4bit(A, B, Ci, S, Co);

input[3:0] A, B;
input Ci;
output[3:0] S;
output Co;
wire[3:0] A, B, S; wire Ci, Co;
wire[2:0] C;

BCDadder1bit BCDfa1(A[0], B[0], Ci, S[0], C[0]);
BCDadder1bit BCDfa2(A[1], B[1], C[0], S[1], C[1]);
BCDadder1bit BCDfa3(A[2], B[2], C[1], S[2], C[2]);
BCDadder1bit BCDfa4(A[3], B[3], C[2], S[3], Co);

endmodule

module BCD(A, B, S, C);

input[3:0] A, B;
output[3:0] S;
output C;
wire[3:0] B2, A2; wire Cout;

BCDadder4bit BCDadd1(A, B, 0, B2, Cout);/*result will be stored in S[3:0], and C*/
assign C = (B2[3] & B2[1]) | (B2[3] & B2[2]) | Cout; /*generate tenth digit*/
assign A2= 4'b0110*C;
BCDadder4bit BCDadd2(A2,B2,0,S);

endmodule