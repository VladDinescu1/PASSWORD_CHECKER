`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2024 07:00:17 PM
// Design Name: 
// Module Name: ram_vowels
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


module ram_vowels(output [7:0] out,
                      input w_en,CK,
                      input [7:0] w_data,
                      input [5:0] addr);
         reg [7:0] memorie [0:63];             
         always @ (posedge CK)
         if(w_en)
         memorie[addr] <= w_data;
         assign out = memorie[addr]; 
endmodule
