`timescale 1ns / 1ps
module fpga1_deployment_source_block
    #(
        parameter AXIS_DATA_WIDTH = 56, // Width of the AXI-Stream data bus in bits
        parameter NUM_TRANSFERS = 16,
        parameter NUM_BITS_PER_TRANSFER = 49 // Number of bits transfered each time
    )
    (
        input i_clk,
        input i_aresetn,
        input [(NUM_TRANSFERS*NUM_BITS_PER_TRANSFER)-1:0] i_packet_to_send,
        input i_enable,
        output o_test_axis_TVALID,
        input i_test_axis_TREADY,
        output [AXIS_DATA_WIDTH-1:0] o_test_axis_TDATA,
        output o_test_axis_TLAST
    );

    // Declarations
    localparam PACKET_SIZE = NUM_TRANSFERS * NUM_BITS_PER_TRANSFER;  
    localparam STATE_TRANSMIT_DATA = 1'd0;
    localparam STATE_IDLE = 1'd1;
    reg [PACKET_SIZE-1:0] r_packet_to_send;
    reg r_core_state;
    reg r_test_axis_tvalid;
    reg [AXIS_DATA_WIDTH-1:0] r_test_axis_tdata;
    reg r_test_axis_tlast;
    reg [31:0] r_num_transfers_sent;

    // Assignments
    assign o_test_axis_TVALID = r_test_axis_tvalid;
    assign o_test_axis_TDATA = r_test_axis_tdata;
    assign o_test_axis_TLAST = r_test_axis_tlast;

    always @(posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            r_packet_to_send <= i_packet_to_send;
            r_core_state <= STATE_IDLE;
            r_test_axis_tvalid <= 1'b0;
            r_test_axis_tdata <= 0;
            r_test_axis_tlast <= 0;
            r_num_transfers_sent <= 0;
        end
        else
        begin
            case (r_core_state)
                STATE_TRANSMIT_DATA:
                begin
                    if (r_test_axis_tvalid == 1'b0)
                    begin
                        r_test_axis_tvalid <= 1'b1;
                        r_test_axis_tdata <= r_packet_to_send[NUM_BITS_PER_TRANSFER-1:0];
                        r_test_axis_tlast <= (r_num_transfers_sent == NUM_TRANSFERS - 1) ? 1 : 0;
                        r_packet_to_send <= (r_packet_to_send >> NUM_BITS_PER_TRANSFER);
                        r_core_state <= STATE_TRANSMIT_DATA;
                    end
                    else
                    begin
                        if (i_test_axis_TREADY == 1'b1)
                        begin
                            r_test_axis_tvalid <= 1'b0;
                            r_test_axis_tdata <= 0;
                            r_test_axis_tlast <= 0;
                            r_num_transfers_sent <= (r_num_transfers_sent + 1);
                            r_packet_to_send <= r_packet_to_send;
                            if (r_num_transfers_sent == NUM_TRANSFERS - 1)
                            begin
                                r_core_state <= STATE_IDLE;
                            end
                            else
                            begin
                                r_core_state <= STATE_TRANSMIT_DATA;
                            end
                        end
                        else
                        begin
                            r_test_axis_tvalid <= r_test_axis_tvalid;
                            r_test_axis_tdata <= r_test_axis_tdata;
                            r_test_axis_tlast <= r_test_axis_tlast;
                            r_num_transfers_sent <= r_num_transfers_sent;
                            r_packet_to_send <= r_packet_to_send;
                            r_core_state <= r_core_state;
                        end
                    end
                end
                STATE_IDLE:
                begin
                    if (i_enable == 1'b1)
                    begin
                        r_core_state <= STATE_TRANSMIT_DATA;
                    end
                    else
                    begin
                        r_core_state <= STATE_IDLE;
                    end
                    r_test_axis_tvalid <= 1'b0;
                    r_test_axis_tdata <= 0;
                    r_test_axis_tlast <= 0;
                    r_num_transfers_sent <= 0;
                    r_packet_to_send <= i_packet_to_send;
                end
            endcase
        end
    end

endmodule