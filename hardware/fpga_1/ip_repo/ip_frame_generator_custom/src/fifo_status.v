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
module fifo_status(
    input wr, rd, fifo_we, fifo_rd,clk,rst,  
    input[11:0] write_address, read_address,  
    output fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow   
    );

  wire fbit_comp, overflow_set, underflow_set;  
  wire address_equal;  
  wire[11:0] address_result;  
  reg fifo_full_int, fifo_empty_int, fifo_threshold_int, fifo_overflow_int, fifo_underflow_int;  
  assign fifo_full = fifo_full_int;
  assign fifo_empty = fifo_empty_int;
  assign fifo_threshold = fifo_threshold_int;
  assign fifo_overflow = fifo_overflow_int;
  assign fifo_underflow = fifo_underflow_int;
  
  assign fbit_comp = write_address[11] ^ read_address[11];  
  assign address_equal = (write_address[10:0] - read_address[10:0]) ? 0:1;  
  assign address_result = write_address[11:0] - read_address[11:0];  
  assign overflow_set = fifo_full_int & wr;  
  assign underflow_set = fifo_empty_int & rd;  
  
  always @(*)  
  begin  
   fifo_full_int = fbit_comp & address_equal;  
   fifo_empty_int = (~fbit_comp) & address_equal;  
   fifo_threshold_int = (address_result[11]||address_result[10]) ? 1:0;  
  end  
  
  always @(posedge clk or posedge rst)  
  begin  
  if(rst) fifo_overflow_int <=0;  
  else if((overflow_set==1)&&(fifo_rd==0))  
   fifo_overflow_int <=1;  
   else if(fifo_rd)  
    fifo_overflow_int <=0;  
    else  
     fifo_overflow_int <= fifo_overflow_int;  
  end  
  
  always @(posedge clk or posedge rst)  
  begin  
  if(rst) fifo_underflow_int <=0;  
  else if((underflow_set==1)&&(fifo_we==0))  
   fifo_underflow_int <=1;  
   else if(fifo_we)  
    fifo_underflow_int <=0;  
    else  
     fifo_underflow_int <= fifo_underflow_int;  
  end  

endmodule