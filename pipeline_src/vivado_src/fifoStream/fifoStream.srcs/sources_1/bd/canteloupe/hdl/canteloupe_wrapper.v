//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
//Date        : Wed Mar 31 02:17:36 2021
//Host        : BA3145WS01 running 64-bit major release  (build 9200)
//Command     : generate_target canteloupe_wrapper.bd
//Design      : canteloupe_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module canteloupe_wrapper
   (DDR2_0_addr,
    DDR2_0_ba,
    DDR2_0_cas_n,
    DDR2_0_ck_n,
    DDR2_0_ck_p,
    DDR2_0_cke,
    DDR2_0_cs_n,
    DDR2_0_dm,
    DDR2_0_dq,
    DDR2_0_dqs_n,
    DDR2_0_dqs_p,
    DDR2_0_odt,
    DDR2_0_ras_n,
    DDR2_0_we_n,
    mdc_0,
    mdio_0,
    phy2rmii_crs_dv_0,
    phy2rmii_rx_er_0,
    phy2rmii_rxd_0,
    refclk_0,
    reset,
    rmii2phy_tx_en_0,
    rmii2phy_txd_0,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [12:0]DDR2_0_addr;
  output [2:0]DDR2_0_ba;
  output DDR2_0_cas_n;
  output [0:0]DDR2_0_ck_n;
  output [0:0]DDR2_0_ck_p;
  output [0:0]DDR2_0_cke;
  output [0:0]DDR2_0_cs_n;
  output [1:0]DDR2_0_dm;
  inout [15:0]DDR2_0_dq;
  inout [1:0]DDR2_0_dqs_n;
  inout [1:0]DDR2_0_dqs_p;
  output [0:0]DDR2_0_odt;
  output DDR2_0_ras_n;
  output DDR2_0_we_n;
  output mdc_0;
  inout mdio_0;
  input phy2rmii_crs_dv_0;
  input phy2rmii_rx_er_0;
  input [1:0]phy2rmii_rxd_0;
  output refclk_0;
  input reset;
  output rmii2phy_tx_en_0;
  output [1:0]rmii2phy_txd_0;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [12:0]DDR2_0_addr;
  wire [2:0]DDR2_0_ba;
  wire DDR2_0_cas_n;
  wire [0:0]DDR2_0_ck_n;
  wire [0:0]DDR2_0_ck_p;
  wire [0:0]DDR2_0_cke;
  wire [0:0]DDR2_0_cs_n;
  wire [1:0]DDR2_0_dm;
  wire [15:0]DDR2_0_dq;
  wire [1:0]DDR2_0_dqs_n;
  wire [1:0]DDR2_0_dqs_p;
  wire [0:0]DDR2_0_odt;
  wire DDR2_0_ras_n;
  wire DDR2_0_we_n;
  wire mdc_0;
  wire mdio_0;
  wire phy2rmii_crs_dv_0;
  wire phy2rmii_rx_er_0;
  wire [1:0]phy2rmii_rxd_0;
  wire refclk_0;
  wire reset;
  wire rmii2phy_tx_en_0;
  wire [1:0]rmii2phy_txd_0;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  canteloupe canteloupe_i
       (.DDR2_0_addr(DDR2_0_addr),
        .DDR2_0_ba(DDR2_0_ba),
        .DDR2_0_cas_n(DDR2_0_cas_n),
        .DDR2_0_ck_n(DDR2_0_ck_n),
        .DDR2_0_ck_p(DDR2_0_ck_p),
        .DDR2_0_cke(DDR2_0_cke),
        .DDR2_0_cs_n(DDR2_0_cs_n),
        .DDR2_0_dm(DDR2_0_dm),
        .DDR2_0_dq(DDR2_0_dq),
        .DDR2_0_dqs_n(DDR2_0_dqs_n),
        .DDR2_0_dqs_p(DDR2_0_dqs_p),
        .DDR2_0_odt(DDR2_0_odt),
        .DDR2_0_ras_n(DDR2_0_ras_n),
        .DDR2_0_we_n(DDR2_0_we_n),
        .mdc_0(mdc_0),
        .mdio_0(mdio_0),
        .phy2rmii_crs_dv_0(phy2rmii_crs_dv_0),
        .phy2rmii_rx_er_0(phy2rmii_rx_er_0),
        .phy2rmii_rxd_0(phy2rmii_rxd_0),
        .refclk_0(refclk_0),
        .reset(reset),
        .rmii2phy_tx_en_0(rmii2phy_tx_en_0),
        .rmii2phy_txd_0(rmii2phy_txd_0),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
