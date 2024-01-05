module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

//================================================================
//  integer / genvar / parameters
//================================================================
genvar idx;
localparam IDLE      = 3'b000;
localparam RD_COST   = 3'b001;
localparam DICT_SORT = 3'b010;
localparam OUT       = 3'b100;

localparam TOTAL_SORT_TIMES = 40319;  // total sort times 40320

//================================================================
//   Wires & Registers 
//================================================================

reg [2:0]  curr_state,next_state;
reg [2:0]  job_list[0:7];
reg [2:0]  worker_cnt;
reg [3:0]  match_cnt;
reg [9:0]  min_cost_temp;
reg [9:0]  min_cost;
reg [15:0] total_sort_cnt;

// FSM flag
wire rd_done = worker_cnt == 'd7;
wire total_sort_done = total_sort_cnt == 'd0;

// flag
wire min_cost_temp_or_cur = min_cost_temp  < min_cost ? 1 : 0;
wire min_cost_temp_eq_cur = min_cost_temp == min_cost ? 1 : 0;

// Operation
wire [2:0]  worker_cnt_up       = worker_cnt + 'd1;
wire [15:0] total_sort_cnt_down = total_sort_cnt - 'd1;
wire [3:0]  match_cnt_update    = min_cost_temp_or_cur ? 'd1 : min_cost_temp_eq_cur ? match_cnt + 'd1 : match_cnt;
wire [9:0]  min_cost_update     = min_cost_temp_or_cur ? min_cost_temp : min_cost;
wire [9:0]  min_cost_temp_sum   = min_cost_temp + Cost;

// FSM
wire state_IDLE      = curr_state == 'd0;
wire state_RD_COST   = curr_state[0];
wire state_DICT_SORT = curr_state[1];
wire state_OUT       = curr_state[2];

//================================================================
//   assign
//================================================================

reg  [2:0] ref_pt;
wire [6:0] job_list_r_lr_l; //right larger than left
wire signed [3:0] job_list_minus_ref[0:7];
reg  [3:0] min_job_list_minus_ref[0:7];
reg  [2:0] min_job_list_lr_ref_pt[0:7];
reg  [2:0] before_flip_job_list[0:7],after_flip_job_list[0:7];
wire [2:0] min_lr_ref_pt = min_job_list_lr_ref_pt[7];

generate
	//job_list_r_lr_l
    for (idx = 0; idx < 7; idx = idx + 1) begin : loop_job_list_r_lr_l
        assign job_list_r_lr_l[idx] = job_list[idx+1] > job_list[idx] ? 1 : 0;
    end
    //job_list_minus_ref
    for (idx = 0; idx < 8; idx = idx + 1) begin : loop_job_list_minus_ref
		assign job_list_minus_ref[idx] = job_list[idx] - job_list[ref_pt];
    end
    //min_job_list_minus_ref
    for (idx = 0; idx < 8; idx = idx + 1) begin : loop_min_job_list_minus_ref
        always @(*) begin
        	if (idx > ref_pt) begin
        		if ((job_list_minus_ref[idx] > 0) && (job_list_minus_ref[idx] < min_job_list_minus_ref[idx-1])) begin
        			min_job_list_minus_ref[idx] = job_list_minus_ref[idx];
        			min_job_list_lr_ref_pt[idx] = idx;
        		end
        		else begin
        			min_job_list_minus_ref[idx] = min_job_list_minus_ref[idx-1];
        			min_job_list_lr_ref_pt[idx] = min_job_list_lr_ref_pt[idx-1];
        		end
        	end
        	else begin
        		min_job_list_minus_ref[idx] = 'd15;
        		min_job_list_lr_ref_pt[idx] = 'd0;
        	end
        end
    end
    //before_flip_job_list
    for (idx = 0; idx < 8; idx = idx + 1) begin : loop_before_flip_job_list
        always @(*) begin
        	if (idx == ref_pt) begin
        		before_flip_job_list[idx] = job_list[min_lr_ref_pt];
        	end
        	else if (idx == min_lr_ref_pt) begin
        		before_flip_job_list[idx] = job_list[ref_pt];
        	end
        	else begin
        		before_flip_job_list[idx] = job_list[idx];
        	end
        end
    end
    //after_flip_job_list
    for (idx = 0; idx < 8; idx = idx + 1) begin : loop_after_flip_job_list
        always @(*) begin 
        	if (idx > ref_pt) begin
        		after_flip_job_list[idx] = before_flip_job_list[8-idx+ref_pt];
        	end
        	else begin
        		after_flip_job_list[idx] = before_flip_job_list[idx];
        	end
        end
    end
    //job_list
    for (idx = 0; idx < 8; idx = idx + 1) begin : loop_job_list
		always @(posedge CLK or posedge RST) begin
		    if(RST) begin
		    	job_list[idx] <= idx;
		    end
		    else begin
		        if (state_DICT_SORT) begin
		        	job_list[idx] <= after_flip_job_list[idx];
		        end
		        // else if (state_OUT) begin
		        // 	job_list[idx] <= idx;
		        // end
		    end
		end
    end
    
endgenerate


always @(*) begin
	casex (job_list_r_lr_l)
		7'b1xxxxxx : ref_pt = 'd6;
		7'b01xxxxx : ref_pt = 'd5;
		7'b001xxxx : ref_pt = 'd4;
		7'b0001xxx : ref_pt = 'd3;
		7'b00001xx : ref_pt = 'd2;
		7'b000001x : ref_pt = 'd1;
		7'b0000001 : ref_pt = 'd0;
		default    : ref_pt = 'd7;
	endcase
end

//================================================================
//   OUT
//================================================================

always @(*) begin
    if (state_RD_COST) begin
    	W = worker_cnt_up;
    	J = job_list[worker_cnt_up];
    end
    else begin
    	W = worker_cnt;
    	J = job_list[worker_cnt];
    end
end


always @(posedge CLK or posedge RST) begin
    if(RST) begin
        Valid      <= 0;
        MatchCount <= 0;
        MinCost    <= 0;
    end 
    else begin
        if (state_OUT) begin
	        Valid      <= 1;
	        MatchCount <= match_cnt_update;
	        MinCost    <= min_cost_update;
        end
        else begin
	        Valid      <= 0;
	        MatchCount <= 0;
	        MinCost    <= 0;
        end
    end
end


//================================================================
//   Design
//================================================================

// FSM
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        curr_state <= IDLE;
    end 
    else begin
        curr_state <= next_state;
    end
end

always @(*) begin 
	case (curr_state)
		IDLE      : next_state = RD_COST;
		RD_COST   : next_state = rd_done ? total_sort_done ? OUT : DICT_SORT : RD_COST;
		DICT_SORT : next_state = RD_COST;
		OUT       : next_state = IDLE;
		default   : next_state = IDLE;
	endcase
end


//total_sort_cnt
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        total_sort_cnt <= TOTAL_SORT_TIMES;
    end 
    else begin
        if (state_DICT_SORT) begin
        	total_sort_cnt <= total_sort_cnt_down;
        end
        else if (state_OUT) begin
        	total_sort_cnt <= TOTAL_SORT_TIMES;
        end
    end
end

//worker_cnt
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        worker_cnt <= 0;
    end 
    else begin
        if (state_RD_COST) begin
        	worker_cnt <= rd_done ? 'd0 : worker_cnt_up;
        end
    end
end

//min_cost_temp
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        min_cost_temp <= 0;
    end 
    else begin
        if (state_RD_COST) begin
        	min_cost_temp <= min_cost_temp_sum;
        end
        else begin
        	min_cost_temp <= 'd0;
        end
    end
end

////min_cost and match_cnt
always @(posedge CLK or posedge RST) begin
    if(RST) begin
        min_cost  <= 1023;
        match_cnt <= 0;
    end 
    else begin
        if (state_DICT_SORT) begin
        	min_cost  <= min_cost_update;
        	match_cnt <= match_cnt_update;
        end
    end
end



endmodule


