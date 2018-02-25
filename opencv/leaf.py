import numpy as np
import cv2

imgorg = cv2.imread("leaf.jpg")
imgray = cv2.cvtColor(imgorg, cv2.COLOR_BGR2GRAY)
imgray = cv2.bilateralFilter(imgray, 11, 17, 17)
edged  = cv2.Canny(imgray, 100, 100)

(_, cnts, _) = cv2.findContours(imgray, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
# (_, cnts, _) = cv2.findContours(edged.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
# cnts = sorted(cnts, key=cv2.contourArea, reverse = True)[:10]


print "# of contours: %d" % len(cnts)

largestArea = 0
largestIndex = -1
for indx, c in enumerate(cnts):
    area = cv2.contourArea(c)
    if (area > largestArea):
        largestArea = area
        largestIndex = indx

print "largest area: %d" % largestArea

cv2.drawContours(imgray, [cnts[0]], -1, (0, 255, 0), 3)

cv2.imshow("Image", imgray)
cv2.waitKey(0)

