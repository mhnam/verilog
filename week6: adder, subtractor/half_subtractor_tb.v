`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 20:55:38
// Design Name: 
// Module Name: half_subtractor_tb
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


module half_subtractor_tb;

reg aa;
reg bb;
wire dd;
wire bbout;

half_subtractor u_half_subtractor(
    .a (aa),
    .b (bb),
    .d (dd),
    .bout (bbout)
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