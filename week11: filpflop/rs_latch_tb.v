`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/13 15:12:32
// Design Name: 
// Module Name: rs_flipflop_tb
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

module rsllD_tb();
reg r, s, en;
wire q, nq;
rsllD con(r, s, q, nq, en);
initial begin
en = 0; s = 1; r = 0;
s = #10 0;
r = #10 1;
r = #10 0;
s = #10 1; r = 1;
end
always en = #5 ~en;
endmodule
