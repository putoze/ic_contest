module LASER (
input CLK,
input RST,
input [3:0] X,
input [3:0] Y,
output reg [3:0] C1X,
output reg [3:0] C1Y,
output reg [3:0] C2X,
output reg [3:0] C2Y,
output reg DONE);

//================================================================
//   PARAMETER
//================================================================

localparam IDLE      = 4'b0000;
localparam READ      = 4'b0001;
localparam IS_INSIDE = 4'b0010;
localparam FIND_BEST = 4'b0100;
localparam OUT       = 4'b1000;

localparam OBJ_NUM  = 40;
localparam PARALLEL = 40;
localparam IS_INSIDE_NUM = 1; // OBJ_NUM / PARALLEL
localparam MAX_ITER = 6;

integer mem,tmp,opt;
genvar idx;

//================================================================
//   REG
//================================================================
reg [3:0] curr_state,next_state;
reg [5:0] global_cnt;
reg [2:0] iter_cnt;
reg [7:0] obj_mem[0:39];//obj_x [3:0];obj_y [7:4]
reg [3:0] col_ptr,row_ptr;
reg [7:0] circal_loc_C1,circal_loc_C2;
reg [7:0] circal_loc_max;
reg [5:0] opt_num;
reg [39:0] max_c1_dirty,max_c2_dirty,tmp_dirty ;

//================================================================
//   WIRE
//================================================================

reg [5:0] opt_num_w;
reg [39:0] or_result;

//state indicater
wire state_IDLE      = curr_state == IDLE;
wire state_READ      = curr_state[0];
wire state_IS_INSIDE = curr_state[1];
wire state_FIND_BEST = curr_state[2];
wire state_OUT       = curr_state[3];

//flag
wire rd_done         = global_cnt == OBJ_NUM -1 && state_READ;
wire IS_INSIDE_done  = global_cnt == IS_INSIDE_NUM - 1 && state_IS_INSIDE;
wire opt_tmp_lr_max  = opt_num_w  >= opt_num; //larger than
wire one_iter_done   = state_FIND_BEST && {row_ptr,col_ptr} == {8{1'b1}};
wire FIND_BEST_done  = (iter_cnt   == MAX_ITER -1 || circal_loc_max == circal_loc_C1) && one_iter_done;

// opt/O
wire [PARALLEL-1:0] is_inside;

//================================================================
//   FSM
//================================================================
always @(posedge CLK) begin
	if(RST) begin
		curr_state <= READ;
	end 
	else begin
		curr_state <= next_state;
	end
end

always @(*) begin 
	case (curr_state)
		IDLE      : next_state = READ;
		READ      : next_state = rd_done ? IS_INSIDE : READ;
		IS_INSIDE : next_state = IS_INSIDE_done ? FIND_BEST : IS_INSIDE;
		FIND_BEST : next_state = FIND_BEST_done ? OUT : IS_INSIDE;
		OUT       : next_state = IDLE;
	endcase
end

//================================================================
//   opt/O
//================================================================
generate 
	for(idx=0;idx<PARALLEL;idx=idx+1) begin
		Inside inst_Inside (.in_x(obj_mem[idx][3:0]), .in_y(obj_mem[idx][7:4]), .circle_x(col_ptr), .circle_y(row_ptr), .is_inside(is_inside[idx]));
	end
endgenerate

//================================================================
//   OUT
//================================================================
always @(posedge CLK) begin 
	if(RST) begin
		C1X  <= 0;
		C1Y  <= 0;
		C2X  <= 0;
		C2Y  <= 0;
		DONE <= 0;
	end 
	else begin
		case (curr_state)
			OUT : 
			begin
				C1X  <= circal_loc_C1[3:0];
				C1Y  <= circal_loc_C1[7:4];
				C2X  <= circal_loc_C2[3:0];
				C2Y  <= circal_loc_C2[7:4];
				DONE <= 1;
			end
			default : 
			begin
				C1X  <= 0;
				C1Y  <= 0;
				C2X  <= 0;
				C2Y  <= 0;
				DONE <= 0;
			end
		endcase
	end
end

//================================================================
//   DESIGN
//================================================================

always @(posedge CLK) begin 
	if(RST) begin
		global_cnt <= 'd0;
	end 
	else begin
		if(rd_done || IS_INSIDE_done) begin
			global_cnt <= 'd0;
		end
		else if(state_READ || state_IS_INSIDE) begin
			global_cnt <= global_cnt + 'd1;
		end
		else if(state_IDLE) begin
			global_cnt <= 'd0;
		end
	end
end

//obj_mem
always @(posedge CLK) begin
	if(RST) begin
		for (mem = 0; mem < 40; mem=mem+1) begin
		    obj_mem[mem] <= 'd0;
		end
	end 
	else begin
		if(state_READ)begin
			obj_mem[OBJ_NUM-1] <= {Y,X};
			for (mem = 0; mem < OBJ_NUM -1; mem=mem+1) begin
			    obj_mem[mem] <= obj_mem[mem+1];
			end
		end
		else if(state_IS_INSIDE) begin
			for (mem = 0; mem < OBJ_NUM; mem=mem+1) begin
			    if (mem < (OBJ_NUM-PARALLEL)) begin
			    	obj_mem[mem] <= obj_mem[mem+PARALLEL];
			    end
			    else begin
			    	obj_mem[mem] <= obj_mem[mem-(OBJ_NUM-PARALLEL)];
			    end
			end
		end
	end
end

always @(posedge CLK or posedge RST) begin 
	if(RST) begin
		{iter_cnt,row_ptr,col_ptr} <= 'd0;
	end 
	else if(state_FIND_BEST) begin
		{iter_cnt,row_ptr,col_ptr} <= {iter_cnt,row_ptr,col_ptr} + 'd1;
	end
	else if(state_IDLE) begin
		iter_cnt <= 'd0;
	end
end

always @(posedge CLK) begin 
	if(RST) begin
		circal_loc_C1 <= 0;
	end 
	else if(one_iter_done) begin
		circal_loc_C1 <= circal_loc_C2;
	end
	else if(state_FIND_BEST) begin
		circal_loc_C1 <= opt_tmp_lr_max ? {row_ptr,col_ptr} : circal_loc_C1;
	end
	else if(state_IDLE) begin
		circal_loc_C1 <= 'd0;
	end
end

always @(posedge CLK) begin 
	if(RST) begin
		circal_loc_C2 <= 0;
	end 
	else if(one_iter_done) begin
		circal_loc_C2 <= circal_loc_C1;
	end
	else if(state_IDLE) begin
		circal_loc_C2 <= 'd0;
	end
end

//circal_loc_max

always @(posedge CLK) begin 
	if(RST) begin
		circal_loc_max <= 0;
	end 
	else if(one_iter_done) begin
		circal_loc_max <= circal_loc_C2;
	end
	else if(state_IDLE) begin
		circal_loc_max <= 'd0;
	end
end

always @(posedge CLK) begin 
	if(RST) begin
		tmp_dirty <= 0;
	end 
	else if(state_IS_INSIDE) begin
		for (tmp = 0; tmp < OBJ_NUM; tmp=tmp+1) begin
		    if (tmp >= OBJ_NUM-PARALLEL) begin
		    	tmp_dirty[tmp] <= is_inside[tmp-(OBJ_NUM-PARALLEL)];
		    end
		    else begin
		    	tmp_dirty[tmp] <= tmp_dirty[tmp+PARALLEL];
		    end
		end
	end
end

always @(posedge CLK) begin 
	if(RST) begin
		max_c1_dirty <= 0;
	end 
	else if(one_iter_done) begin
		max_c1_dirty <= max_c2_dirty;
	end
	else if(state_FIND_BEST) begin
		max_c1_dirty <= opt_tmp_lr_max ? tmp_dirty : max_c1_dirty;
	end
	else if(state_IDLE) begin
		max_c1_dirty <= 0;
	end 
end

always @(posedge CLK) begin 
	if(RST) begin
		max_c2_dirty <= 0;
	end 
	else if(one_iter_done) begin
		max_c2_dirty <= max_c1_dirty;
	end
	else if(state_IDLE) begin
		max_c2_dirty <= 0;
	end 
end

always @(posedge CLK) begin 
	if(RST) begin
		opt_num <= 0;
	end 
	else if(state_FIND_BEST) begin
		opt_num <= opt_tmp_lr_max ? opt_num_w : opt_num;
	end
	else if(state_IDLE) begin
		opt_num <= 0;
	end 
end

always@(*)
begin
	or_result = max_c2_dirty | tmp_dirty ; 
    opt_num_w = 0;  //initialize count variable
    for(opt=0;opt<40;opt=opt+1)   //check for all the bits
        if(or_result[opt] == 1'b1)    //check if the bit is '1'
            opt_num_w = opt_num_w + 1;    //if its one, increment the count
end

endmodule

module Inside (
input [3:0] in_x,
input [3:0] in_y,
input [3:0] circle_x,
input [3:0] circle_y,
output reg is_inside // 1: is inside, 0: is outside
);

wire [3:0] dis_x = in_x > circle_x ? in_x - circle_x : circle_x - in_x; 
wire [3:0] dis_y = in_y > circle_y ? in_y - circle_y : circle_y - in_y; 
wire [4:0] dis   = dis_x + dis_y;

always @(*) begin 
	if (dis <= 4) begin
		is_inside = 1;
	end 
	else if(dis_x == 2 && dis_y == 3) begin
		is_inside = 1;
	end
	else if(dis_y == 2 && dis_x == 3) begin
		is_inside = 1;
	end
	else begin
		is_inside = 0;
	end
end

endmodule