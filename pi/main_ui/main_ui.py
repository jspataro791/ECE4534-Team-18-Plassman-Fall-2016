#!/usr/bin/python2.7

# # IMPORTS ##
from PyQt4 import Qt as qt
from NodeList import *
import numpy as np
import serial
import os
import sys
import time
import datetime
import threading
import socketsvr
import socket
from Queue import Queue as queue

MAINWIN_DEF_LOC_X = 300
MAINWIN_DEF_LOC_Y = 300
MAINWIN_DEF_SIZE_X = 640
MAINWIN_DEF_SIZE_Y = 480

BUTTON_HEIGHT = 150

PAC_DATA_OBJ = socketsvr.RoverDataObj()
PAC_IP = "192.168.43.102"
PAC_PORT = 2000
PAC_SOCK_SRV = socketsvr.RoverSocketServer(PAC_IP, PAC_PORT, "PACMAN")

GST_DATA_OBJ = socketsvr.RoverDataObj()
GST_IP = "192.168.43.88"
GST_PORT = 2000
GST_SOCK_SRV = socketsvr.RoverSocketServer(GST_IP, GST_PORT, "GHOST")

# Node view parameters
horizontal_nodes = 10
vertical_nodes = 10
HORIZONTAL_PIXELS = 600
VERTICAL_PIXELS = 600

node_width = 30
node_height = 30
pacman = [0,0]
ghost = [4,2]

class MainApplication():
    
    def __init__(self, argv):
        
        self._app = qt.QApplication(argv, True)
        self._mainwindow = MainWindow()
        self._mainwindow.show()
        
    def run(self):
        
        self._app.exec_()
        
    def stop(self):
        
        self._app.quit()


class MainWindow(qt.QMainWindow):
    
    def __init__(self):
       super(MainWindow, self).__init__()
       
       
       self.gstWriterInTheSky = GstDirectionReceiver()
       
       # setup subwidgets
       self._main = qt.QSplitter(self)
       self._tabbedView = TabbedView(self)
       self._debugConsole = DebugConsole(self)
       
       # setup subwidget layout
       self._main.addWidget(self._tabbedView)
       self._main.addWidget(self._debugConsole)
       self._main.setOrientation(qt.Qt.Vertical)
       
       # setup this main window       
       self.setGeometry(MAINWIN_DEF_LOC_X, MAINWIN_DEF_LOC_Y, MAINWIN_DEF_SIZE_X, MAINWIN_DEF_SIZE_Y)
       self.setWindowTitle("Embedded Main Window")
       self.setCentralWidget(self._main)
       self.setWindowIcon(qt.QIcon('graphics/pacman.png'))
       
       self.gstWriterInTheSky.stopped.connect(self.stopAll)
       
    def stopAll(self):
       self._tabbedView._ctrl.stop()
       self._debugConsole.addMsgEvent("GAME OVER!")
       
    
       
       
        
class DebugConsole(qt.QTextBrowser):
    
    def __init__(self, parent=None):
        super(DebugConsole, self).__init__(parent)
        
        self._maxHeight = parent.geometry().height()
        
        self.resize(qt.QSize(0,0.3 * self._maxHeight))
        
    def addMsgEvent(self, msg):
        
        curTime = datetime.datetime.now().strftime('%H:%M:%S')
        
        self.append("%s - %s" % (curTime, msg))
        
       
class TabbedView(qt.QTabWidget):
    
    def __init__(self, parent=None):
        super(TabbedView, self).__init__(parent)
                        
        self._ctrl = TabControl(self)
        self._dbg = TabDebug(self)
        self._node = TabNodeView(self)
        
        self.addTab(self._ctrl, qt.QIcon('graphics/pacman.png'), "PACMAN Control")
        self.addTab(self._dbg, "Debugging")
        self.addTab(self._node, "Node View")
        
    def keyPressEvent(self, evt):
    
        key = evt.key()

        
        if key == qt.Qt.Key_A:
            self._ctrl.sendLeftSignal()
        elif key == qt.Qt.Key_D:
            self._ctrl.sendRightSignal()
        elif key == qt.Qt.Key_W:
            self._ctrl.sendStraightSignal()
       
       

class TabControl(qt.QWidget):
    
    def __init__(self, parent=None):
        super(TabControl, self).__init__(parent) 
        
        
        self._mainLayout = qt.QVBoxLayout()
                
        self._controlLayout = qt.QHBoxLayout()
        self._mainLayout.addLayout(self._controlLayout)
        
        self._startLayout = qt.QHBoxLayout()
        self._mainLayout.addLayout(self._startLayout)
        
        self.setLayout(self._mainLayout)
        
        # buttons
        self._straightBtn = qt.QPushButton(qt.QIcon('graphics/straight_arrow.png'), "STRAIGHT", self)
        self._straightBtn.setFixedHeight(BUTTON_HEIGHT)
        
        self._leftBtn = qt.QPushButton(qt.QIcon('graphics/left_arrow.png'), "LEFT", self)
        self._leftBtn.setFixedHeight(BUTTON_HEIGHT)
        
        self._rightBtn = qt.QPushButton(qt.QIcon('graphics/right_arrow.png'), "RIGHT", self)
        self._rightBtn.setFixedHeight(BUTTON_HEIGHT)
        
        self._startBtn = qt.QPushButton(qt.QIcon('graphics/start.png'), "START", self)
        self._startBtn.setFixedHeight(BUTTON_HEIGHT)
        
        self._stopBtn = qt.QPushButton(qt.QIcon('graphics/stop.png'), "STOP", self)
        self._stopBtn.setFixedHeight(BUTTON_HEIGHT)
        
        self._reconnectBtn = qt.QPushButton(qt.QIcon('graphics/reconnect.png'), "RECONNECT", self)
        
        # button layout
        self._controlLayout.addWidget(self._leftBtn)
        self._controlLayout.addWidget(self._straightBtn)
        self._controlLayout.addWidget(self._rightBtn)
        
        self._startLayout.addStretch(1)
        self._startLayout.addWidget(self._startBtn)
        self._startLayout.addWidget(self._stopBtn)
        self._startLayout.addWidget(self._reconnectBtn)
        self._startLayout.addStretch(1)
        
        # button callbacks
        self._straightBtn.pressed.connect(self.sendStraightSignal)
        self._leftBtn.pressed.connect(self.sendLeftSignal)
        self._rightBtn.pressed.connect(self.sendRightSignal)
        self._startBtn.pressed.connect(self.start)
        self._stopBtn.pressed.connect(self.stop)
        self._reconnectBtn.pressed.connect(self.reconnect)
        
        # started
        self._started = False
        
        # status
        self._dirStat = "NONE"
        
        #gst difficulty timer
        self.diffUpdTimer = qt.QTimer(self)
        self.diffUpdTimer.setInterval(10000)
        self.diffUpdTimer.setSingleShot(False)
        self.diffUpdTimer.timeout.connect(self.increaseDifficulty)
        
        self.gstSpeed = 0
        
        # update timer
        UpdTimer = qt.QTimer(self)
        UpdTimer.setInterval(500)
        UpdTimer.setSingleShot(False)
        UpdTimer.timeout.connect(self.updRvrData)
        UpdTimer.start()
        
    def increaseDifficulty(self):
        if self.gstSpeed == 16:
            return
        
        GST_DATA_OBJ.setSpeed(self.gstSpeed)
        print("Increased Ghost Difficulty")
        
        self.gstSpeed += 1  
        
    def updRvrData(self):
        PAC_SOCK_SRV.write(repr(PAC_DATA_OBJ))
        GST_SOCK_SRV.write(repr(GST_DATA_OBJ))
        
    def sendLeftSignal(self):
        if self._started and self._dirStat != "LEFT":
            self.util_setButtonColors("LEFT")
            self.window()._debugConsole.addMsgEvent("Left")
            global PAC_DATA_OBJ,PAC_SOCK_SRV
            PAC_DATA_OBJ.setDir("LEFT")
        
    def sendRightSignal(self):
        if self._started and self._dirStat != "RIGHT":
            self.util_setButtonColors("RIGHT")
            self.window()._debugConsole.addMsgEvent("Right")
            global PAC_DATA_OBJ,PAC_SOCK_SRV
            PAC_DATA_OBJ.setDir("RIGHT")
        
    def sendStraightSignal(self):
        if self._started and self._dirStat != "STRAIGHT":
            self.util_setButtonColors("STRAIGHT")
            self.window()._debugConsole.addMsgEvent("Straight")
            global PAC_DATA_OBJ,PAC_SOCK_SRV
            PAC_DATA_OBJ.setDir("STRAIGHT")
        
    def start(self):
        
        if not self._started:
            self.window()._debugConsole.addMsgEvent("STARTING!")
            global PAC_DATA_OBJ,PAC_SOCK_SRV
            global GST_DATA_OBJ
            PAC_DATA_OBJ.setSpeed(16)
            GST_DATA_OBJ.setSpeed(16)
            self._started = True
            #self.diffUpdTimer.start()
            self.gstSpeed = 1
            
    def stop(self):
        
        if self._started:
            self.window()._debugConsole.addMsgEvent("STOPPING!")
            global PAC_DATA_OBJ,PAC_SOCK_SRV
            PAC_DATA_OBJ.setSpeed(0)
            global GST_DATA_OBJ
            GST_DATA_OBJ.setSpeed(0)
            self._started = False
            self.diffUpdTimer.stop()
            self.gstSpeed = 0
            
    def reconnect(self):
        
        global GST_SOCK_SRV,PAC_SOCK_SRV
        PAC_SOCK_SRV.reconnect()
        GST_SOCK_SRV.reconnect()
            
    def util_setButtonColors(self, dir):
        
        self._straightBtn.setIcon(qt.QIcon('graphics/straight_arrow.png'))
        self._leftBtn.setIcon(qt.QIcon('graphics/left_arrow.png'))
        self._rightBtn.setIcon(qt.QIcon('graphics/right_arrow.png'))
                               
        if dir == "LEFT":
            self._leftBtn.setIcon(qt.QIcon('graphics/left_arrow_g.png'))
            self._dirStat = "LEFT"
        elif dir == "RIGHT":
            self._rightBtn.setIcon(qt.QIcon('graphics/right_arrow_g.png'))
            self._dirStat = "RIGHT"
        elif dir == "STRAIGHT":
            self._straightBtn.setIcon(qt.QIcon('graphics/straight_arrow_g.png'))
            self._dirStat = "STRAIGHT"
        
        
class TabDebug(qt.QWidget):
    
    def __init__(self, parent=None):
        super(self.__class__, self).__init__(parent) 
        
        # layouts
        self._hLayout = qt.QHBoxLayout()
        self.setLayout(self._hLayout)
        
        self._vLeftLayout = qt.QVBoxLayout()
        self._vRightLayout = qt.QVBoxLayout()
        self._hLayout.addLayout(self._vLeftLayout)
        self._hLayout.addLayout(self._vRightLayout)
        
        # items        
        self._pacDebugState = qt.QCheckBox("PACMAN Debugging", self)
        self._pacDebugState.stateChanged.connect(self.setPacDebugging)
        self._vLeftLayout.addWidget(self._pacDebugState)
        
        self._gstDebugState = qt.QCheckBox("GHOST Debugging", self)
        self._gstDebugState.stateChanged.connect(self.setGstDebugging)
        self._vRightLayout.addWidget(self._gstDebugState)
        
            # pacman
        self._pacDbgSpeed = self.DebugItem(title="Pacman Speed")
        self._vLeftLayout.addWidget(self._pacDbgSpeed)
        
        self._pacDbgDirection = self.DebugItem(title="Pacman Direction")
        self._vLeftLayout.addWidget(self._pacDbgDirection)
        
        self._pacDbgLFAData = self.DebugItem(title="Pacman LFA Data")
        self._vLeftLayout.addWidget(self._pacDbgLFAData)
        
        self._pacDbgMsgCount = self.DebugItem(title="Pacman Dbg Msg Count")
        self._vLeftLayout.addWidget(self._pacDbgMsgCount)
            
            # ghost
            
        self._gstDbgSpeed = self.DebugItem(title="Ghost Speed")
        self._vRightLayout.addWidget(self._gstDbgSpeed)
        
        self._gstDbgDirection = self.DebugItem(title="Ghost Direction")
        self._vRightLayout.addWidget(self._gstDbgDirection)
        
        self._gstDbgLFAData = self.DebugItem(title="Ghost LFA Data")
        self._vRightLayout.addWidget(self._gstDbgLFAData)
        
        self._gstDbgMsgCount = self.DebugItem(title="Ghost Dbg Msg Count")
        self._vRightLayout.addWidget(self._gstDbgMsgCount)
        
        
        # update timers
        UpdTimer = qt.QTimer(self)
        UpdTimer.setInterval(50)
        UpdTimer.setSingleShot(False)
        UpdTimer.timeout.connect(self.updPacData)
        UpdTimer.timeout.connect(self.updGstData)
        UpdTimer.start()
        
        # debug msg counter
        self.pacDbgMsgCounter = 0
        self.gstDbgMsgCounter = 0
        
        
    def updPacData(self):
        global PAC_SOCK_SRV
        rxData = PAC_SOCK_SRV.read()

        if rxData == None:
            return
        
        for data in rxData:

            if data[0:3] == "SPD":
                self._pacDbgSpeed.write(ord(data[3]))
            elif data[0:3] == "DIR":
                self._pacDbgDirection.write(ord(data[3]))
            elif data[0:3] == "LFA":   
                self._pacDbgLFAData.write( bin( ord(data[3]) )[2:].zfill(8) )
            self.pacDbgMsgCounter += 1
            self._pacDbgMsgCount.write(repr(self.pacDbgMsgCounter))
        
        
    def updGstData(self):
        global GST_SOCK_SRV
        rxData = GST_SOCK_SRV.read()
        
        if rxData == None:
            return
        
        for data in rxData:

            if data[0:3] == "SPD":
                self._gstDbgSpeed.write(ord(data[3]))
            elif data[0:3] == "DIR":
                self._gstDbgDirection.write(ord(data[3]))
            elif data[0:3] == "LFA":   
                self._gstDbgLFAData.write( bin( ord(data[3]) )[2:].zfill(8) )
            self.gstDbgMsgCounter += 1
            self._gstDbgMsgCount.write(repr(self.gstDbgMsgCounter))


    def setPacDebugging(self):
        
        global PAC_DATA_OBJ
        global PAC_SOCK_SRV
        
        chkd = self._pacDebugState.isChecked()
        
        if chkd:
            self.window()._debugConsole.addMsgEvent("PACMAN Debugging Enabled")
            PAC_DATA_OBJ.setDbg(True)  
            
        else:
            self.window()._debugConsole.addMsgEvent("PACMAN Debugging Disabled")
            PAC_DATA_OBJ.setDbg(False) 
    
    
    def setGstDebugging(self):
        
        global GST_DATA_OBJ
        global GST_SOCK_SRV
        
        chkd = self._gstDebugState.isChecked()
        
        if chkd:
            self.window()._debugConsole.addMsgEvent("GHOST Debugging Enabled")
            GST_DATA_OBJ.setDbg(True)
            GST_SOCK_SRV.write(repr(GST_DATA_OBJ))      
            
        else:
            self.window()._debugConsole.addMsgEvent("GHOST Debugging Disabled")
            GST_DATA_OBJ.setDbg(False)
            GST_SOCK_SRV.write(repr(GST_DATA_OBJ))     
     

    class DebugItem(qt.QGroupBox):
        
        def __init__(self, parent=None, title=""):
            super(self.__class__, self).__init__(title,parent)
            
            self._layout = qt.QVBoxLayout()
            self._layout.setAlignment(qt.Qt.AlignTop)
            self.setLayout(self._layout)
            
            self._line = qt.QLineEdit()
            self._line.setFixedWidth(100)
            self._line.setAlignment(qt.Qt.AlignTop)
            self._line.setReadOnly(True)
            self._layout.addWidget(self._line)
            
        def write(self, msg):

            self._line.clear()
            self._line.setText(repr(msg))

class TabNodeView(qt.QWidget):
    def __init__(self, parent=None):
        super(self.__class__, self).__init__(parent)
        self.nodeList = NodeList()
        self.nodeList.from_file('nodes.txt')
        self.pacman = pacman
        self.ghost = ghost

        try:
            self.s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            self.s.bind(('',3000))
            self.s.setblocking(0)
        except socket.error as message:
            if self.s:
                self.s.close()
            print ("Could not open Node socket: " + str(message))
            sys.exit(1)
        
        UpdTimer = qt.QTimer(self)
        UpdTimer.setInterval(50)
        UpdTimer.setSingleShot(False)
        UpdTimer.timeout.connect(self.updNodeData)
        UpdTimer.start()

        self.setup()
        
    def updNodeData(self):
        try:
            data, address = self.s.recvfrom(1024)
            if data:
                self.pacman[0], self.pacman[1], self.ghost[0], self.ghost[1], = map(int, data.split(' '))
                #print(self.pacman, self.ghost)
                self.update()
        except socket.error as e:
            pass

    def setup(self):
        self.setGeometry(0, 0, HORIZONTAL_PIXELS, VERTICAL_PIXELS)
        self.setWindowTitle('Node List')
        self.show()

    def paintEvent(self, e):
        my_node_painter = qt.QPainter()
        my_rover_painter = qt.QPainter()
        
        my_node_painter.begin(self)
        my_rover_painter.begin(self)
        
        self.draw_rovers(my_rover_painter)
        self.draw_nodes(my_node_painter)
        
        my_node_painter.end()
        my_rover_painter.end()

    def draw_rovers(self, my_painter):
        node_color = qt.QColor(255,255,255)
        my_painter.fillRect(0, 0, horizontal_nodes * node_width, vertical_nodes * node_height, node_color)
        for y in range(vertical_nodes):
            for x in range(horizontal_nodes):
                if self.pacman == [x,y]:
                    #print(time.time(),": Found pacman at ", self.pacman)
                    node_color = qt.QColor(243,243,21)
                elif self.ghost == [x,y]:
                    #print(time.time(),": Found ghost at ", self.ghost)
                    node_color = qt.QColor(252,90,184)
                else:
                    node_color = qt.QColor(255,255,255)
                my_painter.fillRect(x * node_width, y * node_height, node_width, node_height, node_color)

    def draw_nodes(self, my_painter):
        if self.nodeList is None:
            print("No node list to show")
            return

        for y in range(vertical_nodes):
            for x in range(horizontal_nodes):
                my_painter.setPen(qt.QColor(0, 0, 0))
                my_painter.drawRect(x * node_width, y * node_height, node_width, node_height)
                try:
                    node = self.nodeList.coordinates['%d, %d' % (x, y)]
                except:
                    continue
                mid_x = (x * node_width) + (node_width / 2)
                mid_y = (y * node_height) + (node_height / 2)
                my_painter.setPen(qt.QColor(255, 0, 0))
                if node.neighbors['North'] is not None:
                    # draw top half of a vertical line
                    my_painter.drawLine(mid_x, y * node_height, mid_x, mid_y)
                if node.neighbors['East'] is not None:
                    # draw right half of horizontal line
                    my_painter.drawLine(mid_x, mid_y, (x + 1) * node_width, mid_y)
                if node.neighbors['South'] is not None:
                    # draw bottom half of a vertical line
                    my_painter.drawLine(mid_x, mid_y, mid_x, (y + 1) * node_height)
                if node.neighbors['West'] is not None:
                    # draw left half of horizontal line
                    my_painter.drawLine(x * node_width, mid_y, mid_x, mid_y)
                    
class GstDirectionReceiver(qt.QObject):
    
    stopped = qt.pyqtSignal()
    
    def __init__(self):
        super(GstDirectionReceiver, self).__init__(None)
        
        print("Opening AI receive socket")
        try:
            self.s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            self.s.bind(('127.0.0.1',2176))
            self.s.settimeout(0.01)
        except socket.error as message:
            if self.s:
                self.s.close()
            print ("Could not open Node socket: " + str(message))
            sys.exit(1)
            
        print("Socket Opened")
        

        ## timer
        UpdTimer = qt.QTimer(self)
        UpdTimer.setInterval(2)
        UpdTimer.setSingleShot(False)
        UpdTimer.timeout.connect(self.getData)
        UpdTimer.start()            
            
    def getData(self):
            
            try:
                data_received, addr_from = self.s.recvfrom(1024)
            except socket.error:
                return None
            except socket.timeout:
                return None
            
            msgs = data_received.split('|')
            msgs.remove('')
            
            print(msgs)
            
            for msg in msgs:
                if msg == "Left":
                    GST_DATA_OBJ.setDir("LEFT")
                    print("Got LEFT from AI engine")
                elif msg == "Straight":
                    GST_DATA_OBJ.setDir("STRAIGHT")
                    print("Got STRAIGHT from AI engine")
                elif msg == "Right":
                    GST_DATA_OBJ.setDir("RIGHT")
                    print("Got RIGHT from AI engine")
                elif msg == "Captured":
                    self.stopped.emit()
                else:
                    print("Got invalid direction from AI engine") 
                    
            
   
      
       
if __name__ == "__main__":
    
    app = MainApplication(sys.argv)
    app.run() 
