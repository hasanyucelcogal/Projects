__author__ = 'HASAN YUCEL COGAL, HUSEYIN ALTUG'
import cv2
import imutils
import numpy as np
import pytesseract
from datetime import datetime
# from PIL import Image
# import math

globals = 0
B = 0
G = 1
R = 2


def resim_ac(filex):
    fadres = 'resim/' + filex
    im = cv2.imread(fadres, cv2.IMREAD_COLOR)
    return im

def resim_skala(res, xpxl, ypxl):
    ekran_coz = [xpxl, ypxl]
    skala_genislik = ekran_coz[0]/res.shape[1]
    skala_yukseklik = ekran_coz[1]/res.shape[0]
    skalamax = max(skala_genislik, skala_yukseklik)
    skalamin = min(skala_genislik, skala_yukseklik)
    skala = skalamax
    pencere_gen = int(res.shape[1] * skala)
    pencere_yuk = int(res.shape[0] * skala)
    res = cv2.resize(res, (pencere_gen, pencere_yuk))

    hs = round(int(res.shape[1] - 640)/2)
    x1 = round(int(hs))
    x2 = round(int(x1+640))
    hs = round(int(res.shape[0] - 480) / 2)
    y1 = round(int(hs))
    y2 = round(int(y1+480))

    rescpy = res[y1:y2, x1:x2]
    # cv2.imshow('rescpy:', rescpy)

    return rescpy

def levelfilter(resim): #tek renkli işlem
    x_uzun = resim.shape[1]
    y_uzun = resim.shape[0]
    siyah = 50
    beyaz = 200
    gri_ortx = 0.0
    for xsay in range(0, x_uzun):
        gri_orty = 0.0
        for ysay in range(0, y_uzun):
            pxl = resim.item(ysay, xsay)
            gri_orty = gri_orty + pxl
#
        gri_orty = gri_orty / y_uzun
        gri_ortx = gri_ortx + gri_orty
    gri_ortx = gri_ortx / x_uzun
    gri_ortx = round(gri_ortx)
    esik = int(gri_ortx)
    gri_ort = esik
    for xsay in range(0, x_uzun):
        for ysay in range(0, y_uzun):
            pxl = resim.item(ysay, xsay)
            if pxl > esik:
                resim.itemset((ysay, xsay), beyaz)
            else:
                resim.itemset((ysay, xsay), siyah)

    print('seviye:', esik)
    return resim

def medianlevel(resim3, renks): #3 renkli işlem
    x_uzun = resim3.shape[1]
    y_uzun = resim3.shape[0]
    oranB = 0.0
    oranG = 0.0
    oranR = 0.0

    oranB = 127 / renks[B]
    oranG = 127 / renks[G]
    oranR = 127 / renks[R]


    # print("1:", int(round(oranB)))
    # print("2:", round(int(oranB)) )
    for xsay in range(0, x_uzun):
        for ysay in range(0, y_uzun):
            pxl = resim3.item(ysay, xsay, B) #mavi
            npx = int(round(pxl*oranB))
            if npx > 255: npx = 255
            if npx < 0: npx = 0
            resim3.itemset((ysay, xsay,B), npx)

            pxl = resim3.item(ysay, xsay, G) #yeşil
            npx = int(round(pxl*oranG))
            if npx > 255: npx = 255
            if npx < 0: npx = 0
            resim3.itemset((ysay, xsay, G), npx)

            pxl = resim3.item(ysay, xsay, R) #kırmızı
            npx = int(round(pxl*oranR))
            if npx > 255: npx = 255
            if npx < 0: npx = 0
            resim3.itemset((ysay, xsay, R), npx)

    return resim3

#tek renkli siyah-beyaz
def graylevel(resim):
    x_uzun = resim.shape[1]
    y_uzun = resim.shape[0]
    gri_ortx = 0.0
    for xsay in range(0, x_uzun):
        gri_orty = 0.0
        for ysay in range(0, y_uzun):
            pxl = resim.item(ysay, xsay)
            gri_orty = gri_orty + pxl
#
        gri_orty = gri_orty / y_uzun
        gri_ortx = gri_ortx + gri_orty
    gri_ortx = gri_ortx / x_uzun
    gri_ortx = round(gri_ortx)
    gri_ort = int(gri_ortx)
#    print('grilik:', gri_ort)
    return gri_ort

#renkli işlem
def level_BGR (resimBGR):
    x_uzun = resimBGR.shape[1]
    y_uzun = resimBGR.shape[0]
    BGR_ort = 0.0
    for xsay in range(0, x_uzun):
        for ysay in range(0, y_uzun):
            pxl = resimBGR.item(ysay, xsay,0)
            BGR_ort = BGR_ort + pxl
    BGR_ort = BGR_ort / xsay
    BGR_ort = BGR_ort / ysay
    Bort = int(round(BGR_ort))
    BGR_ort = 0.0
    for xsay in range(0, x_uzun):
        for ysay in range(0, y_uzun):
            pxl = resimBGR.item(ysay, xsay, 1)
            BGR_ort = BGR_ort + pxl
    BGR_ort = BGR_ort/xsay
    BGR_ort = BGR_ort/ysay
    Gort = int(round(BGR_ort))
    BGR_ort = 0.0
    for xsay in range(0, x_uzun):
        for ysay in range(0, y_uzun):
            pxl = resimBGR.item(ysay, xsay, 2)
            BGR_ort = BGR_ort + pxl
    BGR_ort = BGR_ort / xsay
    BGR_ort = BGR_ort / ysay
    Rort = int(round(BGR_ort))
    # print('Mavi   :', Bort)
    # print('Yeşil  :', Gort)
    # print('Kırmızı:', Rort)
    renkler = [Bort, Gort, Rort]
    return renkler

def plakaTR (strplk):
    plktr=''
    chrx = chr(65)
    if len(strplk) > 0:
        for i in range(0, len(strplk)):
            chrx = strplk[i]
            Ordinali = ord(chrx)
            karaktermi = 0
            if Ordinali > 47 and Ordinali < 58: karaktermi = 1
            if Ordinali > 64 and Ordinali < 91: karaktermi = 1
            if karaktermi == 1: plktr = plktr + chrx
    else:
        plktr = ''
#   ifend
#
    if len(plktr) > 4:
        x = 0
        mod = 0
        plaka = ''
        while 1:
            if mod == 3:
                chrx = plktr[x]
                Ordinal = ord(plktr[x])
                if Ordinal > 47 and Ordinal < 58:
                    plaka = plaka + chr(Ordinal)
                else:
                    break

            if mod==2:
                chrx = plktr[x]
                Ordinal = ord(plktr[x])
                if Ordinal > 64 and Ordinal < 91: plaka = plaka + chr(Ordinal)
                if Ordinal > 47 and Ordinal < 58:
                    plaka = plaka + chr(32)
                    x = x - 1
                    mod = 3
            if mod == 1:
                Ordinal = ord(plktr[x])
                if Ordinal > 47 and Ordinal < 58 : plaka = plaka + chr(Ordinal)
                if Ordinal > 64 and Ordinal < 91:
                    plaka = plaka + chr(32)
                    x=x-1
                    mod = 2
            if mod == 0:
                Ordinal = ord(plktr[x])
                if Ordinal > 64 and Ordinal < 91:
                    plktr = plktr[0:]
                if Ordinal > 47 and Ordinal < 58:
                    x = x-1
                    mod = 1
            x = x+1
            if x >= len(plktr): break
#       wend
        if len(plaka) < 5:
            plaka = ''
        else:
            oi = ord(plaka[0])
            if oi > 47 and oi < 58:
                oi = ord(plaka[1])
                if oi > 47 and oi < 58:
                    oi = ord(plaka[2])
                    if oi > 47 and oi < 58: plaka = ''
#   ifend
    else:
        plaka = ''
#    print("plaka:", plaka)
    return plaka

def imgprocess(imp, gSS=None, gSC=None, gDT=None, eTH1=None, eTH2=None):
    gray = cv2.cvtColor(imp, cv2.COLOR_BGR2GRAY)  # convert to grey scale 16-17,  15-19,  10-100
    gray = cv2.bilateralFilter(gray, gSS, gSC, gDT)  # Blur to reduce noise
    edged = cv2.Canny(gray, 30, 200)  # Perform Edge detection

    # find contours in the edged image, keep only the largest: ones, and initialize our screen contour
    cnts = cv2.findContours(edged.copy(), cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    cnts = imutils.grab_contours(cnts)
    cnts = sorted(cnts, key=cv2.contourArea, reverse=True)[:10]
    screenCnt = None

#    loop over our contours
    for c in cnts:
        # approximate the contour
        peri = cv2.arcLength(c, True)
        # approx = cv2.approxPolyDP(c, 0.018 * peri, True)
        approx = cv2.approxPolyDP(c, 0.045 * peri, True)

        # if our approximated contour has four points, then
        # we can assume that we have found our screen
        if len(approx) == 4:
            screenCnt = approx
            break

    if screenCnt is None:
        detected = 0
        # print("No contour detected")
    else:
        detected = 1

    if detected == 1:
        cv2.drawContours(imp, [screenCnt], -1, (0, 255, 0), 3)

        # Masking the part other than the number plate
        mask = np.zeros(gray.shape, np.uint8)
        new_image = cv2.drawContours(mask, [screenCnt], 0, 255, -1)
        new_image = cv2.bitwise_and(img, img, 1, mask=mask)
        # Now crop
        (x, y) = np.where(mask == 255)
        (topx, topy) = (np.min(x), np.min(y))
        (bottomx, bottomy) = (np.max(x), np.max(y))

        # Cropped = gray[topx:bottomx + 3, topy:bottomy + 3]
        Cropped = gray[topx:bottomx + 10, topy:bottomy + 10]
        # print('crop.shape: ', Cropped.shape)
    else:
        Cropped = None
#        Cropped = gray

#    Cropped = resim_skala(Cropped, 600, 120)
    return Cropped


#start
time1 = datetime.now().timestamp()
# garip: 7,30,35,36,46
#okunabilir: 8,9,10,11,12,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,35,39,41,42,44,47,48,
resim = '21.jpg'     #okunamaz!!!: 1,3,4,5,6,13,28,34,37,38,40,43,45
img = resim_ac(resim)
# print('img.shape: ', img.shape)
# #
cv2.imshow('orginal', img)
cv2.moveWindow('orginal', 1200, 1)

img = resim_skala(img, 640, 480)
img = cv2.resize(img, (320, 240))
cv2.imshow('resize', img)
cv2.moveWindow('resize', 1200, 380)
#
# level_BGR(img)
#
renk = level_BGR(img)
print("rgb1:", renk[B], " ", renk[G], " ", renk[R])

# #img = medianlevel(img, renk)
# renk = level_BGR(img)
# print("rgb2:", renk[B], " ", renk[G], " ", renk[R])
# cv2.imshow('median', img)
# cv2.moveWindow('median', 800, 1)

# # parametreler: 16-17,  15-19,  10-99, 10-99, 10-99
#lst = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 23, 31]
lst = [0, 1, 2]

for rgb in lst:
    imq = img
    if rgb == 1: imq[:, :, 0] = 0   # MAVİ
    if rgb == 2: imq[:, :, 1] = 0   # YEŞİL
    if rgb == 3: imq[:, :, 2] = 0   # KIRMIZI
    if rgb == 12:
        imq[:, :, 0] = renk[0]      # MAVİ
        imq[:, :, 1] = renk[1]      # YEŞİL
    if rgb == 23:
        imq[:, :, 1] = renk[1]      # MAVİ
        imq[:, :, 2] = renk[2]      # YEŞİL
    if rgb == 31:
        imq[:, :, 2] = renk[2]      # MAVİ
        imq[:, :, 0] = renk[0]      # YEŞİL
    if rgb == 4: imq[:, :, 0] = renk[0]  # MAVİ
    if rgb == 5: imq[:, :, 1] = renk[0]  # MAVİ
    if rgb == 6: imq[:, :, 2] = renk[0]  # MAVİ
    if rgb == 7: imq[:, :, 0] = 255       # MAVİ
    if rgb == 8: imq[:, :, 1] = 255       # MAVİ
    if rgb == 9: imq[:, :, 2] = 255       # MAVİ

    for p1 in range(4, 8, 1):
        for p2 in range(8, 9, 1):
            for p3 in range(9, 10, 1):
                nimg = imgprocess(imq, p1, p2, p3, 25, 100)
                globals = globals + 1
                # print(globals)
                if nimg is not None:
                    gri_L = graylevel(nimg)
                    if gri_L > 20 and gri_L < 254:
                        gri_H = gri_L + 2
                        gri_L = gri_L - 20
                    nimg = cv2.threshold(nimg, gri_L, gri_H, cv2.THRESH_BINARY, cv2.THRESH_OTSU)[1]
                    text = pytesseract.image_to_string(nimg, config='ascii')
                    assert isinstance(text, object)
                    hamx = str(text)
                    if len(hamx) > 3:
#                        print("HNo:", hamx[:len(hamx) - 2])
#                         print("HNo:", hamx)
                        strx = plakaTR(hamx)  # karakterleri filtrele
                        if len(strx)>3:
                            # print(rgb, "-", p1, "-", p2, "-", p3, "HNo:", hamx)
                            # print(rgb, "-", p1, "-", p2, "-", p3, "PNo:", strx)
                            print("PNo:", strx)

# ##Tek işlem
# img[:, :, 0] = 149
# # img[:, :, 1] = 123
# nimg = imgprocess(img, 11, 17, 17)
# if nimg is not None:
#     gri_L = graylevel(nimg)
#     if gri_L > 10 and gri_L < 244:
#         gri_H = gri_L + 1
#         gri_L = gri_L - 1
#
#     cv2.imshow('nimg', nimg)
#     cv2.moveWindow('nimg', 1200, 900)
#     Cropped = cv2.threshold(nimg, gri_L, gri_H, cv2.THRESH_BINARY, cv2.THRESH_OTSU)[1]
#
#     cv2.imshow('Cropped', Cropped)
#     cv2.moveWindow('Cropped', 1500, 900)
#
#     text = pytesseract.image_to_string(Cropped, config='ascii')
#     # text = pytesseract.image_to_string(nimg, config='ascii', nice=0, timeout=1000)
#     strx = str(text)
#     print("PlkNoHam:", strx)
#     # strx = plakaTR( '[* 34 .KRL  0,4604 ]')
#     strx = plakaTR(strx)  # karakterleri filtrele
#     print("PlakaNo:", strx)
#     #plaka kuralı
#
#
##

time2 = datetime.now().timestamp()
timefark = time2 - time1
print('Süre:', timefark, "sn ", globals, " işlem yapıldı" )

cv2.waitKey(0)
cv2.destroyAllWindows()