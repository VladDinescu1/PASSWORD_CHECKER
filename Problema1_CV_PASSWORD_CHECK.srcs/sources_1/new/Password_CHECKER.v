`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2024 06:27:04 PM
// Design Name: 
// Module Name: Password_CHECKER
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


module Password_CHECKER(input CK,reset,en,
                        input [7:0] data_in,
                        output check,
                        output [7:0] out0,out1,
                        output [7:0] data_readc,data_readv);
wire [5:0]Count_Reg;
wire [5:0] Reg_Addr;
wire vowel,and_RAMC,and_RAMV;
counter_6b Counter(.out(Count_Reg),
                   .reset(reset),
                   .enable(en),
                   .CK(CK));
              
reg_6b Reg(         .out(Reg_Addr),
                    .in(Count_Reg),
                    .reset(reset),
                    .CK(CK));

vowel_checker_struct vowel_checker(.out(vowel),
                                   .in(data_in));

and P1(and_RAMC,~vowel,en);

and P2(and_RAMV,vowel,en);

ram_consonants RAMC(.out(data_readc),
                    .w_en(and_RAMC),
                    .CK(CK),
                    .w_data(data_in),
                    .addr(Reg_Addr));

ram_vowels RAMV(.out(data_readv),
                .w_en(and_RAMV),
                .CK(CK),
                .w_data(data_in),
                .addr(Reg_Addr));

demux ddemux(.out0(out0),
             .out1(out1),
             .sel(vowel),
             .in(data_in));

pass_check_fsm fsm(.en(en),
                   .CK(CK),
                   .reset(reset),
                   .in(data_in),
                   .pass_ok(check));






endmodule
