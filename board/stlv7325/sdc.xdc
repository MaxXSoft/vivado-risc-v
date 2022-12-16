# SDIO
set_property -dict { PACKAGE_PIN N21  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_clk }];
set_property -dict { PACKAGE_PIN U21  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_cmd }];
set_property -dict { PACKAGE_PIN N16  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_dat[0] }];
set_property -dict { PACKAGE_PIN U16  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_dat[1] }];
set_property -dict { PACKAGE_PIN N22  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_dat[2] }];
set_property -dict { PACKAGE_PIN P19  IOSTANDARD LVCMOS33 IOB TRUE } [get_ports { sdio_dat[3] }];
