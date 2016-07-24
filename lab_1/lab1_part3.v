/*
	Author: Quyet Luu
	Date: 7/25/2016
*/

module lab1_part3(SW, LEDR);
input [9:0] SW;
output [1:0] LEDR;

assign LEDR = SW[9]? SW[1:0] : 
				  SW[8]? SW[3:2] : SW[5:4];

endmodule