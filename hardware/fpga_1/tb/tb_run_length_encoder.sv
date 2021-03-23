`timescale 1ns / 1ps
module tb_run_length_encoder();
    /*
        Test matrices:
        1  | 2  | 2  | 3  | 3  | 3  | 4  | 4
        4  | 4  | 5  | 5  | 5  | 5  | 5  | 6
        6  | 6  | 6  | 6  | 6  | 7  | 7  | 7 
        7  | 7  | 7  | 7  | 8  | 8  | 8  | 8 
        8  | 8  | 8  | 8  | 9  | 9  | 9  | 9 
        9  | 9  | 9  | 9  | 9  | 10 | 10 | 10
        10 | 10 | 10 | 10 | 10 | 10 | 10 | 11
        11 | 11 | 11 | 11 | 11 | 11 | 1  | 11
        Expected output:
        1 x 1   (0000010000000001)
        2 x 2   (0000100000000010)
        3 x 3   (0000110000000011)
        4 x 4   (0001000000000100)
        5 x 5   (0001010000000101)
        6 x 6   (0001100000000110)
        7 x 7   (0001110000000111)
        8 x 8   (0010000000001000)
        9 x 9   (0010010000001001)
        10 x 10 (0010100000001010)
        7 x 11  (0001110000001011)
        1 x 1   (0000010000000001)
        1 x 11  (0000010000001011)

    */
    // Declarations
    parameter VALUE_WIDTH = 10;
    parameter COUNTER_WIDTH = 6;
    parameter TRANSFER_WIDTH = VALUE_WIDTH + COUNTER_WIDTH;
    parameter INPUT_AXIS_DATA_WIDTH = 8*((VALUE_WIDTH - 1)/8 + 1);
    parameter OUTPUT_AXIS_DATA_WIDTH = 8*((TRANSFER_WIDTH - 1)/8 + 1);
    reg aclk;
    reg aresetn;
    reg r_test_enable;
    reg [31:0] r_num_data_received;
    reg signed [VALUE_WIDTH-1:0] r_test_data;
    // Registers - Input AXI-Stream
    reg r_i_axis_tvalid;
    reg signed [INPUT_AXIS_DATA_WIDTH-1:0] r_i_axis_tdata;
    reg [COUNTER_WIDTH-1:0] r_counter;
    reg [31:0] r_num_data_sent;
    reg r_i_axis_tlast;
    // Wires - Input AXI-Stream
    wire w_o_axis_tready;
    // Registers - Output AXI-Stream
    reg r_i_axis_tready;
    // Wires - Output AXI-Stream
    wire w_o_axis_tvalid;
    wire signed [OUTPUT_AXIS_DATA_WIDTH-1:0] w_o_axis_tdata;
    wire w_o_axis_tlast;

    run_length_encoder #(.VALUE_WIDTH(VALUE_WIDTH), .COUNTER_WIDTH(COUNTER_WIDTH)) DUT 
    (
        .i_clk(aclk),
        .i_aresetn(aresetn),
        //Input AXI-Stream
        .i_axis_TVALID(r_i_axis_tvalid),
        .o_axis_TREADY(w_o_axis_tready),
        .i_axis_TDATA(r_i_axis_tdata),
        .i_axis_TLAST(r_i_axis_tlast),
        // Output AXI-Stream
        .o_axis_TVALID(w_o_axis_tvalid),
        .i_axis_TREADY(r_i_axis_tready),
        .o_axis_TDATA(w_o_axis_tdata),
        .o_axis_TLAST(w_o_axis_tlast)
    );

    // clock generator (100MHz)
	initial
	begin
		aclk = 0;
		forever
		  #5 aclk = ~aclk;
	end

    // start the testbench by resetting the system for 5 cycles
	initial
	begin
		aresetn = 0;
        r_test_enable = 0;
        r_num_data_sent = 0;
        r_num_data_received = 1;
        r_test_data = 1;
        r_counter = 0;
        // r_test_data = -1;
        r_i_axis_tvalid = 0;
        r_i_axis_tdata = 0;
        r_i_axis_tlast = 0;
        r_i_axis_tready = 1; // Always Ready
		repeat(5) @(posedge aclk);
		forever
			@(posedge aclk) aresetn = 1;
	end

    initial begin
        #50 r_test_enable = 1;
    end

    // Test Case: Feed in 8x8 matrix where a[i,j] = 8*i + j + 1 (1 - 64)
    always @ (posedge aclk)
    begin
        if (r_test_enable == 1'b1)
        begin
            if (r_test_data == 1 || w_o_axis_tready == 1'b1)
            begin
                if (r_num_data_sent == 62)
                begin
                    r_i_axis_tdata <= 1;
                    r_test_data <= r_test_data;
                    r_counter <= 1;
                end
                else if (r_counter == r_test_data)
                begin
                    r_i_axis_tdata <= r_test_data + 1;
                    r_test_data <= r_test_data + 1;
                    r_counter <= 1;
                end
                else
                begin
                    r_i_axis_tdata <= r_test_data;
                    r_test_data <= r_test_data;
                    r_counter <= r_counter + 1;
                end
                r_i_axis_tvalid <= 1;
                r_num_data_sent <= r_num_data_sent + 1;
            end
            if (w_o_axis_tvalid == 1'b1)
            begin
                r_num_data_received <= r_num_data_received + 1;
                $display("Output %d: %b", r_num_data_received, w_o_axis_tdata);
                // if (w_o_axis_tlast)
                // begin
                //     $finish;
                // end
            end
                
        end
    end
//     Test: Negative Numbers
    //  always @ (posedge aclk)
    //  begin
    //      if (r_test_enable == 1'b1)
    //      begin
    //          if (r_test_data == -1 || w_o_axis_tready == 1'b1)
    //          begin
    //              r_i_axis_tdata <= r_test_data;
    //              if (r_test_data == -65)
    //              begin
    //                  r_i_axis_tvalid <= 0;
    //              end
    //              else
    //              begin
    //                  if (r_test_data == -64)
    //                  begin
    //                      r_i_axis_tlast <= 1'b1;
    //                  end
    //                  r_i_axis_tvalid <= 1;
    //                  r_test_data <= r_test_data - 1;
    //              end
    //          end
    //          if (w_o_axis_tvalid == 1'b1)
    //          begin
    //              r_num_data_received <= r_num_data_received + 1;
    //              $display("Output %d: %f", r_num_data_received, w_o_axis_tdata);
    //              if (w_o_axis_tlast)
    //              begin
    //                  $finish;
    //              end
    //          end
            
    //      end
    //  end
endmodule
