`timescale 1ps / 1ps
`define DELAY 10  
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/22 20:25:53
// Design Name: 
// Module Name: frame_generator_tb
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


module frame_generator_tb();
 // 4. Parameter definitions  
 parameter     ENDTIME      = 200000;  
 // 5. DUT Input regs  
 reg     tx_mic_aclk;  
 reg     tx_fifo_aclk; 
 reg     tx_mic_resetn;  
 reg     tx_fifo_resetn;
 reg     tx_mic_tvalid;  
 reg     tx_fifo_tready;  
 reg     [7:0] tx_mic_tdata;  
 // 6. DUT Output wires  
 wire     [7:0] tx_fifo_tdata;  
 wire     tx_fifo_tvalid;  
 wire     tx_fifo_tlast;  
 wire     tx_mic_tready;  
 integer i;  
 
 
frame_generator frame_gen(
    .tx_fifo_aclk(tx_fifo_aclk),// input
    .tx_fifo_resetn(tx_fifo_resetn),// input
    .tx_fifo_tdata(tx_fifo_tdata),
    .tx_fifo_tvalid(tx_fifo_tvalid),
    .tx_fifo_tlast(tx_fifo_tlast),
    .tx_fifo_tready(tx_fifo_tready),// input
    .tx_mic_aclk(tx_mic_aclk),// input
    .tx_mic_resetn(tx_mic_resetn),// input
    .tx_mic_tdata(tx_mic_tdata),// input
    .tx_mic_tvalid(tx_mic_tvalid),// input
    .tx_mic_tready(tx_mic_tready)
);

 // 8. Initial Conditions  
 initial  
      begin  
           tx_mic_aclk     = 1'b0;
           tx_fifo_aclk     = 1'b0;             
           tx_mic_resetn     = 1'b0; 
           tx_fifo_resetn     = 1'b0; 
           tx_mic_tvalid     = 1'b0;  
           tx_fifo_tready     = 1'b0;  
           tx_mic_tdata     = 8'd0;  
      end  
 // 9. Generating Test Vectors  
 initial  
      begin  
           main;  
      end  
 task main;  
      fork  
           clock_generator_0;
           clock_generator_1;  
           reset_generator;  
           operation_process;  
           endsimulation;  
      join  
 endtask  
 task clock_generator_0;  
      begin  
           forever #`DELAY tx_mic_aclk = !tx_mic_aclk;  
      end  
 endtask  
  task clock_generator_1;  
      begin  
           forever #`DELAY tx_fifo_aclk = !tx_fifo_aclk;  
      end  
 endtask  
 
 task reset_generator;  
      begin  
           #(`DELAY*2)  
           tx_mic_resetn = 1'b1;
           tx_fifo_resetn = 1'b1;  
           # 7.9  
           tx_mic_resetn = 1'b0;
           tx_fifo_resetn = 1'b0;  
           # 7.09  
           tx_mic_resetn = 1'b1;
           tx_fifo_resetn = 1'b1;  
      end  
 endtask  
 task operation_process;  
      begin  
           for (i = 0; i < 1400; i = i + 1) begin: WRE  
                #(`DELAY*5)  
                tx_mic_tvalid = 1'b1;  
                tx_mic_tdata = tx_mic_tdata + 8'd1;  
                #(`DELAY*2)  
                tx_mic_tvalid = 1'b0;  
           end  
           #(`DELAY*2)  
           for (i = 0; i < 1500; i = i + 1) begin: RDE  
                #(`DELAY*2)  
                tx_fifo_tready = 1'b1;  
                #(`DELAY*2)  
                tx_fifo_tready = 1'b0;  
           end  
           
//           for (i = 0; i < 400; i = i + 1) begin: WRE1  
//                #(`DELAY*5)  
//                tx_mic_tvalid = 1'b1;  
//                tx_mic_tdata = tx_mic_tdata + 8'd1;  
//                #(`DELAY*2)  
//                tx_mic_tvalid = 1'b0;  
//           end  
//           #(`DELAY*2)  
//           for (i = 0; i < 500; i = i + 1) begin: RDE1  
//                #(`DELAY*2)  
//                tx_fifo_tready = 1'b1;  
//                #(`DELAY*2)  
//                tx_fifo_tready = 1'b0;  
//           end  
      end  
 endtask  
task endsimulation;  
      begin  
           #ENDTIME  
           $display("-------------- THE SIMUALTION FINISHED ------------");  
           $finish;  
      end  
endtask  


endmodule

