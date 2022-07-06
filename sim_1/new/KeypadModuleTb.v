`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2022 15:48:14
// Design Name: 
// Module Name: KeypadModuleTb
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


module KeypadModuleTb();

reg [3:0] RowInputtb;
reg [3:0] ColumnInputtb;
reg clocktb;
wire [3:0] KeyOutputtb;


KeypadModule uut(.RowInput(RowInputtb),
    .ColumnInput(ColumnInputtb),
    .clock(clocktb),
    .KeyOutput(KeyOutputtb));

initial
begin
    clocktb = 0;
    
    #0
        RowInputtb = 4'bxxxx; //should give nothing 
        ColumnInputtb = 4'bxxxx; //should give nothing
        
    #10 
        RowInputtb = 4'b0001; 
        ColumnInputtb = 4'b0001;
    #5 
        ColumnInputtb = 4'b0010;
    #5 
        ColumnInputtb = 4'b0100;
    #5 
        ColumnInputtb = 4'b1000;
        
    #10 
        RowInputtb = 4'b0010; 
        ColumnInputtb = 4'b0001;
    #5 
        ColumnInputtb = 4'b0010;
    #5 
        ColumnInputtb = 4'b0100;
    #5 
        ColumnInputtb = 4'b1000;
    
    #10 
        RowInputtb = 4'b0100; 
        ColumnInputtb = 4'b0001;
    #5 
        ColumnInputtb = 4'b0010;
    #5 
        ColumnInputtb = 4'b0100;
    #5 
        ColumnInputtb = 4'b1000;
        
    #10 
        RowInputtb = 4'b1000; 
        ColumnInputtb = 4'b0001;
    #5 
        ColumnInputtb = 4'b0010;
    #5 
        ColumnInputtb = 4'b0100;
    #5 
        ColumnInputtb = 4'b1000;
    #10 //should give nothing
        RowInputtb = 4'b1101; 
        ColumnInputtb = 4'b1001;
    #10    
        RowInputtb = 4'b1001; 
        ColumnInputtb = 4'b1001;
        
    #5
        RowInputtb = 4'b0001; 
        ColumnInputtb = 4'b0001;    
    #5
        ColumnInputtb = 4'b0001;    
end    


always
        begin
                #1 clocktb=~clocktb;  // Clock Pulse Generation
        end
        
        
        
    
endmodule
