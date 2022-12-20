#-----------------------------------------------------------
#              Ethernet / GMII  (RJ45-B port)              -
#-----------------------------------------------------------

set_property -dict { PACKAGE_PIN H8    IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12 } [get_ports { eth_mdio_clock }];
set_property -dict { PACKAGE_PIN G9    IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12 } [get_ports { eth_mdio_data }];
set_property -dict { PACKAGE_PIN J8    IOSTANDARD LVCMOS25 SLEW SLOW DRIVE 12 } [get_ports { eth_mdio_reset }];

set_property -dict { PACKAGE_PIN E10   IOSTANDARD LVCMOS25 } [get_ports { rgmii_rxc }];
set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS25 } [get_ports { rgmii_rx_ctl }];
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS25 } [get_ports { rgmii_rd[0] }];
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS25 } [get_ports { rgmii_rd[1] }];
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS25 } [get_ports { rgmii_rd[2] }];
set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS25 } [get_ports { rgmii_rd[3] }];
set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { rgmii_txc }];
set_property -dict { PACKAGE_PIN F8    IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { rgmii_tx_ctl }];
set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { rgmii_td[0] }];
set_property -dict { PACKAGE_PIN J11   IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { rgmii_td[1] }];
set_property -dict { PACKAGE_PIN H9    IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { rgmii_td[2] }];
set_property -dict { PACKAGE_PIN J10   IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { rgmii_td[3] }];

create_clock -period 8.000 -name rgmii_rx_clk [get_ports rgmii_rxc]

# STLV7325 board uses Marvell Alaska 88E1111 PHY, 2.5V signaling

# To see implemented RX timing, run from Vivado Tcl Console:
# report_timing -from [get_ports {rgmii_rd* rgmii_rx_ctl}] -rise_to rgmii_rx_clk -delay_type min_max -max_paths 10 -name rgmii_rx  -file rgmii_rx.txt
