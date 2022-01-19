`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/17 16:47:42
// Design Name: 
// Module Name: cra
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


module cra(in0, in1, in2, cin1, cin2, out );

input [4:0] in0;
input [4:0] in1;
input [4:0] in2;
input cin1, cin2;

output[8:0] out;



wire c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13;
wire  w1, w2, w3, w4, w5, w6, w7, w8;

assign w7 = 1;

half_adder h0(.in0(in0[0]), .in1(cin1), .cout(c0), .out(out[0]));
half_adder h1(.in0(in0[1]), .in1(c0), .cout(c1), .out(out[1]));


full_adder f0(.in0(in0[2]), .in1(in1[0]), .cin(c1), .out(w1), .cout(c2));
half_adder h2(.in0(w1), .in1(cin2), .cout(c3), .out(out[2]));

full_adder f1(.in0(in0[3]), .in1(in1[1]), .cin(c2), .out(w2), .cout(c4));
half_adder h3(.in0(w2), .in1(c3), .cout(c5), .out(out[3]));

full_adder f2(.in0(in0[4]), .in1(in1[2]), .cin(c4), .out(w3), .cout(c6));
full_adder f3(.in0(w3), .in1(in2[0]), .cin(c5), .out(out[4]), .cout(c7));

full_adder f4(.in0(cin1), .in1(in1[3]), .cin(c6), .out(w4), .cout(c8));
full_adder f5(.in0(w4), .in1(in2[1]), .cin(c7), .out(out[5]), .cout(c9));

full_adder f6(.in0(cin1), .in1(in1[4]), .cin(c8), .out(w5), .cout(c10));
full_adder f7(.in0(w5), .in1(in2[2]), .cin(c9), .out(out[6]), .cout(c11));

full_adder f8(.in0(~cin1), .in1(~cin2), .cin(c10), .out(w6), .cout(c12));
full_adder f9(.in0(w6), .in1(in2[3]), .cin(c11), .out(out[7]), .cout(c13));

half_adder h4(.in0(w7), .in1(c12), .cout(), .out(w8));
full_adder f10(.in0(w8), .in1(in2[4]), .cin(c13), .out(out[8]), .cout());






endmodule
