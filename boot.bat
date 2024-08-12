@echo off

:init
title batchOS Startup

echo batchOS is initializing..

:: just do some setup shit here
call bootloader\init.bat

:afterini
:: echo DEBUG: Stage 3
::FOR /F %%i IN ('type %~dp0\..\settings.dat') DO %%i  
echo.
echo Finished.
title batchOS
timeout /t 5 /nobreak >nul
echo batchOS v%os_ver% is starting...
timeout /t 2 /nobreak >nul
call bootloader\loados.bat
call system\login.bat