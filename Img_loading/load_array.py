import cv2
import numpy as np
import os.path
import sys

d = '../proof_of_concept/coeffs.txt'

array2D = []

for filename in os.listdir(d):
    if not filename.endswith('.pts'):
        continue

    with open(filename, 'r') as f:
        for line in f.readlines():
            array2D.append(line.split(' '))

print(array2D)