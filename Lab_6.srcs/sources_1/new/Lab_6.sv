`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 12:19:07 PM
// Design Name: 
// Module Name: Lab_6
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


module Lab_6(
    input CLK,
    input [7:0] SWITCHES,
    input BT0,
    output logic [7:0] LEDS,
    output logic [3:0] DISP_EN,
    output logic [7:0] SEG
    );
    
    logic t1, t2, t3;
    // t1 divided clk
    // t2 output of sequence driver
    // t3 output of fsm
    
    clk_div2 clock_div (.clk(CLK), .sclk(t1));
    seq_dvr seg_dvr (.CLK(t1), .SWITCHES(SWITCHES), .LEDS(LEDS), .X(t2));
    FSM FSM (.CLK(t1), .X(t2), .BT0(BT0), .Z(t3));
    BC_DEC bc_dec (.CLK(CLK), .Z(t3), .SEGMENTS(SEG), .DISP_EN(DISP_EN));
    
    
endmodule
