/*
	Author: Quyet Luu
	Date: 7/27/2016
*/

module lab2_part4(SW,LEDR,HEX5,HEX3,HEX1,HEX0);
input [7:0] SW;
output [4:0] LEDR;
output [6:0] HEX5,HEX3,HEX1,HEX0;
wire [4:0] connect;

decode_hex_to_7led hex5(SW[7:4],HEX5);
decode_hex_to_7led hex3(SW[3:0],HEX3);
sw_to_led_hex result(connect,LEDR,HEX1,HEX0);

adder_4_bit adder(SW,connect);


endmodule 




