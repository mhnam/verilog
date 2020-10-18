`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/18 23:42:40
// Design Name: 
// Module Name: odd_parity_bit_generator_tb
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

module odd_parity_bit_generator_tb;
reg aa;
reg bb;
reg cc;
reg dd;
wire ee;

odd_parity_bit_generator u_odd_parity_bit_generator(
    .a (aa),
    .b (bb),
    .c (cc),
    .d (dd),
    .e (ee)
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