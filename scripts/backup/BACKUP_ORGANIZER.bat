@echo off
:: Launches the PowerShell backup folder creator script
powershell.exe -ExecutionPolicy Bypass -File "%~dp0create-backup-folders.ps1"
pause
