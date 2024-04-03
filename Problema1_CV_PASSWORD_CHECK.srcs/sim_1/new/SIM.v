`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2024 19:42:29
// Design Name: 
// Module Name: SIM
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

module SIM();
 
 reg ck_t,en_t,reset_t;
 reg [7:0]data_in_t;
 wire check_t;
 wire[7:0] out0_t,out1_t,data_readc_t,data_readv_t;
 
 Password_CHECKER DUT    (.CK(ck_t),
                         .reset(reset_t),
                         .en(en_t),
                         .data_in(data_in_t),
                         .check(check_t),
                         .out0(out0_t),
                         .out1(out1_t),
                         .data_readc(data_readc_t),
                         .data_readv(data_readv_t));
                         
  initial begin 
  ck_t=0;
  forever #5 ck_t=~ck_t;
  end
  
 initial begin
 reset_t=1;
 en_t=0;
 #8 reset_t=0;
 en_t=1;
                
 #10 data_in_t=8'h61;
     
 #10 data_in_t=8'h62;
 
 #10 data_in_t=8'h63;
 
 #10 data_in_t=8'h64;
 
 #10 data_in_t=8'h65;
 
 #10 data_in_t=8'h0;
 
 #10 data_in_t=8'h66;
 
 #10 data_in_t=8'h61;
 
 #10 data_in_t=8'h0;
     
 #10 data_in_t=8'h62;
 
 #10 data_in_t=8'h63;
 
 #10 data_in_t=8'h66;
 
 #10 data_in_t=8'h0;
     
 #10 data_in_t=8'h62;
 
 #10 data_in_t=8'h63;
 
 #10 data_in_t=8'h66;
 
 #10 data_in_t=8'h61;
     
 #10 data_in_t=8'h62;
 
 #10 data_in_t=8'h63;
 
 
 
 
 
  
     
 #70 $stop();            
 end                        
                         
                         
endmodule
