`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/30 10:22:05
// Design Name: 
// Module Name: seven_segment_display
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

module seven_segment_display(
    input ina,
    input inb,
    input inc,
    input ind,
    output outa,
    output outb,
    output outc,
    output outd,
    output oute,
    output outf,
    output outg,
    output outseg
);
 
assign outa = (~inb * ~ind) | (~ina * inc) | (inb * inc) | (ina * ~ind) | (~ina * inb * ind) | (ina * ~inb * ~inc);
assign outb = (~ina * ~inb) | (~inb * ~ind) | (~ina * ~inc * ~ind) | (~ina * inc * ind) | (ina * ~inc * ind);
assign outc = (~ina * ~inc) | (~ina * ind) | (~inc * ind) | (~ina * inb) | (ina * ~inb);
assign outd = (ina * ~inc * ~ind) | (~ina * ~inb * ~ind) | (~inb * inc * ind) | (inb * ~inc * ind) | (inb * inc * ~ind);
assign oute = (~inb * ~ind) | (inc * ~ind) | (ina * inc) | (ina * inb);
assign outf = (~inc * ~ind) | (inb * ~ind) | (ina * ~inb) | (ina * inc) | (~ina * inb * ~inc);
assign outg = (~inb * inc) | (inc * ~ind) | (ina * ~inb) | (ina * ind) | (~ina * inb * ~inc);
assign outseg = 1;

endmodule
