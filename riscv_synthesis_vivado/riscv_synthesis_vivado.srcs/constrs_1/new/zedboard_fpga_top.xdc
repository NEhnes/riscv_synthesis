# 100 MHz clock
set_property -dict {PACKAGE_PIN Y9  IOSTANDARD LVCMOS33} [get_ports BCLK]
create_clock -name sys_clk -period 10.000 [get_ports BCLK]

# Center button (verify pin and IOSTANDARD in the master XDC)
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS25} [get_ports BTNC]

# LEDs LD0-LD7
set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports {led[3]}]
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {led[4]}]
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {led[5]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {led[6]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {led[7]}]