#======================================================
#
# Synopsys Synthesis Scripts (Design Vision dctcl mode)
#
#======================================================

#======================================================
#  Set Libraries
#======================================================   

source /usr/cad/Design_Kit/synopsys_dc.setup

#======================================================
#  Global Parameters
#======================================================
set DESIGN "LASER"
set clk_period 8.0
set IN_DLY  [expr 0.5*$clk_period]
set OUT_DLY [expr 0.5*$clk_period]

#set hdlin_ff_always_sync_set_reset true

#======================================================
#  Read RTL Code
#======================================================
read_sverilog { $DESIGN\.v }
current_design $DESIGN

#======================================================
#  Global Setting
#======================================================

#======================================================
#  Set Design Constraints
#======================================================
#create_clock -name "clk" -period $clk_period clk
#set_input_delay 0 -clock clk rst_n
create_clock -name CLK  -period $clk_period   [get_ports  CLK] 
set_ideal_network -no_propagate CLK
set_input_delay  $IN_DLY -clock CLK [all_inputs]
set_output_delay $OUT_DLY  -clock CLK [all_outputs]
set_input_delay 0 -clock CLK CLK
set_input_delay 0 -clock CLK RST
set_load 0.05 [all_outputs]
#set_dont_use slow/JKFF*


#======================================================
#  Optimization
#======================================================
uniquify
check_design > Report/$DESIGN\.check
set_fix_multiple_port_nets -all -buffer_constants
set_fix_hold [all_clocks]
#set_boundary_optimization
#set compile_auto_ungroup_delay_num_cells 100(default=500)
#compile -map_effort high -area_effort high -inc
compile_ultra -area_high_effort_script
#compile


#======================================================
#  Output Reports
#======================================================
report_timing            >  Report/$DESIGN\_timing.log
report_area              >  Report/$DESIGN\_area.log
report_power             >  Report/$DESIGN\_power.log
report_resource          >  Report/$DESIGN\_resource.log


#======================================================
#  Change Naming Rule
#======================================================
set bus_inference_style "%s\[%d\]"
set bus_naming_style "%s\[%d\]"
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed "a-z A-Z 0-9 _" -max_length 255 -type cell
define_name_rules name_rule -allowed "a-z A-Z 0-9 _[]" -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*" "cell"}}
change_names -hierarchy -rules name_rule

#======================================================
#  Output Results
#======================================================
set verilogout_higher_designs_first true

write -format verilog -output Netlist/$DESIGN\_SYN.v -hierarchy
write_sdf -version 3.0 -context verilog -load_delay cell Netlist/$DESIGN\_SYN.sdf -significant_digits 6
write_sdc Netlist/$DESIGN\_SYN.sdc

#======================================================
#  Finish and Quit
#======================================================
exit



