`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/26 20:09:44
// Design Name: 
// Module Name: two_bit_counter
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

module two_bit_counter(
    input clk, reset,
    output wire [1:0] q
    );
    
    wire[1:0] qc;
    wire[1:0] tmpq;
    wire[2:0] tmpwire;
    t_jk_ff t_b1(1'b1,1'b1,clk,tmpq[0], qc[0]);
    and(tmpwire[0], tmpq[0], qc[1]);
    and(tmpwire[1], tmpq[0], tmpq[1]);
    or(tmpwire[2], tmpwire[1], tmpwire[0]);
    t_jk_ff t_b2(tmpwire[2], tmpwire[2], clk, tmpq[1], qc[1]);
  
    and(q[0], ~reset, tmpq[0]);
    and(q[1], ~reset, tmpq[1]);
   endmodule
   
module t_jk_ff(
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