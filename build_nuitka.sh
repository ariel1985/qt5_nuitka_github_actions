#!/bin/bash

# This script builds the PyQt5 Hello World application using Nuitka

# Navigate to the source directory
cd src

# pip upgrade pip
pip install --upgrade pip

# Install required packages
pip install PyQt5 Nuitka
# Check if Nuitka is installed
if ! command -v nuitka &> /dev/null
then
    echo "Nuitka could not be found. Please install Nuitka before running this script."
    exit 1
fi
# Check if PyQt5 is installed
if ! python -c "import PyQt5" &> /dev/null
then
    echo "PyQt5 could not be found. Please install PyQt5 before running this script."
    exit 1
fi
# Create a build directory if it doesn't exist
mkdir -p build
# Remove any previous build artifacts
rm -rf build/*
# Create a directory for the standalone application
mkdir -p main.dist
# Remove any previous standalone application artifacts
rm -rf main.dist/*
# # Copy the main.py file to the build directory
# cp main.py build/
# # Navigate to the build directory
# cd build
# # Ensure that the main.py file is present
# if [ ! -f main.py ]; then
#     echo "main.py not found in the build directory. Please ensure it exists."
#     exit 1
# fi

# Compile the main.py file using Nuitka
nuitka --standalone \
        --include-package=PyQt5 \
        --include-package=PyQt5.QtWidgets \
        --include-package=PyQt5.QtGui \
        --include-package=PyQt5.QtCore \
        --output-dir=main.dist \
        --include-data-dir=.=src \
        --verbose \
        main.py

# Move the generated files to the project root (optional)
mv main.dist ../

# Clean up the build directory
rm -rf build
rm -rf src/__pycache__
rm -rf src/*.spec
rm -rf src/*.pyc
rm -rf src/*.pyo
# Print a success message
echo "Build completed successfully. The standalone application is located in the 'main.dist' directory."
# Exit the script
exit 0
# End of script
# Note: Ensure that Nuitka and PyQt5 are installed in your Python environment before running this script.
# You can install Nuitka using pip:
# pip install nuitka
# And PyQt5 using pip:
# pip install PyQt5
# Ensure that the script is executable
# chmod +x build_nuitka.sh