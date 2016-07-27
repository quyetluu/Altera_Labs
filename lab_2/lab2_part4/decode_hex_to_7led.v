/*
	Author: Quyet Luu
	Date: 7/27/2016
	Note: reused from lab2_part2, just changed name
*/
module decode_hex_to_7led(sw,hex);
input [3:0] sw;
output reg [6:0] hex;
always@(sw)
 begin
	case(sw)
		4'h0: hex = 7'b100_0000;
		4'h1: hex = 7'b111_1001;
		4'h2: hex = 7'b010_0100;
		4'h3: hex = 7'b011_0000;
		4'h4: hex = 7'b001_1001;
		4'h5: hex = 7'b001_0010;
		4'h6: hex = 7'b000_0010;
		4'h7: hex = 7'b111_1000;
		4'h8: hex = 7'b000_0000;
		4'h9: hex = 7'b001_0000;
		default: hex = 7'h7f;
	endcase
 end
endmodule