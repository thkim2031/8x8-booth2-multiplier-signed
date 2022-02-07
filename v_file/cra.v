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


module cra(in0, in1, in2, in3,  s, e, out );

input [8:0] in0, in1, in2, in3;
input [3:0] s; 
input [3:0] e;

output[15:0] out;



wire [42:0] c;
wire [29:0] w;

assign w[29] = 1;


half_adder h0(.in0(in0[0]), .in1(s[0]), .cout(c[0]), .out(out[0]));

half_adder h1(.in0(in0[1]), .in1(c[0]), .cout(c[1]), .out(out[1]));

full_adder f0(.in0(in0[2]), .in1(in1[0]), .cin(c[1]), .out(w[0]), .cout(c[2]));
half_adder h2(.in0(w[0]), .in1(s[1]), .cout(c[3]), .out(out[2]));


full_adder f1(.in0(in0[3]), .in1(in1[1]), .cin(c[2]), .out(w[1]), .cout(c[4]));
half_adder h3(.in0(w[1]), .in1(c[3]), .cout(c[5]), .out(out[3]));

full_adder f2(.in0(in0[4]), .in1(in1[2]), .cin(c[4]), .out(w[2]), .cout(c[6]));
full_adder f3(.in0(w[2]), .in1(in2[0]), .cin(c[5]), .out(w[3]), .cout(c[7]));
half_adder h4(.in0(w[3]), .in1(s[2]), .cout(c[8]), .out(out[4]));

full_adder f4(.in0(in0[5]), .in1(in1[3]), .cin(c[6]), .out(w[4]), .cout(c[9]));
full_adder f5(.in0(w[4]), .in1(in2[1]), .cin(c[7]), .out(w[5]), .cout(c[10]));
half_adder h5(.in0(w[5]), .in1(c[8]), .cout(c[11]), .out(out[5]));

full_adder f6(.in0(in0[6]), .in1(in1[4]), .cin(c[9]), .out(w[6]), .cout(c[12]));
full_adder f7(.in0(w[6]), .in1(in2[2]), .cin(c[10]), .out(w[7]), .cout(c[13]));
full_adder f8(.in0(w[7]), .in1(in3[0]), .cin(c[11]), .out(w[8]), .cout(c[14]));
half_adder h6(.in0(w[8]), .in1(s[3]), .cout(c[15]), .out(out[6]));

full_adder f9(.in0(in0[7]), .in1(in1[5]), .cin(c[12]), .out(w[9]), .cout(c[16]));
full_adder f10(.in0(w[9]), .in1(in2[3]), .cin(c[13]), .out(w[10]), .cout(c[17]));
full_adder f11(.in0(w[10]), .in1(in3[1]), .cin(c[14]), .out(w[11]), .cout(c[18]));
half_adder h7(.in0(w[11]), .in1(c[15]), .cout(c[19]), .out(out[7]));


full_adder f12(.in0(in0[8]), .in1(in1[6]), .cin(c[16]), .out(w[12]), .cout(c[20]));
full_adder f13(.in0(w[12]), .in1(in2[4]), .cin(c[17]), .out(w[13]), .cout(c[21]));
full_adder f14(.in0(w[13]), .in1(in3[2]), .cin(c[18]), .out(w[14]), .cout(c[22]));
half_adder h8(.in0(w[14]), .in1(c[19]), .cout(c[23]), .out(out[8]));


full_adder f15(.in0(in1[7]), .in1(~e[0]), .cin(c[20]), .out(w[15]), .cout(c[24]));
full_adder f16(.in0(w[15]), .in1(in2[5]), .cin(c[21]), .out(w[16]), .cout(c[25]));
full_adder f17(.in0(w[16]), .in1(in3[3]), .cin(c[22]), .out(w[17]), .cout(c[26]));
half_adder h9(.in0(w[17]), .in1(c[23]), .cout(c[27]), .out(out[9]));


full_adder f18(.in0(in1[8]), .in1(~e[0]), .cin(c[24]), .out(w[18]), .cout(c[28]));
full_adder f19(.in0(w[18]), .in1(in2[6]), .cin(c[25]), .out(w[19]), .cout(c[29]));
full_adder f20(.in0(w[19]), .in1(in3[4]), .cin(c[26]), .out(w[20]), .cout(c[30]));
half_adder h10(.in0(w[20]), .in1(c[27]), .cout(c[31]), .out(out[10]));

full_adder f21(.in0(e[0]), .in1(e[1]), .cin(c[28]), .out(w[21]), .cout(c[32]));
full_adder f22(.in0(w[21]), .in1(in2[7]), .cin(c[29]), .out(w[22]), .cout(c[33]));
full_adder f23(.in0(w[22]), .in1(in3[5]), .cin(c[30]), .out(w[23]), .cout(c[34]));
half_adder h11(.in0(w[23]), .in1(c[31]), .cout(c[35]), .out(out[11]));

full_adder f24(.in0(in2[8]), .in1(c[32]), .cin(c[33]), .out(w[25]), .cout(c[36]));
full_adder f25(.in0(w[25]), .in1(in3[6]), .cin(c[34]), .out(w[26]), .cout(c[37]));
full_adder f26(.in0(w[26]), .in1(w[29]), .cin(c[35]), .out(out[12]), .cout(c[38]));


full_adder f27(.in0(in3[7]), .in1(c[36]), .cin(c[37]), .out(w[27]), .cout(c[39]));
full_adder f28(.in0(w[27]), .in1(e[2]), .cin(c[38]), .out(out[13]), .cout(c[40]));

half_adder h12(.in0(in3[8]), .in1(c[39]), .cout(c[41]), .out(w[28]));
full_adder f29(.in0(w[28]), .in1(w[29]), .cin(c[40]), .out(out[14]), .cout(c[42]));

full_adder f30(.in0(e[3]), .in1(c[41]), .cin(c[42]), .out(out[15]), .cout());

endmodule
