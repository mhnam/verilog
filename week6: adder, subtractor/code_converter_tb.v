`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 20:55:38
// Design Name: 
// Module Name: code_converter_tb
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


module code_converter_tb;
reg aa;
reg bb;
reg cc;
reg dd;
wire ww;
wire xx;
wire yy;
wire zz;

code_converter u_code_converter(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .w (ww),
    .x (xx),
    .y (yy),
    .z (zz)
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
