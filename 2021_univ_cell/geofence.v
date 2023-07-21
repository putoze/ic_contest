// This is a simple example.
// You can make a your own header file and set its path to settings.
// (Preferences > Package Settings > Verilog Gadget > Settings - User)
//
//		"header": "Packages/Verilog Gadget/template/verilog_header.v"
//
// -----------------------------------------------------------------------------
// Copyright (c) 2014-2023 All rights reserved
// -----------------------------------------------------------------------------
// Author : yongchan jeon (Kris) poucotm@gmail.com
// File   : geofence.v
// Create : 2023-03-07 18:02:29
// Revise : 2023-03-07 18:02:49
// Editor : sublime text4, tab size (4)
// -----------------------------------------------------------------------------

// synopsys translate_off
//`include "/usr/cad/synopsys/synthesis/cur/dw/sim_ver/DW_fp_sqrt.v"
// synopsys translate_on
module geofence (clk,reset,X,Y,R,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output valid;
output is_inside;




endmodule

module DW_sqrt_func (radicand, square_root_uns, square_root_tc);

// pass the "func_width" parameter to the inference functions
parameter radicand_width = 8;
parameter width = radicand_width;

input [radicand_width-1 : 0] radicand;
output [(radicand_width+1)/2-1 : 0] square_root_uns;
output [(radicand_width+1)/2-1 : 0] square_root_tc;

// Please add search_path = search_path + {synopsys_root + "/dw/sim_ver"}
// to your .synopsys_dc.setup file (for synthesis) and add
// +incdir+$SYNOPSYS/dw/sim_ver+ to your verilog simulator command line
// (for simulation).
`include "DW_sqrt_function.inc"

// function calls for unsigned/signed square root
assign square_root_uns = DWF_sqrt_uns (radicand);
assign square_root_tc = DWF_sqrt_tc (radicand);

endmodule