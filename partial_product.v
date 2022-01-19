`timescale 1ns / 1ps


module partial_product(x, m, p, rst, clk, cout);

input [2:0] x;
input [3:0] m;
input rst, clk;
output [4:0] p;
output cout;

wire s, d, n;

wire [4:0] p;
wire cout;

assign s = x[0]^x[1];
assign d = ~((x[0]^x[1])|(~(x[1]^x[2])));
assign n = x[2];


assign p[0] = (m[0] & s) ^ (n);
assign p[1] = (((m[1] & s)) | (m[0] & d)) ^ (n);
assign p[2] = (((m[2] & s)) | (m[1] & d)) ^ (n);
assign p[3] = (((m[3] & s)) | (m[2] & d)) ^ (n);
assign p[4] = (m[3] & d) ^ (n);
assign cout = n;





endmodule
