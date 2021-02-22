import cv2
import numpy as np
from PIL import Image
import os.path
import sys

import csv

f = [ i.strip() for i in open('coeffs.txt', 'r') ]
a = []

for line in f:
   line = line.split()
   a.append(float(line[0]))

a = np.array(a)

print a