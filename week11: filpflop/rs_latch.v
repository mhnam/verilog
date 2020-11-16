`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/13 15:07:41
// Design Name: 
// Module Name: rs_flipflop
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
module rsllD(r, s, q, nq, en);
input r, s, en;
output q, nq;
reg q, nq;

always@(posedge en) begin
case(s)
    0: if (r == 0) begin
        q <= q; nq <= nq;
    end
    else begin
        q <= 0; nq <= 1;
    end
    1: if (r == 0) begin
        q <= 1; nq <= 0;
    end
endcase
end
endmodule
