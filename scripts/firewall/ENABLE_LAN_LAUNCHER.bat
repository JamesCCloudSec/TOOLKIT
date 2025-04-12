@echo off
:: Run Undo Script with Admin Privileges
powershell.exe -ExecutionPolicy Bypass -File "%~dp0undo_lan.ps1"
pause
