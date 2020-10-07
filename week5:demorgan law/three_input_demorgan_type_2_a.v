`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/07 11:04:24
// Design Name: 
// Module Name: three_input_demorgan_type_2_a
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


module three_input_demorgan_type_2_a(
    input a,
    input b,
    input c,
    output d
);

assign d = ((~a) & (~b)) | (~c);

endmodule
