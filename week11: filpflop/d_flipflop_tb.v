`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 21:41:46
// Design Name: 
// Module Name: d_flipflop_tb
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

module dffD_tb();
reg d, clk;
wire q, nq;
dffD con(d, q, nq, clk);
initial begin
clk = 0; d = 0;
d = #10 1;
end
always clk = #5 ~clk;
endmodule