@echo off
:: SYSTEM_REPORT_LAUNCHER.bat
:: Launches PowerShell system report script

powershell.exe -ExecutionPolicy Bypass -File "%~dp0SYSTEM_REPORT.ps1"
pause
