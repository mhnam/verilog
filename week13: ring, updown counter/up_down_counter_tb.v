`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/03 19:21:03
// Design Name: 
// Module Name: up_down_counter_tb
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

module updown_tb();
reg clk,clr,up;
wire [3:0] Q;
wire x;
wire [6:0] seg;

updown connect(clk,up,clr,Q,x,seg);

always #5 clk = ~clk;
always #20 up = ~up;

initial begin
up<=1;
clk <= 0;
clr <= 0;
#20 clr <=0;
#80 clr <=1;
#40 clr <=0;
#20 clr <=1;
#30 clr <=0;
end
endmodule