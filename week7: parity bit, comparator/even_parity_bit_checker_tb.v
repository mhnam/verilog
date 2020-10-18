`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/18 23:42:40
// Design Name: 
// Module Name: even_parity_bit_checker_tb
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


module even_parity_bit_checker_tb;
reg aa;
reg bb;
reg cc;
reg dd;
reg pp;
wire pecc;

even_parity_bit_checker u_even_parity_bit_checker(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .p (pp),
    .pec (pecc)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;
initial pp = 1'b0;
always aa = #400 ~ aa;
always bb = #200 ~bb;
always cc = #100 ~cc;
always dd = #50 ~dd;
always pp = #25 ~pp;

initial begin
        #800
        $finish;
end

endmodule