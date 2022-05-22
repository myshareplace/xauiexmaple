-------------------------------------------------------------------------------
-- Title      : Support Module
-- Project    : XAUI
-------------------------------------------------------------------------------
-- File       : xaui_0_support.vhd
-------------------------------------------------------------------------------
-- Description: This module holds the support level for the XAUI core
-------------------------------------------------------------------------------
-- (c) Copyright 2002 - 2015 Xilinx, Inc. All rights reserved.
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
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity xaui_0_support is
    port (
      dclk                     : in  std_logic;
      reset                    : in  std_logic;
      clk156_out               : out std_logic;
      clk156_lock              : out std_logic;
      refclk_p                 : in  std_logic;
      refclk_n                 : in  std_logic;
      refclk_out               : out std_logic;
      xgmii_txd                : in  std_logic_vector(63 downto 0);
      xgmii_txc                : in  std_logic_vector(7 downto 0);
      xgmii_rxd                : out std_logic_vector(63 downto 0);
      xgmii_rxc                : out std_logic_vector(7 downto 0);
      xaui_tx_l0_p             : out std_logic;
      xaui_tx_l0_n             : out std_logic;
      xaui_tx_l1_p             : out std_logic;
      xaui_tx_l1_n             : out std_logic;
      xaui_tx_l2_p             : out std_logic;
      xaui_tx_l2_n             : out std_logic;
      xaui_tx_l3_p             : out std_logic;
      xaui_tx_l3_n             : out std_logic;
      xaui_rx_l0_p             : in  std_logic;
      xaui_rx_l0_n             : in  std_logic;
      xaui_rx_l1_p             : in  std_logic;
      xaui_rx_l1_n             : in  std_logic;
      xaui_rx_l2_p             : in  std_logic;
      xaui_rx_l2_n             : in  std_logic;
      xaui_rx_l3_p             : in  std_logic;
      xaui_rx_l3_n             : in  std_logic;
      signal_detect            : in  std_logic_vector(3 downto 0);
      debug                    : out std_logic_vector(5 downto 0); -- Debug vector
   -- GT Control Ports
   -- DRP
      gt0_drpaddr              : in  std_logic_vector(8 downto 0);
      gt0_drpen                : in  std_logic;
      gt0_drpdi                : in  std_logic_vector(15 downto 0);
      gt0_drpdo                : out std_logic_vector(15 downto 0);
      gt0_drprdy               : out std_logic;
      gt0_drpwe                : in  std_logic;
   -- TX Reset and Initialisation
      gt0_txpmareset_in        : in std_logic;
      gt0_txpcsreset_in        : in std_logic;
      gt0_txresetdone_out      : out std_logic;
   -- RX Reset and Initialisation
      gt0_rxpmareset_in        : in std_logic;
      gt0_rxpcsreset_in        : in std_logic;
      gt0_rxresetdone_out      : out std_logic;
   -- Clocking
      gt0_rxbufstatus_out      : out std_logic_vector(2 downto 0);
      gt0_txphaligndone_out    : out std_logic;
      gt0_txphinitdone_out     : out std_logic;
      gt0_txdlysresetdone_out  : out std_logic;
      gt_qplllock_out                : out std_logic;
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt0_eyescantrigger_in    : in  std_logic;
      gt0_eyescanreset_in      : in  std_logic;
      gt0_eyescandataerror_out : out std_logic;
      gt0_rxrate_in            : in  std_logic_vector(2 downto 0);
   -- Loopback
      gt0_loopback_in          : in  std_logic_vector(2 downto 0);
   -- Polarity
      gt0_rxpolarity_in        : in  std_logic;
      gt0_txpolarity_in        : in  std_logic;
   -- RX Decision Feedback Equalizer(DFE)
      gt0_rxlpmen_in           : in  std_logic;
      gt0_rxdfelpmreset_in     : in  std_logic;
      gt0_rxmonitorsel_in      : in  std_logic_vector(1 downto 0);
      gt0_rxmonitorout_out     : out std_logic_vector(6 downto 0);
   -- TX Driver
      gt0_txpostcursor_in      : in std_logic_vector(4 downto 0);
      gt0_txprecursor_in       : in std_logic_vector(4 downto 0);
      gt0_txdiffctrl_in        : in std_logic_vector(3 downto 0);
      gt0_txinhibit_in         : in  std_logic;
   -- PRBS
      gt0_rxprbscntreset_in    : in  std_logic;
      gt0_rxprbserr_out        : out std_logic;
      gt0_rxprbssel_in         : in std_logic_vector(2 downto 0);
      gt0_txprbssel_in         : in std_logic_vector(2 downto 0);
      gt0_txprbsforceerr_in    : in std_logic;

      gt0_rxcdrhold_in         : in std_logic;

      gt0_dmonitorout_out      : out  std_logic_vector(7 downto 0);

   -- Status
      gt0_rxdisperr_out        : out std_logic_vector(1 downto 0);
      gt0_rxnotintable_out     : out std_logic_vector(1 downto 0);
      gt0_rxcommadet_out       : out std_logic;
   -- DRP
      gt1_drpaddr              : in  std_logic_vector(8 downto 0);
      gt1_drpen                : in  std_logic;
      gt1_drpdi                : in  std_logic_vector(15 downto 0);
      gt1_drpdo                : out std_logic_vector(15 downto 0);
      gt1_drprdy               : out std_logic;
      gt1_drpwe                : in  std_logic;
   -- TX Reset and Initialisation
      gt1_txpmareset_in        : in std_logic;
      gt1_txpcsreset_in        : in std_logic;
      gt1_txresetdone_out      : out std_logic;
   -- RX Reset and Initialisation
      gt1_rxpmareset_in        : in std_logic;
      gt1_rxpcsreset_in        : in std_logic;
      gt1_rxresetdone_out      : out std_logic;
   -- Clocking
      gt1_rxbufstatus_out      : out std_logic_vector(2 downto 0);
      gt1_txphaligndone_out    : out std_logic;
      gt1_txphinitdone_out     : out std_logic;
      gt1_txdlysresetdone_out  : out std_logic;
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt1_eyescantrigger_in    : in  std_logic;
      gt1_eyescanreset_in      : in  std_logic;
      gt1_eyescandataerror_out : out std_logic;
      gt1_rxrate_in            : in  std_logic_vector(2 downto 0);
   -- Loopback
      gt1_loopback_in          : in  std_logic_vector(2 downto 0);
   -- Polarity
      gt1_rxpolarity_in        : in  std_logic;
      gt1_txpolarity_in        : in  std_logic;
   -- RX Decision Feedback Equalizer(DFE)
      gt1_rxlpmen_in           : in  std_logic;
      gt1_rxdfelpmreset_in     : in  std_logic;
      gt1_rxmonitorsel_in      : in  std_logic_vector(1 downto 0);
      gt1_rxmonitorout_out     : out std_logic_vector(6 downto 0);
   -- TX Driver
      gt1_txpostcursor_in      : in std_logic_vector(4 downto 0);
      gt1_txprecursor_in       : in std_logic_vector(4 downto 0);
      gt1_txdiffctrl_in        : in std_logic_vector(3 downto 0);
      gt1_txinhibit_in         : in  std_logic;
   -- PRBS
      gt1_rxprbscntreset_in    : in  std_logic;
      gt1_rxprbserr_out        : out std_logic;
      gt1_rxprbssel_in         : in std_logic_vector(2 downto 0);
      gt1_txprbssel_in         : in std_logic_vector(2 downto 0);
      gt1_txprbsforceerr_in    : in std_logic;

      gt1_rxcdrhold_in         : in std_logic;

      gt1_dmonitorout_out      : out  std_logic_vector(7 downto 0);

   -- Status
      gt1_rxdisperr_out        : out std_logic_vector(1 downto 0);
      gt1_rxnotintable_out     : out std_logic_vector(1 downto 0);
      gt1_rxcommadet_out       : out std_logic;
   -- DRP
      gt2_drpaddr              : in  std_logic_vector(8 downto 0);
      gt2_drpen                : in  std_logic;
      gt2_drpdi                : in  std_logic_vector(15 downto 0);
      gt2_drpdo                : out std_logic_vector(15 downto 0);
      gt2_drprdy               : out std_logic;
      gt2_drpwe                : in  std_logic;
   -- TX Reset and Initialisation
      gt2_txpmareset_in        : in std_logic;
      gt2_txpcsreset_in        : in std_logic;
      gt2_txresetdone_out      : out std_logic;
   -- RX Reset and Initialisation
      gt2_rxpmareset_in        : in std_logic;
      gt2_rxpcsreset_in        : in std_logic;
      gt2_rxresetdone_out      : out std_logic;
   -- Clocking
      gt2_rxbufstatus_out      : out std_logic_vector(2 downto 0);
      gt2_txphaligndone_out    : out std_logic;
      gt2_txphinitdone_out     : out std_logic;
      gt2_txdlysresetdone_out  : out std_logic;
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt2_eyescantrigger_in    : in  std_logic;
      gt2_eyescanreset_in      : in  std_logic;
      gt2_eyescandataerror_out : out std_logic;
      gt2_rxrate_in            : in  std_logic_vector(2 downto 0);
   -- Loopback
      gt2_loopback_in          : in  std_logic_vector(2 downto 0);
   -- Polarity
      gt2_rxpolarity_in        : in  std_logic;
      gt2_txpolarity_in        : in  std_logic;
   -- RX Decision Feedback Equalizer(DFE)
      gt2_rxlpmen_in           : in  std_logic;
      gt2_rxdfelpmreset_in     : in  std_logic;
      gt2_rxmonitorsel_in      : in  std_logic_vector(1 downto 0);
      gt2_rxmonitorout_out     : out std_logic_vector(6 downto 0);
   -- TX Driver
      gt2_txpostcursor_in      : in std_logic_vector(4 downto 0);
      gt2_txprecursor_in       : in std_logic_vector(4 downto 0);
      gt2_txdiffctrl_in        : in std_logic_vector(3 downto 0);
      gt2_txinhibit_in         : in  std_logic;
   -- PRBS
      gt2_rxprbscntreset_in    : in  std_logic;
      gt2_rxprbserr_out        : out std_logic;
      gt2_rxprbssel_in         : in std_logic_vector(2 downto 0);
      gt2_txprbssel_in         : in std_logic_vector(2 downto 0);
      gt2_txprbsforceerr_in    : in std_logic;

      gt2_rxcdrhold_in         : in std_logic;

      gt2_dmonitorout_out      : out  std_logic_vector(7 downto 0);

   -- Status
      gt2_rxdisperr_out        : out std_logic_vector(1 downto 0);
      gt2_rxnotintable_out     : out std_logic_vector(1 downto 0);
      gt2_rxcommadet_out       : out std_logic;
   -- DRP
      gt3_drpaddr              : in  std_logic_vector(8 downto 0);
      gt3_drpen                : in  std_logic;
      gt3_drpdi                : in  std_logic_vector(15 downto 0);
      gt3_drpdo                : out std_logic_vector(15 downto 0);
      gt3_drprdy               : out std_logic;
      gt3_drpwe                : in  std_logic;
   -- TX Reset and Initialisation
      gt3_txpmareset_in        : in std_logic;
      gt3_txpcsreset_in        : in std_logic;
      gt3_txresetdone_out      : out std_logic;
   -- RX Reset and Initialisation
      gt3_rxpmareset_in        : in std_logic;
      gt3_rxpcsreset_in        : in std_logic;
      gt3_rxresetdone_out      : out std_logic;
   -- Clocking
      gt3_rxbufstatus_out      : out std_logic_vector(2 downto 0);
      gt3_txphaligndone_out    : out std_logic;
      gt3_txphinitdone_out     : out std_logic;
      gt3_txdlysresetdone_out  : out std_logic;
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt3_eyescantrigger_in    : in  std_logic;
      gt3_eyescanreset_in      : in  std_logic;
      gt3_eyescandataerror_out : out std_logic;
      gt3_rxrate_in            : in  std_logic_vector(2 downto 0);
   -- Loopback
      gt3_loopback_in          : in  std_logic_vector(2 downto 0);
   -- Polarity
      gt3_rxpolarity_in        : in  std_logic;
      gt3_txpolarity_in        : in  std_logic;
   -- RX Decision Feedback Equalizer(DFE)
      gt3_rxlpmen_in           : in  std_logic;
      gt3_rxdfelpmreset_in     : in  std_logic;
      gt3_rxmonitorsel_in      : in  std_logic_vector(1 downto 0);
      gt3_rxmonitorout_out     : out std_logic_vector(6 downto 0);
   -- TX Driver
      gt3_txpostcursor_in      : in std_logic_vector(4 downto 0);
      gt3_txprecursor_in       : in std_logic_vector(4 downto 0);
      gt3_txdiffctrl_in        : in std_logic_vector(3 downto 0);
      gt3_txinhibit_in         : in  std_logic;
   -- PRBS
      gt3_rxprbscntreset_in    : in  std_logic;
      gt3_rxprbserr_out        : out std_logic;
      gt3_rxprbssel_in         : in std_logic_vector(2 downto 0);
      gt3_txprbssel_in         : in std_logic_vector(2 downto 0);
      gt3_txprbsforceerr_in    : in std_logic;

      gt3_rxcdrhold_in         : in std_logic;

      gt3_dmonitorout_out      : out  std_logic_vector(7 downto 0);

   -- Status
      gt3_rxdisperr_out        : out std_logic_vector(1 downto 0);
      gt3_rxnotintable_out     : out std_logic_vector(1 downto 0);
      gt3_rxcommadet_out       : out std_logic;
      configuration_vector     : in  std_logic_vector(6 downto 0);
      status_vector            : out std_logic_vector(7 downto 0)
);
end xaui_0_support;

library ieee;
use ieee.numeric_std.all;

architecture wrapper of xaui_0_support is

----------------------------------------------------------------------------
-- Component Declarations
----------------------------------------------------------------------------

 component xaui_0_support_clocking is
    port (
      refclk_p                 : in  std_logic;
      refclk_n                 : in  std_logic;
      refclk                   : out std_logic
      );
 end component;

 component xaui_0_block is
    port (
      dclk                     : in  std_logic;
      reset                    : in  std_logic;
      clk156_out               : out std_logic;
      clk156_lock              : out std_logic;
      refclk                   : in  std_logic;
      xgmii_txd                : in  std_logic_vector(63 downto 0);
      xgmii_txc                : in  std_logic_vector(7 downto 0);
      xgmii_rxd                : out std_logic_vector(63 downto 0);
      xgmii_rxc                : out std_logic_vector(7 downto 0);
      xaui_tx_l0_p             : out std_logic;
      xaui_tx_l0_n             : out std_logic;
      xaui_tx_l1_p             : out std_logic;
      xaui_tx_l1_n             : out std_logic;
      xaui_tx_l2_p             : out std_logic;
      xaui_tx_l2_n             : out std_logic;
      xaui_tx_l3_p             : out std_logic;
      xaui_tx_l3_n             : out std_logic;
      xaui_rx_l0_p             : in  std_logic;
      xaui_rx_l0_n             : in  std_logic;
      xaui_rx_l1_p             : in  std_logic;
      xaui_rx_l1_n             : in  std_logic;
      xaui_rx_l2_p             : in  std_logic;
      xaui_rx_l2_n             : in  std_logic;
      xaui_rx_l3_p             : in  std_logic;
      xaui_rx_l3_n             : in  std_logic;
      signal_detect            : in  std_logic_vector(3 downto 0);
      debug                    : out std_logic_vector(5 downto 0); -- Debug vector
   -- GT Control Ports
   -- DRP
      gt0_drpaddr              : in  std_logic_vector(8 downto 0);
      gt0_drpen                : in  std_logic;
      gt0_drpdi                : in  std_logic_vector(15 downto 0);
      gt0_drpdo                : out std_logic_vector(15 downto 0);
      gt0_drprdy               : out std_logic;
      gt0_drpwe                : in  std_logic;
   -- TX Reset and Initialisation
      gt0_txpmareset_in        : in std_logic;
      gt0_txpcsreset_in        : in std_logic;
      gt0_txresetdone_out      : out std_logic;
   -- RX Reset and Initialisation
      gt0_rxpmareset_in        : in std_logic;
      gt0_rxpcsreset_in        : in std_logic;
      gt0_rxresetdone_out      : out std_logic;
   -- Clocking
      gt0_rxbufstatus_out      : out std_logic_vector(2 downto 0);
      gt0_txphaligndone_out    : out std_logic;
      gt0_txphinitdone_out     : out std_logic;
      gt0_txdlysresetdone_out  : out std_logic;
      gt_qplllock_out                : out std_logic;
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt0_eyescantrigger_in    : in  std_logic;
      gt0_eyescanreset_in      : in  std_logic;
      gt0_eyescandataerror_out : out std_logic;
      gt0_rxrate_in            : in  std_logic_vector(2 downto 0);
   -- Loopback
      gt0_loopback_in          : in  std_logic_vector(2 downto 0);
   -- Polarity
      gt0_rxpolarity_in        : in  std_logic;
      gt0_txpolarity_in        : in  std_logic;
   -- RX Decision Feedback Equalizer(DFE)
      gt0_rxlpmen_in           : in  std_logic;
      gt0_rxdfelpmreset_in     : in  std_logic;
      gt0_rxmonitorsel_in      : in  std_logic_vector(1 downto 0);
      gt0_rxmonitorout_out     : out std_logic_vector(6 downto 0);
   -- TX Driver
      gt0_txpostcursor_in      : in std_logic_vector(4 downto 0);
      gt0_txprecursor_in       : in std_logic_vector(4 downto 0);
      gt0_txdiffctrl_in        : in std_logic_vector(3 downto 0);
      gt0_txinhibit_in         : in  std_logic;
   -- PRBS
      gt0_rxprbscntreset_in    : in  std_logic;
      gt0_rxprbserr_out        : out std_logic;
      gt0_rxprbssel_in         : in std_logic_vector(2 downto 0);
      gt0_txprbssel_in         : in std_logic_vector(2 downto 0);
      gt0_txprbsforceerr_in    : in std_logic;

      gt0_rxcdrhold_in         : in std_logic;

      gt0_dmonitorout_out      : out  std_logic_vector(7 downto 0);

   -- Status
      gt0_rxdisperr_out        : out std_logic_vector(1 downto 0);
      gt0_rxnotintable_out     : out std_logic_vector(1 downto 0);
      gt0_rxcommadet_out       : out std_logic;
   -- DRP
      gt1_drpaddr              : in  std_logic_vector(8 downto 0);
      gt1_drpen                : in  std_logic;
      gt1_drpdi                : in  std_logic_vector(15 downto 0);
      gt1_drpdo                : out std_logic_vector(15 downto 0);
      gt1_drprdy               : out std_logic;
      gt1_drpwe                : in  std_logic;
   -- TX Reset and Initialisation
      gt1_txpmareset_in        : in std_logic;
      gt1_txpcsreset_in        : in std_logic;
      gt1_txresetdone_out      : out std_logic;
   -- RX Reset and Initialisation
      gt1_rxpmareset_in        : in std_logic;
      gt1_rxpcsreset_in        : in std_logic;
      gt1_rxresetdone_out      : out std_logic;
   -- Clocking
      gt1_rxbufstatus_out      : out std_logic_vector(2 downto 0);
      gt1_txphaligndone_out    : out std_logic;
      gt1_txphinitdone_out     : out std_logic;
      gt1_txdlysresetdone_out  : out std_logic;
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt1_eyescantrigger_in    : in  std_logic;
      gt1_eyescanreset_in      : in  std_logic;
      gt1_eyescandataerror_out : out std_logic;
      gt1_rxrate_in            : in  std_logic_vector(2 downto 0);
   -- Loopback
      gt1_loopback_in          : in  std_logic_vector(2 downto 0);
   -- Polarity
      gt1_rxpolarity_in        : in  std_logic;
      gt1_txpolarity_in        : in  std_logic;
   -- RX Decision Feedback Equalizer(DFE)
      gt1_rxlpmen_in           : in  std_logic;
      gt1_rxdfelpmreset_in     : in  std_logic;
      gt1_rxmonitorsel_in      : in  std_logic_vector(1 downto 0);
      gt1_rxmonitorout_out     : out std_logic_vector(6 downto 0);
   -- TX Driver
      gt1_txpostcursor_in      : in std_logic_vector(4 downto 0);
      gt1_txprecursor_in       : in std_logic_vector(4 downto 0);
      gt1_txdiffctrl_in        : in std_logic_vector(3 downto 0);
      gt1_txinhibit_in         : in  std_logic;
   -- PRBS
      gt1_rxprbscntreset_in    : in  std_logic;
      gt1_rxprbserr_out        : out std_logic;
      gt1_rxprbssel_in         : in std_logic_vector(2 downto 0);
      gt1_txprbssel_in         : in std_logic_vector(2 downto 0);
      gt1_txprbsforceerr_in    : in std_logic;

      gt1_rxcdrhold_in         : in std_logic;

      gt1_dmonitorout_out      : out  std_logic_vector(7 downto 0);

   -- Status
      gt1_rxdisperr_out        : out std_logic_vector(1 downto 0);
      gt1_rxnotintable_out     : out std_logic_vector(1 downto 0);
      gt1_rxcommadet_out       : out std_logic;
   -- DRP
      gt2_drpaddr              : in  std_logic_vector(8 downto 0);
      gt2_drpen                : in  std_logic;
      gt2_drpdi                : in  std_logic_vector(15 downto 0);
      gt2_drpdo                : out std_logic_vector(15 downto 0);
      gt2_drprdy               : out std_logic;
      gt2_drpwe                : in  std_logic;
   -- TX Reset and Initialisation
      gt2_txpmareset_in        : in std_logic;
      gt2_txpcsreset_in        : in std_logic;
      gt2_txresetdone_out      : out std_logic;
   -- RX Reset and Initialisation
      gt2_rxpmareset_in        : in std_logic;
      gt2_rxpcsreset_in        : in std_logic;
      gt2_rxresetdone_out      : out std_logic;
   -- Clocking
      gt2_rxbufstatus_out      : out std_logic_vector(2 downto 0);
      gt2_txphaligndone_out    : out std_logic;
      gt2_txphinitdone_out     : out std_logic;
      gt2_txdlysresetdone_out  : out std_logic;
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt2_eyescantrigger_in    : in  std_logic;
      gt2_eyescanreset_in      : in  std_logic;
      gt2_eyescandataerror_out : out std_logic;
      gt2_rxrate_in            : in  std_logic_vector(2 downto 0);
   -- Loopback
      gt2_loopback_in          : in  std_logic_vector(2 downto 0);
   -- Polarity
      gt2_rxpolarity_in        : in  std_logic;
      gt2_txpolarity_in        : in  std_logic;
   -- RX Decision Feedback Equalizer(DFE)
      gt2_rxlpmen_in           : in  std_logic;
      gt2_rxdfelpmreset_in     : in  std_logic;
      gt2_rxmonitorsel_in      : in  std_logic_vector(1 downto 0);
      gt2_rxmonitorout_out     : out std_logic_vector(6 downto 0);
   -- TX Driver
      gt2_txpostcursor_in      : in std_logic_vector(4 downto 0);
      gt2_txprecursor_in       : in std_logic_vector(4 downto 0);
      gt2_txdiffctrl_in        : in std_logic_vector(3 downto 0);
      gt2_txinhibit_in         : in  std_logic;
   -- PRBS
      gt2_rxprbscntreset_in    : in  std_logic;
      gt2_rxprbserr_out        : out std_logic;
      gt2_rxprbssel_in         : in std_logic_vector(2 downto 0);
      gt2_txprbssel_in         : in std_logic_vector(2 downto 0);
      gt2_txprbsforceerr_in    : in std_logic;

      gt2_rxcdrhold_in         : in std_logic;

      gt2_dmonitorout_out      : out  std_logic_vector(7 downto 0);

   -- Status
      gt2_rxdisperr_out        : out std_logic_vector(1 downto 0);
      gt2_rxnotintable_out     : out std_logic_vector(1 downto 0);
      gt2_rxcommadet_out       : out std_logic;
   -- DRP
      gt3_drpaddr              : in  std_logic_vector(8 downto 0);
      gt3_drpen                : in  std_logic;
      gt3_drpdi                : in  std_logic_vector(15 downto 0);
      gt3_drpdo                : out std_logic_vector(15 downto 0);
      gt3_drprdy               : out std_logic;
      gt3_drpwe                : in  std_logic;
   -- TX Reset and Initialisation
      gt3_txpmareset_in        : in std_logic;
      gt3_txpcsreset_in        : in std_logic;
      gt3_txresetdone_out      : out std_logic;
   -- RX Reset and Initialisation
      gt3_rxpmareset_in        : in std_logic;
      gt3_rxpcsreset_in        : in std_logic;
      gt3_rxresetdone_out      : out std_logic;
   -- Clocking
      gt3_rxbufstatus_out      : out std_logic_vector(2 downto 0);
      gt3_txphaligndone_out    : out std_logic;
      gt3_txphinitdone_out     : out std_logic;
      gt3_txdlysresetdone_out  : out std_logic;
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt3_eyescantrigger_in    : in  std_logic;
      gt3_eyescanreset_in      : in  std_logic;
      gt3_eyescandataerror_out : out std_logic;
      gt3_rxrate_in            : in  std_logic_vector(2 downto 0);
   -- Loopback
      gt3_loopback_in          : in  std_logic_vector(2 downto 0);
   -- Polarity
      gt3_rxpolarity_in        : in  std_logic;
      gt3_txpolarity_in        : in  std_logic;
   -- RX Decision Feedback Equalizer(DFE)
      gt3_rxlpmen_in           : in  std_logic;
      gt3_rxdfelpmreset_in     : in  std_logic;
      gt3_rxmonitorsel_in      : in  std_logic_vector(1 downto 0);
      gt3_rxmonitorout_out     : out std_logic_vector(6 downto 0);
   -- TX Driver
      gt3_txpostcursor_in      : in std_logic_vector(4 downto 0);
      gt3_txprecursor_in       : in std_logic_vector(4 downto 0);
      gt3_txdiffctrl_in        : in std_logic_vector(3 downto 0);
      gt3_txinhibit_in         : in  std_logic;
   -- PRBS
      gt3_rxprbscntreset_in    : in  std_logic;
      gt3_rxprbserr_out        : out std_logic;
      gt3_rxprbssel_in         : in std_logic_vector(2 downto 0);
      gt3_txprbssel_in         : in std_logic_vector(2 downto 0);
      gt3_txprbsforceerr_in    : in std_logic;

      gt3_rxcdrhold_in         : in std_logic;

      gt3_dmonitorout_out      : out  std_logic_vector(7 downto 0);

   -- Status
      gt3_rxdisperr_out        : out std_logic_vector(1 downto 0);
      gt3_rxnotintable_out     : out std_logic_vector(1 downto 0);
      gt3_rxcommadet_out       : out std_logic;
      configuration_vector     : in  std_logic_vector(6 downto 0);
      status_vector            : out std_logic_vector(7 downto 0)
);
end component;

----------------------------------------------------------------------------
-- Signal declarations.
----------------------------------------------------------------------------
  signal refclk                : std_logic;

begin

----------------------------------------------------------------------------
-- Logic description.
----------------------------------------------------------------------------

  xaui_block_i : xaui_0_block
    port map (
      dclk                     => dclk,
      reset                    => reset,
      clk156_out               => clk156_out,
      clk156_lock              => clk156_lock,
      refclk                   => refclk,
      xgmii_txd                => xgmii_txd,
      xgmii_txc                => xgmii_txc,
      xgmii_rxd                => xgmii_rxd,
      xgmii_rxc                => xgmii_rxc,
      xaui_tx_l0_p             => xaui_tx_l0_p,
      xaui_tx_l0_n             => xaui_tx_l0_n,
      xaui_tx_l1_p             => xaui_tx_l1_p,
      xaui_tx_l1_n             => xaui_tx_l1_n,
      xaui_tx_l2_p             => xaui_tx_l2_p,
      xaui_tx_l2_n             => xaui_tx_l2_n,
      xaui_tx_l3_p             => xaui_tx_l3_p,
      xaui_tx_l3_n             => xaui_tx_l3_n,
      xaui_rx_l0_p             => xaui_rx_l0_p,
      xaui_rx_l0_n             => xaui_rx_l0_n,
      xaui_rx_l1_p             => xaui_rx_l1_p,
      xaui_rx_l1_n             => xaui_rx_l1_n,
      xaui_rx_l2_p             => xaui_rx_l2_p,
      xaui_rx_l2_n             => xaui_rx_l2_n,
      xaui_rx_l3_p             => xaui_rx_l3_p,
      xaui_rx_l3_n             => xaui_rx_l3_n,
      signal_detect            => signal_detect,
      debug                    => debug,
   -- GT Control Ports
   -- DRP
      gt0_drpaddr              => gt0_drpaddr,
      gt0_drpen                => gt0_drpen,
      gt0_drpdi                => gt0_drpdi,
      gt0_drpdo                => gt0_drpdo,
      gt0_drprdy               => gt0_drprdy,
      gt0_drpwe                => gt0_drpwe,
   -- TX Reset and Initialisation
      gt0_txpmareset_in        => gt0_txpmareset_in,
      gt0_txpcsreset_in        => gt0_txpcsreset_in,
      gt0_txresetdone_out      => gt0_txresetdone_out,
   -- RX Reset and Initialisation
      gt0_rxpmareset_in        => gt0_rxpmareset_in,
      gt0_rxpcsreset_in        => gt0_rxpcsreset_in,
      gt0_rxresetdone_out      => gt0_rxresetdone_out,
   -- Clocking
      gt0_rxbufstatus_out      => gt0_rxbufstatus_out,
      gt0_txphaligndone_out    => gt0_txphaligndone_out,
      gt0_txphinitdone_out     => gt0_txphinitdone_out,
      gt0_txdlysresetdone_out  => gt0_txdlysresetdone_out,
      gt_qplllock_out                => gt_qplllock_out,
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt0_eyescantrigger_in    => gt0_eyescantrigger_in,
      gt0_eyescanreset_in      => gt0_eyescanreset_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_rxrate_in            => gt0_rxrate_in,
   -- Loopback
      gt0_loopback_in          => gt0_loopback_in,
   -- Polarity
      gt0_rxpolarity_in        => gt0_rxpolarity_in,
      gt0_txpolarity_in        => gt0_txpolarity_in,
   -- RX Decision Feedback Equalizer(DFE)
      gt0_rxlpmen_in           => gt0_rxlpmen_in,
      gt0_rxdfelpmreset_in     => gt0_rxdfelpmreset_in,
      gt0_rxmonitorsel_in      => gt0_rxmonitorsel_in,
      gt0_rxmonitorout_out     => gt0_rxmonitorout_out,
   -- TX Driver
      gt0_txpostcursor_in      => gt0_txpostcursor_in,
      gt0_txprecursor_in       => gt0_txprecursor_in,
      gt0_txdiffctrl_in        => gt0_txdiffctrl_in,
      gt0_txinhibit_in         => gt0_txinhibit_in,
   -- PRBS
      gt0_rxprbscntreset_in    => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out        => gt0_rxprbserr_out,
      gt0_rxprbssel_in         => gt0_rxprbssel_in,
      gt0_txprbssel_in         => gt0_txprbssel_in,
      gt0_txprbsforceerr_in    => gt0_txprbsforceerr_in,

      gt0_rxcdrhold_in         => gt0_rxcdrhold_in,

      gt0_dmonitorout_out      => gt0_dmonitorout_out,

   -- Status
      gt0_rxdisperr_out        => gt0_rxdisperr_out,
      gt0_rxnotintable_out     => gt0_rxnotintable_out,
      gt0_rxcommadet_out       => gt0_rxcommadet_out,
   -- DRP
      gt1_drpaddr              => gt1_drpaddr,
      gt1_drpen                => gt1_drpen,
      gt1_drpdi                => gt1_drpdi,
      gt1_drpdo                => gt1_drpdo,
      gt1_drprdy               => gt1_drprdy,
      gt1_drpwe                => gt1_drpwe,
   -- TX Reset and Initialisation
      gt1_txpmareset_in        => gt1_txpmareset_in,
      gt1_txpcsreset_in        => gt1_txpcsreset_in,
      gt1_txresetdone_out      => gt1_txresetdone_out,
   -- RX Reset and Initialisation
      gt1_rxpmareset_in        => gt1_rxpmareset_in,
      gt1_rxpcsreset_in        => gt1_rxpcsreset_in,
      gt1_rxresetdone_out      => gt1_rxresetdone_out,
   -- Clocking
      gt1_rxbufstatus_out      => gt1_rxbufstatus_out,
      gt1_txphaligndone_out    => gt1_txphaligndone_out,
      gt1_txphinitdone_out     => gt1_txphinitdone_out,
      gt1_txdlysresetdone_out  => gt1_txdlysresetdone_out,
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt1_eyescantrigger_in    => gt1_eyescantrigger_in,
      gt1_eyescanreset_in      => gt1_eyescanreset_in,
      gt1_eyescandataerror_out => gt1_eyescandataerror_out,
      gt1_rxrate_in            => gt1_rxrate_in,
   -- Loopback
      gt1_loopback_in          => gt1_loopback_in,
   -- Polarity
      gt1_rxpolarity_in        => gt1_rxpolarity_in,
      gt1_txpolarity_in        => gt1_txpolarity_in,
   -- RX Decision Feedback Equalizer(DFE)
      gt1_rxlpmen_in           => gt1_rxlpmen_in,
      gt1_rxdfelpmreset_in     => gt1_rxdfelpmreset_in,
      gt1_rxmonitorsel_in      => gt1_rxmonitorsel_in,
      gt1_rxmonitorout_out     => gt1_rxmonitorout_out,
   -- TX Driver
      gt1_txpostcursor_in      => gt1_txpostcursor_in,
      gt1_txprecursor_in       => gt1_txprecursor_in,
      gt1_txdiffctrl_in        => gt1_txdiffctrl_in,
      gt1_txinhibit_in         => gt1_txinhibit_in,
   -- PRBS
      gt1_rxprbscntreset_in    => gt1_rxprbscntreset_in,
      gt1_rxprbserr_out        => gt1_rxprbserr_out,
      gt1_rxprbssel_in         => gt1_rxprbssel_in,
      gt1_txprbssel_in         => gt1_txprbssel_in,
      gt1_txprbsforceerr_in    => gt1_txprbsforceerr_in,

      gt1_rxcdrhold_in         => gt1_rxcdrhold_in,

      gt1_dmonitorout_out      => gt1_dmonitorout_out,

   -- Status
      gt1_rxdisperr_out        => gt1_rxdisperr_out,
      gt1_rxnotintable_out     => gt1_rxnotintable_out,
      gt1_rxcommadet_out       => gt1_rxcommadet_out,
   -- DRP
      gt2_drpaddr              => gt2_drpaddr,
      gt2_drpen                => gt2_drpen,
      gt2_drpdi                => gt2_drpdi,
      gt2_drpdo                => gt2_drpdo,
      gt2_drprdy               => gt2_drprdy,
      gt2_drpwe                => gt2_drpwe,
   -- TX Reset and Initialisation
      gt2_txpmareset_in        => gt2_txpmareset_in,
      gt2_txpcsreset_in        => gt2_txpcsreset_in,
      gt2_txresetdone_out      => gt2_txresetdone_out,
   -- RX Reset and Initialisation
      gt2_rxpmareset_in        => gt2_rxpmareset_in,
      gt2_rxpcsreset_in        => gt2_rxpcsreset_in,
      gt2_rxresetdone_out      => gt2_rxresetdone_out,
   -- Clocking
      gt2_rxbufstatus_out      => gt2_rxbufstatus_out,
      gt2_txphaligndone_out    => gt2_txphaligndone_out,
      gt2_txphinitdone_out     => gt2_txphinitdone_out,
      gt2_txdlysresetdone_out  => gt2_txdlysresetdone_out,
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt2_eyescantrigger_in    => gt2_eyescantrigger_in,
      gt2_eyescanreset_in      => gt2_eyescanreset_in,
      gt2_eyescandataerror_out => gt2_eyescandataerror_out,
      gt2_rxrate_in            => gt2_rxrate_in,
   -- Loopback
      gt2_loopback_in          => gt2_loopback_in,
   -- Polarity
      gt2_rxpolarity_in        => gt2_rxpolarity_in,
      gt2_txpolarity_in        => gt2_txpolarity_in,
   -- RX Decision Feedback Equalizer(DFE)
      gt2_rxlpmen_in           => gt2_rxlpmen_in,
      gt2_rxdfelpmreset_in     => gt2_rxdfelpmreset_in,
      gt2_rxmonitorsel_in      => gt2_rxmonitorsel_in,
      gt2_rxmonitorout_out     => gt2_rxmonitorout_out,
   -- TX Driver
      gt2_txpostcursor_in      => gt2_txpostcursor_in,
      gt2_txprecursor_in       => gt2_txprecursor_in,
      gt2_txdiffctrl_in        => gt2_txdiffctrl_in,
      gt2_txinhibit_in         => gt2_txinhibit_in,
   -- PRBS
      gt2_rxprbscntreset_in    => gt2_rxprbscntreset_in,
      gt2_rxprbserr_out        => gt2_rxprbserr_out,
      gt2_rxprbssel_in         => gt2_rxprbssel_in,
      gt2_txprbssel_in         => gt2_txprbssel_in,
      gt2_txprbsforceerr_in    => gt2_txprbsforceerr_in,

      gt2_rxcdrhold_in         => gt2_rxcdrhold_in,

      gt2_dmonitorout_out      => gt2_dmonitorout_out,

   -- Status
      gt2_rxdisperr_out        => gt2_rxdisperr_out,
      gt2_rxnotintable_out     => gt2_rxnotintable_out,
      gt2_rxcommadet_out       => gt2_rxcommadet_out,
   -- DRP
      gt3_drpaddr              => gt3_drpaddr,
      gt3_drpen                => gt3_drpen,
      gt3_drpdi                => gt3_drpdi,
      gt3_drpdo                => gt3_drpdo,
      gt3_drprdy               => gt3_drprdy,
      gt3_drpwe                => gt3_drpwe,
   -- TX Reset and Initialisation
      gt3_txpmareset_in        => gt3_txpmareset_in,
      gt3_txpcsreset_in        => gt3_txpcsreset_in,
      gt3_txresetdone_out      => gt3_txresetdone_out,
   -- RX Reset and Initialisation
      gt3_rxpmareset_in        => gt3_rxpmareset_in,
      gt3_rxpcsreset_in        => gt3_rxpcsreset_in,
      gt3_rxresetdone_out      => gt3_rxresetdone_out,
   -- Clocking
      gt3_rxbufstatus_out      => gt3_rxbufstatus_out,
      gt3_txphaligndone_out    => gt3_txphaligndone_out,
      gt3_txphinitdone_out     => gt3_txphinitdone_out,
      gt3_txdlysresetdone_out  => gt3_txdlysresetdone_out,
   -- Signal Integrity adn Functionality
   -- Eye Scan
      gt3_eyescantrigger_in    => gt3_eyescantrigger_in,
      gt3_eyescanreset_in      => gt3_eyescanreset_in,
      gt3_eyescandataerror_out => gt3_eyescandataerror_out,
      gt3_rxrate_in            => gt3_rxrate_in,
   -- Loopback
      gt3_loopback_in          => gt3_loopback_in,
   -- Polarity
      gt3_rxpolarity_in        => gt3_rxpolarity_in,
      gt3_txpolarity_in        => gt3_txpolarity_in,
   -- RX Decision Feedback Equalizer(DFE)
      gt3_rxlpmen_in           => gt3_rxlpmen_in,
      gt3_rxdfelpmreset_in     => gt3_rxdfelpmreset_in,
      gt3_rxmonitorsel_in      => gt3_rxmonitorsel_in,
      gt3_rxmonitorout_out     => gt3_rxmonitorout_out,
   -- TX Driver
      gt3_txpostcursor_in      => gt3_txpostcursor_in,
      gt3_txprecursor_in       => gt3_txprecursor_in,
      gt3_txdiffctrl_in        => gt3_txdiffctrl_in,
      gt3_txinhibit_in         => gt3_txinhibit_in,
   -- PRBS
      gt3_rxprbscntreset_in    => gt3_rxprbscntreset_in,
      gt3_rxprbserr_out        => gt3_rxprbserr_out,
      gt3_rxprbssel_in         => gt3_rxprbssel_in,
      gt3_txprbssel_in         => gt3_txprbssel_in,
      gt3_txprbsforceerr_in    => gt3_txprbsforceerr_in,

      gt3_rxcdrhold_in         => gt3_rxcdrhold_in,

      gt3_dmonitorout_out      => gt3_dmonitorout_out,

   -- Status
      gt3_rxdisperr_out        => gt3_rxdisperr_out,
      gt3_rxnotintable_out     => gt3_rxnotintable_out,
      gt3_rxcommadet_out       => gt3_rxcommadet_out,
      configuration_vector     => configuration_vector,
      status_vector            => status_vector
);

  xaui_support_clocking_i : xaui_0_support_clocking
    port map (
      refclk_p                 => refclk_p,
      refclk_n                 => refclk_n,
      refclk                   => refclk
      );

refclk_out <= refclk;

end wrapper;
