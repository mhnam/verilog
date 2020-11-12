`timescale 1ns / 1ps

module adder1bit(A, B, Ci, S, Co);

input A, B, Ci;
output S, Co;
assign S = A^B^Ci;
assign Co = A&B | Ci&(A^B);

endmodule

module adder4bit(A, B, Ci, S, Co);
input [3:0] A, B; input Ci;
output [3:0] S; output Co;

wire [3:0] A, B, S; wire Ci, Co;
wire [2:0] C;

adder1bit add1(A[0], B[0], Ci, S[0], C[0]);
adder1bit add2(A[1], B[1], C[0], S[1], C[1]);
adder1bit add3(A[2], B[2], C[1], S[2], C[2]);
adder1bit add4(A[3], B[3], C[2], S[3], Co);

endmodule