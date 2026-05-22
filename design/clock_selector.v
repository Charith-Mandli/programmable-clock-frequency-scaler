`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2026 17:55:53
// Design Name: 
// Module Name: clock_selector
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

module clock_selector(
    input [1:0] sel,
    output reg [4:0] sel_DIV_factor
    );
    
    always @(*) begin
        case(sel)
            2'b00: sel_DIV_factor = 5'd2;
            2'b01: sel_DIV_factor = 5'd4;
            2'b10: sel_DIV_factor = 5'd8;
            2'b11: sel_DIV_factor = 5'd16;
            default: sel_DIV_factor = 5'd2;
        endcase 
    end
    
endmodule
