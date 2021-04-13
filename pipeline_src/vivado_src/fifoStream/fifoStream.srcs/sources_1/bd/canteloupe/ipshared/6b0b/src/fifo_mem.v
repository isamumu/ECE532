`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/16 21:51:10
// Design Name: 
// Module Name: fifo_mem
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


module fifo_mem(
    input wr, rd, tx_mic_aclk, tx_fifo_aclk, tx_mic_reset, tx_fifo_reset,
    input[7:0] data_in,
    output[7:0] data_out,  
    output fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow  
    );

  wire[11:0] write_address,read_address;  
  wire fifo_we,fifo_rd; 
    
  write_address_pointer top1(wr,fifo_full,tx_mic_aclk,tx_mic_reset,write_address,fifo_we);  
  read_address_pointer top2(rd,fifo_empty,tx_fifo_aclk,tx_fifo_reset,read_address,fifo_rd);  
  memory top3(data_in,fifo_we,fifo_rd,write_address,read_address,tx_mic_aclk,tx_fifo_aclk,tx_mic_reset,tx_fifo_reset,data_out);  
  fifo_status top4(wr, rd, fifo_we, fifo_rd, tx_mic_aclk,tx_mic_reset,write_address,read_address, fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow);

endmodule
