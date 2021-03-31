`timescale 1ps / 1ps
module frame_destructor_custom#(
    // AXI-Stream Parameters
    parameter INPUT_VALUE_WIDTH = 8,
    parameter INPUT_AXIS_DATA_WIDTH = 8*((INPUT_VALUE_WIDTH - 1)/8 + 1),
    parameter OUTPUT_VALUE_WIDTH = 16,
    parameter OUTPUT_AXIS_DATA_WIDTH = 8*((OUTPUT_VALUE_WIDTH - 1)/8 + 1)
)(
    // Same clock and reset for both sides of FIFO
    input i_clk,
    input i_aresetn,

    // TEMAC-side (Receive-side) AxiStream interface
    input i_axis_TVALID, //tx_mic_tvalid
    output o_axis_TREADY, //tx_mic_tready
    input [INPUT_AXIS_DATA_WIDTH-1:0] i_axis_TDATA, //tx_mic_tdata
    input i_axis_TLAST,
    
    // Microblaze-Side AXI-Stream Interface
    output o_axis_TVALID,
    input i_axis_TREADY,
    output [OUTPUT_AXIS_DATA_WIDTH-1:0] o_axis_TDATA,
    output o_axis_TLAST
);
    // Declarations
    localparam TLAST_MARKER = 16'b0000001111111111; // 2 bytes, represents the TLAST marker inside the frame
    localparam NUM_ADDR_BYTES_TOTAL = 'd12;
    localparam STATE_ADDR = 'd1;
    localparam STATE_SIZE = 'd2;
    localparam STATE_DATA = 'd3;
    localparam STATE_OUTPUT_TRANSMISSION_PREP = 'd4;
    localparam STATE_OUTPUT_TRANSMISSION = 'd5;
    reg [3:0] r_core_state;
    // Declarations - Input AXI-Stream
    reg [15:0] r_packet_size;
    reg [OUTPUT_VALUE_WIDTH-1:0] r_incoming_data_transfer;
    reg [OUTPUT_VALUE_WIDTH-1:0] r_outgoing_data_transfer;
    reg [3:0] r_num_addr_bytes_received;
    reg r_num_size_bytes_received;
    reg r_num_data_bytes_received;
    reg r_packet_tlast_received; // Tracks whether or not the frame's TLAST has been received
    // Declarations - Output AXI-Stream
    reg [OUTPUT_VALUE_WIDTH-1:0] r_o_axis_tdata;
    reg r_o_axis_tlast;
    
    // Assignments
    // Assignments - Input AXI-Stream
    assign o_axis_TREADY = (r_core_state == STATE_ADDR
                         || r_core_state == STATE_SIZE
                         || r_core_state == STATE_DATA
                         ) ? 1 : 0;
    // Assignments - Output AXI-Stream
    assign o_axis_TVALID = (r_core_state == STATE_OUTPUT_TRANSMISSION) ? 1 : 0;
    assign o_axis_TDATA = r_o_axis_tdata;
    assign o_axis_TLAST = r_o_axis_tlast;

    always @(posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            r_core_state <= STATE_ADDR;
            // Input AXI-Stream
            r_packet_size <= 0;
            r_incoming_data_transfer <= 0;
            r_outgoing_data_transfer <= 0;
            r_num_addr_bytes_received <= 0;
            r_num_size_bytes_received <= 0;
            r_num_data_bytes_received <= 0;
            r_packet_tlast_received <= 0;
            // Output AXI-Stream
            r_o_axis_tdata <= 0;
            r_o_axis_tlast <= 0;
        end
        else
        begin
            case (r_core_state)
                STATE_ADDR:
                begin
                    // Goal of this core is to just get through 12 transfers (6 for DEST_ADDR, 6 for SRC_ADDR)
                    if (i_axis_TVALID == 1'b1)
                    begin
                        r_num_addr_bytes_received <= (r_num_addr_bytes_received == NUM_ADDR_BYTES_TOTAL-1) ? 0 : r_num_addr_bytes_received + 1;
                        r_core_state <= (r_num_addr_bytes_received == NUM_ADDR_BYTES_TOTAL-1) ? STATE_SIZE : r_core_state;
                    end
                    else
                    begin
                        r_num_addr_bytes_received <= r_num_addr_bytes_received;
                        r_core_state <= r_core_state;
                    end
                end
                STATE_SIZE:
                begin
                    if (i_axis_TVALID == 1'b1)
                    begin
                        r_packet_size <= (r_packet_size << INPUT_VALUE_WIDTH) | i_axis_TDATA;
                        r_num_size_bytes_received <= (r_num_size_bytes_received == 1) ? 0 : 1;
                        r_core_state <= (r_num_size_bytes_received == 1) ? STATE_DATA : r_core_state;
                    end
                    else
                    begin
                        r_packet_size <= r_packet_size;
                        r_num_size_bytes_received <= r_num_size_bytes_received;
                        r_core_state <= r_core_state;
                    end
                end
                STATE_DATA:
                begin
                    if (i_axis_TVALID == 1)
                    begin
                        r_incoming_data_transfer <= (r_incoming_data_transfer << INPUT_VALUE_WIDTH) | i_axis_TDATA; 
                        r_packet_tlast_received <= i_axis_TLAST;
                        r_packet_size <= (r_packet_size == 0) ? 0 : r_packet_size - 1;
                        r_num_data_bytes_received <= (r_num_data_bytes_received == 1) ? 0 : 1;
                        r_core_state <= (r_num_data_bytes_received == 1) ? STATE_OUTPUT_TRANSMISSION_PREP : r_core_state;
                    end
                    else
                    begin
                        r_incoming_data_transfer <= r_incoming_data_transfer;
                        r_packet_tlast_received <= r_packet_tlast_received;
                        r_packet_size <= r_packet_size;
                        r_num_data_bytes_received <= r_num_data_bytes_received;
                        r_core_state <= r_core_state;
                    end
                end
                STATE_OUTPUT_TRANSMISSION_PREP:
                begin
                    r_core_state <= (r_outgoing_data_transfer == TLAST_MARKER || r_outgoing_data_transfer == 0) ? STATE_DATA : STATE_OUTPUT_TRANSMISSION; // Edge Case: If we detect TLAST_MARKERs or 0 in outgoing transfer, go straight back to receiving data
                    r_o_axis_tlast <= (r_incoming_data_transfer == TLAST_MARKER) ? 1 : 0;
                    r_o_axis_tdata <= r_outgoing_data_transfer; // Shuffle the data transfers (TLAST MARKER will end up in the front eventually, but won't make it to the output transmission stage)
                    r_outgoing_data_transfer <= r_incoming_data_transfer;
                    r_incoming_data_transfer <= 0;
                end
                STATE_OUTPUT_TRANSMISSION:
                begin
                    if (i_axis_TREADY == 1'b1)
                    begin
                        r_o_axis_tdata <= 0;
                        r_o_axis_tlast <= 0;
                        r_core_state <= (r_packet_size == 0) ? STATE_ADDR : STATE_DATA; // If done, go back to ADDR, otherwise keep reading data
                    end
                    else
                    begin
                        r_o_axis_tdata <= r_o_axis_tdata;
                        r_o_axis_tlast <= r_o_axis_tlast;
                        r_core_state <= r_core_state;
                    end
                end
            endcase
        end
    end
endmodule