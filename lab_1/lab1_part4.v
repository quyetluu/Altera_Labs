module lab1_part4(SW, HEX0);
input [1:0] SW;
output reg [6:0] HEX0;

always @ (SW[1:0])
begin
	case(SW[1:0])
		2'h0: HEX0[6:0] = 7'b0100001;
		2'h1: HEX0[6:0] = 7'b0000110;
		2'h2: HEX0[6:0] = 7'b0100100;
		2'h3: HEX0[6:0] = 7'b1111111;
	endcase
end
endmodule