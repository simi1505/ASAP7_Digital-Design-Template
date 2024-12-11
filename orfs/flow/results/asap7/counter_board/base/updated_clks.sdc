###############################################################################
# Created by write_sdc
###############################################################################
current_design counter_board
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 137.6520 [get_ports {clock_i}]
set_input_delay 25.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {enable_i}]
set_input_delay 25.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {reset_n_i}]
set_output_delay 25.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {counter_value_o[0]}]
set_output_delay 25.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {counter_value_o[1]}]
set_output_delay 25.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {counter_value_o[2]}]
set_output_delay 25.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {counter_value_o[3]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
