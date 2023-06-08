###################################################################

# Created by write_sdc on Fri Apr 28 00:13:18 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_wire_load_mode top
set_load -pin_load 0.05 [get_ports out_valid]
set_load -pin_load 0.05 [get_ports {out_image[7]}]
set_load -pin_load 0.05 [get_ports {out_image[6]}]
set_load -pin_load 0.05 [get_ports {out_image[5]}]
set_load -pin_load 0.05 [get_ports {out_image[4]}]
set_load -pin_load 0.05 [get_ports {out_image[3]}]
set_load -pin_load 0.05 [get_ports {out_image[2]}]
set_load -pin_load 0.05 [get_ports {out_image[1]}]
set_load -pin_load 0.05 [get_ports {out_image[0]}]
set_ideal_network -no_propagate  [get_ports clk]
create_clock [get_ports clk]  -period 5  -waveform {0 2.5}
set_input_delay -clock clk  0  [get_ports clk]
set_input_delay -clock clk  0  [get_ports rst_n]
set_input_delay -clock clk  2.5  [get_ports in_valid]
set_input_delay -clock clk  2.5  [get_ports {in_image[7]}]
set_input_delay -clock clk  2.5  [get_ports {in_image[6]}]
set_input_delay -clock clk  2.5  [get_ports {in_image[5]}]
set_input_delay -clock clk  2.5  [get_ports {in_image[4]}]
set_input_delay -clock clk  2.5  [get_ports {in_image[3]}]
set_input_delay -clock clk  2.5  [get_ports {in_image[2]}]
set_input_delay -clock clk  2.5  [get_ports {in_image[1]}]
set_input_delay -clock clk  2.5  [get_ports {in_image[0]}]
set_output_delay -clock clk  2.5  [get_ports out_valid]
set_output_delay -clock clk  2.5  [get_ports {out_image[7]}]
set_output_delay -clock clk  2.5  [get_ports {out_image[6]}]
set_output_delay -clock clk  2.5  [get_ports {out_image[5]}]
set_output_delay -clock clk  2.5  [get_ports {out_image[4]}]
set_output_delay -clock clk  2.5  [get_ports {out_image[3]}]
set_output_delay -clock clk  2.5  [get_ports {out_image[2]}]
set_output_delay -clock clk  2.5  [get_ports {out_image[1]}]
set_output_delay -clock clk  2.5  [get_ports {out_image[0]}]
