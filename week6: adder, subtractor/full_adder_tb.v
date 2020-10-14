`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 20:55:38
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;

reg aa;
reg bb;
reg ccin;
wire ss;
wire ccout;

full_adder u_full_adder(
    .a (aa),
    .b (bb),
    .cin (ccin),
    .s (ss),
    .cout (ccout)
);

initial aa = 1'b0;
initial bb = 1'b0;
initial ccin = 1'b0;
always aa = #400 ~ aa;
always bb = #200 ~bb;
always ccin = #100 ~ccin;

initial begin
        #800
        $finish;
end

endmodule