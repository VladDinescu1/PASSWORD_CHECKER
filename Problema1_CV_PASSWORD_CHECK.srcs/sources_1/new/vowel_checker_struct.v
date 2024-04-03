`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2024 07:04:33 PM
// Design Name: 
// Module Name: vowel_checker_struct
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


module vowel_checker_struct(output reg out,
                            input [7:0] in);
       always @ (in)
       case(in)
       8'h61: out = 1;//a
       8'h65: out = 1;//e
       8'h69: out = 1;//i
       8'h6F: out = 1;//o
       8'h75: out = 1;//u
       default: out = 0;
       endcase
endmodule
