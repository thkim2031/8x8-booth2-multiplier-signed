`timescale 1ns / 1ps


module booth(RST, CLK, x, multiplier, result);

input   [7:0]     x;
input             RST, CLK;
input   [7:0]     multiplier;
output  [15:0]    result;
         
wire     [8:0]    m;
wire     [8:0]    pp[3:0];
wire     [3:0]    sout;
wire     [3:0]    eout;

assign m[8] = multiplier[7];
assign m[7] = multiplier[6];
assign m[6] = multiplier[5];
assign m[5] = multiplier[4];
assign m[4] = multiplier[3];
assign m[3] = multiplier[2];
assign m[2] = multiplier[1];
assign m[1] = multiplier[0];
        
assign m[0] = 0;        

    
partial_product pp0(.x(x), .m(m[2:0]), .pp(pp[0]), .rst(RST), .clk(CLK), .sout(sout[0]), .eout(eout[0]));
partial_product pp1(.x(x), .m(m[4:2]), .pp(pp[1]), .rst(RST), .clk(CLK), .sout(sout[1]), .eout(eout[1]));
partial_product pp2(.x(x), .m(m[6:4]), .pp(pp[2]), .rst(RST), .clk(CLK), .sout(sout[2]), .eout(eout[2]));
partial_product pp3(.x(x), .m(m[8:6]), .pp(pp[3]), .rst(RST), .clk(CLK), .sout(sout[3]), .eout(eout[3]));

cra cra0(.in0(pp[0]), .in1(pp[1]), .in2(pp[2]), .in3(pp[3]), .s(sout), .e(eout), .out(result));




endmodule
