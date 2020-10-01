`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/01 19:35:14
// Design Name: 
// Module Name: four_input_nand_gate_b_tb
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


module four_input_nand_gate_b_tb;

reg aa;
reg bb;
reg cc;
reg dd;
wire ee;
wire ff;
wire gg;

four_input_nand_gate_b u_four_input_nand_gate_b(
.a(aa),
.b(bb),
.c(cc),
.d(dd),
.e(ee),
.f(ff),
.g(gg));

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = #400 ~aa;
always bb = #200 ~bb;
always cc = #100 ~cc;
always dd = #50 ~dd;

initial begin
        #800
        $finish;
end

endmodule