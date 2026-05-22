`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2026 17:55:53
// Design Name: 
// Module Name: tb_top_module
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

module tb_top_module; 

reg clk; 
reg [1:0] select; 
reg enable; 
reg reset; 
wire scaled_clk; 

top_module inst(.clk(clk), .reset(reset), .enable(enable), .select(select), .scaled_clk(scaled_clk)); 

initial begin 
    $dumpfile("CFS_tb.vcd"); 
    $dumpvars(0, tb_top_module); 
end 

initial begin 
    clk = 0; 
end 
always #5 clk = ~clk; 

initial begin 
    $monitor("%t, %b, %b, %b, %b, %b", $time, select, reset, enable, clk, scaled_clk); 
    
    reset=1; enable=0; select=2'b00; 
    
    #10 reset=0; enable=1; select=2'b00; 
    
    #2 reset=0; enable=1; select=2'b01; 
    #2 reset=0; enable=1; select=2'b00; 
    #2 reset=0; enable=1; select=2'b00; 
    #2 reset=0; enable=1; select=2'b01; 
    #2 reset=0; enable=1; select=2'b00; 
    #2 reset=0; enable=1; select=2'b01; 
    #2 reset=0; enable=1; select=2'b00; 
    
    #150 reset=0; enable=1; select=2'b01; 
    #200 reset=0; enable=1; select=2'b10; 
    #300 reset=0; enable=1; select=2'b11; 
    
    #1000 $finish; 
end 
endmodule
