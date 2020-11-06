`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:45:44
// Design Name: 
// Module Name: four_to_two_encoder_tb
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

module four_to_two_encoder_tb;
reg aa;
reg bb;
reg cc;
reg dd;
wire ee0;
wire ee1;

four_to_two_encoder u_four_to_two_encoder(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .e0 (ee0),
    .e1 (ee1)
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