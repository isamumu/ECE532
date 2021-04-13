`timescale 1ps / 1ps
module frame_generator_custom#(
    // AXI-Stream Parameters
    parameter INPUT_VALUE_WIDTH = 16,
    parameter INPUT_AXIS_DATA_WIDTH = 8*((INPUT_VALUE_WIDTH - 1)/8 + 1),
    parameter FIFO_WIDTH = 8,
    parameter OUTPUT_AXIS_DATA_WIDTH = 8*((FIFO_WIDTH - 1)/8 + 1),
    parameter VALID_THRESHOLD = 100, // Number of cycles we wait for valid signal before we send header
    // Frame Parameters
    parameter DEST_ADDR = 48'h000a35000004, // Source address actually 00:0a:35:00:00:04
    parameter SRC_ADDR = 48'h000a35000012, // Destination address actually
    parameter MAX_SIZE = 16'd1200 // Maximum number of data bytes in each frame
)(
    // Same clock and reset for both sides of FIFO
    input i_clk,
    input i_aresetn,

    // Microcontroller-side (Receive-side) AxiStream interface
    input rx_mic_TVALID, //tx_mic_tvalid
    output rx_mic_TREADY, //tx_mic_tready
    input [INPUT_AXIS_DATA_WIDTH-1:0] rx_mic_TDATA, //tx_mic_tdata
    input rx_mic_TLAST,
    
    // FIFO side (Transmit-side) Axi-Stream interface
    output tx_fifo_TVALID,
    input tx_fifo_TREADY,
    output [OUTPUT_AXIS_DATA_WIDTH-1:0] tx_fifo_TDATA,
    output tx_fifo_TLAST
);
    // Declarations
    localparam STATE_RECEIVE_DATA_FIRST_BYTE = 'd0;
    localparam STATE_RECEIVE_DATA_SECOND_BYTE = 'd6;
    localparam STATE_RECEIVE_TLAST = 'd1;
    localparam STATE_TRANSMIT_HEADER_PREP = 'd2;
    localparam STATE_TRANSMIT_DEST_ADDRESS = 'd7;
    localparam STATE_TRANSMIT_SRC_ADDRESS = 'd8;
    localparam STATE_TRANSMIT_SIZE = 'd3;
    localparam STATE_TRANSMIT_DATA_PREP = 'd4;
    localparam STATE_TRANSMIT_DATA = 'd9;
    reg [3:0] r_core_state;
    reg [47:0] r_dest_addr;
    reg [47:0] r_src_addr;
    wire w_areset;
    // Declarations - Input AXI-Stream
    reg signed [FIFO_WIDTH-1:0] r_rx_mic_tdata_ls_byte; // FIFO can only take 1 byte at a time, and therefore we need to store the 2-byte input as 2 separate bytes
    reg r_tlast_received;
    reg [15:0] r_num_cycles_without_valid; // Tracks the number of cycles without a VALID signal going high -> will send header if this is greater than VALID THRESHOLD
    // Declarations - FIFO
    reg r_fifo_read_enable;
    reg r_fifo_write_enable;
    reg [15:0] r_packet_size;
    reg signed [FIFO_WIDTH-1:0] r_fifo_data_in;
    wire signed [FIFO_WIDTH-1:0] w_fifo_data_out;
    reg r_tlast_marker_counter;
    wire w_fifo_read_enable;
    wire w_fifo_write_enable;
    wire w_fifo_full;
    wire w_fifo_empty;
    wire w_fifo_threshold;
    wire w_fifo_overflow;
    wire w_fifo_underflow;
    // Declarations - Output AXI-Stream
    reg [OUTPUT_AXIS_DATA_WIDTH-1:0] r_tx_fifo_tdata;
    reg r_tx_fifo_tlast;
    reg [15:0] r_byte_count;


    // Assignments
    assign w_areset = ~i_aresetn;
    // Assignments - Input AXI-Stream
    assign rx_mic_TREADY = (r_core_state == STATE_RECEIVE_DATA_FIRST_BYTE) ? 1 : 0;
    // Assignments - FIFO
    // assign w_fifo_read_enable = r_fifo_read_enable;
    assign w_fifo_read_enable = (tx_fifo_TREADY == 1 && r_tx_fifo_tlast != 1 &&
                                (r_core_state == STATE_TRANSMIT_SIZE || r_core_state == STATE_TRANSMIT_DATA)
                                );
    assign w_fifo_write_enable = r_fifo_write_enable;
    // Assignments - Output AXI-Stream
    assign tx_fifo_TVALID = (r_core_state == STATE_TRANSMIT_DEST_ADDRESS 
                          || r_core_state == STATE_TRANSMIT_SRC_ADDRESS 
                          || (r_core_state == STATE_TRANSMIT_SIZE)
                          || r_core_state == STATE_TRANSMIT_DATA) ? 1 : 0;
    assign tx_fifo_TDATA = r_tx_fifo_tdata;
    assign tx_fifo_TLAST = r_tx_fifo_tlast;

    // Modules
    fifo_mem mem(
        .wr(w_fifo_write_enable),
        .rd(w_fifo_read_enable),
        .tx_mic_aclk(i_clk),
        .tx_fifo_aclk(i_clk),
        .tx_mic_reset(w_areset),
        .tx_fifo_reset(w_areset),
        .data_in(r_fifo_data_in),
        .data_out(w_fifo_data_out),
        .fifo_full(w_fifo_full),
        .fifo_empty(w_fifo_empty),
        .fifo_threshold(w_fifo_threshold),
        .fifo_overflow(w_fifo_overflow),
        .fifo_underflow(w_fifo_underflow)
    );

    always @(posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            r_core_state <= STATE_RECEIVE_DATA_FIRST_BYTE;
            r_dest_addr <= DEST_ADDR;
            r_src_addr <= SRC_ADDR;
            // Input AXI-Stream
            r_rx_mic_tdata_ls_byte <= 0;
            r_tlast_received <= 0;
            r_num_cycles_without_valid <= 0;
            // FIFO Write
            r_fifo_read_enable <= 0;
            r_fifo_write_enable <= 0;
            r_packet_size <= 0;
            r_fifo_data_in <= 0;
            r_tlast_marker_counter <= 0;
            // Output AXI-Stream
            r_tx_fifo_tdata <= 0;
            r_tx_fifo_tlast <= 0;
            r_byte_count <= 0;
        end
        else
        begin
            case (r_core_state)
                STATE_RECEIVE_DATA_FIRST_BYTE:
                begin
                    if (rx_mic_TVALID == 1'b1)
                    begin
                        r_fifo_data_in <= rx_mic_TDATA[INPUT_AXIS_DATA_WIDTH-1:INPUT_AXIS_DATA_WIDTH-FIFO_WIDTH];
                        r_rx_mic_tdata_ls_byte <= rx_mic_TDATA [FIFO_WIDTH-1:0];
                        r_packet_size <= r_packet_size + 1;
                        r_fifo_write_enable <= 1;
                        r_tlast_received <= rx_mic_TLAST;
                        r_num_cycles_without_valid <= 0;
                        r_core_state <= STATE_RECEIVE_DATA_SECOND_BYTE;
                    end
                    else if (r_num_cycles_without_valid >= VALID_THRESHOLD && w_fifo_empty == 0)
                    begin
                        // If we've waited for enough cycles and the fifo isn't empty, then send the packet
                        r_fifo_data_in <= r_fifo_data_in;
                        r_rx_mic_tdata_ls_byte <= r_rx_mic_tdata_ls_byte;
                        r_packet_size <= r_packet_size;
                        r_fifo_write_enable <= 0;
                        r_tlast_received <= r_tlast_received;
                        r_num_cycles_without_valid <= 0;
                        r_core_state <= STATE_TRANSMIT_HEADER_PREP;
                    end
                    else
                    begin
                        r_fifo_data_in <= r_fifo_data_in;
                        r_rx_mic_tdata_ls_byte <= r_rx_mic_tdata_ls_byte;
                        r_packet_size <= r_packet_size;
                        r_fifo_write_enable <= 0;
                        r_tlast_received <= r_tlast_received;
                        r_num_cycles_without_valid <= (r_num_cycles_without_valid == 'hFFFF) ? 0 : (r_num_cycles_without_valid + 1);
                        r_core_state <= r_core_state;
                    end
                end
                STATE_RECEIVE_DATA_SECOND_BYTE:
                begin
                    r_fifo_data_in <= r_rx_mic_tdata_ls_byte;
                    r_packet_size <= r_packet_size + 1;
                    r_rx_mic_tdata_ls_byte <= 0;
                    r_fifo_write_enable <= 1;
                    if (r_tlast_received == 1)
                    begin
                        r_core_state <= STATE_RECEIVE_TLAST;
                    end
                    else if (r_packet_size > (MAX_SIZE-5))
                    begin
                        r_core_state <= STATE_TRANSMIT_HEADER_PREP;
                    end
                    else
                    begin
                        r_core_state <= STATE_RECEIVE_DATA_FIRST_BYTE;
                    end
                    r_tlast_received <= 0;
                end
                STATE_RECEIVE_TLAST:
                begin
                    r_fifo_data_in <= (r_tlast_marker_counter == 0) ? 8'b00000011 : 8'b11111111; // Sending in 0000001111111111 as tlast marker
                    r_packet_size <= r_packet_size + 1;
                    r_fifo_write_enable <= (r_tlast_marker_counter < 2) ? 1 : 0;
                    r_tlast_marker_counter <= (r_tlast_marker_counter == 1) ? 0 : 1;
                    if (r_tlast_marker_counter == 1 && r_packet_size > (MAX_SIZE-3))
                    begin
                        r_core_state <= STATE_TRANSMIT_HEADER_PREP;
                    end
                    else if (r_tlast_marker_counter == 1)
                    begin
                        r_core_state <= STATE_RECEIVE_DATA_FIRST_BYTE;
                    end
                    else
                    begin
                        r_core_state <= r_core_state;
                    end
                end
                STATE_TRANSMIT_HEADER_PREP:
                begin
                    r_tx_fifo_tdata <= r_dest_addr[47:48-FIFO_WIDTH];
                    r_dest_addr <= r_dest_addr << FIFO_WIDTH;
                    r_byte_count <= r_packet_size;
                    r_fifo_write_enable <= 0;
                    r_core_state <= STATE_TRANSMIT_DEST_ADDRESS;
                end
                STATE_TRANSMIT_DEST_ADDRESS:
                begin
                    if (tx_fifo_TREADY == 1'b1)
                    begin
                        if (r_dest_addr == 0)
                        begin
                            r_tx_fifo_tdata <= r_src_addr[47:48-FIFO_WIDTH];
                            r_dest_addr <= DEST_ADDR;
                            r_src_addr <= r_src_addr << FIFO_WIDTH;
                            r_core_state <= STATE_TRANSMIT_SRC_ADDRESS;
                        end
                        else
                        begin
                            r_tx_fifo_tdata <= r_dest_addr[47:48-FIFO_WIDTH];
                            r_dest_addr <= r_dest_addr << FIFO_WIDTH;
                            r_src_addr <= r_src_addr;
                            r_core_state <= r_core_state;
                        end
                    end
                    else
                    begin
                        r_tx_fifo_tdata <= r_tx_fifo_tdata;
                        r_dest_addr <= r_dest_addr;
                        r_src_addr <= r_src_addr;
                        r_core_state <= r_core_state;
                    end
                end
                STATE_TRANSMIT_SRC_ADDRESS:
                begin
                    if (tx_fifo_TREADY == 1'b1)
                    begin
                        if (r_src_addr == 0)
                        begin
                            r_tx_fifo_tdata <= r_byte_count[15:16-FIFO_WIDTH];
                            r_src_addr <= SRC_ADDR;
                            r_byte_count <= r_byte_count << FIFO_WIDTH;
                            r_core_state <= STATE_TRANSMIT_SIZE;
                        end
                        else
                        begin
                            r_tx_fifo_tdata <= r_src_addr[47:48-FIFO_WIDTH];
                            r_src_addr <= r_src_addr << FIFO_WIDTH;
                            r_byte_count <= r_byte_count;
                            r_core_state <= r_core_state;
                        end
                    end
                    else
                    begin
                        r_tx_fifo_tdata <= r_tx_fifo_tdata;
                        r_src_addr <= r_src_addr;
                        r_byte_count <= r_byte_count;
                        r_core_state <= r_core_state;
                    end
                end
                STATE_TRANSMIT_SIZE:
                begin
                    if (tx_fifo_TREADY == 1'b1)
                    begin
                        if (r_byte_count == 0)
                        begin
                            r_tx_fifo_tdata <= w_fifo_data_out;
                            r_packet_size <= r_packet_size - 1;
                            r_byte_count <= r_byte_count;
                            r_core_state <= STATE_TRANSMIT_DATA;
                        end
                        else
                        begin
                            r_tx_fifo_tdata <= r_byte_count[15:16-FIFO_WIDTH];
                            r_packet_size <= r_packet_size;
                            r_byte_count <= r_byte_count << FIFO_WIDTH;
                            r_core_state <= r_core_state;
                        end
                    end
                    else
                    begin
                        r_tx_fifo_tdata <= r_tx_fifo_tdata;
                        r_packet_size <= r_packet_size;
                        r_byte_count <= r_byte_count;
                        r_core_state <= r_core_state;
                    end
                end
                STATE_TRANSMIT_DATA:
                begin
                    if (tx_fifo_TREADY == 1'b1)
                    begin
                        r_tx_fifo_tdata <= w_fifo_data_out;
                        r_tx_fifo_tlast <= (r_packet_size == 1) ? 1 : 0;
                        r_packet_size <= (r_packet_size == 0) ? 0 : r_packet_size - 1;
                        r_core_state <= (r_tx_fifo_tlast == 1) ? STATE_RECEIVE_DATA_FIRST_BYTE : STATE_TRANSMIT_DATA;
                    end
                    else
                    begin
                        r_tx_fifo_tdata <= r_tx_fifo_tdata;
                        r_tx_fifo_tlast <= r_tx_fifo_tlast;
                        r_packet_size <= r_packet_size;
                        r_core_state <= r_core_state;
                    end
                end
            endcase
        end
    end
endmodule