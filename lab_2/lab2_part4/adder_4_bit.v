/*
	Author: Quyet Luu
	Date: 7/27/2016
	Note: Reused from lab2_part3 and just changed name
*/

module adder_4_bit(in, out);
input [8:0] in;
output [4:0] out;
wire [2:0] cout;
adder add0(in[0],in[4],in[8],out[0],cout[0]);
adder add1(in[1],in[5],cout[0],out[1],cout[1]);
adder add2(in[2],in[6],cout[1],out[2],cout[2]);
adder add3(in[3],in[7],cout[2],out[3],out[4]);

endmodule