/*
	Author: Quyet Luu
	Date: 7/29/2016
*/
module lab2_part6(SW,HEX1,HEX0);
input [5:0] SW;
output [6:0] HEX1,HEX0;


wire[5:0] d_10,d_11,d_12,d_13,d_14,d_15;
wire cout0,cout1,cout2,cout3,cout4,cout5;
wire [5:0] d0,d1,d2,d3,d4,d5;

get_unit0 u0(1'b0,SW,d0,cout0);
get_unit0 u1(cout0,d0,d1,cout1);
get_unit0 u2(cout1,d1,d2,cout2);
get_unit0 u3(cout2,d2,d3,cout3);
get_unit0 u4(cout3,d3,d4,cout4);
get_unit0 u5(cout4,d4,d5,cout5);

get_unit1 u1_0(cout0,0,d_10);
get_unit1 u1_1(cout1,d_10,d_11);
get_unit1 u1_2(cout2,d_11,d_12);
get_unit1 u1_3(cout3,d_12,d_13);
get_unit1 u1_4(cout4,d_13,d_14);
get_unit1 u1_5(cout5,d_14,d_15);
decode_to_7led hex0(d5,HEX0);
decode_to_7led hex1(d_15,HEX1);


/*

// Other design. it's so simple (:P)

wire [5:0] unit0, unit1;
assign unit0 = SW % 4'hA;
assign unit1 = SW / 4'hA;
decode_to_7led hex0(unit0,HEX0);
decode_to_7led hex1(unit1,HEX1);

*/

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

module get_unit0(cin,num_in,num_out,cout);
input [5:0] num_in;
input cin;
output [5:0] num_out;
output cout;

assign {num_out,cout} = (num_in > 6'hA )? {num_in - 6'hA,1'h1}: {num_in,1'h0} ;
endmodule

module get_unit1(cin,num_in,num_out);
input [5:0] num_in;
input cin;
output [5:0] num_out;

assign num_out = cin? num_in +6'h1: num_in;

endmodule