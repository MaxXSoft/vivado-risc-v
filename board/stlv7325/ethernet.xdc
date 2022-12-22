#-----------------------------------------------------------
#              Ethernet / GMII  (RJ45-B port)              -
#-----------------------------------------------------------

set_property -dict { PACKAGE_PIN H8    IOSTANDARD LVCMOS25 } [get_ports { eth_mdio_clock }];
set_property -dict { PACKAGE_PIN G9    IOSTANDARD LVCMOS25 } [get_ports { eth_mdio_data }];
set_property -dict { PACKAGE_PIN J8    IOSTANDARD LVCMOS25 } [get_ports { eth_mdio_reset }];

set_property -dict { PACKAGE_PIN E10   IOSTANDARD LVCMOS25 } [get_ports { gmii_rx_clk }];
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS25 } [get_ports { gmii_rx_er }];
set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS25 } [get_ports { gmii_rx_dv }];
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS25 } [get_ports { gmii_rxd[0] }];
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS25 } [get_ports { gmii_rxd[1] }];
set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS25 } [get_ports { gmii_rxd[2] }];
set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS25 } [get_ports { gmii_rxd[3] }];
set_property -dict { PACKAGE_PIN B10   IOSTANDARD LVCMOS25 } [get_ports { gmii_rxd[4] }];
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS25 } [get_ports { gmii_rxd[5] }];
set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS25 } [get_ports { gmii_rxd[6] }];
set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS25 } [get_ports { gmii_rxd[7] }];
set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS25 } [get_ports { gmii_tx_clk }];
set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_gtx_clk }];
set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_tx_er }];
set_property -dict { PACKAGE_PIN F8    IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_tx_en }];
set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_txd[0] }];
set_property -dict { PACKAGE_PIN J11   IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_txd[1] }];
set_property -dict { PACKAGE_PIN H9    IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_txd[2] }];
set_property -dict { PACKAGE_PIN J10   IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_txd[3] }];
set_property -dict { PACKAGE_PIN H12   IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_txd[4] }];
set_property -dict { PACKAGE_PIN F10   IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_txd[5] }];
set_property -dict { PACKAGE_PIN G10   IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_txd[6] }];
set_property -dict { PACKAGE_PIN F9    IOSTANDARD LVCMOS25 SLEW FAST DRIVE 16 } [get_ports { gmii_txd[7] }];

create_clock -period 8.000 -name gmii_rx_clk [get_ports gmii_rx_clk]
# create_clock -period 40.000 -name gmii_tx_clk [get_ports gmii_tx_clk]

# STLV7325 board uses Marvell Alaska 88E1111 PHY, 2.5V signaling

# To see implemented RX timing, run from Vivado Tcl Console:
# report_timing -from [get_ports {gmii_rxd* gmii_rx_er gmii_rx_dv}] -rise_to gmii_rx_clk -delay_type min_max -max_paths 10 -name gmii_rx  -file gmii_rx.txt
