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


module write_address_pointer(
    input wr,fifo_full,clk,rst, 
    output[11:0] write_address,
    output fifo_we  
    );

  reg[11:0] write_address_int;
  assign write_address = write_address_int;
  assign fifo_we = (~fifo_full) & wr;  
  always @(posedge clk or posedge rst)  
  begin  
   if(rst) write_address_int <= 12'b000000000000;  
   else if(fifo_we)  
    write_address_int <= write_address_int + 12'b000000000001;  
   else  
    write_address_int <= write_address_int;  
  end  
endmodule
