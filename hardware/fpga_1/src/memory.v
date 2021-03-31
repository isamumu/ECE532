`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/16 22:28:20
// Design Name: 
// Module Name: memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module memory(
    input [7:0] data_in,
    input fifo_we,fifo_rd,
    input [11:0] write_address,read_address,
    input tx_mic_aclk,
    input tx_fifo_aclk,
    input tx_mic_reset,
    input tx_fifo_reset,
    output[7:0] data_out  
    );
  
tri_mode_ethernet_mac_2_bram_tdp #
  (
     .DATA_WIDTH  (8),
     .ADDR_WIDTH  (12)
  )
  tx_ramgen_i (
     .b_dout  (data_out),
     .a_addr  (write_address[11:0]),
     .b_addr  (read_address[11:0]),
     .a_clk   (tx_mic_aclk),
     .b_clk   (tx_fifo_aclk),
     .a_din   (data_in),
     .b_en    (fifo_rd),
     .a_rst   (tx_mic_reset), //mic
     .b_rst   (tx_fifo_reset), //fifo
     .a_wr    (fifo_we)
  );
  
endmodule
