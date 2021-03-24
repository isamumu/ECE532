import serial

serialPort = serial.Serial(port = "COM6", baudrate=9600,
                           bytesize=8, timeout=2, stopbits=serial.STOPBITS_ONE)
# Read data out of the buffer until a carraige return / new line is found

serialPort.write(b'12543')
# Print the contents of the serial data
while(1):
    serialPort.write(b'12543')
    if(serialPort.in_waiting > 0):
        serialString = serialPort.readline()
        print(serialString.decode('Ascii'))
        serialPort.write(b"thanks for the data\n")
