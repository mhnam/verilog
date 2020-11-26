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

module four_bit_decade_counter(
    input clk, reset,
    output wire [3:0] q
    );
    
    wire[3:0] qc;
    wire[3:0] tmpq;
    wire[6:0] tmpwire;
    jk_ff b1(1'b1,1'b1,clk,tmpq[0], qc[0]);
    and(tmpwire[0], tmpq[0], qc[3]);
    jk_ff b2(tmpwire[0], tmpwire[0], clk, tmpq[1], qc[1]);
    and(tmpwire[1], tmpq[0], tmpq[1]);
    jk_ff b3(tmpwire[1], tmpwire[1], clk, tmpq[2], qc[2]);
    and(tmpwire[2], tmpwire[1], tmpq[2]);
    and(tmpwire[3], tmpq[0], tmpq[3]); /*chk whether 1001*/
    or(tmpwire[4], tmpwire[2], tmpwire[3]);
    jk_ff b4(tmpwire[4], tmpwire[4], clk, tmpq[3], qc[3]);
        
    and(q[0], ~reset, tmpq[0]);
    and(q[1], ~reset, tmpq[1]);
    and(q[2], ~reset, tmpq[2]);
    and(q[3], ~reset, tmpq[3]);
   endmodule
   
module jk_ff(
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