`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2022 15:315:02
// Design Name: 
// Module Name: KeypadModule
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


module KeypadModule(
    input [3:0] RowInput,
    input [3:0] ColumnInput,
    input clock,
    output reg [15:0] KeyOutput
    );
    
    always @(posedge clock)
    begin
        case (RowInput)
            4'b0001:
                begin
                    case (ColumnInput)
                        4'b0001:
                            begin
                                KeyOutput = 4'd0;
                            end
                        4'b0010:
                            begin
                                KeyOutput = 4'd1;
                            end
                        4'b0100:
                            begin
                                KeyOutput = 4'd2;
                            end
                        4'b1000:
                            begin
                                KeyOutput = 4'd3;
                            end
                        default:
                            begin
                                KeyOutput = 4'bXXXX;
                            end
                        endcase
                       
                end
            4'b0010:
                begin
                    case (ColumnInput)
                        4'b0001:
                            begin
                                KeyOutput = 4'd4;
                            end
                        4'b0010:
                            begin
                                KeyOutput = 4'd5;
                            end
                        4'b0100:
                            begin
                                KeyOutput = 4'd6;
                            end
                        4'b1000:
                            begin
                                KeyOutput = 4'd7;
                            end
                        default:
                            begin
                                KeyOutput = 4'bXXXX;
                            end
                        endcase
                end
            4'b0100:
                begin
                    case (ColumnInput)
                        4'b0001:
                            begin
                                KeyOutput = 4'd8;
                            end
                        4'b0010:
                            begin
                                KeyOutput = 4'd9;
                            end
                        4'b0100:
                            begin
                                KeyOutput = 4'd10;
                            end
                        4'b1000:
                            begin
                                KeyOutput = 4'd11;
                            end
                        default:
                            begin
                                KeyOutput = 4'bXXXX;
                            end
                        endcase
                end
            4'b1000:
                begin
                    case (ColumnInput)
                        4'b0001:
                            begin
                                KeyOutput = 4'd12;
                            end
                        4'b0010:
                            begin
                                KeyOutput = 4'd13;
                            end
                        4'b0100:
                            begin
                                KeyOutput = 4'd14;
                            end
                        4'b1000:
                            begin
                                KeyOutput = 4'd15;
                            end
                        default:
                            begin
                                KeyOutput = 4'bXXXX;
                            end
                        endcase
                end
            default:
                begin
                    KeyOutput = 4'bXXXX;
                end  
        endcase
        
    end
    
    
    
endmodule
