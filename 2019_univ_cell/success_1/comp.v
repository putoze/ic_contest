module comp(
input  signed [19:0] in_A,
input  signed [19:0] in_B,
input  enable,
output signed [19:0] out
	);
assign out = enable ? in_A > in_B ? in_A : in_B : $signed(20'd0);
endmodule