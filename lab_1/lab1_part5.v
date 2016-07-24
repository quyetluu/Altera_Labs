module lab1_part5(SW,HEX0);
input[9:0] SW;
output reg [6:0] HEX0;
wire [1:0] connecttion;

assign connecttion = SW[9]? SW[1:0] : 
				  SW[8]? SW[3:2] : SW[5:4];
always @ (connecttion)
begin
	case(connecttion)
		2'h0: HEX0[6:0] = 7'b0100001;
		2'h1: HEX0[6:0] = 7'b0000110;
		2'h2: HEX0[6:0] = 7'b0100100;
		2'h3: HEX0[6:0] = 7'b1111111;
	endcase
end
				  
endmodule