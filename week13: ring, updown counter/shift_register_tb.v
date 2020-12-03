`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/03 19:21:03
// Design Name: 
// Module Name: shift_register_tb
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

module shift_tb();
reg clk;
reg rst;
reg shr,shr_in;
wire [3:0] out;
shift connect(shr,rst,shr_in,clk,out);

always #5 clk = ~clk;
always #3 shr = ~shr;
always #20 shr_in = ~shr_in;

initial begin
shr <= 0;
shr_in <= 1;
clk <= 0;
rst <= 0;
#20 rst <=0;
#80 rst <=1;
#50 rst <=0;
end
endmodule