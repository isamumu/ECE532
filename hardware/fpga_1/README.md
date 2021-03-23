# Overview - Compression Algorithm Interface
The compression algorithm has 2 interfaces: Entry and Exit, which looks like the following:
![interface_1_overview](https://github.com/isamumu/ECE532/blob/main/hardware/fpga_1/doc/interface_1_overview.png)
The Entry interface receives images from the Microblaze processor. The Exit interface sends run-length-encoded transfers to the TEMAC Adapter. Both interfaces use the AXI-Stream protocol.

## Entry Interface
The Entry interface receives images for compression. The interface expects 8 x 8 matrices of fixed-point pixel values, fed in 1 value at a time. For instance, let's say we want to send the following 8x8 matrix of pixel values to the compression algorithm via the Entry interface. Each entry in the matrix is a Value (eg. the 128 highlighted in green represents a single Value). An example Row in the matrix is highlighted in blue.

![interface_2_input_matrix](https://github.com/isamumu/ECE532/blob/main/hardware/fpga_1/doc/interface_2_input_matrix.png)

The image below represents how to send these Values into the compression algorithm:
![interface_3_sample_transfer](https://github.com/isamumu/ECE532/blob/main/hardware/fpga_1/doc/interface_3_sample_transfer.png)

- **Values are sent to the interface 1 at a time**
- The compression algorithm takes in 1 row of values, begins compression, then receives the next row.
- Therefore, **the matrix values should be sent in row-order (eg. 128, 256, 384 .... 7936, 8064, 8192)**.
- Alsoe, this means that **TREADY will be high for 8 transfers (eg. 128 - 1024), then will go low for 20-30 cycles, then go high for the next 8 transfers**.
- An AXI-Stream handshake is needed for each value. 
- Although the TDATA wire is 24 bits wide, **the compression algorithm will only receive the lowest 17 bits**. 
- **The spacing (0 value, Valid going low) between 128 and 256 is completely optional, when TREADY is high a new value can be sent every cycle**. 
- **TLAST is optional**, the algorithm tracks how many transfers it has received, and will know when it has received 64 transfers.

In summary, sending an entire 8x8 matrix will look like the following:
![interface_4_sample_matrix](https://github.com/isamumu/ECE532/blob/main/hardware/fpga_1/doc/interface_4_sample_matrix.png)
We can see the algorithm receiving 8 input pixels (TREADY = 1), then stopping (TREADY = 0).

## Exit Interface
The Exit interface sends run-length-encoded quantized DCT Coefficients to be sent over the network. For instance, if we send the matrix of image pixels mentioned above into the Compression algorithm, we expect the following output from the algorithm:  
freq x Value  
1 x 16  
1 x -14  
6 x 0  
1 x -1  
57 x 0  
The Exit interface sends the frequency and value of each DCT coefficient in a single 16-bit value:
![interface_5_output_data_format](https://github.com/isamumu/ECE532/blob/main/hardware/fpga_1/doc/interface_5_output_data_format.png)  
For instance, 1 x 16 will be transformed into 0b**000001***0000010000*.
![interface_7_output_transfer_zoomed](https://github.com/isamumu/ECE532/blob/main/hardware/fpga_1/doc/interface_7_output_transfer_zoomed.png)

When implemented, this will look like the following:
![interface_6_output_transfer_overview](https://github.com/isamumu/ECE532/blob/main/hardware/fpga_1/doc/interface_6_output_transfer_overview.png)
- **frequency-value pairs are sent from the interface 1 at a time**
- An AXI-Stream handshake is needed for each frequency-value pair.
- **The TDATA wire is 16 bits wide, and all 16 bits must be received**.
- When the TLAST signal is high, this means that the current AXI-Stream transfer is the last transfer for the current 8x8 matrix of pixels.
- There can be many cycles in between transfers.








