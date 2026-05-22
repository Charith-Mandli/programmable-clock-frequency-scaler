## Clock definition
create_clock -period 10.000 -name sys_clk [get_ports clk]

## IO Standards
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports enable]
set_property IOSTANDARD LVCMOS33 [get_ports scaled_clk]
set_property IOSTANDARD LVCMOS33 [get_ports {select[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select[1]}]

## Configuration Voltage
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

## Temporary DRC relaxation

