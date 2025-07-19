# Create clocks for both domains
create_clock -name clk_src  -period 10.000 [get_ports {clk_src}]
create_clock -name clk_dest -period 14.000 [get_ports {clk_dest}]

# Declare clocks as asynchronous to avoid false timing violations
set_clock_groups -asynchronous -group {clk_src} -group {clk_dest}

# Ignore timing analysis between domains
set_false_path -from [get_clocks clk_src] -to [get_clocks clk_dest]
set_false_path -from [get_clocks clk_dest] -to [get_clocks clk_src]
