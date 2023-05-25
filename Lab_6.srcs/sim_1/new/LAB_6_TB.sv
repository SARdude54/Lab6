`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2023 12:43:30 PM
// Design Name: 
// Module Name: LAB_6_TB
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


module LAB_6_TB();

    logic CLK_TB;
    logic [7:0] SWITCHES_TB;
    logic BT0_TB;
    logic [7:0] SEG_TB;
    logic [3:0] DISP_EN_TB;
    logic [7:0] LEDS_TB;
    
    Lab_6 UUT(.CLK(CLK_TB), .SWITCHES(SWITCHES_TB), .BT0(BT0_TB), .SEG(SEG_TB), .DISP_EN(DISP_EN_TB), .LEDS(LEDS_TB));
    
    always begin
    CLK_TB = 1;
    #5;
    CLK_TB = 0;
    #5;
    end
    
    always begin
    #5 BT0_TB=1;
       SWITCHES_TB = 8'b01110100;
    #5 BT0_TB=1;
       SWITCHES_TB = 8'b00000000;
    #5 BT0_TB=0;
       SWITCHES_TB = 8'b01100100;
    #5 BT0_TB=0;
       SWITCHES_TB = 8'b00000000;
    end
    
endmodule
