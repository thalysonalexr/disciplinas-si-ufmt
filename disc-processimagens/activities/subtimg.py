# Subtração de imagens

import skimage.io
import numpy as np


RM1 = skimage.io.imread('RM_1.jpg', as_grey=True)
RM2 = skimage.io.imread('RM_2.jpg', as_grey=True)


def subtImg(img1, img2):
    length = img1.shape
    newImg = np.ndarray(shape=length, dtype=img1.dtype)
    for i in range(length[0]):
        for j in range(length[1]):
            newImg[i,j] = img1[i, j] - img2[i, j]
    return newImg


skimage.io.imshow(subtImg(RM1, RM2))
skimage.io.show()
