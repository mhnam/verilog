`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/07 11:18:04
// Design Name: 
// Module Name: two_input_demorgan_type_2_b_tb
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


module two_input_demorgan_type_2_b_tb;


reg aa;
reg bb;
wire cc;

two_input_demorgan_type_2_b u_two_input_demorgan_type_2_b(
    .a (aa),
    .b (bb),
    .c (cc)
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