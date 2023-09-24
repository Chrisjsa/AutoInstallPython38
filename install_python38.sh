#!/bin/bash

# Request sudo password at the beginning and keep it until the end of the script
sudo -v

# Update Ubuntu package index
sudo apt update

# Install necessary packages to compile Python without asking for confirmation
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libbz2-dev

# Download Python 3.8 installation file from official Python website in quiet mode
wget -q https://www.python.org/ftp/python/3.8.9/Python-3.8.9.tgz

# Extract downloaded file
tar -xf Python-3.8.9.tgz

# Navigate to Python directory
# shellcheck disable=SC2164
cd Python-3.8.9

# Configure installation
./configure --enable-optimizations

# Compile and install Python 3.8 without asking for confirmation
make -j 4
sudo make altinstall

# Verify that Python 3.8 was installed correctly
PYTHON_VERSION=$(python3.8 --version 2>&1)
if [[ $PYTHON_VERSION == *"Python 3.8"* ]]; then
  echo "Python 3.8 has been installed successfully."
else
    echo "Python 3.8 has not been installed."
fi

# Cleaning folder
sudo rm -r Python*
