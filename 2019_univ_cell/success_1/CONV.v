`include "multiplier.v"
`include  "comp.v"
`include  "twenty_adder.v"
`timescale 1ns/10ps

module  CONV(
	input		       clk,
	input		       reset,
	output reg	       busy,	
	input		       ready,	
			
	output reg [11:0]  iaddr,
	input  signed    [19:0]  idata,	
	
	output reg 	       cwr,
	output reg [11:0]  caddr_wr,
	output reg signed [19:0]  cdata_wr,
	
	output wire 	   crd,
	output reg [11:0]  caddr_rd,
	input  signed   [19:0]  cdata_rd,
	
	output reg [2:0]   csel
	);

//parameter
parameter signed BIAS  = 20'h01310;
parameter signed KER_0 = 20'h0A89E;
parameter signed KER_1 = 20'h092D5;
parameter signed KER_2 = 20'h06D43;
parameter signed KER_3 = 20'h01004;
parameter signed KER_4 = 20'hF8F71;
parameter signed KER_5 = 20'hF6E54;
parameter signed KER_6 = 20'hFA6D7;
parameter signed KER_7 = 20'hFC834;
parameter signed KER_8 = 20'hFAC19;
parameter signed ZERO  = 20'h00000;

parameter ADDR_BIAS_1 = 65;
parameter ADDR_BIAS_2 = 64;
parameter ADDR_BIAS_3 = 63;
parameter ADDR_BIAS_4 = 1;
parameter STATE = 4;

localparam IDLE      = 4'b0000;
localparam CONV      = 4'b0001;
localparam WB        = 4'b0010;
localparam MAX_POLL  = 4'b0100;
localparam WB_MAX    = 4'b1000;

//reg
reg [STATE-1:0] current_state,next_state;
reg [11:0] cnt;
reg [9:0]  cnt_max;
reg [3:0]  cnt_state;

//data_storage
reg signed [43:0] mul_reg,adder_reg;
reg signed [19:0] comp_reg,data_reg;

//module IO
reg  signed [19:0] mul_in_B;
wire signed [43:0] mul_result,adder_result;
wire signed [19:0] comp_result;
wire comp_enable = current_state[2] | current_state[3];

//wire
wire signed [20:0] round_temp ;
assign round_temp = adder_reg[35:15] + 21'd1;

//================================================================
//  FSM
//================================================================ 

//current_state
always @(posedge clk or posedge reset) begin
	if (reset) begin
		current_state <= IDLE;
	end
	else begin
		current_state <= next_state;
	end
end

//next_state
always @(*) begin
	case(current_state)
		IDLE:     next_state = ready           ? CONV     : IDLE;
		CONV:     next_state = cnt_state == 10 ? WB       : CONV;
		WB:       next_state = cnt == 4095     ? MAX_POLL : CONV;
		MAX_POLL: next_state = cnt_state == 3  ? WB_MAX   : MAX_POLL; 
		WB_MAX:   next_state = cnt_max == 1023 ? IDLE     : MAX_POLL;
		default:  next_state = IDLE;
	endcase
end

//================================================================
//  counter
//================================================================ 

//cnt
always @(posedge clk or posedge reset) begin
	if (reset) begin
		cnt <= 12'd0;
	end
	else begin
		if(current_state[1]) begin
			cnt <= cnt + 1;
		end
		else if(current_state[3]) begin
			cnt <= cnt[5:0] == 62 ? cnt + 66 : cnt + 2;
		end
		else begin
			cnt <= cnt;
		end
	end
end

//cnt_state
always @(posedge clk or posedge reset) begin
	if (reset) begin
		cnt_state <= 4'd0;
	end
	else begin
		case(current_state)
			CONV    : cnt_state <= cnt_state + 4'd1;
			WB      : cnt_state <= 4'd0;
			MAX_POLL: cnt_state <= cnt_state + 4'd1;
			WB_MAX  : cnt_state <= 4'd0;
			default : cnt_state <= 4'd0;
		endcase
	end
end

//cnt_max
always @(posedge clk or posedge reset) begin
	if (reset) begin
		cnt_max <= 10'd0;
	end
	else begin
		if(current_state[3]) begin
			cnt_max <= cnt_max + 'd1;
		end
		else begin
			cnt_max <= cnt_max;
		end
	end
end

//================================================================
//  IO PIN
//================================================================ 

//csel
always @(*)begin
	case(current_state)
		CONV    : csel = 0;
		WB      : csel = 1;
		MAX_POLL: csel = 1;
		WB_MAX  : csel = 3;
		default : csel = 0;
	endcase
end

//busy
always @(posedge clk or posedge reset) begin
	if (reset) begin
		busy <= 0;
	end
	else begin
		if(ready) begin
			busy <= 1;
		end
		else if(cnt_max == 1023 && current_state[3]) begin
			busy <= 0;
		end
		else begin
			busy <= busy;
		end
	end
end

//cwr
always @(*) begin
	if(current_state[1]) begin
		cwr = 1;
	end
	else if(current_state[3]) begin
		cwr = 1;
	end
	else begin
		cwr = 0;
	end
end

//crd
assign crd = current_state[2] ? 1 : 0;

//iaddr
always @(*) begin
	if(current_state[0]) begin
		case(cnt_state)
			'd0:iaddr = cnt - ADDR_BIAS_1;
			'd1:iaddr = cnt - ADDR_BIAS_2;
			'd2:iaddr = cnt - ADDR_BIAS_3;
			'd3:iaddr = cnt - ADDR_BIAS_4;
			'd4:iaddr = cnt              ;
			'd5:iaddr = cnt + ADDR_BIAS_4;
			'd6:iaddr = cnt + ADDR_BIAS_3;
			'd7:iaddr = cnt + ADDR_BIAS_2;
			'd8:iaddr = cnt + ADDR_BIAS_1;
			default:iaddr = 0;
		endcase
	end
	else begin
		iaddr = 0;
	end
end

//caddr_rd
always @(*) begin
	if(current_state[2]) begin
		case(cnt_state)
			'd0:caddr_rd = cnt              ;
			'd1:caddr_rd = cnt + ADDR_BIAS_4;
			'd2:caddr_rd = cnt + ADDR_BIAS_2;
			'd3:caddr_rd = cnt + ADDR_BIAS_1;
			default:caddr_rd = 0;
		endcase
	end
	else begin
		caddr_rd = 0;
	end
end

//caddr_wr
always @(*) begin
	if(current_state[1]) begin
		caddr_wr = cnt;
	end
	else if(current_state[3]) begin
		caddr_wr = cnt_max;
	end
	else begin
		caddr_wr = 0;
	end
end

//cdata_wr
always @(*) begin
	if(current_state[1]) begin
		cdata_wr = round_temp[20] ? ZERO : round_temp[20:1];
	end
	else if(current_state[3]) begin
		cdata_wr = comp_result;
	end
	else begin
		cdata_wr = ZERO;
	end
end

//================================================================
//  data_storage
//================================================================ 

//data_reg
always @(posedge clk or posedge reset) begin
	if (reset) begin
		data_reg <= ZERO;
	end
	else if(current_state[0]) begin
		case(cnt_state)
			'd0: data_reg <= cnt[11:6] == 6'd0  || cnt[5:0] == 6'd0  ? ZERO : idata;
			'd1: data_reg <= cnt[11:6] == 6'd0                       ? ZERO : idata;
			'd2: data_reg <= cnt[11:6] == 6'd0  || cnt[5:0] == 6'd63 ? ZERO : idata;
			'd3: data_reg <= cnt[5:0]  == 6'd0                       ? ZERO : idata;
			'd4: data_reg <= idata;
			'd5: data_reg <= cnt[5:0]  == 6'd63                      ? ZERO : idata;
			'd6: data_reg <= cnt[11:6] == 6'd63 || cnt[5:0] == 6'd0  ? ZERO : idata;
			'd7: data_reg <= cnt[11:6] == 6'd63                      ? ZERO : idata;
			'd8: data_reg <= cnt[11:6] == 6'd63 || cnt[5:0] == 6'd63 ? ZERO : idata;
			default:data_reg <= ZERO;
		endcase
	end
	else if(current_state[2]) begin
		data_reg <= cdata_rd;
	end
	else begin
		data_reg <= ZERO;
	end
end

//mul_reg
always @(posedge clk or posedge reset) begin
	if (reset) begin
		mul_reg <= ZERO;
	end
	else if (current_state[0]) begin
		mul_reg <= mul_result ;
	end
	else begin
		mul_reg <= ZERO;
	end
end

//adder_reg
always @(posedge clk or posedge reset) begin
	if (reset) begin
		adder_reg <= $signed(44'd0);
	end
	else if (current_state[0]) begin
		adder_reg <= adder_result;
	end
	else if (current_state[1]) begin
		adder_reg <= $signed({8'd0,BIAS,16'd0});
	end
	else begin
		adder_reg <= $signed(44'd0);
	end
end

//comp_reg
always @(posedge clk or posedge reset) begin
	if (reset) begin
		comp_reg <= ZERO;
	end
	else if (current_state[2]) begin
		comp_reg <= comp_result;
	end
	else begin
		comp_reg <= ZERO;
	end
end

//================================================================
//  Module IO
//================================================================ 

//mul_in_B
always @(*) begin
	if (current_state[0]) begin
		case(cnt_state)
			'd1:mul_in_B = KER_0;
			'd2:mul_in_B = KER_1;
			'd3:mul_in_B = KER_2;
			'd4:mul_in_B = KER_3;
			'd5:mul_in_B = KER_4;
			'd6:mul_in_B = KER_5;
			'd7:mul_in_B = KER_6;
			'd8:mul_in_B = KER_7;
			'd9:mul_in_B = KER_8;
			default:mul_in_B = ZERO;
		endcase
	end
	else begin
		mul_in_B = ZERO;
	end
end

//================================================================
//  module initailize
//================================================================ 



twenty_adder inst_twenty_adder (.in_A(mul_reg), .in_B(adder_reg), .enable(current_state[0]), .out(adder_result));
multiplier inst_multiplier (.in_A(data_reg), .in_B(mul_in_B), .enable(current_state[0]), .out(mul_result));
comp inst_comp (.in_A(data_reg), .in_B(comp_reg), .enable(comp_enable), .out(comp_result));


endmodule
