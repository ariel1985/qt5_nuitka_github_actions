#!/bin/bash

# This script builds the PyQt5 Hello World application using Nuitka

# Navigate to the source directory
cd src

# Compile the main.py file using Nuitka
nuitka --standalone --enable-plugin=pyside2 main.py

# Move the generated files to the project root (optional)
mv main.dist ../

# Navigate back to the project root
cd ..