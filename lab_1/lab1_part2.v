module lab1_part2 (SW, LEDR);
input [9:0] SW; // slide switches
output [9:0] LEDR; // red LEDs

assign LEDR[9] = SW[9];
assign LEDR[3:0] = SW[9]? SW[3:0] : SW[7:4];

endmodule 