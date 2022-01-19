`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/17 20:22:33
// Design Name: 
// Module Name: booth_tb
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


module booth_tb;

    reg rst, clk;
    reg [3:0] x, multiplier;

    wire [8:0]  result;

    booth booth0(.rst(rst), .clk(clk), .x(x), .multiplier(multiplier), .result(result));

    initial 
    begin
        clk = 0;
        rst = 0;
        x = 0;
        multiplier = 0;
        
        #15;

        
        #15;
        x = 4'b1100;
        multiplier = 4'b0101;
        
        #100;

        
        #15;
        x = 4'b1001;
        multiplier = 4'b1000;
        
        #110;

        
        #15;
        x = 4'b1111;
        multiplier = 4'b1111;
    
    
    end
    


endmodule
