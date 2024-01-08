// synopsys translate_off
//`include "/usr/cad/synopsys/synthesis/cur/dw/sim_ver/DW_sqrt.v"
`include "DW_sqrt.v"
// synopsys translate_on

module geofence ( 
    // Input signals
	clk,reset,X,Y,R,
    // Output signals		
	valid,is_inside);

//================================================================
//  INPUT AND OUTPUT DECLARATION                         
//================================================================
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output reg valid;
output reg is_inside;

//================================================================
//  integer / genvar / parameters
//================================================================
localparam STATE_IDLE = 0, STATE_INPUT = 1, STATE_SORT = 2, STATE_CROSS = 3,
STATE_A_ROOT = 4, STATE_FRONT_SQRT = 5, STATE_BACK_SQRT = 6, STATE_OUT = 7;
integer i;
genvar  idx;

localparam PRECITION = 24;

//================================================================
//   Wires & Registers 
//================================================================
reg [2:0]  loc_ff_pt, loc_ff_cnt;
reg [2:0]  curr_state, next_state;
reg [30:0] loc_ff [0:5];
reg [PRECITION/2-1:0] s_ff,s0_ff,s1_ff,s2_ff;  //s_ff alse store √s(s−a) , s0_ff also store  √s-b(s−c)
reg [PRECITION-1:0] dis_a_square_ff;
reg signed [PRECITION-1:0] polygon_area,hero_area;

//wire
wire [9:0]  loc_x[0:5];
wire [9:0]  loc_y[0:5];
wire [10:0] loc_r[0:5];

wire [9:0] ref_x = curr_state == STATE_SORT ? loc_x[5] : 'd0;
wire [9:0] ref_y = curr_state == STATE_SORT ? loc_y[5] : 'd0;

//flag
wire loc_ff_pt_zero  = loc_ff_pt  == 'd0;
wire loc_ff_cnt_one  = loc_ff_cnt == 'd1;

//FSM flag
wire state_input_done = loc_ff_cnt == 'd5;
wire state_sort_done = loc_ff_pt_zero && loc_ff_cnt_one;
wire all_round_done = loc_ff_cnt == 'd0;

//operator
wire [2:0] loc_ff_down_cnt = loc_ff_cnt - 'd1;
wire [2:0] loc_ff_up_cnt   = loc_ff_cnt + 'd1;
wire [2:0] loc_ff_down_pt  = loc_ff_pt  - 'd1;
wire [2:0] loc_ff_down_cnt_down = loc_ff_down_cnt - 'd1;

//cross
wire signed [PRECITION-1:0] cross_result = (loc_x[loc_ff_cnt] - ref_x)*(loc_y[loc_ff_pt]-ref_y) -
(loc_x[loc_ff_pt] - ref_x)*(loc_y[loc_ff_cnt]-ref_y);

wire cross_result_lr_zero = cross_result >= 0; //cross_result larger than 0

// dis A
wire signed [PRECITION/2-1:0] loc_a_dis_x = loc_x[loc_ff_cnt] - loc_x[loc_ff_pt];
wire signed [PRECITION/2-1:0] loc_a_dis_y = loc_y[loc_ff_cnt] - loc_y[loc_ff_pt];

wire [PRECITION-1:0] dis_a_square = loc_a_dis_x**2 + loc_a_dis_y**2;

// square
wire [PRECITION/2-1:0] square_root_out;
reg  [PRECITION-1:0] radicand_in;

// CAL S
wire [PRECITION/2-1:0] dis_a = square_root_out;
wire [10:0] dis_b = loc_r[loc_ff_cnt];
wire [10:0] dis_c = loc_r[loc_ff_pt];
wire signed [PRECITION/2-1:0] s,s0,s1,s2;

// S_MUL
wire [PRECITION-1:0] s_mul_out = curr_state == STATE_BACK_SQRT ? s1_ff * s2_ff : s_ff * s0_ff;

//hero_area
wire signed [PRECITION-1:0] hero_area_temp    = hero_area + s_mul_out;
wire signed [PRECITION-1:0] polygon_area_temp = polygon_area - cross_result;
wire signed [PRECITION-1:0] polygon_area_actual = polygon_area / 2;

//================================================================
//   assign
//================================================================

assign s  = (dis_a + dis_b + dis_c) >> 1;
assign s0 = s - dis_a;
assign s1 = s - dis_b;
assign s2 = s - dis_c;

generate
    for (idx = 0; idx < 6; idx = idx + 1) begin
        assign loc_x[idx] = loc_ff[idx][30:21];
        assign loc_y[idx] = loc_ff[idx][20:11];
        assign loc_r[idx] = loc_ff[idx][10:0];
    end
endgenerate


//================================================================
//   OUT
//================================================================

always @(posedge clk or posedge reset) begin
    if(reset) begin
        valid <= 0;
        is_inside <= 0;
    end 
    else begin
        if (curr_state == STATE_OUT) begin
            valid <= 1;
            is_inside <= hero_area_temp > polygon_area_actual ? 0 : 1;
        end
        else begin
            valid <= 0;
            is_inside <= 0;
        end
    end
end

//================================================================
//   Design
//================================================================


DW_sqrt_inst #(.radicand_width(PRECITION)) sqrt (.radicand(radicand_in), .square_root(square_root_out));

// FSM
always @(posedge clk or posedge reset) begin
    if(reset) begin
        curr_state <= STATE_INPUT;
    end 
    else begin
        curr_state <= next_state;
    end
end


always @(*) begin
    case (curr_state)
        STATE_IDLE       : next_state = STATE_INPUT;
        STATE_INPUT      : next_state = state_input_done ? STATE_SORT : STATE_INPUT;
        STATE_SORT       : next_state = state_sort_done ? STATE_CROSS : STATE_SORT;
        STATE_CROSS      : next_state = STATE_A_ROOT;
        STATE_A_ROOT     : next_state = STATE_FRONT_SQRT;
        STATE_FRONT_SQRT : next_state = STATE_BACK_SQRT;
        STATE_BACK_SQRT  : next_state = all_round_done ? STATE_OUT : STATE_CROSS;
        default : next_state = STATE_IDLE;
    endcase
end

//radicand_in
always @(*) begin
    case (curr_state)
        STATE_A_ROOT     : radicand_in = dis_a_square_ff;
        STATE_FRONT_SQRT : radicand_in = s_mul_out;
        STATE_BACK_SQRT  : radicand_in = s_mul_out;
        default : radicand_in = 'd0;
    endcase
end

//dis_a_square_ff
always @(posedge clk or posedge reset) begin
    if(reset) begin
        dis_a_square_ff <= 'd0;
    end 
    else begin
        dis_a_square_ff <= dis_a_square;
    end
end

//s_ff,s0_ff,s1_ff,s2_ff
always @(posedge clk or posedge reset) begin
    if(reset) begin
        {s_ff,s0_ff,s1_ff,s2_ff} <= 'd0;
    end 
    else begin
        if (curr_state == STATE_A_ROOT) begin
            s_ff    <= s;
            s0_ff   <= s0[PRECITION/2-1] ? ~s0 + 'd1 : s0;
            s1_ff   <= s1[PRECITION/2-1] ? ~s1 + 'd1 : s1;
            s2_ff   <= s2[PRECITION/2-1] ? ~s2 + 'd1 : s2;
        end
        else if (curr_state == STATE_FRONT_SQRT) begin
            s_ff <= square_root_out;
        end
        else if (curr_state == STATE_BACK_SQRT) begin
            s0_ff <= square_root_out;
        end
        else if (curr_state == STATE_OUT) begin
            {s_ff,s0_ff,s1_ff,s2_ff} <= 'd0;
        end
    end
end

//polygon_area
always @(posedge clk or posedge reset) begin
    if(reset) begin
        polygon_area <= 'd0;
    end
    else begin
        if (curr_state ==  STATE_CROSS) begin
            polygon_area <= polygon_area_temp;
        end
        else if (curr_state == STATE_OUT) begin
            polygon_area <= 'd0;
        end
    end
end

//hero_area
always @(posedge clk or posedge reset) begin
    if(reset) begin
        hero_area <= 'd0;
    end 
    else begin
        if (curr_state == STATE_CROSS) begin
            hero_area <= hero_area_temp;
        end
        else if (curr_state == STATE_OUT) begin
            hero_area <= 'd0;
        end
    end
end

//loc_ff
always @(posedge clk or posedge reset) begin
    if(reset) begin
        for (i = 0; i < 6; i=i+1) begin
            loc_ff[i] <= 'd0;
        end
    end 
    else begin
        if (curr_state == STATE_INPUT) begin
            loc_ff[loc_ff_cnt] <= {X,Y,R};
        end
        else if(curr_state == STATE_SORT) begin
            loc_ff[loc_ff_cnt] <= cross_result_lr_zero ? loc_ff[loc_ff_pt]  : loc_ff[loc_ff_cnt];
            loc_ff[loc_ff_pt]  <= cross_result_lr_zero ? loc_ff[loc_ff_cnt] : loc_ff[loc_ff_pt] ;
        end
    end
end

//loc_ff_cnt
always @(posedge clk or posedge reset) begin
    if(reset) begin
        loc_ff_cnt <= 0;
    end 
    else begin
        if (curr_state == STATE_INPUT) begin
            loc_ff_cnt <= state_input_done ? loc_ff_down_cnt : loc_ff_up_cnt;
        end
        else if (curr_state == STATE_SORT) begin
            loc_ff_cnt <= state_sort_done ? 'd5 : loc_ff_pt_zero ? loc_ff_down_cnt : loc_ff_cnt;
        end
        else if (curr_state == STATE_BACK_SQRT) begin
            loc_ff_cnt <= all_round_done ? 'd0 : loc_ff_down_cnt;
        end
    end
end

//loc_ff_pt
always @(posedge clk or posedge reset) begin
    if(reset) begin
        loc_ff_pt <= 'd3;
    end 
    else begin
        if (curr_state == STATE_SORT) begin
            loc_ff_pt <= state_sort_done ? 'd4 : loc_ff_pt_zero ? loc_ff_down_cnt_down : loc_ff_down_pt;
        end
        else if (curr_state == STATE_BACK_SQRT) begin
            loc_ff_pt <= all_round_done ? 'd3 : loc_ff_pt_zero ? 'd5 : loc_ff_down_pt;
        end
    end
end

endmodule

//================================================================
//   DW
//================================================================

module DW_sqrt_inst #(parameter radicand_width = 24) (radicand, square_root);
    parameter tc_mode = 0;
    input [radicand_width-1 : 0] radicand;
    output [radicand_width/2-1 : 0] square_root;
    // Please add +incdir+$SYNOPSYS/dw/sim_ver+ to your verilog simulator
    // command line (for simulation).
    // instance of DW_sqrt
    DW_sqrt #(radicand_width, tc_mode) 
    U1 (.a(radicand), .root(square_root));

endmodule
