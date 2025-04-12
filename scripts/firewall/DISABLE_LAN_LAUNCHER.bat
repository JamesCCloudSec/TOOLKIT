@echo off
:: Launch DISABLE_LAN PowerShell Script with Admin
powershell.exe -ExecutionPolicy Bypass -File "%~dp0disable_lan.ps1"
pause
