import cv2
import numpy
import os
import sys
import colorsys
import requests

good = False

os.chdir('./Picture')
for f in os.listdir("."):
    if f.endswith(".JPG"):
        src_img = cv2.imread(f)
        img = cv2.resize(src_img, (1280,720))
        avg_col_row = numpy.average(img, axis=0)
        avg_col = numpy.average(avg_col_row, axis=0)
        (r, g, b) = (avg_col[0] / 255, avg_col[1] / 255, avg_col[2]/ 255)
        (h, s, v) = colorsys.rgb_to_hsv(r, g, b)
        (h, s, v) = (int(h * 179), int(s * 255), int(v * 255))
        if(h < 59):
            good = True
        elif(h > 86):
            good = False
        elif(s < 50):
            good = False
        elif(s > 123):
            good = True
        elif(v < 106):
            good = False
        elif(v > 167):
            good = True
        else:
            baddiff = abs((h + s + v) - 291)
            gooddiff = abs((h + s + v) - 350)
            if(baddiff > gooddiff):
                good = True
            else:
                good = False

response = requests.get("https://api.ipgeolocation.io/timezone?apiKey=73ccbbd73db442feb18aa714a4cdc43b&lat=36.8509&long=174.7645")
print(response.json())

print(good)

cv2.waitKey(0)
cv2.destroyAllWindows()