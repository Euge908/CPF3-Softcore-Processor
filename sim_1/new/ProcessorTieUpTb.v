`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2022 00:32:07
// Design Name: 
// Module Name: ProcessorTieUpTb
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


module ProcessorTieUpTb();
    //input data registers
    reg [15:0] KeypadInputPorttb;
    reg [15:0] ADC0tb;
    reg [15:0] PORTDtb; //toggle connected to D0
    reg [15:0] SP1tb;
    
    //input instruction register
    wire [15:0] IRtb;
    
    //clock and reset pins
    reg clktb;
    reg rsttb;
    
    //output of internal registers
    wire [15:0] PCtb;
    wire [15:0] R0tb;
    wire [15:0] R1tb;
    wire [15:0] R2tb;
    wire [15:0] R3tb;
    wire [15:0] ACCtb;
    wire [15:0] BREGtb;
    wire [15:0] Ctb;
    wire [15:0] PORTBtb; //servo connected to B0
    wire [15:0] MBRtb;

    //Latched Values of Input registers
    wire [15:0] SP1Latchedtb;
    wire [15:0] ADC0Latchedtb;
    wire [15:0] PORTDLatchedtb; //toggle connected to D0
    wire [15:0] MARtb;
    wire [15:0] KeypadResulttb;

    
    wire [2:0] statetb;
    
    //control word outputs
    wire [3:0] Op1tb;
    wire [3:0] OP2tb;
    wire [3:0] OP3tb;
    wire [3:0] OP4tb;


//module ProcessorTieUpTb();
//    //data registers
//    reg [15:0] KeypadInputPorttb;
//    reg [15:0] ADC0tb;
//    reg [15:0] PORTDtb; //toggle connected to D0
//    reg [15:0] SP1tb;
//    //instruction register
//    wire [15:0] IRtb;
//    //clock and reset pins
//    reg clktb;
//    reg rsttb;
//    //of internal registers
//    wire [15:0] PCtb;
//    wire [15:0] R0tb;
//    wire [15:0] R1tb;
//    wire [15:0] R2tb;
//    wire [15:0] R3tb;
//    wire [15:0] ACCtb;
//    wire [15:0] BREGtb;
//    wire [15:0] Ctb;
//    wire [15:0] PORTBtb; //servo connected to B0
//    wire [15:0] MBRtb;
//    //Latched Values of registers
//    wire [15:0] SP1Latchedtb;
//    wire [15:0] ADC0Latchedtb;
//    wire [15:0] PORTDLatchedtb; //toggle connected to D0
//    wire [15:0] MARtb;
//    wire [15:0] KeypadResulttb;
    
//    wire [2:0] statetb;
//    //control word outputs
//    wire [3:0] OP1tb;
//    wire [3:0] OP2tb;
//    wire [3:0] OP3tb;
//    wire [3:0] OP4tb;
    
    
ProcessorTieUp U1(
    .KeypadInputPort(KeypadInputPorttb),
    .ADC0(ADC0tb),
	.PORTD(PORTDtb),
    .SP1(SP1tb),
    .IR(IRtb),
	.clk(clktb),
    .rst(rsttb),
	.PC(PCtb),
	.R0(R0tb),
    .R1(R1tb),
	.R2(R2tb),
    .R3(R3tb),
    .ACC(ACCtb),
	.BREG(BREGtb),
    .C(Ctb),
    .PORTB(PORTBtb),
    .MBR(MBRtb),
	.SP1Latched(SP1Latchedtb),
    .ADC0Latched(ADC0Latchedtb),
    .PORTDLatched(PORTDLatchedtb), 
	.MAR(MARtb),
	.KeypadResult(KeypadResulttb),
	.state(statetb),
	.OP1(Op1tb),
    .OP2(OP2tb),
    .OP3(OP3tb),
    .OP4(OP4tb)
    );

initial 
        begin
                #20 rsttb=1'b0; clktb=1'b1; KeypadInputPorttb = 8'h12; ADC0tb = 8'h11; PORTDtb = 8'h02; SP1tb = 8'h03;
                #5 rsttb=1'b1;
 
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb; KeypadInputPorttb = 8'h14;  //2
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb; KeypadInputPorttb = 8'h18;  //3


                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb; KeypadInputPorttb = 8'h21;  //4
                
                                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
 
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
 
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                
                 #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                
                 #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation                

                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation

                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
                #5 clktb=~clktb;  // Clock Pulse Generation
  
 
        end

//always
//        begin
//                #5 clktb=~clktb;  // Clock Pulse Generation
//        end


//initial 
//        begin
//                #22 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd1; IOt=4'd15;   // ADD AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd2; IOt=4'd15;   // SUB AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd3; IOt=4'd15;   // AND AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd4; IOt=4'd15;   // ORL AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd5; IOt=4'd15;   // NOT A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd6; IOt=4'd15;   // XOR AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd7; IOt=4'd15;   // ADD ALt AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd8; IOt=4'd15;   // SUB ALit AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd9; IOt=4'd15;   // AND AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd10; IOt=4'd15;   // ORL ALit
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd11; IOt=4'd15;   // NotLit
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd12; IOt=4'd15;   // DIV AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd1;  ALUDirt[3:0]=4'd0;  opt=4'd0; IOt=4'd15;  // Load AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd13; IOt=4'd15;   // MUL AB
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd7;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//                #6 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd0;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd14;   // JUMP 000
////                #16 SP1t=4'd7;  SP2t=4'd2; Literalt=4'd0;  ALUDirt[7:4]=4'd7;  ALUDirt[3:0]=4'd7;  opt=4'd0; IOt=4'd12;  // SP3<-A
//        end


//endmodule
endmodule
