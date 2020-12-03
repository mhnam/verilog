`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/03 19:20:02
// Design Name: 
// Module Name: up_down_counter
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

module updown(clk,up,clr,Q,x,seg);

	input clk,up;
	input clr;
    output [3:0] Q;
    output x;
    output [6:0] seg;
    reg [3:0] Q;
    reg [6:0] seg;

    always @(posedge clk or posedge clr)
	    begin
	       if(~clr) 
	           begin
	               Q <=0;
	               seg = 7'b1111111;
	           end
	       else if(up) 
	           begin
	               seg = 7'b0111110;
	               Q=Q+1;
	               
	           end
	       else 
	           begin
	               seg = 7'b0111101;
	               Q=Q-1;
	           end
	end

assign x = 1;

endmodule