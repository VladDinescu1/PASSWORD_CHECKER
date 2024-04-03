`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2024 07:27:39 PM
// Design Name: 
// Module Name: demux
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


module demux(output reg [7:0] out0,out1,
             input sel,
             input [7:0] in);
             always @(*)
             case(sel)
             0: begin
                out0 = in;
                out1=8'bx;
                end
             1:begin 
               out1 = in;
               out0=8'bx;
               end
             endcase
endmodule
