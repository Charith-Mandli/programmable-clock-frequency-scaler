`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2026 17:55:53
// Design Name: 
// Module Name: debouncer
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

module debouncer(
    input clk,
    input button_in,
    output reg button_out=0
    );
    
    parameter DEBOUNCE_COUNT = 5;
    parameter COUNTER_WIDTH = 17;
    
    reg [COUNTER_WIDTH-1:0] count=0;
    reg in=0;
    
    always @(posedge clk) begin
        in <= button_in;
        if(in!=button_in)
            count <= 0;
        else if(count<DEBOUNCE_COUNT)
            count <= count+1;
        if(count>=DEBOUNCE_COUNT)
            button_out <= button_in;
    end 
endmodule
