`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/30 10:23:23
// Design Name: 
// Module Name: seven_segment_display_tb
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

module seven_segment_display_tb;
reg aa;
reg bb;
reg cc;
reg dd;
wire a;
wire b;
wire c;
wire d;
wire e;
wire f;
wire g;
wire seg;

seven_segment_display u_seven_segment_display(
    .ina (aa),
    .inb (bb),
    .inc (cc),
    .ind (dd),
    .outa (a), 
    .outb (b), 
    .outc (c), 
    .outd (d), 
    .oute (e), 
    .outf (f), 
    .outg (g), 
    .outseg (seg)
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
