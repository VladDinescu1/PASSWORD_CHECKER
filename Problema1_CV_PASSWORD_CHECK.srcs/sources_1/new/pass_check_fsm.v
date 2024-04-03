`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2024 07:56:02 PM
// Design Name: 
// Module Name: pass_check_fsm
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


module pass_check_fsm(input en,CK,reset,
                      input[7:0] in,
                      output reg pass_ok);                                                       
                      localparam s1=1'b0;
                      localparam s2=1'b1;
                      
                      reg starecrt;
                      reg [2:0] counter;
                      always @(posedge CK)
                      if(reset) 
                           begin
                             starecrt <= s1;
                             counter=0;
                           end
                           else case(starecrt)
                           
                           s1: begin
                           
                           if(counter==4)
                               if(in &&en)
                                  begin
                                    starecrt<=s2;
                                  end
                             if(in && en)    
                             counter<=counter+1;
                             else
                             counter<=counter;        
                            
                                end
                                
                             s2:   begin 
                                   starecrt<=s1;
                                   if(in &&en)
                                      counter<=1;
                                      else
                                      counter<=0;
                             
                                   end
                                 endcase
                            
                       always @(starecrt)
                       case(starecrt)
                          s1:pass_ok<=0;
                          s2:pass_ok<=1;
                          endcase
                         
                       
                      endmodule
