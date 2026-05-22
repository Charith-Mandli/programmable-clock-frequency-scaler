`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2026 17:55:53
// Design Name: 
// Module Name: clock_divider
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

module clock_divider(
    input clk_in,
    input [4:0] DIV_factor,
    input enable,
    input reset,
    input sel_reset,
    output reg clk_out
    );
    
    reg [4:0] count;
    
    always @(posedge clk_in) begin
        if(reset || sel_reset) begin
            count <= 0;
            clk_out <= 0;
        end
        else if(enable) begin
            if(count==((DIV_factor/2)-1)) begin
                count <= 0;
                clk_out <= ~clk_out;
            end else begin
                count <= count+1;          
            end
        end
    end
endmodule
