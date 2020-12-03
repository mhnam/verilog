`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/03 19:21:03
// Design Name: 
// Module Name: ring_counter_tb
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

module ring_tb();
//x,clk,preset,clear,outz
reg clk,clr;
wire [3:0] Q;

ring connect(clk,clr,Q);
always #5 clk = ~clk;

initial begin
 clk <= 0;
 clr <= 0;
 #20 clr <=0;
 #80 clr <=1;
 #50 clr <=0;

end
endmodule