# qt5_nuitka_github_actions/qt5_nuitka_github_actions/README.md

# PyQt5 Hello World Application

This project is a simple PyQt5 application that displays a window with a button. When the button is clicked, a message box appears with the text "Hello, World!".

## Project Structure

```
qt5_nuitka_github_actions
├── src
│   └── main.py          # The main application code
├── requirements.txt     # Python dependencies
├── build_nuitka.sh     # Script to build the application using Nuitka
├── .gitignore           # Files to ignore in Git
└── README.md            # Project documentation
```

## Requirements

To run this application, you need to have Python and PyQt5 installed. You can install the required dependencies using the following command:

```
pip install -r requirements.txt
```

## Running the Application

To run the application, execute the following command:

```
python src/main.py
```

## Building the Application with Nuitka

To compile the application into an executable using Nuitka, you can use the provided shell script. Run the following command:

```
bash build_nuitka.sh
```

This will generate an executable file in the current directory.

## License

This project is licensed under the MIT License.