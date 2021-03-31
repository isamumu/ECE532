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


module read_address_pointer(
    input rd,fifo_empty,clk,rst,  
    output[11:0] read_address,  
    output fifo_rd  
    );

  reg[11:0] read_address_int;  
  assign read_address = read_address_int;
  assign fifo_rd = (~fifo_empty)& rd;  
  
  always @(posedge clk or posedge rst)  
  begin  
   if(rst) read_address_int <= 12'b0000000000000;  
   else if(fifo_rd)  
    read_address_int <= read_address_int + 12'b000000000001;  
   else  
    read_address_int <= read_address_int;  
  end  
  
endmodule