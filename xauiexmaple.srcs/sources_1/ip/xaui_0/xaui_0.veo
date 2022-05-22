// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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

// IP VLNV: xilinx.com:ip:xaui:12.3
// IP Revision: 6

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
xaui_0 your_instance_name (
  .dclk(dclk),                                  // input wire dclk
  .reset(reset),                                // input wire reset
  .clk156_out(clk156_out),                      // output wire clk156_out
  .refclk_out(refclk_out),                      // output wire refclk_out
  .refclk_p(refclk_p),                          // input wire refclk_p
  .refclk_n(refclk_n),                          // input wire refclk_n
  .clk156_lock(clk156_lock),                    // output wire clk156_lock
  .xgmii_txd(xgmii_txd),                        // input wire [63 : 0] xgmii_txd
  .xgmii_txc(xgmii_txc),                        // input wire [7 : 0] xgmii_txc
  .xgmii_rxd(xgmii_rxd),                        // output wire [63 : 0] xgmii_rxd
  .xgmii_rxc(xgmii_rxc),                        // output wire [7 : 0] xgmii_rxc
  .xaui_tx_l0_p(xaui_tx_l0_p),                  // output wire xaui_tx_l0_p
  .xaui_tx_l0_n(xaui_tx_l0_n),                  // output wire xaui_tx_l0_n
  .xaui_tx_l1_p(xaui_tx_l1_p),                  // output wire xaui_tx_l1_p
  .xaui_tx_l1_n(xaui_tx_l1_n),                  // output wire xaui_tx_l1_n
  .xaui_tx_l2_p(xaui_tx_l2_p),                  // output wire xaui_tx_l2_p
  .xaui_tx_l2_n(xaui_tx_l2_n),                  // output wire xaui_tx_l2_n
  .xaui_tx_l3_p(xaui_tx_l3_p),                  // output wire xaui_tx_l3_p
  .xaui_tx_l3_n(xaui_tx_l3_n),                  // output wire xaui_tx_l3_n
  .xaui_rx_l0_p(xaui_rx_l0_p),                  // input wire xaui_rx_l0_p
  .xaui_rx_l0_n(xaui_rx_l0_n),                  // input wire xaui_rx_l0_n
  .xaui_rx_l1_p(xaui_rx_l1_p),                  // input wire xaui_rx_l1_p
  .xaui_rx_l1_n(xaui_rx_l1_n),                  // input wire xaui_rx_l1_n
  .xaui_rx_l2_p(xaui_rx_l2_p),                  // input wire xaui_rx_l2_p
  .xaui_rx_l2_n(xaui_rx_l2_n),                  // input wire xaui_rx_l2_n
  .xaui_rx_l3_p(xaui_rx_l3_p),                  // input wire xaui_rx_l3_p
  .xaui_rx_l3_n(xaui_rx_l3_n),                  // input wire xaui_rx_l3_n
  .signal_detect(signal_detect),                // input wire [3 : 0] signal_detect
  .debug(debug),                                // output wire [5 : 0] debug
  .configuration_vector(configuration_vector),  // input wire [6 : 0] configuration_vector
  .status_vector(status_vector)                // output wire [7 : 0] status_vector
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file xaui_0.v when simulating
// the core, xaui_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

