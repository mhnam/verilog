`timescale 1ns / 1ps

module BCD_tb();
reg clk; reg [3:0] A, B;
wire [3:0] S; wire C;
BCD connect(A, B, S, C);

initial begin
clk = 0; A=4'd5;
B=4'd0;
end;

always clk = #10 ~clk;
always @(posedge clk) begin
B <= B+4'd1;
end
endmodule