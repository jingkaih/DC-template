###################################################################

# Created by write_sdc on Thu Oct 21 19:21:55 2021

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clk]  -name CLK  -period 6  -waveform {0 3}
group_path -name input_group  -from [list [get_ports {in[31]}] [get_ports {in[30]}] [get_ports {in[29]}]    \
[get_ports {in[28]}] [get_ports {in[27]}] [get_ports {in[26]}] [get_ports      \
{in[25]}] [get_ports {in[24]}] [get_ports {in[23]}] [get_ports {in[22]}]       \
[get_ports {in[21]}] [get_ports {in[20]}] [get_ports {in[19]}] [get_ports      \
{in[18]}] [get_ports {in[17]}] [get_ports {in[16]}] [get_ports {in[15]}]       \
[get_ports {in[14]}] [get_ports {in[13]}] [get_ports {in[12]}] [get_ports      \
{in[11]}] [get_ports {in[10]}] [get_ports {in[9]}] [get_ports {in[8]}]         \
[get_ports {in[7]}] [get_ports {in[6]}] [get_ports {in[5]}] [get_ports         \
{in[4]}] [get_ports {in[3]}] [get_ports {in[2]}] [get_ports {in[1]}]           \
[get_ports {in[0]}] [get_ports clk]]
group_path -name output_group  -to [list [get_ports {out[9]}] [get_ports {out[8]}] [get_ports {out[7]}]      \
[get_ports {out[6]}] [get_ports {out[5]}] [get_ports {out[4]}] [get_ports      \
{out[3]}] [get_ports {out[2]}] [get_ports {out[1]}] [get_ports {out[0]}]]
