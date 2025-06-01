# Create a hello world app with pyqt5 
# that has a button that says "Click me!" and when clicked, 
# it shows a message box with the text "Hello, World!"

import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QMessageBox

class HelloWorldApp(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle('Hello World App')
        self.setGeometry(100, 100, 300, 200)

        self.button = QPushButton('Click me!', self)
        self.button.setGeometry(100, 80, 100, 30)
        self.button.clicked.connect(self.showMessage)

    def showMessage(self):
        QMessageBox.information(self, 'Message', 'Hello, World!')
        
        
if __name__ == '__main__':
    app = QApplication(sys.argv)
    ex = HelloWorldApp()
    ex.show()
    sys.exit(app.exec_())
    