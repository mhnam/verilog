`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/03 19:20:02
// Design Name: 
// Module Name: shift_register
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

module shift(shr,rst,shr_in,clk,Q);

input shr, shr_in;
input clk, rst;
output [3:0] Q;

reg [3:0] R;

always @(posedge clk) begin
    if(rst == 1) begin
        R<=4'b0000;
    end
    else if (shr ==1) begin
        R[3] <= shr_in; R[2] <= R[3];
        R[1] <= R[2]; R[0] <= R[1];
    end
end

assign Q =R;

endmodule
