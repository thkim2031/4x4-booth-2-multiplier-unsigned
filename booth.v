`timescale 1ns / 1ps


module booth(rst, clk, x, multiplier, result);

input   [3:0]     x;
input             rst, clk;
input   [3:0]     multiplier;
output  [8:0]    result;
         
wire     [6:0]    m;
wire     [4:0]    pp[2:0];
wire     [2:0]    cout;


assign m[4] = multiplier[3];
assign m[3] = multiplier[2];
assign m[2] = multiplier[1];
assign m[1] = multiplier[0];
        
assign m[0] = 0;        
assign m[5] = 0;
assign m[6] = 0;
    
partial_product pp0(.x(m[2:0]), .m(x), .p(pp[0]), .rst(rst), .clk(clk), .cout(cout[0]));
partial_product pp1(.x(m[4:2]), .m(x), .p(pp[1]), .rst(rst), .clk(clk), .cout(cout[1]));
partial_product pp2(.x(m[6:4]), .m(x), .p(pp[2]), .rst(rst), .clk(clk), .cout());

cra cra0(.in0(pp[0]), .in1(pp[1]), .in2(pp[2]), .cin1(cout[0]), .cin2(cout[1]), .out(result[8:0]));




endmodule
