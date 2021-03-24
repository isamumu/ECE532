`timescale 1ns / 1ps
module fpga1_deployment_receiving_block
    #(
        parameter AXIS_DATA_WIDTH = 56, // Width of the AXI-Stream data bus in bits
        parameter NUM_TRANSFERS = 16,
        parameter NUM_BITS_PER_TRANSFER = 49 // Number of bits transfered each time
    )
    (
        input i_clk,
        input i_aresetn,
        input [(NUM_TRANSFERS*NUM_BITS_PER_TRANSFER)-1:0] i_expected_packet,
        // Input AXI-Stream
        input i_test_axis_TVALID,
        output o_test_axis_TREADY,
        input [AXIS_DATA_WIDTH-1:0] i_test_axis_TDATA,
        // Output Result
        output o_result_TVALID,
        output [7:0] o_result_PASS
    );

    // Declarations
    localparam PACKET_SIZE = NUM_TRANSFERS * NUM_BITS_PER_TRANSFER;
    localparam STATE_INPUT_COLLECTION = 2'd0;
    localparam STATE_RESULT_COMPUTATION = 2'd1;
    localparam RESULT_FAIL = 1'd0;
    localparam RESULT_PASS = 1'd1;
    reg r_core_state;
    // Registers - Input Collection
    reg r_test_axis_tready;
    reg [PACKET_SIZE-1:0] r_received_packet;
    reg [31:0] r_num_transfers_received;
    // Wires - Input Collection
    wire [PACKET_SIZE-1:0] w_test_axis_tdata_shifted;
    // Registers - Result Computation
    reg r_result_tvalid;
    reg [7:0] r_result_pass;

    // Assignments
    assign w_test_axis_tdata_shifted = (i_test_axis_TDATA[NUM_BITS_PER_TRANSFER-1:0]) << (NUM_BITS_PER_TRANSFER * (NUM_TRANSFERS - 1));
    assign o_test_axis_TREADY = r_test_axis_tready;
    assign o_result_TVALID = r_result_tvalid;
    assign o_result_PASS = r_result_pass;

    always @(posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            r_core_state <= STATE_INPUT_COLLECTION;
            // Input Collection
            r_test_axis_tready <= 1'b0;
            r_received_packet <= 0;
            r_num_transfers_received <= 0;
            // Result Computation
            r_result_tvalid <= 1'b0;
            r_result_pass <= RESULT_FAIL;
        end
        else
        begin
            case (r_core_state)
                STATE_INPUT_COLLECTION:
                begin
                    if (i_test_axis_TVALID == 1'b1)
                    begin
                        if (r_test_axis_tready == 1'b1)
                        begin
                            r_test_axis_tready <= 1'b0;
                            r_received_packet <= (r_received_packet >> NUM_BITS_PER_TRANSFER) | w_test_axis_tdata_shifted;
                            r_num_transfers_received <= (r_num_transfers_received + 1);
                            if (r_num_transfers_received == (NUM_TRANSFERS - 1))
                            begin
                                r_core_state <= STATE_RESULT_COMPUTATION;
                            end
                            else
                            begin
                                r_core_state <= STATE_INPUT_COLLECTION;
                            end
                        end
                        else
                        begin
                            r_test_axis_tready <= 1'b1;
                            r_received_packet <= r_received_packet;
                            r_num_transfers_received <= r_num_transfers_received;
                            r_core_state <= STATE_INPUT_COLLECTION;
                        end
                    end
                    else
                    begin
                        r_test_axis_tready <= 1'b0;
                        r_received_packet <= r_received_packet;
                        r_num_transfers_received <= r_num_transfers_received;
                        r_core_state <= STATE_INPUT_COLLECTION;
                    end
                end
                STATE_RESULT_COMPUTATION:
                begin
                    if (r_result_tvalid == 1'b0)
                    begin
                        if (r_received_packet == i_expected_packet)
                        begin
                            r_result_pass <= RESULT_PASS;
                        end
                        else
                        begin
                            r_result_pass <= RESULT_FAIL;
                        end
                        r_result_tvalid <= 1'b1;
                        r_core_state <= STATE_RESULT_COMPUTATION;
                    end
                    else
                    begin
                        r_result_tvalid <= 1'b0;
                        r_result_pass <= RESULT_FAIL;
                        r_core_state <= STATE_INPUT_COLLECTION;
                    end
                    r_received_packet <= 0;
                    r_num_transfers_received <= 0;
                end
            endcase
        end
    end
endmodule