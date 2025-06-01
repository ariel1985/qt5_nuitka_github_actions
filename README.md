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

### Nuitka Installation
To install Nuitka, you can use pip:

```
pip install nuitka
```

### Run Nuitka Explanation
Nuitka is a Python-to-C compiler that converts Python code into C code, which is then compiled into a standalone executable. This allows for better performance and distribution of Python applications.

It exports into 2 directories:
- `dist`: Contains the compiled executable and necessary files to run the application.
- `build`: Contains intermediate files used during the compilation process.


## GitHub Actions
This project includes a GitHub Actions workflow to automate the build process. The workflow is defined in `.github/workflows/build.yml`. It will run on every push and pull request to the main branch, ensuring that the application builds successfully.


# ----------------------------------------------
To make Nuitka export your PyQt5 app as a single executable file, use the `--onefile` option. Here’s how:

**Command:**
```bash
nuitka --onefile --enable-plugin=pyqt5 --static-libpython=no main.py
```

- `--onefile`: Packages everything into a single executable (instead of a folder).
- The output executable will appear in the current directory (e.g., `main.dist/main` or just `main`).

**To automate this, update your build_nuitka.sh script like this:**

````bash
./build_nuitka.sh
````

**After running the script:**
- The executable will be in the same directory as your script (e.g., `src/main.dist/main` or `src/main.bin`).

**Note:**  
Startup time for `--onefile` is a bit slower, but it’s easier to distribute.  
If you want the output in a specific directory, use the `--output-dir=dist` option.

# ----------------------------------------------

```

## License

This project is licensed under the MIT License.