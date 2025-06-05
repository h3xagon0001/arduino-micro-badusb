# bypass
Set-ExecutionPolicy Bypass -Scope Process -Force

# extract nmap
#Expand-Archive -LiteralPath ".\nmap.zip" -DestinationPath "$($env:APPDATA)\Fairy" -Force

# scan for listening port 6969 on network
#$ScanOutput = nmap -p 6969 -T5 192.168.1.0/24 --open
$ScanOutput = "Starting Nmap 7.97 ( https://nmap.org ) at 2025-06-05 22:26 +0800
Nmap scan report for 192.168.1.53
Host is up (0.00013s latency).

PORT     STATE SERVICE
6969/tcp open  acmsoda

Nmap done: 256 IP addresses (11 hosts up) scanned in 38.49 seconds"

# get ip of listener
#$ScanOutput | Select-String -Pattern "(192\.168\.1\.)\w+"
$ListenerIP = "some text here and there" | Select-String -Pattern "(and there)" -AllMatches



<#
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
Invoke-Expression "&{$((New-Object System.Net.WebClient).DownloadString('https://gist.github.com/MadeBaruna/1d75c1d37d19eca71591ec8a31178235/raw/getlink.ps1'))} global"
#>

