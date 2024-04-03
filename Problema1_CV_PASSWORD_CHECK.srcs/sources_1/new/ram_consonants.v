`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2024 06:49:22 PM
// Design Name: 
// Module Name: ram_consonants
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


module ram_consonants(output [7:0] out,
                      input w_en,CK,
                      input [7:0] w_data,
                      input [5:0] addr);
         reg [7:0] memorie [0:63];             
         always @ (posedge CK)
         if(w_en)
         memorie[addr] <= w_data;
         
         assign out = memorie[addr];         
endmodule
