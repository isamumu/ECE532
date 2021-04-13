import cv2
import numpy as np
import os.path
import sys
import os

from pylab import *

np.set_printoptions(threshold=sys.maxsize)

def split(array, nrows, ncols):
    """Split a matrix into sub-matrices."""

    r, h = array.shape
    return (array.reshape(h//nrows, nrows, -1, ncols)
                 .swapaxes(1, 2)
                 .reshape(-1, nrows, ncols))


path = input("which image do you want to compress: ")

image = cv2.imread(path, 0)

        
print(image)
split = split(image, 8,8)

# print(split)
lists = []

for i in split:
    arr = []
    # print("===========================")
    for j in i:
        arr.extend(j)
        # print(arr)
    arr.extend([8])
    lists.append(arr)

count = 1
for i in lists:
    print("===========================")
    print(i)


imshow(image)
show()

# arr = split(image,8,8)
# print(arr)

a_file = open("test.txt", "w")
for row in image:
    np.savetxt(a_file, row)

a_file.close()





# arr = np.asarray(image)
# arr = np.split(arr, 10)
# arr = np.array([np.split(x, 16, 1) for x in arr])
# print(arr[1][1])
