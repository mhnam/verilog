`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 21:41:46
// Design Name: 
// Module Name: d_latch_tb
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

module dllD_tb();
reg d, en;
wire q, nq;
dllD con(d, q, nq, en);
initial begin
en = 0; d = 0;
d = #10 1;
end
always en = #5 ~en;
endmodule