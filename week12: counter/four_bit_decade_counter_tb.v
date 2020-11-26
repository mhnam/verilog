`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/26 21:17:33
// Design Name: 
// Module Name: four_bit_decade_counter_tb
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

module four_bit_decade_counter_tb();
reg clk; reg reset;
wire [3:0] O;
four_bit_decade_counter connect(clk, reset, O);

initial begin
clk = 0; reset = 0;
end;

always clk = #10 ~clk;
always @(posedge clk) begin
end
endmodule