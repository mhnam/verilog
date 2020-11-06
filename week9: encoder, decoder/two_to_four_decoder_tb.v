`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:45:44
// Design Name: 
// Module Name: two_to_four_decoder_tb
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


module two_to_four_decoder_tb;
reg aa;
reg bb;
wire dd0;
wire dd1;
wire dd2;
wire dd3;

two_to_four_decoder u_two_to_four_decoder(
    .a (aa),
    .b (bb),
    .d0 (dd0),
    .d1 (dd1),
    .d2 (dd2), 
    .d3 (dd3)
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