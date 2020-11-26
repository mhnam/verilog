`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/26 21:17:33
// Design Name: 
// Module Name: two_bit_counter_tb
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


module two_bit_counter_tb();
reg clk; reg reset;
wire [1:0] O;
two_bit_counter connect(clk, reset, O);

initial begin
clk = 0; reset = 0;
end;

always clk = #10 ~clk;
always @(posedge clk) begin
end
endmodule