`timescale 1ns / 1ps


module partial_product(m, x, pp, rst, clk, sout, eout);

input [2:0] m;
input [7:0] x;
input rst, clk;
output [8:0] pp;
output sout, eout;

wire s,d,n;

assign s = m[0]^m[1];
assign d = ~((m[0]^m[1])|(~(m[1]^m[2])));
assign z = s|d;
assign n = m[2];


assign pp[0] = (x[0] & s) ^ (n);
assign pp[1] = (((x[1] & s)) | (x[0] & d)) ^ (n);
assign pp[2] = (((x[2] & s)) | (x[1] & d)) ^ (n);
assign pp[3] = (((x[3] & s)) | (x[2] & d)) ^ (n);
assign pp[4] = (((x[4] & s)) | (x[3] & d)) ^ (n);
assign pp[5] = (((x[5] & s)) | (x[4] & d)) ^ (n);
assign pp[6] = (((x[6] & s)) | (x[5] & d)) ^ (n);
assign pp[7] = (((x[7] & s)) | (x[6] & d)) ^ (n);

assign pp[8] = ((x[7]&z)^n);


assign sout = n;
assign eout = ((~(sout^x[7]))&z) | (~sout&~z);





endmodule
