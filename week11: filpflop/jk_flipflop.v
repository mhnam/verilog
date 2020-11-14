`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/13 15:07:41
// Design Name: 
// Module Name: jk_flipflop
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
module jkffD(q, qb, j, k, clk, reset);
output q, qb;
input j, k, clk, reset;
reg q;
assign qb = ~q;
always @(posedge clk) begin
    if (reset)
        q <= 0;
    else if (k==0 & j==0)
        q <= q;
    else if (k==0 & j==1)
        q <= 1;
    else if (k==1 & j==0)
        q <= 0;
    else
        q <= ~q;
end
endmodule