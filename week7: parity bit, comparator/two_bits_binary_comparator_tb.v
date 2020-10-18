`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/18 23:07:17
// Design Name: 
// Module Name: two_bits_binary_comparator_tb
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


module two_bits_binary_comparator_tb;
reg aa;
reg bb;
reg cc;
reg dd;
wire f11;
wire f22;
wire f33;

two_bits_binary_comparator u_two_bits_binary_comparator(
    .a1 (aa),
    .a2 (bb),
    .b1 (cc),
    .b2 (dd),
    .f1 (f11),
    .f2 (f22),
    .f3 (f33)    
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;
always aa = #400 ~ aa;
always bb = #200 ~bb;
always cc = #100 ~cc;
always dd = #50 ~dd;

initial begin
        #800
        $finish;
end

endmodule