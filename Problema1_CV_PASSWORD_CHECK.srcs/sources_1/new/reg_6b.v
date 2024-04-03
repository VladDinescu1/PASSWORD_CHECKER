`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2024 06:39:28 PM
// Design Name: 
// Module Name: reg_6b
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


module reg_6b(output reg [5:0] out,
              input [5:0] in,
              input reset,
              input CK);
              
              always @ (posedge CK)
              if(reset) out <= 0;
                    else out <= in ;
endmodule
