/*
	Author: Quyet Luu
	Date: 7/27/2016
	Note: Reused from lab2_part3 and just changed name
*/

module adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire a_xor_b;

assign a_xor_b = a ^ b;
assign s = cin ^ a_xor_b;
assign cout = a_xor_b? cin : b;

endmodule 