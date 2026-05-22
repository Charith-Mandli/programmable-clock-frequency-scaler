`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2026 17:55:53
// Design Name: 
// Module Name: top_module
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

module top_module(
    input clk,
    input reset,
    input enable,
    input [1:0] select,
    output scaled_clk
    );
    
    wire [4:0] sel_DIV_factor;
    wire [1:0] select_stab;
    reg sel_reset; 
    reg [1:0] prev_select; 
    
    debouncer inst1(.clk(clk), .button_in(select[0]), .button_out(select_stab[0]));
    debouncer inst2(.clk(clk), .button_in(select[1]), .button_out(select_stab[1]));
    
    clock_selector inst3(.sel(select_stab), .sel_DIV_factor(sel_DIV_factor));
    
    always @(posedge clk) begin
        prev_select <= select_stab;
        if(prev_select!=select_stab)
            sel_reset <= 1;
        else
            sel_reset <= 0;
    end
    
    clock_divider inst4(.clk_in(clk), .DIV_factor(sel_DIV_factor), .enable(enable), .reset(reset), .sel_reset(sel_reset), .clk_out(scaled_clk));
    
endmodule
