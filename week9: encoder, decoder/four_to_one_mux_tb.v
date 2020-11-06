`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:45:44
// Design Name: 
// Module Name: four_to_one_mux_tb
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

module four_to_one_mux_tb;
reg aa;
reg bb;
reg cc;
reg dd;
reg ss0;
reg ss1;
wire out;

four_to_one_mux u_four_to_one_mux(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .s0 (ss0),
    .s1 (ss1),
    .out (out)
);

initial ss0 = 1'b0;
initial ss1 = 1'b0;
initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always ss1 = #320 ~ss1;
always ss0 = #160 ~ss0;
always aa = #80 ~aa;
always bb = #40 ~bb;
always cc = #20 ~cc;
always dd = #10 ~dd;

initial begin
        #640
        $finish;
end

endmodule