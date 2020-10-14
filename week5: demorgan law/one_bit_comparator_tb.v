`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/07 11:18:04
// Design Name: 
// Module Name: one_bit_comparator_tb
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


module one_bit_comparator_tb;

reg aa;
reg bb;
wire ee;
wire nn;
wire ll;
wire gg;

one_bit_comparator u_one_bit_comparator(
    .a (aa),
    .b (bb),
    .eq (ee),
    .neq (nn),
    .l (ll),
    .g (gg)
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