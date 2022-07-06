//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company:  De La Salle University
//// Engineer: Voltaire B. Dupo, ECE
//// 
//// Create Date: 01.06.2022 10:14:58
//// Design Name:  Faster SAP Model 16 Bit Control Direct ROM Connection
//// Module Name: Simpleprocv5tb
//// Project Name:  Solution Set Processor for Exam
//// Target Devices:  No Defined Device
//// Tool Versions:  None
//// Description:  This processor has two inputs SP1 and SP2 can do a number of ALU Operations
//// 
//// Dependencies:  None Self Contained Dvice
//// 
//// Revision: 0.09
//// Revision 0.09 - File Created
//// Additional Comments: Made to show students that a single file processor can be created.
//// 
////////////////////////////////////////////////////////////////////////////////////


//module Simpleprocv5tb();

//    reg [4:0] SP1t;
//    reg [4:0] SP2t;
//    reg [4:0] Literalt;
//    reg [7:0] ALUDirt;
//    reg [3:0] opt;
//    reg [3:0] IOt;
//    reg clkt;
//    reg rstt;
//    wire [7:0] PCt;
//    wire [7:0] SP3t;
//    wire [2:0] statet;
//    wire [3:0] ALUin1t;
//    wire [3:0] ALUin2t;
//    wire [3:0] Litt;
//    wire [3:0] dpopt;
//    wire [3:0] dirdpt;
//    wire [3:0] R0t;
//    wire [3:0] R1t;
//    wire [3:0] R2t;
//    wire [3:0] R3t;
//    wire [3:0] ACCt;
//    wire [3:0] BREGt;

//SimpleProcV5 uut(
//    .SP1(SP1t),
//    .SP2(SP2t),
//    .Literal(Literalt),
//    .ALUDir(ALUDirt),
//    .op(opt),
//    .IO(IOt),
//    .clk(clkt),
//    .rst(rstt),
//    .PC(PCt),
//    .SP3(SP3t),
//    .state(statet),
//    .ALUin1(ALUin1t),
//    .ALUin2(ALUin2t),
//    .Lit(Litt),
//    .dpop(dpopt),
//    .dirdp(dirdpt),
//    .R0(R0t),
//    .R1(R1t),
//    .R2(R2t),
//    .R3(R3t),
//    .ACC(ACCt),
//    .BREG(BREGt)
//    );
    
//initial 
//        begin
//                #20 rstt=1'b0; SP1t=4'd7;  SP2t=4'd2; clkt=1'b0;  Literalt=4'd7;  ALUDirt=8'b0; opt=4'd0; IOt=4'd15; 
//                #1 rstt=1'b1;
//        end

//always
//        begin
//                #1 clkt=~clkt;  // Clock Pulse Generation
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
