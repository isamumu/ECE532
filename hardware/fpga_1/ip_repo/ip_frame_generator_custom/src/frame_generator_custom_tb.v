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


module frame_generator_custom_tb();
 // 4. Parameter definitions  
 parameter     ENDTIME      = 200000;  
 reg r_test_enable;
 // 5. DUT Input regs  
 reg     tx_mic_aclk;  
 reg     tx_fifo_aclk; 
 reg     tx_mic_resetn;  
 reg     tx_fifo_resetn;
 reg     tx_mic_tvalid;
 reg     tx_mic_tlast;  
 reg     tx_fifo_tready;  
 reg     [15:0] tx_mic_tdata;  
 // 6. DUT Output wires  
 wire     [7:0] tx_fifo_tdata;  
 wire     tx_fifo_tvalid;  
 wire     tx_fifo_tlast;  
 wire     tx_mic_tready;  
 integer i;  

frame_generator_custom #(.MAX_SIZE(20)) frame_gen(
    .i_clk(tx_mic_aclk),
    .i_aresetn(tx_mic_resetn),
    .rx_mic_TVALID(tx_mic_tvalid),
    .rx_mic_TREADY(tx_mic_tready),
    .rx_mic_TDATA(tx_mic_tdata),
    .rx_mic_TLAST(tx_mic_tlast),
    .tx_fifo_TVALID(tx_fifo_tvalid),
    .tx_fifo_TREADY(tx_fifo_tready),
    .tx_fifo_TDATA(tx_fifo_tdata),
    .tx_fifo_TLAST(tx_fifo_tlast)
);


 // 8. Initial Conditions  
 initial  
      begin  
           tx_mic_aclk     = 1'b0;
           tx_fifo_aclk     = 1'b0;             
           tx_mic_resetn     = 1'b0; 
           tx_fifo_resetn     = 1'b0; 
           tx_mic_tvalid     = 1'b0;
           tx_mic_tlast      = 1'b0;  
           tx_fifo_tready     = 1'b1;  
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
           #(`DELAY*10)
           r_test_enable = 1;
          //  #(`DELAY)  
          //  for (i = 0; i < 1400; i = i + 1) begin: WRE  
          //       #(`DELAY*4)  
          //       tx_mic_tvalid = 1'b1;  
          //       tx_mic_tdata = tx_mic_tdata + 8'd1;
          //       tx_mic_tlast = (i % 10 == 0) ? 1 : 0;  
          //       #(`DELAY*2)  
          //       tx_mic_tvalid = 1'b0;  
          //  end  
          //  #(`DELAY*2)  
          //  for (i = 0; i < 1500; i = i + 1) begin: RDE  
          //       #(`DELAY*2)  
          //       tx_fifo_tready = 1'b1;  
          //       #(`DELAY*2)  
          //       tx_fifo_tready = 1'b0;  
          //  end  
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

 always @ (posedge tx_mic_aclk)
    begin
        if (r_test_enable == 1'b1)
        begin
            if (tx_mic_tdata == 0 || tx_mic_tready == 1'b1)
            begin
                tx_mic_tdata <= tx_mic_tdata + 1;
               //  tx_mic_tlast <= (tx_mic_tdata % 10 == 0) ? 1 : 0;  
                if (tx_mic_tdata == 100)
                begin
                    tx_mic_tvalid <= 0;
                    tx_mic_tdata <= 0;
                    r_test_enable <= 0;
                end
                else
                begin
                    tx_mic_tvalid <= 1;
                    tx_mic_tdata <= tx_mic_tdata + 1;
                end
            end
        end
        tx_fifo_tready <= ~tx_fifo_tready;
    end

task endsimulation;  
      begin  
           #ENDTIME  
           $display("-------------- THE SIMUALTION FINISHED ------------");  
           $finish;  
      end  
endtask  


endmodule

