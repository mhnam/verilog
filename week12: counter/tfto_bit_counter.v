`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/26 20:09:44
// Design Name: 
// Module Name: four_bit_decade_counter
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

module tfto_decade_counter(
    input clk, reset,
    output wire [3:0] q
    );
    wire [3:0] tmpq;
    wire check;
    wire tmpwire;
    reg [3:0] B;
    tfto_four_bit_decade_counter tfto_fourbit(clk, reset, tmpq);
    assign check = (tmpq[3]&~tmpq[2])|(tmpq[2]&tmpq[0])|(tmpq[2]&tmpq[1]&~tmpq[0]);
    always @(check)
        if(check == 1'b1) begin
          B = 4'b0110;
        end
        else begin
          B = 4'b0000;
        end
    adder4bit add0(tmpq, B, 0, q, tmpwire);
endmodule

module tfto_four_bit_decade_counter(
    input clk, reset,
    output wire [3:0] q
    );
    
    wire[3:0] qc;
    wire[3:0] tmpq;
    wire[6:0] tmpwire;
    tfto_jk_ff tfto_b1(1'b1,1'b1,clk,tmpq[0], qc[0]);
    and(tmpwire[0], tmpq[0], qc[3]);
    tfto_jk_ff tfto_b2(tmpwire[0], tmpwire[0], clk, tmpq[1], qc[1]);
    and(tmpwire[1], tmpq[0], tmpq[1]);
    tfto_jk_ff tfto_b3(tmpwire[1], tmpwire[1], clk, tmpq[2], qc[2]);
    and(tmpwire[2], tmpwire[1], tmpq[2]);
    and(tmpwire[3], tmpq[0], tmpq[3]);
    or(tmpwire[4], tmpwire[2], tmpwire[3]);
    tfto_jk_ff tfto_b4(tmpwire[4], tmpwire[4], clk, tmpq[3], qc[3]);
        
    and(q[0], ~reset, tmpq[0]);
    and(q[1], ~reset, tmpq[1]);
    and(q[2], ~reset, tmpq[2]);
    and(q[3], ~reset, tmpq[3]);
   endmodule
   
module tfto_jk_ff(
    input j, k, clk,
    output reg q, qc
);
    initial begin
        q=0;
        qc=1;
    end
    always@(negedge clk)begin
        if(j==0&&k==0) begin
            q<=q;
            qc<=qc;
        end
        if(j==0&&k==1) begin
            q=0;
            qc=1;
        end
        if(j==1&&k==0) begin
            q=1;
            qc=0;
        end
        if(j==1&&k==1)begin
            q<=qc;
            qc<=q;
        end
    end
endmodule

module adder1bit(A, B, Ci, S, Co);

input A, B, Ci;
output S, Co;
assign S=A^B^Ci;
assign Co=(A&B)|((A^B)&Ci);

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