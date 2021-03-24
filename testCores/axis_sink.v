`timescale 1ns / 1ps

//A simple sink slave for AXI Stream

module axis_sink(
	input wire clk, //Dummy clock input to make annoying warning go away

	input wire [31:0] sink_TDATA,
	input wire sink_TVALID,
	output wire sink_TREADY,
	input wire [3:0] sink_TKEEP,
	input wire sink_TLAST
);

	assign sink_TREADY = 1;

endmodule
