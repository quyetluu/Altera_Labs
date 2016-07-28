/*
	Author: Quyet Luu
	Date: 7/28/2016
*/

module lab2_part5(SW,LEDR,HEX5,HEX3,HEX1,HEX0);
input [8:0] SW;
output [4:0] LEDR;
output [6:0] HEX5,HEX3,HEX1,HEX0;
wire [4:0] connect;
wire [3:0] in0, in1;
wire [3:0] tmp;
wire carry;

decode_to_7led hex5(SW[7:4],HEX5);
decode_to_7led hex3(SW[3:0],HEX3);

assign connect = SW[7:4] + SW[3:0] + SW[8];
assign {tmp, carry} = (connect > 5'h9)? {4'hA,1'b1} : {4'h0,1'b0};

assign in1 = carry? 4'h1 : 4'h0;
decode_to_7led hex1(in1,HEX1);

assign in0 = (connect - {1'h0,tmp}) & 4'hf;
assign LEDR = tmp;
decode_to_7led hex0(in0,HEX0);

endmodule



module decode_to_7led(sw,hex);
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
