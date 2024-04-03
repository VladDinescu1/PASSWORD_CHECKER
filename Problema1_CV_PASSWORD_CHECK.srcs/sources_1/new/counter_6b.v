`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2024 06:28:05 PM
// Design Name: 
// Module Name: counter_6b
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


module counter_6b(output reg [5:0] out,
                  input reset,
                  input enable,
                  input CK   );
    
    always @ (posedge CK )
    if(reset) out <= 0 ;
        else if(enable) out <= out+1 ;
                else out <= out ;
 
endmodule
