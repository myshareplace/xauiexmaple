-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:xaui:12.3
-- IP Revision: 6

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT xaui_0
  PORT (
    dclk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    clk156_out : OUT STD_LOGIC;
    refclk_out : OUT STD_LOGIC;
    refclk_p : IN STD_LOGIC;
    refclk_n : IN STD_LOGIC;
    clk156_lock : OUT STD_LOGIC;
    xgmii_txd : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    xgmii_txc : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    xgmii_rxd : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    xgmii_rxc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    xaui_tx_l0_p : OUT STD_LOGIC;
    xaui_tx_l0_n : OUT STD_LOGIC;
    xaui_tx_l1_p : OUT STD_LOGIC;
    xaui_tx_l1_n : OUT STD_LOGIC;
    xaui_tx_l2_p : OUT STD_LOGIC;
    xaui_tx_l2_n : OUT STD_LOGIC;
    xaui_tx_l3_p : OUT STD_LOGIC;
    xaui_tx_l3_n : OUT STD_LOGIC;
    xaui_rx_l0_p : IN STD_LOGIC;
    xaui_rx_l0_n : IN STD_LOGIC;
    xaui_rx_l1_p : IN STD_LOGIC;
    xaui_rx_l1_n : IN STD_LOGIC;
    xaui_rx_l2_p : IN STD_LOGIC;
    xaui_rx_l2_n : IN STD_LOGIC;
    xaui_rx_l3_p : IN STD_LOGIC;
    xaui_rx_l3_n : IN STD_LOGIC;
    signal_detect : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    debug : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    configuration_vector : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    status_vector : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : xaui_0
  PORT MAP (
    dclk => dclk,
    reset => reset,
    clk156_out => clk156_out,
    refclk_out => refclk_out,
    refclk_p => refclk_p,
    refclk_n => refclk_n,
    clk156_lock => clk156_lock,
    xgmii_txd => xgmii_txd,
    xgmii_txc => xgmii_txc,
    xgmii_rxd => xgmii_rxd,
    xgmii_rxc => xgmii_rxc,
    xaui_tx_l0_p => xaui_tx_l0_p,
    xaui_tx_l0_n => xaui_tx_l0_n,
    xaui_tx_l1_p => xaui_tx_l1_p,
    xaui_tx_l1_n => xaui_tx_l1_n,
    xaui_tx_l2_p => xaui_tx_l2_p,
    xaui_tx_l2_n => xaui_tx_l2_n,
    xaui_tx_l3_p => xaui_tx_l3_p,
    xaui_tx_l3_n => xaui_tx_l3_n,
    xaui_rx_l0_p => xaui_rx_l0_p,
    xaui_rx_l0_n => xaui_rx_l0_n,
    xaui_rx_l1_p => xaui_rx_l1_p,
    xaui_rx_l1_n => xaui_rx_l1_n,
    xaui_rx_l2_p => xaui_rx_l2_p,
    xaui_rx_l2_n => xaui_rx_l2_n,
    xaui_rx_l3_p => xaui_rx_l3_p,
    xaui_rx_l3_n => xaui_rx_l3_n,
    signal_detect => signal_detect,
    debug => debug,
    configuration_vector => configuration_vector,
    status_vector => status_vector
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file xaui_0.vhd when simulating
-- the core, xaui_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

