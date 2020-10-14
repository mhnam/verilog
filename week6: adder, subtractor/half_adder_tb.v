`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 20:55:38
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;

reg aa;
reg bb;
wire ss;
wire ccout;

half_adder u_half_adder(
    .a (aa),
    .b (bb),
    .s (ss),
    .cout (ccout)
);

initial aa = 1'b0;
initial bb = 1'b0;
always aa = #200 ~ aa;
always bb = #100 ~bb;

initial begin
        #400
        $finish;
end

endmodule