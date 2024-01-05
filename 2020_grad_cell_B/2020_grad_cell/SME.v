// This is a simple example.
// You can make a your own header file and set its path to settings.
// (Preferences > Package Settings > Verilog Gadget > Settings - User)
//
//		"header": "Packages/Verilog Gadget/template/verilog_header.v"
//
// -----------------------------------------------------------------------------
// Copyright (c) 2014-2023 All rights reserved
// -----------------------------------------------------------------------------
// Author : putoze
// File   : SME.v
// Create : 2023-11-21 18:34:33
// Revise : 2023-11-21 18:48:12
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output reg match;
output reg [4:0] match_index;
output reg valid;

//================================================================
//   PARAMETER
//================================================================
integer i;
localparam IDLE      = 3'b000;
localparam READ_S    = 3'b001;
localparam READ_P    = 3'b011;
localparam CAL       = 3'b010;
localparam DONE      = 3'b100;

//================================================================
//   REG
//================================================================

reg [7:0] stringdata_ff [0:33];
reg [7:0] pattern_ff[0:8];
reg [5:0] string_cnt,string_cnt_max;
reg [3:0] curr_state, next_state;

reg [7:0] com_seq_s[0:7],com_seq_p[0:7];

reg [5:0] cal_cnt,front_cnt;
reg [3:0] pat_cnt,star_loc;

reg  match_f_ff;

reg  match_f,pre_match_f,back_match_f,front_or_back,cal_done;
reg  star_f,head_f;

wire back_done = ((pat_cnt - star_loc + cal_cnt) == string_cnt_max) && star_f && (front_or_back == 0);
wire [7:0] com_result;
wire com_match = com_result == 8'b11111111;
wire read_s_done = (!isstring) && curr_state == READ_S;
wire read_p_done = (!ispattern) && curr_state == READ_P;

//================================================================
//   FSM
//================================================================

always @(posedge clk or posedge reset) begin
	if (reset) begin
		curr_state <= IDLE;
	end
	else begin
		curr_state <= next_state;
	end
end


always @(*) begin
	case(curr_state)
	IDLE    : next_state = isstring ? READ_S : ispattern ? READ_P : IDLE;
	READ_S  : next_state = read_s_done ? READ_P : READ_S;
	READ_P  : next_state = read_p_done ? CAL : READ_P;
	CAL     : next_state = cal_done ? DONE : CAL;
	DONE    : next_state = IDLE;
	endcase
end

//================================================================
//   OUT
//================================================================

always @(posedge clk or posedge reset) begin
	if (reset) begin
		match       <= 'd0;
		match_index <= 'd0;
		valid       <= 'd0;
	end
	else begin
		if (curr_state[2]) begin
			if (match_f_ff) begin
				match       <= 'd1;
				valid       <= 'd1;
				if (star_f) begin
					match_index <=  head_f ? front_cnt : front_cnt - 'd1;
				end
				else begin
					match_index <=  head_f ? cal_cnt : cal_cnt - 'd1;
				end
			end
			else begin
				match       <= 'd0;
				match_index <= 'd0;
				valid       <= 'd1;
			end
		end
		else begin
			match       <= 'd0;
			match_index <= 'd0;
			valid       <= 'd0;
		end
	end
end

//================================================================
//   DESIGN
//================================================================

generate
	genvar idx;
	for(idx=0;idx<8;idx=idx+1) begin
		assign com_result[idx] = (com_seq_s[idx] == com_seq_p[idx]) | (com_seq_p[idx] == 8'h2E) ;
	end
endgenerate

// stringdata_ff
always @(posedge clk or posedge reset) begin
	if (reset) begin
		for(i=1;i<34;i=i+1) begin
			stringdata_ff[i] <= 8'd0;
		end
		stringdata_ff[0] <= 8'h20;
	end
	else begin
		if (isstring) begin
			stringdata_ff[string_cnt] <= chardata;
		end
		else if(read_s_done) begin
			stringdata_ff[string_cnt] <= 8'h20;
		end
	end
end

// pattern_ff
always @(posedge clk or posedge reset) begin
	if (reset) begin
		for(i=0;i<9;i=i+1) begin
			pattern_ff[i] <= 8'h2E;
		end
	end
	else begin
		if (curr_state[2]) begin
			for(i=0;i<9;i=i+1) begin
				pattern_ff[i] <= 8'h2E;
			end
		end
		else if(ispattern) begin
			if (chardata == 8'h5E || chardata == 8'h24) begin
				pattern_ff[pat_cnt] <= 8'h20;
			end
			else begin
				pattern_ff[pat_cnt] <= chardata;
			end
		end
	end
end

//match_f_ff
always @(posedge clk or posedge reset) begin
	if (reset) begin
		match_f_ff <= 0;
	end
	else begin
		if (cal_done) begin
			match_f_ff <= match_f;
		end
		else if(pre_match_f) begin
			match_f_ff <= 1;
		end
		else if(curr_state[2]) begin
			match_f_ff <= 0;
		end
	end
end

// string_cnt
always @(posedge clk or posedge reset) begin
	if (reset) begin
		string_cnt <= 'd1;
	end
	else if (isstring) begin
		string_cnt <= string_cnt + 'd1;
	end
	else begin
		string_cnt <= 'd1;
	end
end

//string_cnt_max
always @(posedge clk or posedge reset) begin
	if (reset) begin
		string_cnt_max <= 'd0;
	end
	else if (read_s_done) begin
		string_cnt_max <= string_cnt + 'd2;
	end
end

//pat_cnt
always @(posedge clk or posedge reset) begin
	if (reset) begin
		pat_cnt <= 'd0;
	end
	else begin
		if (ispattern) begin
			pat_cnt <= pat_cnt + 'd1;
		end
		else if(curr_state[2]) begin
			pat_cnt <= 'd0;
		end
	end
end

//star_loc
always @(posedge clk or posedge reset) begin
	if (reset) begin
		star_loc <= 'd0;
		star_f   <= 0;
		head_f   <= 0;
	end
	else if (ispattern ) begin
		if(chardata == 8'h2A) begin
			star_loc <= pat_cnt;
			star_f   <= 1;	
		end
		else if (chardata == 8'h5E ) begin //|| (chardata == 8'h2E && pat_cnt == 'd0)
			head_f <= 1;
		end
	end
	else if(curr_state[2]) begin
	    star_loc <= 'd0;
		star_f   <= 0;
		head_f   <= 0;
	end
end

// com_seq_s[0:7],com_seq_p[0:7]
always @(posedge clk or posedge reset) begin
	if (reset) begin
		cal_cnt <= 'd0;
	end
	else begin
		if (curr_state == CAL) begin
			if (back_done) begin
				cal_cnt <= front_cnt + 'd1;
			end
			else if(match_f) begin
				cal_cnt <= cal_cnt;
			end
			else if(pre_match_f) begin
				cal_cnt <= cal_cnt + star_loc;
			end
			else begin
				cal_cnt <= cal_cnt + 'd1;
			end
		end
		else begin
			cal_cnt <= read_p_done ? head_f ? 'd0 : 'd1 : 'd0;
		end
	end
end


always @(posedge clk or posedge reset) begin
	if (reset) begin
		front_cnt <= 'd0;
	end
	else begin
		if (curr_state == CAL && pre_match_f) begin
			front_cnt <=  cal_cnt ;
		end
	end
end


//com_seq_s
always @(*) begin
	for(i=0;i<8;i=i+1) begin
		com_seq_s[i] = stringdata_ff[cal_cnt+i];
	end
end

//com_seq_p
always @(*) begin
	if (curr_state == CAL) begin
		if (!star_f) begin
			for(i=0;i<8;i=i+1) begin
				com_seq_p[i] = pattern_ff[i];
			end
		end
		else begin
			if(front_or_back) begin
				for(i=0;i<8;i=i+1) begin
					if(i < star_loc) begin
						com_seq_p[i] = pattern_ff[i];
					end
					else begin
						com_seq_p[i] = 8'h2E;
					end
				end
			end
			else begin
				for(i=0;i<8;i=i+1) begin
					if((i + star_loc) < pat_cnt) begin
						com_seq_p[i] = pattern_ff[i + star_loc + 1];
					end
					else begin
						com_seq_p[i] = 8'h2E;
					end
				end
			end
		end
	end
	else begin
		for(i=0;i<8;i=i+1) begin
			com_seq_p[i] = 'd0;
		end
	end
end

// match_f,pre_match_f,back_match_f
always @(*) begin
	if (curr_state == CAL) begin
		if (star_f) begin
			match_f = match_f_ff & back_match_f;
		end
		else begin
			match_f = com_match;
		end
	end
	else begin
		match_f = 0;
	end
end

always @(*) begin
	if (curr_state == CAL) begin
		if (star_f) begin
			pre_match_f = front_or_back && (com_match || star_loc == 'd0);
		end
		else begin
			pre_match_f = 0;
		end
	end
	else begin
		pre_match_f = 0;
	end
end

always @(*) begin
	if (curr_state == CAL) begin
		if (star_f) begin
			back_match_f = !front_or_back & com_match;
		end
		else begin
			back_match_f = 0;
		end
	end
	else begin
		back_match_f = 0;
	end
end

//front_or_back
always @(posedge clk or posedge reset) begin
	if (reset) begin
		front_or_back <= 1;
	end
	else begin
		if (curr_state == DONE) begin
			front_or_back <= 1;
		end
		else if(pre_match_f) begin
			front_or_back <= 0;
		end
		else if (back_done) begin
			front_or_back <= 1;
		end
	end
end

//cal_done
always @(*) begin
	if (curr_state == CAL) begin
		if (!star_f) begin
			cal_done = match_f || (cal_cnt + pat_cnt) == string_cnt_max;
		end
		else begin
			cal_done = match_f || ((cal_cnt + pat_cnt) == string_cnt_max && (back_done || front_or_back || (front_cnt == string_cnt_max || star_loc == 'd0) ));
		end
	end
	else begin
		cal_done = 0;
	end
end

endmodule
