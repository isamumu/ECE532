import serial
import time 
import cv2
import numpy as np
import os.path
import sys
import os
# install matplotlib and serial
from pylab import *

def split(array, nrows, ncols):
    """Split a matrix into sub-matrices."""

    r, h = array.shape
    return (array.reshape(h//nrows, nrows, -1, ncols)
                 .swapaxes(1, 2)
                 .reshape(-1, nrows, ncols))

path = input("which image do you want to compress: ")

image = cv2.imread(path, 0)

split = split(image, 8,8)
lists = []

count = 1
for i in split:
    arr = []
    for j in i:
        arr.extend(j)
    arr.extend([count])
    lists.append(arr)
    count += 1

imshow(image)
show()

serialPort = serial.Serial(port = "COM6", baudrate=9600,
                           bytesize=8, timeout=2, stopbits=serial.STOPBITS_ONE)
# Read data out of the buffer until a carraige return / new line is found

#serialPort.write(b'123456')
# Print the contents of the serial data

buff_size = 1000
x = 0
delay = 0
while(1): 

    # =================================================
    pad_limit = 0   
    n = 0
    
    for i in lists[x]:
        # print("second")
        if (i >= 10) and (i < 100):
            n += 3
        elif (i >= 100) and (i < 1000):
            n += 4
        else: 
            n += 2
        serialPort.write(str(i).encode())
        serialPort.write('\n'.encode())
        if(serialPort.in_waiting > 0):
            serialString = serialPort.readline()
            print("read" + serialString.decode('Ascii'))
        
        # print(str(i) + "for" + "n = " + str(n))
        
    serialPort.write('\r'.encode())
    
    if(serialPort.in_waiting > 0):
        serialString = serialPort.readline()
        print("read" + serialString.decode('Ascii'))
    
    while(1):
        if pad_limit == (buff_size - n):
            print("break")
            break 
        pad_limit += 1
       
        serialPort.write(str('0').encode())
        if(serialPort.in_waiting > 0):
            serialString = serialPort.readline()
            print("read" + serialString.decode('Ascii'))
    
    if x == 575:
        x = 0
    
    if delay == 2:
        delay == 0
        x += 1
    else: 
        delay += 1
    
    time.sleep(5)
    
    
        
   
    
    # ===================================================
    
    # serialPort.write(str('3').encode())
    
    #if(serialPort.in_waiting > 0):
    #    serialString = serialPort.readline()
     #   print("read" + serialString.decode('Ascii'))
