`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 20:55:38
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;

reg aa;
reg bb;
reg bbin;
wire dd;
wire bbout;

full_subtractor u_full_subtractor(
    .a (aa),
    .b (bb),
    .bin (bbin),
    .d (dd),
    .bout (bbout)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial bbin = 1'b0;
always aa = #400 ~ aa;
always bb = #200 ~bb;
always bbin = #100 ~bbin;

initial begin
        #800
        $finish;
end

endmodule