`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2022 00:27:48
// Design Name: 
// Module Name: ProcessorTieUp
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


module ProcessorTieUp(
    //input data registers
    input [15:0] KeypadInputPort,
    input [15:0] ADC0,
    input [15:0] PORTD, //toggle connected to D0
    input [15:0] SP1,
    
    //input instruction register
    output wire [15:0] IR,
    
    //clock and reset pins
    input clk,
    input rst,
    
    //output of internal registers
    output wire [15:0] PC,
    output wire [15:0] R0,
    output wire [15:0] R1,
    output wire [15:0] R2,
    output wire [15:0] R3,
    output wire [15:0] ACC,
    output wire [15:0] BREG,
    output wire [15:0] C,
    output wire [15:0] PORTB, //servo connected to B0
    output wire [15:0] MBR,

    //Latched Values of Input registers
    output wire [15:0] SP1Latched,
    output wire [15:0] ADC0Latched,
    output wire [15:0] PORTDLatched, //toggle connected to D0
    output wire [15:0] MAR,
    output wire [15:0] KeypadResult,

    output wire [2:0] state,
    
    //control word outputs
    output wire[3:0] OP1,
    output wire [3:0] OP2,
    output wire [3:0] OP3,
    output wire [3:0] OP4
    );



//tie up stuff here
KeypadModule U1(KeypadInputPort [7:4], KeypadInputPort [3:0], clk, KeypadResult );
ROM U2 (PC, MBR,clk, rst);

SimpleProcV5 U3(ADC0, PORTD, SP1, IR, clk, rst, PC, R0,
            R1, R2, R3, ACC, BREG, C, PORTB, MBR, SP1Latched, ADC0Latched, PORTDLatched, 
            MAR, KeypadResult,state,OP1,OP2,OP3,OP4
    );

endmodule
