`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/16 14:34:08
// Design Name: 
// Module Name: frame_generator
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


module frame_generator#(
   parameter               DEST_ADDR       = 48'h000a35000004, // Source address actually 00:0a:35:00:00:04
   parameter               SRC_ADDR        = 48'h000a35000012, // Destination address actually
   parameter               MAX_SIZE       = 16'd1200,
//   parameter               MIN_SIZE       = 16'd64,//useless
   parameter               ENABLE_VLAN    = 1'b0,//useless
   parameter               VLAN_ID        = 12'd2,//useless
   parameter               VLAN_PRIORITY  = 3'd2, //useless
   parameter FULL_DUPLEX_ONLY = 0 //useless
)(
   // FIFO side (read side) AxisStream interface
   input                   tx_fifo_aclk,
   input                   tx_fifo_resetn, //tx_fifo_resetn

//   input       [1:0]       speed,

   output reg  [7:0]       tx_fifo_tdata,
   output                   tx_fifo_tvalid,
   output reg              tx_fifo_tlast,//
   input                   tx_fifo_tready,

    // User-side (write-side) AxiStream interface
    input            tx_mic_aclk,
    input            tx_mic_resetn, //tx_mic_resetn
    input      [7:0] tx_mic_tdata,//tx_mic_tdata
    input            tx_mic_tvalid,//tx_mic_tvalid
    output           tx_mic_tready//tx_mic_tready

    
//    // MAC-side (read-side) AxiStream interface
//    input            tx_mac_aclk, checked
//    input            tx_mac_resetn, checked
//    output     [7:0] tx_axis_mac_tdata,
//    output reg       tx_axis_mac_tvalid,
//    output reg       tx_axis_mac_tlast,
//    input            tx_axis_mac_tready,
//    output reg       tx_axis_mac_tuser,

//    // FIFO collision and retransmission requests from MAC
//    input            tx_collision,
//    input            tx_retransmit
);

localparam     IDLE        = 3'b000,
               HEADER      = 3'b001,
               SIZE        = 3'b010,
               DATA        = 3'b011,
               OVERHEAD    = 3'b100;
               
localparam WAIT_s   = 2'b00;
localparam DATA_s   = 2'b01;
localparam LOCK_s    = 2'b10;
localparam OVFLOW_s = 2'b11;
               
// work out the adjustment required to get the right packet size.               
localparam     PKT_ADJUST  = (ENABLE_VLAN) ? 22 : 18;

// generate the vlan fields
localparam     VLAN_HEADER = {8'h81, 8'h00, VLAN_PRIORITY, 1'b0, VLAN_ID};//useless

// generate the require header count compare
localparam     HEADER_LENGTH = (ENABLE_VLAN) ? 15 : 11;

// generate the required bandwidth controls based on speed
// we want to use less than 100% bandwidth to avoid loopback overflow 
//localparam     BW_1G       = 230;
localparam     BW_100M     = 23;
//localparam     BW_10M      = 2;

reg         [11:0]         byte_count;
reg         [3:0]          header_count;
reg         [4:0]          overhead_count;
reg         [15:0]         pkt_size;
reg         [2:0]          next_gen_state;
reg                        byte_count_eq_1 = 0;
reg         [2:0]          gen_state;
wire        [7:0]          lut_data;
reg                        tx_fifo_tvalid_int;
reg                        tx_mic_tready_int;
// rate control signals
//reg         [7:0]          basic_rc_counter;
//reg                        add_credit;
//reg         [12:0]         credit_count;

wire                       tx_fifo_reset;
wire                       tx_mic_reset;
reg                        write_enable;
wire                       read_enable;
reg                        rd;
reg         [7:0]          data_in;
reg         [7:0]          data_out;
wire        [7:0]          data_out_int;
wire                       fifo_full;
wire                       fifo_empty;
wire                       fifo_threshold;
wire                       fifo_overflow;
wire                       fifo_underflow;
reg         [7:0]          tvalid_counter;

reg  [1:0]  wr_state; 
reg  [1:0]  wr_nxt_state;

assign tx_fifo_reset = !tx_fifo_resetn;
assign tx_mic_reset = !tx_mic_resetn;

// counter sections
// need a packet counter - max size limited to 11 bits
always @(posedge tx_fifo_aclk)
begin
   if (tx_fifo_reset) begin
      byte_count <= 0;
   end
   else if (gen_state == DATA & |byte_count & tx_fifo_tready) begin
      byte_count <= byte_count -1;
   end     
   else if (gen_state == HEADER) begin
      byte_count <= pkt_size;
   end
end

always @(posedge tx_fifo_aclk)
begin
   if (tx_mic_reset) begin
      pkt_size <= 0;
   end
   else if (wr_state == DATA_s) begin //?????????
      pkt_size <= pkt_size + 1;
   end     
   else if (gen_state == DATA & |byte_count & tx_fifo_tready) begin
      pkt_size <= pkt_size - 1;
   end
end

always @(posedge tx_fifo_aclk)
begin
   if (tx_fifo_reset) begin
      byte_count_eq_1 <= 0;
   end
   else if (gen_state == DATA && byte_count == 12'h2 && tx_fifo_tready) begin
      byte_count_eq_1 <= 1;
   end     
   else if (gen_state != DATA || (byte_count_eq_1 && tx_fifo_tready)) begin
      byte_count_eq_1 <= 0;
   end
end

// tvalid counter
always @(posedge tx_mic_aclk)
begin
   if (tx_mic_reset) begin
      tvalid_counter <= 0;
   end
   else if (wr_state == DATA_s || wr_state == LOCK_s) begin
      tvalid_counter <= 0;
   end
   else if (tx_mic_tvalid == 0) begin // && wr_state == WAIT_s
      tvalid_counter <= tvalid_counter + 1;
   end  

end

// need a smaller count to manage the header insertion
always @(posedge tx_fifo_aclk)
begin
   if (tx_fifo_reset) begin
      header_count <= 0;
   end
   else if (gen_state == HEADER & !(&header_count) & (tx_fifo_tready | !tx_fifo_tvalid_int)) begin
      header_count <= header_count + 1;
   end
   else if (gen_state == SIZE & tx_fifo_tready) begin
      header_count <= 0;
   end
end

// need a count to manage the frame overhead (assume 24 bytes)
always @(posedge tx_fifo_aclk)
begin
   if (tx_fifo_reset) begin
      overhead_count <= 0;
   end
   else if (gen_state == OVERHEAD & |overhead_count & tx_fifo_tready) begin
      overhead_count <= overhead_count - 1;
   end
   else if (gen_state == IDLE) begin
      overhead_count <= 24;
   end
end

// need a smaller count to manage the header insertion
// adjust parameter values by 18 to allow for header and crc
// so the pkt_size can be issued directly in the size field
//always @(posedge tx_fifo_aclk)
//begin
//   if (tx_fifo_reset) begin
//      pkt_size <= 0;
////      pkt_size <= MIN_SIZE - PKT_ADJUST;
//   end
////   else if (gen_state == DATA & next_gen_state != DATA) begin
////      if (pkt_size == MAX_SIZE - PKT_ADJUST)
////         pkt_size <= MIN_SIZE - PKT_ADJUST;
////      else
////         pkt_size <= pkt_size + 1;
////   end
//end

// store the parametised values in a lut (64 deep)
// this should mean the values could be adjusted in fpga_editor etc..
genvar i;  
generate
  for (i=0; i<=7; i=i+1) begin : lut_loop
    LUT6 #(
       .INIT      ({48'd0,
                    VLAN_HEADER[i],
                    VLAN_HEADER[i+8],
                    VLAN_HEADER[i+16],
                    VLAN_HEADER[i+24],
                    SRC_ADDR[i],
                    SRC_ADDR[i+8],
                    SRC_ADDR[i+16],
                    SRC_ADDR[i+24],
                    SRC_ADDR[i+32],
                    SRC_ADDR[i+40],
                    DEST_ADDR[i],
                    DEST_ADDR[i+8],
                    DEST_ADDR[i+16],
                    DEST_ADDR[i+24],
                    DEST_ADDR[i+32],
                    DEST_ADDR[i+40]
                   })   // Specify LUT Contents
    ) LUT6_inst (
       .O         (lut_data[i]), 
       .I0        (header_count[0]),
       .I1        (header_count[1]),
       .I2        (header_count[2]),
       .I3        (header_count[3]),
       .I4        (1'b0),
       .I5        (1'b0) 
    );
   end
endgenerate
  
// rate control logic

// first we need an always active counter to provide the credit control
//always @(posedge tx_fifo_aclk)
//begin
//   if (tx_fifo_reset | !read_enable)
//      basic_rc_counter     <= 255;
//   else
//      basic_rc_counter     <= basic_rc_counter + 1;
//end

// now we need to set the compare level depending upon the selected speed
// the credits are applied using a simple less-than check
//always @(posedge tx_fifo_aclk)
//begin
//      if (basic_rc_counter < BW_100M)
//         add_credit        <= 1;
//      else
//         add_credit        <= 0;
//end
 
// basic credit counter - -ve value means do not send a frame
//always @(posedge tx_fifo_aclk)
//begin
//   if (tx_fifo_reset)
//      credit_count         <= 0;
//   else begin
//      // if we are in frame
//      if (gen_state != IDLE) begin
//         if (!add_credit & credit_count[12:10] != 3'b110)  // stop decrementing at -2048
//            credit_count <= credit_count - 1;
//      end
//      else begin
//         if (add_credit & credit_count[12:11] != 2'b01)    // stop incrementing at 2048
//            credit_count <= credit_count + 1;         
//      end
//   end
//end 

// state machine to control read and write
  // Write state machine.
  // States are WAIT, DATA, LOCK, OVFLOW.
  // Clock state to next state.
  always @(posedge tx_mic_aclk)
  begin
     if (tx_mic_reset == 1'b1) begin
         wr_state <= WAIT_s;
     end
     else begin
         wr_state <= wr_nxt_state;
     end
  end

  // Decode next state, combinatorial.
  always @(wr_state, tx_mic_tvalid, fifo_full, tvalid_counter)
  begin
  case (wr_state)
     WAIT_s : begin // wait for data to come in,tready in 1
        if (tx_mic_tvalid == 1'b1 && fifo_full == 1'b0) begin
           wr_nxt_state <= DATA_s;
        end
        else if (pkt_size == 16'd1200 || tvalid_counter == 100) begin
           wr_nxt_state <= LOCK_s;
        end
        else begin
           wr_nxt_state <= WAIT_s;
        end
     end

     DATA_s : begin // receive data, when there are 1200 bytes in ram, change to lock state
                    // when there are 10 counts when tvalid is 0, change to lock state
        // Wait for the end of frame to be detected.
        if (pkt_size == 16'd1200 || tvalid_counter == 100) begin
           wr_nxt_state <= LOCK_s;
        end
        else if (tx_mic_tvalid == 1'b0) begin
            wr_nxt_state <= WAIT_s;
        end
        else begin
           wr_nxt_state <= DATA_s;
        end
     end

     LOCK_s : begin // stop
        if (pkt_size == 0) begin
           wr_nxt_state <= WAIT_s;
        end
        else begin
           wr_nxt_state <= LOCK_s;
        end
     end

     default : begin
        wr_nxt_state <= WAIT_s;
     end

  endcase
  end


  // Decode output signals.
  // wr_en is used to enable the BRAM write and the address to increment.
//assign write_enable = (wr_state == DATA_s) ? 1'b1 : 1'b0;
assign read_enable = (wr_state == LOCK_s) ? 1'b1 : 1'b0;
//assign rd = (gen_state == DATA & tx_fifo_tready) ? 1'b1 : 1'b0;
  // Pause the AxiStream handshake when the FIFO is full.
  
always @(posedge tx_mic_aclk)
begin
   if (tx_mic_reset) begin
      tx_mic_tready_int <= 0;
   end
   else if (wr_state == DATA_s) begin
      tx_mic_tready_int <= 1;
      write_enable <= 1;
   end
   else if (wr_state == LOCK_s) begin
      tx_mic_tready_int <= 0;
   end
   else begin
      write_enable <= 0;
   end
end

// data insertion
always @(posedge tx_mic_aclk)
begin
   if (wr_state == DATA_s) begin
      data_in <= tx_mic_tdata;
   end
end

assign tx_mic_tready = tx_mic_tready_int;


// simple state machine to control the data
// on the transition from IDLE we reset the counters and increment the packet size
always @(gen_state or read_enable or header_count or tx_fifo_tready or byte_count or tx_fifo_tvalid_int or overhead_count or pkt_size) // or credit_count 
begin
   next_gen_state = gen_state;
   case (gen_state)
      IDLE : begin
         if (read_enable & !tx_fifo_tvalid_int && pkt_size != 0) // & !credit_count[12]
            next_gen_state = HEADER;
      end
      HEADER : begin
         if (header_count == HEADER_LENGTH & tx_fifo_tready)
            next_gen_state = SIZE;
      end
      SIZE : begin
         // when we enter SIZE header count is initially all 1's 
         // it is cleared when we enter SIZE which gives us the required two cycles in this state
         if (header_count == 0 & tx_fifo_tready)
            next_gen_state = DATA;
      end
      DATA : begin
         // when an AVB AV channel we want to keep valid asserted to indicate a continuous feed of data
         //   the AVB module is then enitirely resposible for the bandwidth
         if (byte_count_eq_1 & tx_fifo_tready) begin
            next_gen_state = OVERHEAD;
         end
      end
      OVERHEAD : begin
         if (overhead_count == 1 & tx_fifo_tready) begin 
            next_gen_state = IDLE;
         end
      end
      default : begin
         next_gen_state = IDLE;
      end
   endcase
end

always @(posedge tx_fifo_aclk)
begin
   if (tx_fifo_reset) begin
      gen_state <= IDLE;
   end
   else begin
      gen_state <= next_gen_state;
   end
end


// now generate the TVALID output
always @(posedge tx_fifo_aclk)
begin
   if (tx_fifo_reset)
      tx_fifo_tvalid_int <= 0;
   else if (gen_state != IDLE & gen_state != OVERHEAD)
      tx_fifo_tvalid_int <= 1;
   else if (tx_fifo_tready)
      tx_fifo_tvalid_int <= 0;
end

//assign rd = (gen_state == DATA & tx_fifo_tready) ? 1'b1 : 1'b0;
always @(posedge tx_fifo_aclk)
begin
   if (tx_fifo_reset)
      rd <= 0;
   else if (next_gen_state == DATA & tx_fifo_tready)
      rd <= 1;
   else
      rd <= 0;
end

// now generate the TDATA output
always @(posedge tx_fifo_aclk)
begin
   if (gen_state == HEADER & (tx_fifo_tready | !tx_fifo_tvalid_int))
      tx_fifo_tdata <= lut_data;
   else if (gen_state == SIZE & tx_fifo_tready) begin
      if (header_count[3])
         tx_fifo_tdata <= pkt_size[15:8];
      else
         tx_fifo_tdata <= pkt_size[7:0];
   end
   else if (tx_fifo_tready)
      tx_fifo_tdata <= data_out_int;
end

// now generate the TLAST output
always @(posedge tx_fifo_aclk)
begin
   if (tx_fifo_reset)
      tx_fifo_tlast <= 0;
   else if (byte_count_eq_1 & tx_fifo_tready)
      tx_fifo_tlast <= 1;
   else if (tx_fifo_tready)
      tx_fifo_tlast <= 0;
end

assign tx_fifo_tvalid = tx_fifo_tvalid_int;

/////////////////////////////////////////////////////////////////
//assign data_out_int = data_out;
fifo_mem mem(
    .wr(write_enable),
    .rd(rd),
    .tx_mic_aclk(tx_mic_aclk),
    .tx_fifo_aclk(tx_fifo_aclk),
    .tx_mic_reset(tx_mic_reset),
    .tx_fifo_reset(tx_fifo_reset),
    .data_in(data_in),
    .data_out(data_out_int),
    .fifo_full(fifo_full),
    .fifo_empty(fifo_empty),
    .fifo_threshold(fifo_threshold),
    .fifo_overflow(fifo_overflow),
    .fifo_underflow(fifo_underflow)
);

endmodule