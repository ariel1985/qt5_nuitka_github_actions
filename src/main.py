# filepath: /qt5_nuitka_github_actions/qt5_nuitka_github_actions/src/main.py
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