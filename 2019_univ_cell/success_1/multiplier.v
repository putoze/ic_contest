module multiplier(
input  signed [19:0] in_A,
input  signed [19:0] in_B,
input  enable,
output signed [43:0] out
	);
wire signed [43:0] out_temp ;
assign out_temp = in_A * in_B;
assign out = enable ? out_temp : 0;

endmodule
