Dim WShell
Set WShell = CreateObject("WScript.Shell")
WShell.Run "powershell Set-ExecutionPolicy Bypass -Scope Process -Force; .\run.ps1; exit", 0
Set WShell = Nothing