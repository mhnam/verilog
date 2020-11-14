`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/13 15:12:32
// Design Name: 
// Module Name: jk_flipflop_tb
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
module jkfffD_tb();
reg j, k, clk, reset;
wire q, qb;
jkffD con(q, qb, j, k, clk, reset);
initial begin
clk = 0; reset = 1; j = 1; k = 0;
reset = #10 0;
j = #10 0;
k = #10 1;
k = #10 0;
j = #10 1; k = 1;
end
always clk = #5 ~clk;
endmodule