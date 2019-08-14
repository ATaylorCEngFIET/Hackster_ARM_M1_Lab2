// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: arm.com:CortexM:CORTEXM1_AXI:1.1
// IP Revision: 27

(* X_CORE_INFO = "CortexM1DbgAXI,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "m1_for_arty_s7_CORTEXM1_AXI_0_0,CortexM1DbgAXI,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module m1_for_arty_s7_CORTEXM1_AXI_0_0 (
  SYSRESETREQ,
  DBGRESTARTED,
  LOCKUP,
  HALTED,
  JTAGNSW,
  SWDO,
  SWDOEN,
  HWDATA,
  HCLK,
  SYSRESETn,
  IRQ,
  NMI,
  CFGITCMEN,
  DBGRESETn,
  DBGRESTART,
  EDBGRQ,
  SWCLKTCK,
  SWDITMS,
  HRDATA,
  AWADDR,
  AWLEN,
  AWSIZE,
  AWBURST,
  AWLOCK,
  AWCACHE,
  AWPROT,
  AWUSER,
  AWVALID,
  AWREADY,
  WSTRB,
  WLAST,
  WVALID,
  WREADY,
  BRESP,
  BVALID,
  BREADY,
  ARADDR,
  ARLEN,
  ARSIZE,
  ARBURST,
  ARLOCK,
  ARCACHE,
  ARPROT,
  ARUSER,
  ARVALID,
  ARREADY,
  RRESP,
  RLAST,
  RVALID,
  RREADY
);

output wire SYSRESETREQ;
output wire DBGRESTARTED;
output wire LOCKUP;
output wire HALTED;
output wire JTAGNSW;
output wire SWDO;
output wire SWDOEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 WDATA" *)
output wire [31 : 0] HWDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME HCLK, ASSOCIATED_BUSIF CM1_AXI3, ASSOCIATED_RESET SYSRESETn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /Clocks_and_Resets/clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 HCLK CLK" *)
input wire HCLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SYSRESETn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SYSRESETn RST" *)
input wire SYSRESETn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME IRQ, PortWidth 8" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT" *)
input wire [7 : 0] IRQ;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME NMI, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 NMI INTERRUPT" *)
input wire NMI;
input wire [1 : 0] CFGITCMEN;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DBGRESETn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 DBGRESETn RST" *)
input wire DBGRESETn;
input wire DBGRESTART;
input wire EDBGRQ;
input wire SWCLKTCK;
input wire SWDITMS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 RDATA" *)
input wire [31 : 0] HRDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWADDR" *)
output wire [31 : 0] AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWLEN" *)
output wire [3 : 0] AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWSIZE" *)
output wire [2 : 0] AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWBURST" *)
output wire [1 : 0] AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWLOCK" *)
output wire [1 : 0] AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWCACHE" *)
output wire [3 : 0] AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWPROT" *)
output wire [2 : 0] AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWUSER" *)
output wire [0 : 0] AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWVALID" *)
output wire AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 AWREADY" *)
input wire AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 WSTRB" *)
output wire [3 : 0] WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 WLAST" *)
output wire WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 WVALID" *)
output wire WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 WREADY" *)
input wire WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 BRESP" *)
input wire [1 : 0] BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 BVALID" *)
input wire BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 BREADY" *)
output wire BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARADDR" *)
output wire [31 : 0] ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARLEN" *)
output wire [3 : 0] ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARSIZE" *)
output wire [2 : 0] ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARBURST" *)
output wire [1 : 0] ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARLOCK" *)
output wire [1 : 0] ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARCACHE" *)
output wire [3 : 0] ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARPROT" *)
output wire [2 : 0] ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARUSER" *)
output wire [0 : 0] ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARVALID" *)
output wire ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 ARREADY" *)
input wire ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 RRESP" *)
input wire [1 : 0] RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 RLAST" *)
input wire RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 RVALID" *)
input wire RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CM1_AXI3, PROTOCOL AXI3, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN /Clocks_and_Resets/clk_wiz_0_clk_out1, NUM_READ_THREADS 1, N\
UM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 CM1_AXI3 RREADY" *)
output wire RREADY;

  CortexM1DbgAXI #(
    .NUM_IRQ(8),
    .OS(1'B1),
    .SMALL_MUL(1'B0),
    .BE8(1'B0),
    .ITCM_SIZE(4'B0110),
    .DTCM_SIZE(4'B0110),
    .SMALL_DEBUG(1'B0),
    .ITCM_INIT_RAM(1'B1),
    .DTCM_INIT_RAM(1'B0),
    .ITCM_INIT_FILE("bram_s7.hex"),
    .DTCM_INIT_FILE(""),
    .DEBUG_SEL(0),
    .AUSER_MAX(0),
    .STRB_MAX(3),
    .AUSER_WIDTH(1),
    .STRB_WIDTH(4)
  ) inst (
    .SYSRESETREQ(SYSRESETREQ),
    .DBGRESTARTED(DBGRESTARTED),
    .LOCKUP(LOCKUP),
    .HALTED(HALTED),
    .JTAGNSW(JTAGNSW),
    .JTAGTOP(),
    .SWDO(SWDO),
    .SWDOEN(SWDOEN),
    .TDO(),
    .nTDOEN(),
    .HWDATA(HWDATA),
    .HCLK(HCLK),
    .SYSRESETn(SYSRESETn),
    .IRQ(IRQ),
    .NMI(NMI),
    .CFGITCMEN(CFGITCMEN),
    .DBGRESETn(DBGRESETn),
    .DBGRESTART(DBGRESTART),
    .EDBGRQ(EDBGRQ),
    .SWCLKTCK(SWCLKTCK),
    .SWDITMS(SWDITMS),
    .nTRST(1'B1),
    .TDI(1'B0),
    .HRDATA(HRDATA),
    .AWADDR(AWADDR),
    .AWLEN(AWLEN),
    .AWSIZE(AWSIZE),
    .AWBURST(AWBURST),
    .AWLOCK(AWLOCK),
    .AWCACHE(AWCACHE),
    .AWPROT(AWPROT),
    .AWUSER(AWUSER),
    .AWVALID(AWVALID),
    .AWREADY(AWREADY),
    .WSTRB(WSTRB),
    .WLAST(WLAST),
    .WVALID(WVALID),
    .WREADY(WREADY),
    .BRESP(BRESP),
    .BVALID(BVALID),
    .BREADY(BREADY),
    .ARADDR(ARADDR),
    .ARLEN(ARLEN),
    .ARSIZE(ARSIZE),
    .ARBURST(ARBURST),
    .ARLOCK(ARLOCK),
    .ARCACHE(ARCACHE),
    .ARPROT(ARPROT),
    .ARUSER(ARUSER),
    .ARVALID(ARVALID),
    .ARREADY(ARREADY),
    .RRESP(RRESP),
    .RLAST(RLAST),
    .RVALID(RVALID),
    .RREADY(RREADY)
  );
endmodule
