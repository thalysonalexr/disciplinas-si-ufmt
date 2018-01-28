# Fórmula de referência: http://docs.opencv.org/3.2.0/de/d25/imgproc_color_conversions.html
# Autor: Thalyson A. R. de Sousa

import numpy as np
from skimage import data, color, io


IMG_ORI = data.astronaut()


def rgbToHsv(r, g, b):
    r, g, b = r/255.0, g/255.0, b/255.0
    h = 0

    Cmax = max(r, g, b)
    Cmin = min(r, g, b)
    var = Cmax - Cmin

    v = Cmax
    s = (Cmax - Cmin) / Cmax if v != 0 else 0

    if Cmax == r and g < b:
        h = 60 * ((g - b) / var)
    elif Cmax == g:
        h = 120 + 60 * ((b - r) / var)
    elif Cmax == b:
        h = 240 + 60 * ((r - g) / var)

    if h < 0:
        h = h + 360

    return h, s, v


def convertMyImage(img):
    length = img.shape
    newImg = np.ndarray(shape=length, dtype=np.float64)
    for i in range(length[0]):
        for j in range(length[1]):
            newImg[i, j] = list(rgbToHsv(img[i, j][0], img[i, j][1], img[i, j][2]))
    return newImg

            
IMG_NEW = convertMyImage(IMG_ORI)


io.imshow(IMG_NEW)
io.show()

io.imshow(color.rgb2hsv(IMG_ORI))
io.show()
