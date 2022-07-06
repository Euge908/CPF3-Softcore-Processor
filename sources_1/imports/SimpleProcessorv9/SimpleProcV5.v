`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  De La Salle University
// Engineer: Voltaire B. Dupo, ECE
// 
// Create Date: 01.06.2022 10:14:58
// Design Name:  Faster SAP Model 16 Bit Control Direct ROM Connection
// Module Name: Simpleprocv5tb
// Project Name:  Solution Set Processor for Exam
// Target Devices:  No Defined Device
// Tool Versions:  None
// Description:  This processor has two inputs SP1 and SP2 can do a number of ALU Operations
// 
// Dependencies:  None Self Contained Dvice
// 
// Revision: 0.09
// Revision 0.09 - File Created
// Additional Comments: Made to show students that a single file processor can be created.
// 
//////////////////////////////////////////////////////////////////////////////////

//Processor based on SimpleProcV5.v implemented by Sir dupo

/*
Assumptions:
The servo motor would go to 180 degrees if it receives 1 and go to 0 degrees if it receives a 0
Light sensor would give a discrete value between 0-255

Registers needed in Making the components work:

Output Buffer Register [32][8] -> LCD Display


Col Input Register (4 bits) -> Column pins of the Keypad
Row Output Register (4 bits) -> Row pins of the Keypad
ADC0 Input Register (8 bits) -> Light Sensor
Din0 Register (1 bit) -> Toggle Switch
Bout0 Register (1 bit) -> Servo Motor

*/

/*
Implementing IR Notes:
dpop (4 bits) +
ALUin1 (4 bits) +
ALUin2 (4 bits) +
dirdp (4 bits) +
_________________
IR (must be 16 bits)


*/

module SimpleProcV5(

    input [15:0] ADC0,
    input [15:0] PORTD, //toggle connected to D0
    input [15:0] SP1,
    
    //input instruction register
    output reg [15:0] IR,
    
    //clock and reset pins
    input clk,
    input rst,
    
    //output of internal registers
    output reg [15:0] PC,
    output reg [15:0] R0,
    output reg [15:0] R1,
    output reg [15:0] R2,
    output reg [15:0] R3,
    output reg [15:0] ACC,
    output reg [15:0] BREG,
    output reg [15:0] C,
    output reg [15:0] PORTB, //servo connected to B0
    input [15:0] MBR,

    //Latched Values of Input registers
    output reg [15:0] SP1Latched,
    output reg [15:0] ADC0Latched,
    output reg [15:0] PORTDLatched, //toggle connected to D0
    output reg [15:0] MAR,
    input wire [15:0] KeypadResult,

    
    output reg [2:0] state,
    
    //control word outputs
    output reg [3:0] OP1,
    output reg [3:0] OP2,
    output reg [3:0] OP3,
    output reg [3:0] OP4
    );



reg [15:0] temp; //temporary holder
reg [15:0] firstReg;
reg [15:0] secondReg;
reg [15:0] thirdReg;
reg [15:0] stack;



//processor logic below
initial
    begin
    
        //output of internal registers
        MAR = 8'd0;
        PC = 8'd0;  
        R0 = 8'd0;  
        R1 = 8'd0;
        R2 = 8'd0;  
        R3 = 8'd0;  
        ACC = 8'd0;  
        BREG = 8'd0;  
        C = 8'd0;  
        PORTB = 8'd0;   //servo connected to B0
    
        //Latched Values of Input registers
        SP1Latched = 8'd0;  
        ADC0Latched = 8'd0;  
        PORTDLatched = 8'd0;   //toggle connected to D0
         
        IR = 8'd0;

          
        state=3'd0;
    end

always@(posedge clk)
  begin
     if(!rst)
            begin
                //output of internal registers
                MAR = 8'd0;
                PC = 8'd0;  
                R0 = 8'd0;  
                R1 = 8'd0;
                R2 = 8'd0;  
                R3 = 8'd0;  
                ACC = 8'd0;  
                BREG = 8'd0;  
                C = 8'd0;  
                PORTB = 8'd0;   //servo connected to B0
            
                //Latched Values of Input registers
                SP1Latched = 8'd0;  
                ADC0Latched = 8'd0;  
                PORTDLatched = 8'd0;   //toggle connected to D0
                  
                state=3'd0;
            end
      if(rst)
            begin
    
                if(IR == 0)begin
                    state = 0;
                    PC = PC + 1;
                end
                else begin
                
                
                    case(state)
                    3'd0: begin     //Fetch
                        MAR = PC;
                        state = state + 1'b1;
                        
                        IR = MBR;
                        PC = PC + 1; //this makes it confusing to read the output on the testbench, but at least this is the simplest fix of incrementing the PC

//                        $display("IR: %d\n MBR: %d\n", IR, MBR);


                        
                    end
                    //state 1
                    3'd1: begin      //Decode and Execute

                        //Latched Values of Input registers
                        SP1Latched = SP1;
                        ADC0Latched = ADC0;
                        PORTDLatched = PORTD; //toggle connected to D0

                        //control words
                        OP1 = IR[15:12];
                        OP2 = IR[11:8];
                        OP3 = IR [7:4];
                        OP4 = IR[3:0];
                            
                        //LW Reg Direct
                        if (OP1 == 4'd1 && OP3 == 4'd0 && OP4 == 4'd2) begin
                            state = state + 1;
                                                        
                        end
                                                
                        //Data transfer instruction format
                        else if(OP3 == 4'd0 && OP4 == 4'd0)begin
                            
                            //Copy data from src to temp and then temp to dest
                            case(OP1) //src
                                4'd1: temp = KeypadResult;
                                4'd2: temp = ADC0Latched;
                                4'd3: temp = PORTDLatched;
                                4'd4: temp = SP1Latched;
                                4'd5: temp = MAR;
                                4'd6: temp = PC;
                                4'd7: temp = R0;
                                4'd8: temp = R1;
                                4'd9: temp = R2;
                                4'd10: temp = R3;
                                4'd11: temp = ACC;
                                4'd12: temp = BREG;
                                4'd13: temp = C;
                                4'd14: temp = PORTB;
                                4'd15: temp = MBR;
                                default: temp = temp; //do nothing
                            endcase
                            
                            //assign register to temp
                            case(OP2) //dst
                                4'd3: R0 = temp;
                                4'd4: R1 = temp;
                                4'd5: R2 = temp;
                                4'd6: R3 = temp;
                                4'd7: ACC = temp;
                                4'd8: BREG = temp;
                                4'd9: C = temp;
                                4'd10: PORTB = temp;
                                default: temp = temp; //do nothing
    
                            endcase
                            
                            state = 0;
                        
                        end
                        //ALU Instruction Format: Perform Operations on A and B
                        else if(OP2 == 4'd0 && OP3 == 4'd0 && OP4 == 4'd0)begin
                            case(OP1)
                            4'd0: ACC=ACC; // Buffer
                            4'd1: ACC=ACC&BREG;
                            4'd2: ACC=ACC|BREG;
                            4'd3: ACC=~BREG; 
                            4'd4: ACC=ACC^BREG;
                            4'd5: ACC=ACC+BREG;
                            4'd6: ACC=ACC-BREG; 
                            4'd7: ACC=ACC*BREG;
                            4'd8: ACC=ACC/BREG;
                            default: temp = temp; //do nothing

                            endcase
                            
//                            $display ("ALU CODE: %h: ACC = %h\n", OP3, ACC);
                            state = 0;
                        end
                        
                        //Jump Instruction Format                                            
                        else if(OP1 == 4'd0 && OP2 == 4'd0 && OP3==4'd0 && OP4 == 4'd1) begin 
                            //Do nothing. Wait for next state to fetch the jump data                
                            PC = PC + 1;
                            state = state + 1;
                        end 
                        
                        //branch instruction format
                        else if(OP4 >= 4'd4 && OP4 <=4'd9) begin
                                //get first reg value

                            case(OP1) 
                                4'd0: firstReg = firstReg; //do nothing
                                4'd1: firstReg = KeypadResult;
                                4'd2: firstReg = ADC0Latched;
                                4'd3: firstReg = PORTDLatched;
                                4'd4: firstReg = SP1Latched;
                                4'd5: firstReg = MAR;
                                4'd6: firstReg = PC;
                                4'd7: firstReg = R0;
                                4'd8: firstReg = R1;
                                4'd9: firstReg = R2;
                                4'd10: firstReg = R3;
                                4'd11: firstReg = ACC;
                                4'd12: firstReg = BREG;
                                4'd13: firstReg = C;
                                4'd14: firstReg = PORTB;
                                4'd15: firstReg = MBR;
                                default: firstReg = firstReg; //do nothing

                            endcase
                            
                            //get second reg value
                            case(OP2) 
                                4'd0: secondReg = secondReg; //do nothing
                                4'd1: secondReg = KeypadResult;
                                4'd2: secondReg = ADC0Latched;
                                4'd3: secondReg = PORTDLatched;
                                4'd4: secondReg = SP1Latched;
                                4'd5: secondReg = MAR;
                                4'd6: secondReg = PC;
                                4'd7: secondReg = R0;
                                4'd8: secondReg = R1;
                                4'd9: secondReg = R2;
                                4'd10: secondReg = R3;
                                4'd11: secondReg = ACC;
                                4'd12: secondReg = BREG;
                                4'd13: secondReg = C;
                                4'd14: secondReg = PORTB;
                                4'd15: secondReg = MBR;
                                default: temp = temp; //do nothing

                            endcase
                            
                            //Get third register
                            case(OP3) //src

                                4'd0: thirdReg = thirdReg; //do nothing
                                4'd1: thirdReg = KeypadResult;
                                4'd2: thirdReg = ADC0Latched;
                                4'd3: thirdReg = PORTDLatched;
                                4'd4: thirdReg = SP1Latched;
                                4'd5: thirdReg = MAR;
                                4'd6: thirdReg = PC;
                                4'd7: thirdReg = R0;
                                4'd8: thirdReg = R1;
                                4'd9: thirdReg = R2;
                                4'd10: thirdReg = R3;
                                4'd11: thirdReg = ACC;
                                4'd12: thirdReg = BREG;
                                4'd13: thirdReg = C;
                                4'd14: thirdReg = PORTB;
                                4'd15: thirdReg = MBR;
                                default: thirdReg = thirdReg; //do nothing
                                
                            endcase
                                
                            $display("firstReg: %d, secondReg: %d, thirdReg: %d, PC: %d, MBR: %d", firstReg, secondReg, thirdReg, PC, MBR);

                                
                            state=state+1'b1;
                        end
                        
                        
                        
                        //LW Reg Indirect
                        else if (OP1 == 4'd1 && OP3 == 4'd0 && OP4 == 4'd3) begin
                            //Do nothing and fetch operand
                            state = state + 1'b1;
                        end                        


  

                             
                    end
                    
                    
                    
                    //execute (state 2)
                    3'd2: begin 
                        //jump immediate
                        if(OP1 == 4'd0 && OP2 == 4'd0 && OP3==4'd0 && OP4 == 4'd1) begin 
                            //Do nothing. Wait for next state to fetch the jump data                
                            //fetch the jump data and store it to PC
                            $display("PC: %d, MBR: %d\n", PC, MBR);
                            PC = MBR;
                            $display("NEW JUMP ADDRESS: %d\n", PC, MBR);
                            state = 0;
                        end
                        
                        //branch instructions
                        if(OP4 >= 4'd4 && OP4 <=4'd9) begin
                            $display("thirdReg: %d, PC: %d, MBR: %d", thirdReg, PC, MBR);
                            
                            case(OP4)
                                
                                4'd4:
                                    begin
                                        if(firstReg == secondReg) begin
                                            PC = thirdReg;
                                        end
                                    end
                                4'd5:
                                    begin
                                        if(firstReg != secondReg) begin
                                            PC = thirdReg;
                                        end
                                    end
                                4'd6:
                                    begin
                                        if(firstReg > secondReg) begin
                                            PC = thirdReg;
                                        end
                                    end
                                4'd7:
                                    begin
                                        if(firstReg >= secondReg) begin
                                            
                                            PC = thirdReg;
                                        end
                                    end
                                4'd8:
                                    begin
                                        if(firstReg < secondReg) begin
                                            PC = thirdReg;
                                        end
                                    end
                                4'd9:
                                    begin
                                        if(firstReg <= secondReg) begin
                                            PC = thirdReg;
                                        end
                                    end
                            endcase
                            
                            state=3'd0;
                                                        
                        end
                        //LW Direct
                        if (OP1 == 4'd1 && OP3 == 4'd0 && OP4 == 4'd2) begin
                              //wait for data to be loaded
                              $display("Word to be loaded: %d\n", MBR);
                              $display("PC: %d\n", PC);

                             case(OP2) 
                                4'd3: R0 = MBR;
                                4'd4: R1 = MBR;
                                4'd5: R2 = MBR;
                                4'd6: R3 = MBR;
                                4'd7: ACC = MBR;
                                4'd8: BREG = MBR;
                                4'd9: C = MBR;
                                4'd10: PORTB = MBR;
                                default: temp = temp; //do nothing
                            endcase
                            
                            PC = PC + 1;
                            state = state + 1;
                           
                        end                            
                        
                        //LW Indirect
                        else if (OP1 == 4'd1 && OP3 == 4'd0 && OP4 == 4'd3) begin
                            //Do nothing and fetch operand
                            stack = PC;
                            PC = MBR;
                            state = state + 1'b1;
                        end
                        
                    end//end of if 3'd2

                    //execute (state 3)
                    3'd3: begin
                        //LW Indirect
                        if(OP4 >= 4'd4 && OP4 <=4'd9) begin
                            //if false condition for branch                                    
                        end
                    
                        //LW direct reg
                        if(OP1 == 4'd1 && OP3 == 4'd0 && OP4 == 4'd2) begin 
                            state = 0;
                        end 



                        else if (OP1 == 4'd1 && OP3 == 4'd0 && OP4 == 4'd3) begin
                            //Do nothing and fetch operand
                            case(OP2) 
                                4'd3: R0 = MBR;
                                4'd4: R1 = MBR;
                                4'd5: R2 = MBR;
                                4'd6: R3 = MBR;
                                4'd7: ACC = MBR;
                                4'd8: BREG = MBR;
                                4'd9: C = MBR;
                                4'd10: PORTB = MBR;
                                default: temp = temp; //do nothing
                            endcase
                            
                            
                            PC = stack;
                            state = 0;
                            
                        end 
                    end//end of 3'd3
                  
                  
                endcase//end of state switch case 
            end//end nop
        end  // !rst
          
   end // end always module




endmodule
