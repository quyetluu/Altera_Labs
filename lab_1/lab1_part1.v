module lab1_part1 (SW, LEDR);
input [17:0] SW; // slide switches
output [17:0] LEDR; // red LEDs
assign LEDR = SW;
endmodule