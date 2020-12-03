`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/03 19:20:02
// Design Name: 
// Module Name: ring_counter
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

module ring(clk,clr,Q);
	input clk;
	input clr;
    output [3:0] Q;
    reg [3:0] Q;

    always @(posedge clk or posedge clr)
	    begin
	      if(clr==1)
		      Q<=1;
	      else begin
		      Q[3] <= Q[0];
		      Q[2:0] <= Q[3:1];
		  end
    end
endmodule