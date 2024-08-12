:: WARNING - THIS API COMMAND IS OS EXCLUSIVE, AND IS NOT MEANT TO BE USED IN APPS

@echo off

:exit_sequence
cls
title batchOS Logoff
echo Logging off..
timeout /t 1 /nobreak >nul
title batchOS Shutdown
echo Shutting down batchOS..
timeout /t 1 /nobreak >nul
exit

