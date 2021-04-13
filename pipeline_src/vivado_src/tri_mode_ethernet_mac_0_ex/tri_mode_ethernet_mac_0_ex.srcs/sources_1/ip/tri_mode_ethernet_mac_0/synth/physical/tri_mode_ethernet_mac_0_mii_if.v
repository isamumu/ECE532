//------------------------------------------------------------------------------
// File       : tri_mode_ethernet_mac_0_mii_if.v
// Author     : Xilinx Inc.
// -----------------------------------------------------------------------------
// (c) Copyright 2009 Xilinx, Inc. All rights reserved.
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
// -----------------------------------------------------------------------------
// Description:  This module creates a Media Independent
//               Interface (MII) by instantiating Input/Output buffers
//               and Input/Output flip-flops as required.
//
//               This interface is used to connect the Ethernet MAC to
//               an external Ethernet PHY via MII connection.
//
//               The MII transmitter clocking logic is also defined here: the
//               transmitter clock received from the PHY is unique and cannot be
//               shared across multiple instantiations of the core.
//
//               The MII receiver clocking logic is also defined here: the
//               receiver clock received from the PHY is unique and cannot be
//               shared across multiple instantiations of the core.:
//
//------------------------------------------------------------------------------

`timescale 1 ps / 1 ps


module tri_mode_ethernet_mac_0_mii_if (
    // Synchronous resets
    input            tx_reset,
    input            rx_reset,

    // The following ports are the MII physical interface: these will be at
    // pins on the FPGA
    output     [3:0] mii_txd,
    output           mii_tx_en,
    output           mii_tx_er,
    input            mii_tx_clk,
    input      [3:0] mii_rxd,
    input            mii_rx_dv,
    input            mii_rx_er,
    input            mii_rx_clk,

    // The following ports are the internal connections from IOB logic to
    // the TEMAC core
    input      [3:0] txd_from_mac,
    input            tx_en_from_mac,
    input            tx_er_from_mac,
    output reg [3:0] rxd_to_mac   = 0,
    output reg       rx_dv_to_mac = 0,
    output reg       rx_er_to_mac = 0,

    // Receiver clock for the MAC and Client Logic
    output           rx_clk,

    // Transmitter clock for the MAC and Client Logic
    output           tx_clk
    );


  //----------------------------------------------------------------------------
  // internal signals
  //----------------------------------------------------------------------------

  wire            mii_tx_clk_ibuf;
  reg    [3:0]    mii_txd_obuf;
  reg             mii_tx_en_obuf;
  reg             mii_tx_er_obuf;
  wire   [3:0]    mii_rxd_ibuf;
  wire            mii_rx_dv_ibuf;
  wire            mii_rx_er_ibuf;
  wire            mii_rx_clk_ibuf;

  wire            tx_clk_int;
  wire            rx_clk_int;

  //----------------------------------------------------------------------------
  // Input/Output Buffers
  //----------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // MII
  //----------------------------------------------------------------------------

  IBUF mii_tx_clk_ibuf_i (
     .I              (mii_tx_clk),
     .O              (mii_tx_clk_ibuf)
  );
  
  OBUF mii_tx_en_obuf_i (
     .I              (mii_tx_en_obuf),
     .O              (mii_tx_en)
  );
  
  OBUF mii_tx_er_obuf_i (
     .I              (mii_tx_er_obuf),
     .O              (mii_tx_er)
  );
  
  genvar loopa;
  generate for (loopa=0; loopa<4; loopa=loopa+1)
    begin : obuf_data
      OBUF mii_txd_obuf_i (
         .I              (mii_txd_obuf[loopa]),
         .O              (mii_txd[loopa])
      );
    end
  endgenerate  
  
  IBUF mii_rx_clk_ibuf_i (
     .I              (mii_rx_clk),
     .O              (mii_rx_clk_ibuf)
  );
  
  IBUF mii_rx_dv_ibuf_i (
     .I              (mii_rx_dv),
     .O              (mii_rx_dv_ibuf)
  );
  
  IBUF mii_rx_er_ibuf_i (
     .I              (mii_rx_er),
     .O              (mii_rx_er_ibuf)
  );
  
  genvar loopi;
  generate for (loopi=0; loopi<4; loopi=loopi+1)
    begin : ibuf_data
      IBUF mii_rxd_ibuf_i (
         .I              (mii_rxd[loopi]),
         .O              (mii_rxd_ibuf[loopi])
      );
    end
  endgenerate 
   
  
  //----------------------------------------------------------------------------
  // MII Transmitter Clock Management :
  //----------------------------------------------------------------------------


  // The MAC transmitter clock at 10/100 speeds is provided by the PHY

  // Route MII Tx clock onto a regional clock network.
   BUFR bufr_mii_tx_clk (
      .I                (mii_tx_clk_ibuf),
      .CE               (1'b1),
      .CLR              (1'b0),
      .O                (tx_clk_int)
   );

  
  // Route the internal clock to the output port
  assign tx_clk = tx_clk_int;


   //---------------------------------------------------------------------------
   // MII Transmitter Logic :
   // drive TX signals through IOBs onto MII interface
   //---------------------------------------------------------------------------

   // Infer IOB Output flip-flops.
   always @(posedge tx_clk_int)
   begin
      mii_tx_en_obuf <= tx_en_from_mac;
      mii_tx_er_obuf <= tx_er_from_mac;
      mii_txd_obuf   <= txd_from_mac;
   end


   //---------------------------------------------------------------------------
   // MII Receiver Clock Logic
   //---------------------------------------------------------------------------

  // The MAC receiver clock at 10/100 speeds is provided by the PHY

  // Route MII Rx clock onto a regional clock network.
   BUFR bufr_mii_rx_clk (
      .I                (mii_rx_clk_ibuf),
      .CE               (1'b1),
      .CLR              (1'b0),
      .O                (rx_clk_int)
   );


  // Route the internal clock to the output port
  assign rx_clk = rx_clk_int;


  //----------------------------------------------------------------------------
  // MII Receiver Logic : receive RX signals through IOBs from MII interface
  //----------------------------------------------------------------------------

   // Infer IOB Input flip-flops.
   always @(posedge rx_clk_int)
   begin
      rx_dv_to_mac <= mii_rx_dv_ibuf;
      rx_er_to_mac <= mii_rx_er_ibuf;
      rxd_to_mac   <= mii_rxd_ibuf;
   end



endmodule
