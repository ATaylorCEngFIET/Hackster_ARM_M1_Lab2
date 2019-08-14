# -----------------------------------------------------------------------------
#  The confidential and proprietary information contained in this file may
#  only be used by a person authorised under and to the extent permitted
#  by a subsisting licensing agreement from ARM limited.
#
#             (C) COPYRIGHT 2018 ARM limited.
#                 ALL RIGHTS RESERVED
#
#  This entire notice must be reproduced on all copies of this file
#  and copies of this file may only be made by a person if such person is
#  permitted to do so under the terms of a subsisting license agreement
#  from ARM limited.
#
#       SVN Information
#
#       Checked In          : $Date$
#
#       Revision            : $Revision$
#
#       Release Information : Cortex-M1 DesignStart-r0p1-00rel0
#
# -----------------------------------------------------------------------------
#  Project : Cortex-M1 Arty A7 Example design with V2C-DAPLink adaptor board
#
#  Purpose : Constraints for M1 on Arty A7 board - Implementation phase only
#
# -----------------------------------------------------------------------------

# --------------------------------------------------
# JTAG ports
# --------------------------------------------------

# JTAG connected to PMOD connector JC (nearest to device)
# Pin-out is detailed below
# JC1_P.  JC[1]
set_property PACKAGE_PIN R14 [get_ports TDO[0]]
# JC1_N.  JC[2]
set_property PACKAGE_PIN T14 [get_ports TDI]
# JC2_P.  JC[3]
set_property PACKAGE_PIN R16 [get_ports nTRST]
# Note TCK is shared with SWCLK.  Therefore to drive JTAG, besides the pins above
# the user must also connect to shield pin IO41 = connector IOH pin 16.

# --------------------------------------------------
# UART
# Although the UART is defined as a board interface
# and the DAPLink port is the correct type
# Vivado will not recognise the connection
# So need to specify the actual UART pads and IO standards
# --------------------------------------------------
#  <pin index="18" name ="usb_uart_rxd" iostandard="LVCMOS33" loc="V12"/>
#  <pin index="19" name ="usb_uart_txd" iostandard="LVCMOS33" loc="R12"/>

set_property PACKAGE_PIN V12 [get_ports usb_uart_rxd]
set_property PACKAGE_PIN R12 [get_ports usb_uart_txd]

# --------------------------------------------------
# Define pins on Shield [41:26]
# Used for DAPLink adaptor board
# --------------------------------------------------

# From Digilent board file, part0_pins.xml
#  <pin index="68" name ="JC1"  iostandard="LVCMOS33" loc="U15"/>
#  <pin index="69" name ="JC2" iostandard="LVCMOS33"  loc="V16"/>
#  <pin index="70" name ="JC3" iostandard="LVCMOS33"  loc="U17"/>
#  <pin index="71" name ="JC4" iostandard="LVCMOS33"  loc="U18"/>
#  <pin index="72" name ="JC7" iostandard="LVCMOS33"  loc="U16"/>
#  <pin index="73" name ="JC8" iostandard="LVCMOS33"  loc="P13"/>
#  <pin index="74" name ="JC9" iostandard="LVCMOS33"  loc="R13"/>
#  <pin index="75" name ="JC10" iostandard="LVCMOS33" loc="V14"/>
#  <pin index="76" name ="JD1" iostandard="LVCMOS33"  loc="V15"/>
#  <pin index="77" name ="JD2" iostandard="LVCMOS33"  loc="U12"/>
#  <pin index="78" name ="JD3" iostandard="LVCMOS33"  loc="V13"/>
#  <pin index="79" name ="JD4" iostandard="LVCMOS33"  loc="T12"/>
#  <pin index="80" name ="JD7" iostandard="LVCMOS33"  loc="T13"/>
#  <pin index="81" name ="JD8" iostandard="LVCMOS33"  loc="R11"/>
#  <pin index="82" name ="JD9" iostandard="LVCMOS33"  loc="T11"/>
#  <pin index="83" name ="JD10" iostandard="LVCMOS33" loc="U11"/>

set_property PACKAGE_PIN U11 [get_ports {DAPLink_tri_o[0]}]
set_property PACKAGE_PIN T11 [get_ports {DAPLink_tri_o[1]}]
set_property PACKAGE_PIN R11 [get_ports {DAPLink_tri_o[2]}]
set_property PACKAGE_PIN T13 [get_ports {DAPLink_tri_o[3]}]
set_property PACKAGE_PIN T12 [get_ports {DAPLink_tri_o[4]}]
set_property PACKAGE_PIN V13 [get_ports {DAPLink_tri_o[5]}]
set_property PACKAGE_PIN U12 [get_ports {DAPLink_tri_o[6]}]
set_property PACKAGE_PIN V15 [get_ports {DAPLink_tri_o[7]}]
set_property PACKAGE_PIN V14 [get_ports {DAPLink_tri_o[8]}]
set_property PACKAGE_PIN R13 [get_ports {DAPLink_tri_o[9]}]
set_property PACKAGE_PIN P13 [get_ports {DAPLink_tri_o[10]}]
set_property PACKAGE_PIN U16 [get_ports {DAPLink_tri_o[11]}]
set_property PACKAGE_PIN U18 [get_ports {DAPLink_tri_o[12]}]
set_property PACKAGE_PIN U17 [get_ports {DAPLink_tri_o[13]}]
set_property PACKAGE_PIN V16 [get_ports {DAPLink_tri_o[14]}]
set_property PACKAGE_PIN U15 [get_ports {DAPLink_tri_o[15]}]


# Shield pin 41, (DAPLink[15]), is used for CS_CLK, (Serial Wire clock)
# As this is not a dedicated clock input pin, Vivado needs to set to allow use of this input as a clock
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {DAPLink_tri_o_IBUF[15]}]

# --------------------------------------------------
# Configuration pins
# --------------------------------------------------
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]


# --------------------------------------------------
# Bitstream generation
# --------------------------------------------------
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

