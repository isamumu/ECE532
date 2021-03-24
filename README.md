# ECE532
Here is what this directory contains:<br />
--> FIFOStream.xpr contains the vivado project that has the full pipeline with the microblaze. <br />
----> The source file called FIFOStream contains a C file called helloworld.c which contains code to transfer data from microblaze to core via AXIS FIFO<br />

--> tea.xpr contains the vivado project that has the microblaze with UART implemented on the SDK <br />
----> The source file called vanilla contains the helloworld.c program which uses UART to read from the serial port <br />
----> I included a sample python script called serial.py which contains code that repeatedly writes to the serial port and stops when the microblaze reads it <br />
----> NOTE: before running the python, make sure to move the folder Serial (included in this repo) to your C drive. Otherwise it won't run <br />
----> right now, this does not read images <br />

Here is what is left: <br />
--> Figure out a good way to input a stream of 1-digit and 2-digit numbers. Based on how the serial communcation is set up, it seems like it reads a digit at a time <br />
--> Figure out how we are going to transfer the matrix data from C to python so that OpenCV can produce an image <br />
