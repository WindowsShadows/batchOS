:: WARNING - THIS API COMMAND IS OS EXCLUSIVE, AND IS NOT MEANT TO BE USED IN APPS

@echo off

:logoff_sequence
cls
title batchOS Logoff
echo Logging off..
timeout /t 1 /nobreak >nul
call system\login.bat 