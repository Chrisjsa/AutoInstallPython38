# Python 3.8 installation script for Ubuntu

This script automates the process of installing Python 3.8 on Ubuntu Linux. It downloads the Python 3.8 source code from the official website, compiles it with optimizations, and installs it alongside the system Python without replacing it.

## Usage

To use this script, follow these steps:

1. Clone the repository or download the script file to your local machine.
2. Open a terminal and navigate to the directory where the script is located.
3. Make the script executable by running the command:
```Bash
chmod +x install_python38.sh
```
4. Run the script with sudo privileges by running the command:
```Bash
sudo ./install_python38.sh
```
The script will prompt you for your sudo password at the beginning and keep it until the end. It will update the package index, install necessary dependencies, download Python 3.8, compile it with optimizations, and install it alongside the system Python. The whole process may take a few minutes to complete.

After the installation is finished, you can verify that Python 3.8 is installed correctly by running the command:
```Bash
python3.8 --version
```
This should print the version number of Python 3.8, such as `Python 3.8.9`.

## Notes

- This script is intended for Ubuntu Linux and may not work on other distributions or operating systems.
- The installation process may require a significant amount of disk space, especially during the compilation phase. Make sure you have enough free space before running the script.
- This script installs Python 3.8 alongside the system Python without replacing it. To use Python 3.8, you need to specify the version explicitly, such as `python3.8 script.py`.
- This script does not install any additional Python packages or modules. You can use pip or other package managers to install them separately.