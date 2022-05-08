import sys
import serial.tools.list_ports
import time
import datetime
import warnings
from PyQt5 import QtCore
from PyQt5.QtWidgets import QApplication, QMainWindow
from gui import QtGui
from gui import Ui_MainWindow
from PyQt5.QtCore import QDateTime
# ******************************************************************************************************************** #
global event
event=0
ports = [
    p.device
    for p in serial.tools.list_ports.comports()
    if '' in p.description
]
print(ports)
# if not ports:
#     raise IOError("No Device!")
if len(ports) > 1:
    warnings.warn('Connected')
if len(ports) > 0:
    ser = serial.Serial(ports[0], baudrate=9600)

class firstThread(QtCore.QThread):
    # total = QtCore.pyqtSignal()
    update = QtCore.pyqtSignal(str)

    def __init__(self, parent):
        super(firstThread, self).__init__(parent)
        self.working = True

    def run(self):
        while self.working:
            try:
                line = ser.read().decode("ascii")
                self.update.emit(line)
            except:
                print("miss")
                pass
        self.finished.emit(line)

class MainWindow(QMainWindow, Ui_MainWindow):

    def __init__(self, parent=None):
        super(MainWindow, self).__init__(parent)
        QMainWindow.__init__(self)
        self.setupUi(self)
        self.SerialThread = firstThread(self)
        self.SerialThread.update.connect(self.update)

        self.ac_kapat_buton.setEnabled(True)
        self.giris_ac_buton.setEnabled(False)
        self.giris_kapat_buton.setEnabled(False)
        self.cikis_ac_buton.setEnabled(False)
        self.cikis_kapat_buton.setEnabled(False)
        self.ucretli_buton.setChecked(False)
        self.ucretli_buton.setChecked(False)
        self.ucretsiz_buton.setEnabled(True)
        self.ucretli_buton.setEnabled(True)
        # self.ucret_lineEdit.setEnabled(False)
        self.plaka_ekle_lineEdit.setEnabled(False)
        self.guncelle_buton.setEnabled(False)
        self.plaka_ekle_buton.setEnabled(False)
        self.ucretli_buton.setEnabled(False)
        self.ucretsiz_buton.setEnabled(False)
        self.ac_kapat_buton.clicked.connect(self.sistem_ac)
        self.arayuz_yukle()

        self.lcdNumber.setDigitCount(3)
        self.plaka_textEdit.textChanged.connect(self.updateLCD)


    def update(self, i):

        if ord(i) == 40:
            self.giris_ac()
            i=" "

        if ord(i) == 41:
            self.giris_kapat()
            i=" "

        if ord(i) == 58:
            self.cikis_ac()
            i=" "

        if ord(i) == 59:
            self.cikis_kapat()
            i=" "


        else:
            self.plaka_textEdit.moveCursor(QtGui.QTextCursor.End)
            self.plaka_textEdit.insertPlainText("{}".format(i))
            self.plaka_textEdit.moveCursor(QtGui.QTextCursor.End)
            datetime = QDateTime.currentDateTime()
            self.statusbar.showMessage("Son Araç Çıkışı: "+datetime.toString())


    def sistem_ac(self):
        self.ucretli_buton.setEnabled(True)
        self.ucretsiz_buton.setEnabled(True)
        self.ucretli_buton.clicked.connect(self.ucretli_ac)
        self.ucretsiz_buton.clicked.connect(self.ucretsiz_ac)
        self.arayuz_kaydet()

    def ucretsiz_ac(self):

        self.SerialThread.working = True
        self.SerialThread.start()
        self.statusbar.showMessage(" " * 1 + " Sistem Açıldı !", 2000)
        self.ucretli_buton.setEnabled(False)
        self.giris_ac_buton.setEnabled(True)
        self.cikis_ac_buton.setEnabled(True)
        self.plaka_ekle_lineEdit.setEnabled(True)
        self.plaka_ekle_buton.setEnabled(True)
        self.ac_kapat_buton.clicked.connect(self.sistem_kapat)
        self.giris_ac_buton.clicked.connect(self.giris_ac)
        self.giris_kapat_buton.clicked.connect(self.giris_kapat)
        self.cikis_kapat_buton.clicked.connect(self.cikis_kapat)
        self.cikis_kapat_buton.clicked.connect(self.cikis_kapat)

    def ucretli_ac(self):
        self.SerialThread.working = True
        self.SerialThread.start()

        self.statusbar.showMessage(" " * 1 + " Sistem Açıldı !", 2000)
        self.ucretsiz_buton.setEnabled(False)
        self.giris_ac_buton.setEnabled(True)
        self.cikis_ac_buton.setEnabled(True)
        self.ucret_lineEdit.setEnabled(True)
        self.plaka_ekle_lineEdit.setEnabled(True)
        self.guncelle_buton.setEnabled(True)
        self.plaka_ekle_buton.setEnabled(True)
        self.ac_kapat_buton.clicked.connect(self.sistem_kapat)
        self.guncelle_buton.clicked.connect(self.arayuz_kaydet)
        self.ucret_guncelle()
        self.giris_ac_buton.clicked.connect(self.giris_ac)
        self.giris_kapat_buton.clicked.connect(self.giris_kapat)
        self.cikis_kapat_buton.clicked.connect(self.cikis_kapat)
        self.cikis_kapat_buton.clicked.connect(self.cikis_kapat)

    def sistem_kapat(self):
        self.SerialThread.working = False
        self.SerialThread.terminate()
        self.statusbar.showMessage(" " * 1 + " Sistem Kapatıldı !", 2000)
        self.ucretli_buton.setEnabled(False)
        self.ucretsiz_buton.setEnabled(False)
        self.ac_kapat_buton.setEnabled(True)
        self.giris_ac_buton.setEnabled(False)
        self.giris_kapat_buton.setEnabled(False)
        self.cikis_ac_buton.setEnabled(False)
        self.cikis_kapat_buton.setEnabled(False)
        self.ucret_lineEdit.setEnabled(False)
        self.plaka_ekle_lineEdit.setEnabled(False)
        self.guncelle_buton.setEnabled(False)
        self.plaka_ekle_buton.setEnabled(False)

        self.ac_kapat_buton.clicked.connect(self.sistem_ac)

    def arayuz_kaydet(self):
        save_file=open("ayarlar.txt","w+")
        ucret=self.ucret_lineEdit.text()
        save_file.writelines(ucret+"\n")
        save_file.close()

    def arayuz_yukle(self):
        save_file=open("ayarlar.txt","r+")
        save_file.seek(0)
        ayarlar=save_file.readline()
        self.ucret_lineEdit.setText(ayarlar)
        save_file.close()

    def ucret_guncelle(self):

         save_file = open("ayarlar.txt", "r+")
         save_file.seek(0)
         saatlik_ucret = save_file.readline()
         save_file.close()

    def updateLCD(self):
        self.lcdNumber.display(self.lcdNumber.intValue()+1)

    def giris_ac(self):
        print("giris acildi")
        self.giris_ac_buton.setEnabled(False)
        self.giris_kapat_buton.setEnabled(True)
        # RASPBERRY PINLERINE YETKİ VER

    def giris_kapat(self):
        print("giris kapatildi")
        self.giris_ac_buton.setEnabled(True)
        self.giris_kapat_buton.setEnabled(False)
        # RASPBERRY PINLERINE YETKİ VER

    def cikis_ac(self):
        print("cikis acildi")
        self.cikis_ac_buton.setEnabled(False)
        self.cikis_kapat_buton.setEnabled(True)
        # RASPBERRY PINLERINE YETKİ VER

    def cikis_kapat(self):
        print("cikis kapatildi")
        self.cikis_ac_buton.setEnabled(True)
        self.cikis_kapat_buton.setEnabled(False)
        # RASPBERRY PINLERINE YETKİ VER

if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    window.setWindowTitle('ALPR')
    window.show()
    sys.exit(app.exec_())
