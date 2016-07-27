/*
	Author: Quyet Luu
	Date: 7/27/2016
	Note: Reused from lab2_part2 and and fixed error display when the input is greater 15
*/

module sw_to_led_hex(SW,LEDR,HEX1,HEX0);
input [4:0] SW;
output [4:0] LEDR;
output [6:0] HEX1,HEX0;
wire [3:0] unit1, unit0;

assign LEDR = SW;
assign unit1 = (SW[4] | ( SW[3] & (SW[2] | SW[1])))? 4'h1: 4'h0;
decode_hex_to_7led decode1(unit1,HEX1);

assign unit0 = (unit1)?  { (~SW[3] & SW[4] & SW[1] ), (SW[2] & SW[3] & SW[1]) | (~SW[1] & SW[4]), ~SW[1] , SW[0]} : SW[3:0];
decode_hex_to_7led decode0(unit0,HEX0);

endmodule