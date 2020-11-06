`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/05 13:45:44
// Design Name: 
// Module Name: bcd_to_dec_decoder_tb
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


module bcd_to_dec_decoder_tb;
reg aa0;
reg aa1;
reg aa2;
reg aa3;
wire oo0;
wire oo1;
wire oo2;
wire oo3;
wire oo4;
wire oo5;
wire oo6;
wire oo7;
wire oo8;
wire oo9;

bcd_to_dec_decoder u_bcd_to_dec_decoder(
    .a0 (aa0),
    .a1 (aa1),
    .a2 (aa2),
    .a3 (aa3),
    .o0 (oo0),
    .o1 (oo1),
    .o2 (oo2),
    .o3 (oo3),    
    .o4 (oo4),
    .o5 (oo5),
    .o6 (oo6),
    .o7 (oo7),
    .o8 (oo8),
    .o9 (oo9)
);

initial aa0 = 1'b0;
initial aa1 = 1'b0;
initial aa2 = 1'b0;
initial aa3 = 1'b0;
always aa0 = #50 ~aa0;
always aa1 = #100 ~aa1;
always aa2 = #200 ~aa2;
always aa3 = #400 ~aa3;

initial begin
        #500
        $finish;
end

endmodule
