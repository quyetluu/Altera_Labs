/*
	Author: Quyet Luu
	Date: 7/27/2016
*/

module lab2_part3(SW, LEDG);
input [8:0] SW;
output [4:0] LEDG;
wire [2:0] cout;
adder add0(SW[0],SW[4],SW[8],LEDG[0],cout[0]);
adder add1(SW[1],SW[5],cout[0],LEDG[1],cout[1]);
adder add2(SW[2],SW[6],cout[1],LEDG[2],cout[2]);
adder add3(SW[3],SW[7],cout[2],LEDG[3],LEDG[4]);


endmodule


module adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire a_xor_b;

assign a_xor_b = a ^ b;
assign s = cin ^ a_xor_b;
assign cout = a_xor_b? cin : b;

endmodule 